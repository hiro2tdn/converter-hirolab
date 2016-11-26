class ConvertersController < ApplicationController
  require 'uri'
  def index
    begin
      @input_value = URI.unescape(params[:input_value])
    rescue => e
      @input_value = 'controller error'
    end
    render
  end
end
