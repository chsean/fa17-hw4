class DisplaysController < ActionController::Base
  def show
    @cats = Cat.all
    @todos = Todo.all
    @users = User.all
    end

  def new
    @todo = Todo.new
    #Todo.create(tasks: :tasks , finished: :finished)
  end

  def create
    @todo = Todo.create(tasks: params[:todo][:tasks], finished: params[:todo][:finished])
    #or @todo = Todo.create(params[:todo])
    redirect_to '/'
  end

end
