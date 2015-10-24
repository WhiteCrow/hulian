class Caption < ActiveRecord::Base
  def text
    line2.blank? ? line1 : line1 + "\n" + line2
  end
end
