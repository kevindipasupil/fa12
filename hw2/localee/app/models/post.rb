class Post < ActiveRecord::Base
  # attr_accessible :title, :body

  # Validations
  validates :text, :presence => true
  validates :user_id, :presence => true
  validates :location_id, :presence => true

  # Associations
  belongs_to :user
  belongs_to :location

  def to_hash
    {
      :id => self.id,
      :text => self.text,
      :user => self.user_id,
      :location => self.location_id
    }
  end

end
