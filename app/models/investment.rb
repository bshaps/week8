class Investment < ActiveRecord::Base

  def value
    price * shares
  end
  
end
