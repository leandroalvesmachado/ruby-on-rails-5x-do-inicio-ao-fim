class Coin < ApplicationRecord
    # sabe que o model é mining_type ligado com a coluna mining_type_id
    # optional: true informa que a coluna não é obrigatória
    belongs_to :mining_type #, optional: true
end
