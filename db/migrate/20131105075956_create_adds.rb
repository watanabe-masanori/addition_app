class CreateAdds < ActiveRecord::Migration
  def change
    create_table :adds do |t|
      t.float :num1
      t.float :num2

      t.timestamps
    end
  end
end
