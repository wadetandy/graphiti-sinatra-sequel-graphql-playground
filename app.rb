require 'sinatra'

Sinatra::Application.config_file File.join(File.dirname(__FILE__),
                                           'config',
                                           "#{Sinatra::Application.settings.environment}_config.yml")

class EmployeeDirectoryApp < Sinatra::Application
  configure do
    mime_type :jsonapi, 'application/vnd.api+json'
  end

  before do
    content_type :jsonapi
  end

  get '/' do
    'hello world'
  end

  # get '/api/v1/employees' do
  #   employees = EmployeeResource.all(params)
  #   employees.to_jsonapi
  # end

  # get '/api/v1/employees/:id' do
  #   employees = EmployeeResource.find(params)
  #   employees.to_jsonapi
  # end

  # get '/api/v1/positions' do
  #   positions = PositionResource.all(params)
  #   positions.to_jsonapi
  # end

  # get '/api/v1/positions/:id' do
  #   positions = PositionResource.find(params)
  #   positions.to_jsonapi
  # end

  # get '/api/v1/departments/:id' do
  #   departments = DepartmentResource.find(params)
  #   departments.to_jsonapi
  # end
end
