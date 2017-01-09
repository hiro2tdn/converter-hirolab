class ConvertersController < ApplicationController
  require 'uri'
  def index
    if(params[:input_value])
      lines = []
      params[:input_value].each_line do |line|
        line = line.chomp
        if params[:decode_button]
          line = URI.unescape(line)
        else
          line = URI.escape(line)
        end
        lines.push(line)
      end
      @result_value = lines.join("\n");
    end
    render
  end
end
