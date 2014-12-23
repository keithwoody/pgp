module PGP
  class Railtie < Rails::Railtie
    rake_tasks do
      load File.expand_path('../../tasks/pgp_tasks.rake', __FILE__)
    end
  end
end
