class AddSubtitleToMicroposts < ActiveRecord::Migration[6.0]
  def change
    add_column :microposts, :subtitle, :string
  end
end
