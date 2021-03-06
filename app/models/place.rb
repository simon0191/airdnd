# == Schema Information
#
# Table name: places
#
#  id              :integer          not null, primary key
#  country         :string
#  city            :string
#  price_per_night :decimal(, )
#  bedrooms        :integer
#  bathrooms       :integer
#  guests_capacity :integer
#  owner_id        :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  name            :string
#  description     :string
#

class Place < ApplicationRecord
  belongs_to :owner, foreign_key: "owner_id", class_name: "User"
end
