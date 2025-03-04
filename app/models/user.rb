class User < ApplicationRecord
	has_many :shifts, dependent: :destroy
	has_one :schedule, dependent: :destroy
end
