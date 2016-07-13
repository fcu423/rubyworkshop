def hola_mundo
  return "hola" if 0.zero?
  "como"
end

def hola_mundo2
  hola_mundo
end

def hola_mundo3(string)
  puts string
end

hola_mundo3 "popo"
hola_mundo3("popo")

def hola4(a, h={})
end

hola4 a, a: "a"
hola4( a, a: "a")
hola4( a, {a: "a"})


def calculate(initial, final, additional = 0)
  if options[5]
    initial + options[:additional] + final
  else
    initial + final
  end
end

calculate(1,2)
calculate(1, 3, 5, 4, 4, 5, 6)

array1 = [1,2,3,4]
def agregar_al_array(arr)
  arr << 5
end
agregar_al_array(array1)
array1

str = "hola"
def agregar_al_array(str1)
  str1 << " mundo"
  "como no"
end
agregar_al_array(str)
str

str = 2
def agregar_al_array(str1)
  str1 = str1 + 2
  "como no"
end
agregar_al_array(str)
str

def method_name(name_1: "hola")
  puts name_1
end
method_name(name_1: "como no")


def foo(bar)
  bar = 'reference'
end
baz = 'value'
foo(baz)
​
puts "Ruby is pass-by-#{baz}"
# Ruby is pass-by-value
