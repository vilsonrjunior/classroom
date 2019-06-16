class PagesController < ApplicationController
  skip_before_action :authenticate_user!, expect: [:home, :contact, :careers]

  def home
  end

  def contact
  end

  def careers
  end

end
