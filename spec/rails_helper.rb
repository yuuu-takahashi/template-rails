require 'view_component/test_helpers'
require 'faker'

ENV['RAILS_ENV'] = 'test'
require_relative '../config/environment'
require 'rspec/rails'

puts "RAILS_ENV: #{Rails.env}"
puts "Connected to database: #{ActiveRecord::Base.connection.current_database}"

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  abort e.to_s.strip
end

RSpec.configure do |config|
  config.include ViewComponent::TestHelpers, type: :component
  config.include FactoryBot::Syntax::Methods

  config.fixture_paths = [Rails.root.join('spec/fixtures')]
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
end
