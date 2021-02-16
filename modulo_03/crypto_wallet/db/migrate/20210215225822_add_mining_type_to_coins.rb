class AddMiningTypeToCoins < ActiveRecord::Migration[5.2]
  def change
    # adiciona automaticamente o _id no fim da coluna, no caso mining_type_id
    add_reference :coins, :mining_type, foreign_key: true
  end
end
