class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :tweet_id
      t.string :screen_name
      t.text :content

      t.timestamps
    end
  end
end
