class PagesController < ApplicationController
  before_action :set_content

  def landing
  end

  def squeeze
  end

  def payment
  end

  def confirmation
  end

  def legals
  end

  def set_content
    content = Content.find_by(page: action_name)
    @title = content.title
    @cta = content.cta
  end
end
