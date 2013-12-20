# -*- encoding : utf-8 -*-

require 'debugger'

module Funcoes
  def self.included(o)
    o.extend(Staticos)
  end

  module Staticos
    def calcula_cep
      "calculado cep"
    end
  end


  def calcula_cpf
    "calculado"
  end

end


module Aula
  class Klass

    include Funcoes

    CONSTANTE = "abril"

    def metodo_instancia
      "criar novo instancia #{CONSTANTE}"
    end

    def self.metodo_de_classe_ou_statico
      "criar novo instancia #{CONSTANTE}"
    end

    def method_missing(meth) 
      return attrs[meth.to_sym] if attrs.has_key?(meth.to_sym)
      raise "elemento não encontrado"
    end

    private

    def attrs 
      {:key1 => "key1 value", :key2 => "key2 value"}
    end

  end
end

puts Aula::Klass.new.key1

debugger

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



class Carro
  attr_accessor :nome, :ano, :quantidade_de_portas, :cor

  @volante = "de couro"

  def marca
    @volante = "xyx"
    @volante
  end

  private

  def metodo_privado
    "privado"
  end


  protected

  def metodo_protegido
    "protegido"
  end
end


class Fiat < Carro
  attr_accessor :modelo

  def marca
    "FIAT - #{super}"
  end

  def venderdor
    "Itavema"
  end

  def set_marca(valor)
    @set_marca = "#{self.marca} - #{valor}"
  end

  def get_marca
    @set_marca
  end

  private

  def calcula_marca
     "ssss"
  end

  public

  def calcula_marca2
    "ssss #{self.metodo_privado}"
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










