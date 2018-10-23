class Machine
  AVAILABLE_MONEY = [10, 50, 100, 500, 1000]
  
  def initialize
    @amount = 0
    @sales = 0
    @coke_stock = 5
    @red_bull_stock = 5
    @water_stock = 5
  end

  def insert(money) 
    if  AVAILABLE_MONEY.include?(money)
      @amount += money
      puts "#{@amount}円投入しました。"
    else
      puts 'このお金は利用できません(10,50,100,500,1000円のみ利用可です)'
    end
  end 

  def refund(money)
    @amount += money
    puts "#{@amount}円返却します"
  end

  def stock
  end


  
end

# お金投入
# Machine.new.insert()

# お金返却
# Machine.new.refund()



