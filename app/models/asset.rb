class Asset < ActiveRecord::Base

  belongs_to :listing, inverse_of: :asset

  has_attached_file :photo1,
    path: "/users/:class/:user/:attachment/:id/:filename",
    styles: { large: "700x400>", medium: "490x368>"},
    convert_options: { all: "-auto-orient" }

  has_attached_file :photo2,
  path: "/users/:class/:user/:attachment/:id/:filename",
  styles: { large: "700x400>", medium: "490x368>"},
  convert_options: { all: "-auto-orient" }

  has_attached_file :photo3,
    path: "/users/:class/:user/:attachment/:id/:filename",
    styles: { large: "700x400>", medium: "490x368>"},
    convert_options: { all: "-auto-orient" }


    validates_attachment :photo1,
    content_type: {
      content_type:  /^image\/(png|jpeg)/ },
    size: { in: 0..10000.kilobytes }

    validates_attachment :photo2,
    content_type: {
      content_type:  /^image\/(png|jpeg)/ },
    size: { in: 0..10000.kilobytes }

    validates_attachment :photo3,
    content_type: {
      content_type:  /^image\/(png|jpeg)/ },
    size: { in: 0..10000.kilobytes }

    validates :photo1, presence: true, unless: :photo2
    validates :photo2, presence: true, unless: :photo3
    validates :photo3, presence: true, unless: :photo1
    validates :listing_id, presence: true

end
