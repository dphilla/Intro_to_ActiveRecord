class Film < ActiveRecord::Base
  belongs_to :genre
  belongs_to :director


  #I wanna see what's going on
  def self.total_sales
    sum(:box_office_sales)
  end

end
