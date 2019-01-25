class ListsController < ApplicationController
  before_action :logged_in_user
  before_action :ensure_list_correct_user
  
  def show
  end
end
