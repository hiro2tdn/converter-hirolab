module ConvertersHelper
  def hbr(s, decode)
    s = h(s)
    if(decode)
      s.gsub(/\r\n|\r|\n/, "<br />")
    else
      s.gsub("%0D%0A", "<br />")
    end
  end
end
