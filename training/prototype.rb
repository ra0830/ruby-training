class Vendingmachine
  AVAILABLE_MONEY = [10, 50, 100, 500, 1000]

  def initialize
    @price = 100
    @amount = 0
    @coin = 10
  end

  def insert
      @amount += @coin
      puts "#{@amount}円投入しました。"
      # puts 'このお金は利用できません(10,50,100,500,1000円のみ利用可です)'
  end

  def refund
    puts "#{@amount}円返却します"
    @amount = 0
  end

  def purchase
    if @amount >= @price
      puts '商品を購入しました'
    end 
  end
end


    


