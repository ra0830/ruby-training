class Vending_machine
   AVAILABLE_MONEY = [10, 50, 100, 500, 1000]

  def start
    @amount = 0
    @sales = 0
    @coke_stock = 5
    @red_bull_stock = 5
    @water_stock = 5

    while true
      puts '----------------------------------------------------------------------------------'
      puts "投入金額:#{@amount}円"
      puts "在庫情報:コーラ #{@coke_stock}個,レッドブル #{@red_bull_stock}個,水 #{@water_stock}個"
      puts "売り上げ:#{@sales}円"
      puts '----------------------------------------------------------------------------------'
      puts '以下より行う操作を選んで下さい'
      puts '1:お金の投入(10,50,100,500,1000円のみ利用可です)'
      puts '2:お金の返却'
      puts '3:ジュースの購入'
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
        puts '商品を選択して下さい'
        puts '1:コーラ'
        puts '2:レッドブル'
        puts '3:水'
        drink_number = gets.to_i

        if drink_number == 1
          if @coke_stock == 0
            puts '品切れです'
          else
            price =120
            if @amount >= price
              @sales = price + @sales
              @amount = @amount - price
              @coke_stock = @coke_stock -1
              puts 'コーラを購入しました'
            else
              puts 'お金が足りません'
            end
          end

        elsif drink_number == 2
          if @red_bull_stock == 0
            puts '品切れです'
          else
            price = 200
            if @amount >= price
              @sales = price + @sales
              @amount = @amount - price
              @red_bull_stock = @red_bull_stock -1
              puts 'レッドブルを購入しました'
            else
              puts 'お金が足りません'
            end
          end

        else drink_number == 3
          if @water_stock == 0
            puts '品切れです'
          else
            price =200
            if @amount >= price
              @sales = price + @sales
              @amount = @amount - price
              @water_stock = @water_stock -1
              puts '水を購入しました'
            else
              puts 'お金が足りません'
            end
          end
        end

      else number == 4
        break  
      end
    end
  end
end

Vending_machine.new.start


