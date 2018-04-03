=begin

자신만의 메소드 사전을 만듭니다!

def 이름_메소드명     #메소드에 대한 설명
  메소드사용
  #=> 예상되는결과
end

다음과 같은 형식으로 아래의 #메소드작성 주석뒤에 코드를 작성합니다.
Ruby On Rails를 사용하면서 가장많이 사용하는 Ruby의 요소는 method 입니다.
method를 많이 알아둔다면 그만큼 코딩이 쉬워질거예요.
가능한 많은 메소드를 직접 irb로 써보세요.
이번과제는 여러분이 공부하는만큼 스스로 가져가는게 많은 과제일거예요.
화이팅하세요! 과제 형식이나 버그에 관련해서는 언제나 질문하세요.

=end

#매번 새로운 변수를 만들기 귀찮다면 아래를 사용해도 되고 각자 만들어 사용해도 됩니다.
var_integer = 123
var_string = "likelion"
var_boolean_1 = true
var_boolean_2 = false
var_array = [1,2,3,4,5]
var_hash = {
  key1: 1,
  key2: 2,
  key3: "likelion",
  key4: "konkuk",
  key5: true,
  key6: false
}

#메소드 주석 (여기부터 메소드를 작성하세요.)

#1
def jimin_leng1th   #배열이나 문자열의 길이를 측정하는 메소드
  a = [1,2,3]
  b = "likelion"
  puts a.length
  puts b.length
   puts "\n"
  # => 3
  # => 8
end

#2
def jimin_include #문자열에 해당 내용(글자)이 있는지 확인하는 메소드 
  print "영어단어를 입력하세요: " 
  user_input = gets.chomp
  if user_input.include? "a"
    print "#{user_input}에는 a가 들어있습니다"
    else
    print "#{user_input}에는 a가 들어있지 않습니다"
  end
   puts "\n"
  # => apple
  # => apple에는 a가 들어있습니다

end

#3
def jimin_gsub #문자열에 해당 내용(글자)가 있으면 다른 글자로 바꿔서 출력하는 메소드
  print "영어단어를 입력하세요: " 
  user_input = gets.chomp
  user_input.gsub!(/s/, "tr")
  print user_input
  puts "\n"
  # => see
  # => tree
end

#4
def jimin_upcase #문자열을 대문자로 바꿔주는 메소드
  print "영어단어를 입력하세요:"
  user_input = gets.chomp
  puts user_input.upcase
  puts "\n"
  # => tree
  # => TREE
end

#5
def jimin_downcase #문자열을 소문자로 바꿔주는 메소드
  print "영어단어를 입력하세요:"
  user_input = gets.chomp
  puts user_input.downcase
  puts "\n"
  # => TREE
  # => tree
end

#6
def jimin_rand #0~입력한 숫자(max) 사이의 임의의 값을 랜덤으로 출력하는 메소드
  puts "숫자를 입력하세요: "  
  max = gets.chomp.to_i
  puts rand(max)
  puts "\n"
  # => 10
  # => 8 (0~10 까지 랜덤)
end

#7
def jimin_reverse #문자열을 거꾸로 출력하는 메소드
  print "영어단어를 입력하세요:"
  user_input = gets.chomp
  puts user_input.reverse
  puts "\n"
  # => tree
  # => eert
end

#8
def jimin_capitalize #문자열의 첫번째 글자를 대문자로 바꿔주는 메소드
  a = "likelion"
  b = "seoul"

  puts a.capitalize
  puts b.capitalize
  puts "\n"
  # => Likelion
  # => Seoul
end

#9
def jimin_split #문자열을 공백 전후로 분리해서 배열로 만들어주는 메소드
  a = "I am a girl"
  b = "like lion"

  puts a.split
  puts b.split
  puts "\n"
  # => ["i","am","a","girl"]
  # => ["like","lion"]
end

#10
def jimin_push #배열의 끝에 원소를 추가하는 메소드 
  var_array = [1,2,3,4,5]
  var_array << 6
  var_array.push(7)

  puts var_array
  puts "\n"
  # => [1,2,3,4,5,6,7]
end

#11
def jimin_unshift #배열의 시작에 원소를 추가하는 메소드
  var_array = [1,2,3,4,5]
  var_array.unshift(0)
  var_array.unshift(9)

  puts var_array
  puts "\n"
  # => [9,0,1,2,3,4,5]
end

#12
def jimin_shift #배열의 앞에서부터 해당 숫자만큼 원소를 제거하는 메소드
  var_array = [1,2,3,4,5]
  var_array.shift(2)
  var_array.shift(1)

  puts var_array
  puts "\n"
  # => [4,5]
end

#13
def jimin_pop #배열의 뒤에서부터 해당 수만큼 원소를 제거하는 메소드
  var_array = [1,2,3,4,5]
  var_array.pop(2)
  var_array.pop(1)

  puts var_array
  puts "\n"
  # => [1,2]
end

#14
def jimin_sort #원소를 순서대로 정렬하는 메소드
  array = [7,1,8,5,2]
  array.sort!

  puts array
  # => [1,2,5,7,8] 
end

#15
def jimin_select #
  weight = {
    a: 40,
    b: 50,
    c: 80,
    d: 100
  }
  puts weight.select {|name, weight| weight<70}
  # => {:a=>40 :b=>50}
end

#16
def jimin_each_key #key 값만을 출력하는 메소드
  weight = {
    a: 40,
    b: 50,
    c: 80,
    d: 100
  }
  puts weight.each_key {|key| puts key}
  # => a,b,c,d
end

#17
def jimin_each_value #value 값 만을 출력하는 메소드
  weight = {
    a: 40,
    b: 50,
    c: 80,
    d: 100
  }
  puts weight.each_value {|value| puts value}
  # => 40,50,80,100
end

#18
def jimin_delete #키값을 통해 키-값 쌍을 제거할수있다
  weight = {
    a: 40,
    b: 50,
    c: 80,
    d: 100
  }
  weight.delete(:c)
  puts weight
  #{:a=>40, :b=>50, :d=>100}
end

#19
def jimin_upto #숫자를 하나씩 더하면서 출력하는 메소드 
  10.upto(15) {|num| print num, ""}
  puts "\n"
  # => 101112131415
end

#20
def jimin_is_a? #?뒤에오는 자료형에 해당하는지 boolean타입으로 알 수 있다.
  a = "jimin"
  b = :jimin
  c = 22

  puts a.is_a? Symbol
  puts b.is_a? String
  puts c.is_a? Integer  
  # => false
  # => false
  # => true
end

#21
def jimin_respond_to? #해당 메소드를 사용 할수있는지 boolean값 반환하는 메소드
   hash = {
    a: 10,
    b: 20,
    c: 30,
    d: 40
  }
  puts hash.respond_to?(:shift)
  puts hash.respond_to?(:is_a?)
  puts hash.respond_to?(:delete)
  # => true
  # => true
  # => true
end

#22
def jimin_downto #숫자를 하나씩 빼면서 출력하는 메소드 
  15.downto(10) {|num| print num, ""}
  puts "\n"
  # => 151413121110
end

#23
def jimin_to_s #문자열을 심볼로 변환
  a = "jimin"
  puts a.to_sym
  # => :jimin
end

#24
def jimin_to_string #심볼을 문자열로 변환
 b = :jimin
 puts b.to_s
  # => "jimin" 
end

#25
def jimin_floor #해당숫자보자 작은 정수중에서 가장 큰 정수를 반환 
  puts (0.134355).floor
  puts (-3.3421).floor
  # => 0
  # => -4
end

#26
def jimin_empty? #배열이 비었는지 아닌지 반환
  arr = []
  puts arr.empty?
  # => true
end

#27
def jimin_eql? #한 배열이 다른 배열과 같은지 반환
  puts [ "a", "b", "c" ].eql?(["a", "b", "c"])
  puts [ "a", "b", "c" ].eql?(["a", "b"])
  puts [ "a", "b", "c" ].eql?(["b", "c", "d"])
# =>true
# =>false
# =>false
end

#28
def jimin_fill #배열을 원하는 것으로 채우는 메소드
 a = [ 1, 2, 3, 4 ]
  print a.fill(5)
  puts "\n"
  print a.fill(1, 2, 2)
  puts "\n"
  print a.fill(2, 0, 1)
  puts "\n"
  #=> [5,5,5,5]
  #=> [5,5,1,1]
  #=> [2,5,1,1]
end

#29
def jimin_first #배열 첫번째요소 출력
  a = [ "q", "r", "s", "t" ]
  puts a.first 
  #=> "q"
end

#30 
def jimin_join #배열의요소를 string값으로 반환
  puts [ "a", "b", "c" ].join
  puts [ "a", "b", "c" ].join("-")
  #=>abc
  #=>a-b-c
end

#여기 이 두 주석 사이에 메소드를 작성하시면 됩니다~

puts "==================================="
puts "=========메소드 사전만들기========="
puts "==================================="

dic_flag = 0

while dic_flag == 0
  puts "1. 검색         2. 종료"

  user_input = gets.chomp.to_i

  case user_input
  when 1
    puts "검색할 메소드를 입력하세요"
    send(gets.chomp)
  when 2
    puts "종료합니다"
    dic_flag += 1
  else
    puts "1과 2중 다시 입력해주세요."
  end
end
