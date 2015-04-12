class Lead < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  STATUS = {empty: '', done: 'Done', price_agreement: 'Price Agreement', on_hold: 'On Hold/Rejection'}

  STATUS.each {|k, v| scope k, where(status: v)}

  def create(res)

  end

end
