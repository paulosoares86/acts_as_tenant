ActiveRecord::Base.send(:include, ActsAsTenant::ModelExtensions)

if defined?(ActionController::API)
  ActionController::API.extend ActsAsTenant::ControllerExtensions
elsif defined?(ActionController::Base)
  ActionController::Base.extend ActsAsTenant::ControllerExtensions
end
