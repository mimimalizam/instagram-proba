class CreateInstaTags < ActiveRecord::Migration
  def change
    create_table :insta_tags do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
