class CreateJoinTableCarsColors < ActiveRecord::Migration[6.1]
  def change
    create_join_table :cars, :colors do |t|
      t.index [:car_id, :color_id]
      # t.index [:color_id, :car_id]
    end
  end
end
