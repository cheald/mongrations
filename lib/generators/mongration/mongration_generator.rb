require 'rails/generators'
require 'rails/generators/migration'    

class MongrationGenerator < Rails::Generators::NamedBase
  include Rails::Generators::Migration
  
  def self.source_root
    @source_root ||= File.expand_path('../templates', __FILE__)
  end  
  def self.next_migration_number(padding = 3)
    Time.now.utc.strftime("%Y%m%d%H%M%S")
  end
  def create_migration_file
    migration_template "mongration.rb", "db/mongrations/#{file_name}"
  end
  
end
