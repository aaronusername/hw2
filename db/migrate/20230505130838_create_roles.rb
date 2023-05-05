class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string charactor
      t.integer movie_id
      t.integer studio_id
      t.timestamps
    end
  end
end
