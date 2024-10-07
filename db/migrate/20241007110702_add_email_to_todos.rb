class AddEmailToTodos < ActiveRecord::Migration[7.1]
  def change
    add_column :todos, :email, :string
  end
end
