class AddReferencesToMicroposts < ActiveRecord::Migration[6.0]
  def change
    add_reference :microposts, :user, index: true
  end
end
