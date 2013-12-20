require 'bundler/setup'
require 'padrino-core/cli/rake'
require 'thor'
require File.dirname(__FILE__) + '/config/boot.rb'

PadrinoTasks.use(:database)
PadrinoTasks.use(:sequel)
PadrinoTasks.init

namespace :db do
  require "sequel"
  Sequel.extension :migration
  case Padrino.env
    when :development then ENV['DATABASE_URL'] = 'postgres://confy:confy@localhost/confy'
    when :test        then ENV['DATABASE_URL'] = 'postgres://confy:confy@localhost/confy_test'
  end
  DB = Sequel.connect(ENV['DATABASE_URL'])

  desc "Prints current schema version"
  task :version do
    version = if DB.tables.include?(:schema_info)
      DB[:schema_info].first[:version]
    end || 0

    puts "Schema Version: #{version}"
  end

  desc "Perform migration up to latest migration available"
  task :migrate do
    Sequel::Migrator.run(DB, "db/migrate")
    Rake::Task['db:version'].execute
  end

  desc "Perform rollback to specified target or full rollback as default"
  task :rollback, :target do |t, args|
    args.with_defaults(:target => 0)

    Sequel::Migrator.run(DB, "db/migrate", :target => args[:target].to_i)
    Rake::Task['db:version'].execute
  end

  desc "Perform migration reset (full rollback and migration)"
  task :reset do
    Sequel::Migrator.run(DB, "db/migrate", :target => 0)
    Sequel::Migrator.run(DB, "db/migrate")
    Rake::Task['db:version'].execute
  end
end