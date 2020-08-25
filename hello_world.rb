puts "様々な言語のHello World"

languages = ["Ruby", "PHP", "Java"]

languages.each do |language|
  case language
  when "Ruby"
    puts 'Ruby:puts "Hello World!"'
  when "PHP"
    puts 'PHP:echo "Hello World!";'
  when "Java"
    puts 'Java:System.out.println("Hello World!");'
  else
    puts "不当な値です。"
  end
end
