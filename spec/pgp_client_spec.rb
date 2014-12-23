require 'spec_helper'

describe PGP::Client do
  describe "#new" do
    it "expects a passphrase to decode the key files" do
      expect{ PGP::Client.new }.to raise_error(ArgumentError, /0 for 1\.\.3/)
    end
  end

  subject { PGP::Client.new('secret passphrase',
                            'pgp_public_key.pem',
                            'pgp_private_key.rsa') }
  describe "#public_key" do
    it "returns the public_key" do
      expect( subject.public_key.to_s ).to match(/BEGIN PUBLIC KEY/)
    end
  end
  let(:plain_text) { Time.now.to_s }
  let(:encrypted_text) { subject.encrypt( plain_text ) }
  describe "#encrypt" do
    it "munges the input" do
      expect( encrypted_text ).not_to eql( plain_text )
    end
  end
  describe "#decrypt" do
    it "decodes the encrypted string" do
      expect( subject.decrypt( encrypted_text ) ).to eql( plain_text )
    end
  end
end
