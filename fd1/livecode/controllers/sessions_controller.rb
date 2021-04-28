class SessionsController
  def initialize(employee_repository, view)
    @employee_repository = employee_repository
    @view = view
  end

  def log_in
    # ask the user for a username
    username = @view.ask_for("username")
    # ask the user for a password
    password = @view.ask_for("password")
    # check if there exists a user with that username
    user = @employee_repository.find_by_username(username)
    # check if its password matches the one given by the user
    if user && user.password == password
      # if true, return the corresponding user
      @view.congratulation
      user
    else
      # if false, recursive method call -> call the #log_in method
      @view.wrong_credentials
      log_in
    end
  end
end