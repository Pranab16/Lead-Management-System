class WelcomeController < ApplicationController

  def index
    @leads = Lead.where('due_date >= ?', Date.today).order('due_date')
    @categories = Category.all
  end

end
