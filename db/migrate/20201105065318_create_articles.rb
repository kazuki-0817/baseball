class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|

      t.references :user,null: false
      t.integer :team_id,null: false
      t.string :title,null: false
      t.string :videoid,null: false
      t.text :body
      t.timestamps
    end
  end
end
