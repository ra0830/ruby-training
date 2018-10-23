class Vending_machine
  AVAILABLE_MONEY = [10, 50, 100, 500, 1000]
  def start
    @amount = 0
    while true
      puts "投入金額:#{@amount}円"
      puts '----------------------------------------------------------------------------------'
      puts '1:お金の投入(10,50,100,500,1000円のみ利用可です)'
      puts '2:お金の返却'
      puts '3:商品の購入(水)：100円'
      puts '4:操作を終了する'
      number = gets.to_i
      if number == 1 
        puts '金額を打ち込んで下さい'
        money = gets.to_i
        if  AVAILABLE_MONEY.include?(money)
          @amount += money
        else
          puts 'このお金は利用できません(10,50,100,500,1000円のみ利用可です)'
        end
      elsif number == 2
        puts "#{@amount}円返却します"
        break
      elsif number == 3
        price = 100
        if @amount >= price
          @amount = @amount - price
          puts '水を購入しました'
        else
          puts 'お金が足りません'
        end
      else number == 4
        break   
      end
    end
  end
end
Vending_machine.new.start