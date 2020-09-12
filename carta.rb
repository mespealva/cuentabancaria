class Carta
  attr_accessor :numero, :pinta
  def initialize(numero = Random.rand(1..13), pinta = ['C','D','E','T'].sample)
    unless (numero >=1 && numero <= 13) && (['C','D','E','T'].include?(pinta))
      raise ArgumentError , "Numero o pinta ingresada no son validas: Numero #{numero}, Pinta #{pinta}"
    end
    	@numero = numero
    	@pinta = pinta
  end
end

cartas = []

5.times{cartas.push(Carta.new)}
print cartas
puts
#carta = Carta.new(14,'f')

