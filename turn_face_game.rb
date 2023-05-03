def turn_face_game
  face = ["上", "右", "下", "左"]
  computer_choice = rand(4)
  puts "あっち向いて〜〜"
  puts"0{上} 1{右} 2{下} 3{左}"
  player_choice = gets.chomp
  puts "ホイッ!"
  case player_choice
  when "0", "1", "2", "3"
    player_choice = player_choice.to_i
    puts "あなた: #{face[player_choice]}"
    puts "相手: #{face[computer_choice]}"
    if player_choice == computer_choice
      puts "#{@janken_winner}の勝ちです"
    else
      puts "もう一度じゃんけんをします"
      janken
    end
  else
    puts "0〜3の数字で入力してください"
    turn_face_game
  end
end
puts "あっち向いてホイをします"
puts"じゃんけん..."
def janken
  hands = ["グー", "チョキ", "パー"]
  computer_hand = rand(3)
  puts"0{グー} 1{チョキ} 2{パー} 3{戦わない}"
  player_hand = gets.chomp
  case player_hand 
  when "3"
    puts "ゲームを終了します"
    return false
  when "0", "1", "2"
    player_hand = player_hand.to_i
    puts "ホイっ！"
    puts "--------------------"
    puts "あなたは#{hands[player_hand]}を出しました"
    puts "相手は#{hands[computer_hand]}を出しました"
    puts "--------------------"
    if player_hand == computer_hand
      puts "あいこで〜"
      return true
    elsif (player_hand == computer_hand - 1) || (player_hand == 2 && computer_hand == 0)
      puts "あなたが指を指します"
      @janken_winner = "あなた" 
      turn_face_game
      return false
    else 
      puts "相手が指を指します"
      @janken_winner = "相手" 
      turn_face_game
      return false
    end
  else
    puts "0〜3の数字で入力してください"
    return true
  end
end
while janken do
end


