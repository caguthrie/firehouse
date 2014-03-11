task :environment do
  require_relative './config/environment'
end

namespace :db do
  task :migrate => [:environment] do
    require_relative './db/migrations/01_create_firehouse.rb'
    CreateFirehouses.migrate(:up) if defined?(CreateFirehouses)
  end

  task :seed => [:environment] do
    f = FirehouseReader.new("https://data.cityofnewyork.us/api/views/hc8x-tcnd/rows.json?accessType=DOWNLOAD")
    f.seed_db
  end
end

task :console => [:environment] do
  Pry.start
end