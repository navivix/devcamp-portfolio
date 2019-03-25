class Topic < ApplicationRecord
  validates_presence_of :title

  has_many :blogs

  def self.with_blogs site_admin_logged_in
    if site_admin_logged_in
      includes(:blogs).where.not(blogs: { id: nil }).order(:title)
    else
      includes(:blogs).where.not(blogs: { id: nil, status: 0 }).order(:title)
    end
  end
end
