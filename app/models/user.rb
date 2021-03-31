class User < ApplicationRecord
  update_index('users#user') { self }
  enum status: { unconfirmed: 0, confirmed: 1 }
end
