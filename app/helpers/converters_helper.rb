module ConvertersHelper
  def hbr(s)
    s = h(s)
    s.gsub(/\r\n|\r|\n/, "<br />")
  end
end
