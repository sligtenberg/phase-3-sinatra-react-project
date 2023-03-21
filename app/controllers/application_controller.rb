class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get "/categories" do
    Category.all.to_json
  end

  get "/tasks" do
    Task.all.to_json
  end

  post "/tasks" do
    task = Task.create(
      description: params[:description],
      category_id: params[:category_id],
      high_priority: params[:high_priority]
    )
    task.to_json
  end

  delete "/tasks/:id" do
    task = Task.find(params[:id])
    task.destroy
    task.to_json
  end

end
