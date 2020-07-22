class CareersController < ApplicationController
  def suggestions
    @careers = Career.all
  end

  def show
  end
end
