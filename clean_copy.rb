class Vendingmachine
  AVAILABLE_MONEY = [10, 50, 100, 500, 1000]
  
  def initialize
    @amount = 0
    @sales = 0
    @coke_stock = 5
    @red_bull_stock = 5
    @water_stock = 5
  end
 
  #お金の投入
  # POINT: メッセージの表示と処理を分ける
  def insert
  # def insert(money)
    # POINT: コマンドライン上の制御と、ビジネスロジックは分離した方が良い
    puts '金額を打ち込んで下さい(10,50,100,500,1000円のみ利用可です)'
    money = gets.to_i
    if AVAILABLE_MONEY.include?(money)
      @amount += money
      puts "#{@amount}円投入されています"
    else
      puts 'このお金は利用できません(10,50,100,500,1000円のみ利用可です)'
    end  
  end

　#お金の返却
  def refund
    puts "#{@amount}円返却します"
    @amount = 0
  end

  def stock(drink_number)
    case drink_number
    when 1
      @coke_stock
    when 2
      @red_bull_stock
    when 3
      @water_stock
    else
      raise "invalid drink_number"
    end
  end

  PRICE_MAP = {
    1 => 120,
    2 => 200,
    3 => 100
  }

  #商品の購入（在庫と売り上げの管理）
  def purchase
    puts '商品を選択して下さい'
    puts '1:コーラ(120円)'
    puts '2:レッドブル(200円)'
    puts '3:水(100円)'
    drink_number = gets.to_i

    if stock(drink_number) == 0
      puts '売り切れです...'
      return
    end

    drink_price = PRICE_MAP[drink_number]

    if @amount >= drink_price
      @sales = drink_price + @sales
      @amount -= drink_price
      stock(drink_number) -= 1
      puts 'ドリンクを購入しました'
    else
      puts 'お金が足りません...'
    end

    # if drink_number == 1
    #   if @coke_stock ==0
    #     puts '売り切れ'
    #   else
    #     price = 120
    #     if @amount >= price
    #        @sales = price + @sales
    #        @amount = @amount - price
    #        @coke_stock = @coke_stock -1
    #        puts 'コーラを購入しました'
    #     else
    #       puts 'お金が足りません'
    #     end
    #   end
    # elsif drink_number == 2
    #   if @red_bull_stock == 0
    #      puts '品切れです'
    #   else
    #     price = 200
    #     if @amount >= price
    #        @sales = price + @sales
    #        @amount = @amount - price
    #        @red_bull_stock = @red_bull_stock -1
    #        puts 'レッドブルを購入しました'
    #     else
    #        puts 'お金が足りません'
    #     end
    #   end

    # else drink_number == 3
    #   if @water_stock == 0
    #      puts '品切れです'
    #   else
    #     price =200
    #     if @amount >= price
    #        @sales = price + @sales
    #        @amount = @amount - price
    #        @water_stock = @water_stock -1
    #        puts '水を購入しました'
    #     else
    #        puts 'お金が足りません'
    #     end
    #   end
    # end
  end

  #在庫情報
  def stock
    puts "在庫情報:コーラ #{@coke_stock}個,レッドブル #{@red_bull_stock}個,水 #{@water_stock}個"
  end

  #売り上げ情報
  def sales
    puts "売り上げ:#{@sales}円"
  end
end
# require '/Users/rintaro/ruby-training/clean-copy'
