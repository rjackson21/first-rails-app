class NamesController < ApplicationController
  def index
    @friends = Friend.all
  end
end
