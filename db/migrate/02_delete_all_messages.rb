class DeleteAllMessages < ActiveRecord::Migration
  def change
    Message.delete_all
  end
end
