class CreateBingImages < ActiveRecord::Migration[5.0]
  def change
    create_table :bing_images do |t|
      t.string :link

      t.timestamps
    end
  end
end
