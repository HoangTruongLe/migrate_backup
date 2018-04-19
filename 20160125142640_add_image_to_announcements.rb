class AddImageToAnnouncements < ActiveRecord::Migration
  def change
    add_attachment :announcements, :image1
    add_attachment :announcements, :image2
  end
end
