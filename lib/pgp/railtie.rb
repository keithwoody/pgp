module PGP
  class Railtie < Rails::Railtie
    rake_tasks do
      load 'lib/tasks/pgp_tasks.rake'
    end
  end
end
