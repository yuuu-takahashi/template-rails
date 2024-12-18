require "spec_helper"
ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
if Rails.env.production?
  abort("The Rails environment is running in production mode!")
end
require "rspec/rails"
require "view_component/test_helpers"

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  abort e.to_s.strip
end

RSpec.configure do |config|
  config.include ViewComponent::TestHelpers, type: :component
  config.include FactoryBot::Syntax::Methods

  config.fixture_paths = [Rails.root.join("spec/fixtures")]
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
end
