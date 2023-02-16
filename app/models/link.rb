class Link < ApplicationRecord

  validates :short_url_key, uniqueness: true
  validates_presence_of :short_url_key, :short_url, :destination_url
end
