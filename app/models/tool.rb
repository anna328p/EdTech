class Tool < ApplicationRecord
    monetize :price, as: :price_dollars
end
