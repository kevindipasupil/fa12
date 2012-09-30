class Location < ActiveRecord::Base
  # attr_accessible :title, :body

  # Validations
  validates :name, :presence => true
  validates :latitude, :presence => true
  validates :longitude, :presence => true

  # Associations
  has_and_belongs_to_many :users
  has_many :posts
  
  def to_hash
    {
      :id => self.id,
      :name => self.name,
      :longitude => self.longitude
      :latitude => self.latitude
    }
  end

end
