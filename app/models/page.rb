class Page < ActiveRecord::Base
  include Publishable # Adds published? publish! and scopes
  extend FriendlyId
  friendly_id :slug, use: :slugged
  validates :name, :presence=>"true"


end
