puts "hola mmundo"

string = "string"
string = 1
string = []

a = [1, "", [], {}, (2+2)]

#Hash
h = {a: "a", b: {w: a }}
h.values
h.keys
h[:a]


# String methods
string = "hola mundo"
puts string.reverse
puts string + string
puts string == string
puts string.gsub("hola", "mundo")
puts string[1]
puts string[0..2]
puts "hola #{1 + 1}"

### Fixnum
puts  1 + 1
puts  1 - 1
puts  1 * 1
puts  1 / 1
puts  1 ** 1

### Symbols
var = :otra_cosa
var.to_s

### Each
a = [1,2,3,4]
[nil, 1, [2,3, [1, [2,[3]]]]].flatten.uniq.compact.length
### block
a.each do |valor|
  puts valor * valor
end

a.map { |e| e * e }

h = {a: "a", b: "b"}
h.each do |v, k|
  puts "#{v} / #{k}"
end

h.map do |v, k|
  [v, k]
end
####
while(true) do |variable|
  asdasd
  break;
end

### if

if 1 == 1
  puts "hola"
end

puts "hola" if 1 == 1

if 1 == 1 && 2 == 2
  p "gola "
else
  p "como"

end

if ("")
  p "asd"
  p "dwdwdw" if "a"
elsif condition
  p "www"
end

puts "hola mundo" unless 1 == 1
