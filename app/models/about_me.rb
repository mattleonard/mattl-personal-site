class AboutMe < ActiveRecord::Base
  STATUS = ["Professional Experience", "Hobbies"]

  mount_uploader :photo, PhotoUploader

  scope :professional, -> { where(section_type: "Professional Experience") }
  scope :hobbies, -> { where(section_type: "Hobbies") }
end
