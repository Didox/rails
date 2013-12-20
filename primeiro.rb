# -*- encoding : utf-8 -*-

require 'debugger'
require 'rspec'


=begin

class Carro
  def marca
    "Fiat"
  end
end



it "testa funcao marca" do
  defined?(Carro.new.marca).should be_true
end


class Fiat < Carro
  attr_accessor :modelo

  def marca
    "FIAT - #{super}"
  end
end


class Fiat < Carro
  attr_accessor :modelo
  
  alias_method :marca_original, :marca

  def marca
    "FIAT - #{marca_original}"
  end
end








module Accessor 
  def my_attr_accessor(name) 
    ivar_name = "@#{name}" 
    define_method(name) do 
      instance_variable_get(ivar_name) 
    end 

    define_method("#{name}=") do |val| 
      instance_variable_set(ivar_name, val) 
    end 
  end 
end 
 
class Example 
  extend Accessor 
  my_attr_accessor :camila 
end 

e = Example.new
e.camila = "dd"
e.camila



module Aula
  class Klass

    def method_missing(meth) 
      return attrs[meth.to_sym] if attrs.has_key?(meth.to_sym)
      raise "elemento não encontrado"
    end

    private

    def attrs 
      {
        :key1 => "key1 value", 
        :key2 => "key2 value"
      }
    end

  end
end

puts Aula::Klass.new.key1


x = ""



=begin
















class Singleton
  private_class_method :new

  def self.statico(param = nil)
    "criar novo instancia #{param}"
  end

  def self.statico_vanessa(param = "vanessa")
    "criar novo instancia #{param}"
  end
end



c = Fiat.new
puts c.calcula_marca2





class VW < Carro
  attr_accessor :modelo

  def marca
    "Volks"
  end

  def vendedor
    "Comeri"
  end
end


# c = Fiat.new
# c.set_marca("didox")
# puts c.get_marca


# c = Carro.new
# c.nome = "teste"
# c.ano = "2005"
# c.quantidade_de_portas = 4
# c.cor = "branco"
# puts c.inspect

# c = VW.new
# c.nome = "teste"
# c.ano = "2005"
# c.quantidade_de_portas = 4
# c.cor = "branco"
# c.modelo = "modelo vw"
# puts c.inspect

# c = Fiat.new
# c.nome = "teste"
# c.ano = "2005"
# c.quantidade_de_portas = 4
# c.cor = "branco"

# puts c.inspect



=begin







class Modo
  @@nome = "ss"


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






def numero(index)
  return "numero 1" if index == 1
  return "numero 2" if index == 2
  return "numero 3" if index == 3
  return "numero 5" if index == 4

  "defaulr"

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


puts "didox"



















"aula de ruby 2"


modo.faz_replace("aula de ruby 2", "aula", "aula ruby")


"aula ruby de ruby 2"


modo.tranforma_em_constante("abril")

"Abril"


modo.maiuscula("abril")

"ABRIL"


modo.minuscula("ABRIL")

"abril"


modo.esta_em_maiuscula?("ABRIL")

true


=end










