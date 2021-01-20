require 'sinatra/json'

class EmployeeDirectoryApp < Sinatra::Application
  DB = Sequel.connect(ENV['DATABASE_URL'])
  DB.loggers << Logger.new($stdout)

  use Rack::JSONBodyParser

  get '/' do
    erb :graphiql, locals: {
      api_path: '/graphql',
      page_title: 'Employee Directory with Graphiti & GraphQL'
    }
  end

  post '/graphql' do
    context = {
      # we need to provide session and current user
      # session: session,
      # current_user: current_user
    }
    result = API::Schema.execute(
      params[:query],
      variables: params[:variables],
      context: context,
    )
    json result
  end
end
