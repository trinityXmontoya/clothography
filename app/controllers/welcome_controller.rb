class WelcomeController < ApplicationController

  skip_before_action :authenticate

  def about
  end

  def faq
  end

  def home
  end

end
