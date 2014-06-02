class AboutMe < ActiveRecord::Base
  STATUS = ["Professional Experience", "Side Projects", "Hobbies"]

  mount_uploader :photo, PhotoUploader

  scope :professional, -> { where(section_type: "Professional Experience") }
  scope :projects, -> { where(section_type: "Side Projects") }
  scope :hobbies, -> { where(section_type: "Hobbies") }
end
