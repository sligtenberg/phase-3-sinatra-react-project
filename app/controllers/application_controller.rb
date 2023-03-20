class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/categories" do
    Category.all.to_json
  end

  get "/tasks" do
    Task.all.to_json
  end

end
