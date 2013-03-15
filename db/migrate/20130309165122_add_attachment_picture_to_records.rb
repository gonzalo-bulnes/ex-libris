class AddAttachmentPictureToRecords < ActiveRecord::Migration
  def self.up
    change_table :records do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :records, :picture
  end
end
