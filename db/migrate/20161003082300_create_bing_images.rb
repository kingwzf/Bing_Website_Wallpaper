class CreateBingImages < ActiveRecord::Migration[5.0]
  def change
    create_table :bing_images do |t|
      t.string :date
      t.string :link
      t.string :local
      t.string :qiniu
      t.timestamps
    end
  end
end
