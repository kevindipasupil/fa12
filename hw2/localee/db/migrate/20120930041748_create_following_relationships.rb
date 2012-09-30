class CreateFollowingRelationships < ActiveRecord::Migration
  def change
    create_table :following_relationships, id => false do |t|
      t.integer :user_id
      t.integer :location_id

      t.timestamps
    end
  end
end
