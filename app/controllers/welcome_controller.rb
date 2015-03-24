class WelcomeController < ApplicationController
  def index
    @employees = Employee.all

  end
end
