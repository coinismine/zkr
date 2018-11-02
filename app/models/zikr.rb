class Zikr < ApplicationRecord
  belongs_to :user
  validates_presence_of :name, :city, :country, :phone
  validates_numericality_of :astagfaar, :durud_sharif, :kalma_tayyaba, :phone
  validates_length_of :name, :maximum => 29
  validates_length_of :city, :maximum => 17
  validates_length_of :country, :maximum => 20
  validates_length_of :astagfaar, :maximum => 7
  validates_length_of :kalma_tayyaba, :maximum => 7
  validates_length_of :durud_sharif, :maximum => 7

end
