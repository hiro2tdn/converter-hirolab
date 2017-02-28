class ConvertersController < ApplicationController
  require 'uri'
  def index
    if(params[:input_value])
      lines = []
      params[:input_value].each_line do |line|
        line = line.chomp
        if params[:decode_button] then
          line = URI.unescape(line)
        elsif params[:encode_button] then
          line = URI.escape(line)
        elsif params[:replace_button] then
          line = line.gsub(/\\/, "/")
        end
        lines.push(line)
      end
      @result_value = lines.join("\n");
    end
    render
  end
end
