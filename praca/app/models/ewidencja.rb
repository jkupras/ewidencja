class Ewidencja < ApplicationRecord
  belongs_to :user
  validates_presence_of  :nr

end
