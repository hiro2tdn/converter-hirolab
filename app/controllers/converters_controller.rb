class ConvertersController < ApplicationController
  require 'uri'
  def index
    begin
      @decode = params[:decode_button]
      if params[:decode_button]
        @result_value = URI.unescape(params[:input_value])
      else
        @result_value = URI.escape(params[:input_value])
      end
    rescue => e
      @result_value = 'controller error'
    end
    render
  end
end
