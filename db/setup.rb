require 'pg'
require 'active_record'
require 'yaml'
#Connection details

#setup connection details
connection_detail = YAML.load_file("config/database.yml")
ActiveRecord::Base.establish_connection(connection_detail)
#create show table
ActiveRecord::Migrator.migrate("db/migrate/")
#connect to tv database
#migraate all the things
