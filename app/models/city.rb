class City < ActiveRecord::Base
  has_one :user, dependent: :nullify
end
