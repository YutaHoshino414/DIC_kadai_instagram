class TopsController < ApplicationController
  def index
    render layout: false
  end

  def no_layout_action
    render layout: false
  end

end
