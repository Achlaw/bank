class Transaction

  attr_reader :history

  def initialize
    @history = []
  end

  def add_deposit_history(amount, balance)
    @history << {Date: Time.new.strftime("%d/%m/%Y"), Credit: amount, Balance: balance}
  end

end