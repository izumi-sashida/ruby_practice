puts "今日はどの項目を何分勉強した？"

contents = [
  { subject: "ruby", time: 15 },
  { subject: "rails", time: 15 },
]

contents.each.with_index(1) do |content, i|
  puts "#{i}.#{content[:subject]}(#{content[:time]})"
end

selected_number = gets.to_i - 1
selected_content = contents[selected_number]

loop do
  if selected_number >= 2
    puts "1か2を記入してください"
    print "学習項目を入力 >"
    selected_number = gets.to_i - 1
    selected_content = contents[selected_number]
  else
    puts " #{selected_content[:subject]}ですね."
    break
  end
end

print "学習時間を入力 >"
number_of_time = gets.to_i

total_time = number_of_time * selected_content[:time]

puts <<~TEXT
       学習記録
       ruby  :
       rails :
     TEXT
