# -*- encoding : utf-8 -*-

class Modo
  def p1
    @p1
  end

  def nome
    @nome
  end
  
  def ret
     "ação"
  end

  def nome=(nome)
    @nome = nome
  end

  def nome_preenchido?
    @nome.present?
  end
end




# a = Modo.new 
# a.nome = "Felipe"
# puts  "ola #{a.nome}"


=begin

array = [
  {:key1 => [1,2,3,4]}, 
  {:key2 => [5,6,7,8]}, 
  {:key3 => [9,0]}
]

puts "resultado array key1 = #{array[0][:key1].join(", ")}"
puts "resultado array key2 = #{array[1][:key2].join(", ")}"
puts "resultado array key3 = #{array[2][:key3].join(", ")}"



10.times{|i| puts i}

10.times do |i|

end


if 1 == 1
  puts "didox"
end

=end

puts "didox"





