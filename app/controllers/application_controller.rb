class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  # test route
  get "/task/say_hi" do
    Task.first.say_hi.to_json
  end

  get "/" do
    Category.all.to_json(only: [:id, :name, :color], include: {
      tasks: { only: [:id, :description, :high_priority]}
    })
  end

  get "/categories" do
    categories = Category.all.to_json
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

  patch "/tasks/:id" do
    task = Task.find(params[:id])
    task.update(
      description: params[:description],
      high_priority: params[:high_priority]
    )
    task.to_json
  end

  delete "/tasks/:id" do
    task = Task.find(params[:id])
    task.destroy
    task.to_json
  end

  post "/categories" do
    category = Category.create(
      name: params[:name],
      color: params[:color]
    )
    category.to_json
  end

  delete "/categories/:id" do
    category = Category.find(params[:id])
    category.destroy
    category.to_json
  end

end
