class CuentaBancaria
  attr_accessor :nombre_de_usuario
  def initialize(nombre_de_usuario, numero_de_cuenta, vip = 0)
    
    unless (numero_de_cuenta.digits.count== 8)
      raise RangeError, 'Numero de cuenta invalido, el numero de cuenta debe contener 8 digitos'
    end
    @nombre_de_usuario = nombre_de_usuario
    @numero_de_cuenta = numero_de_cuenta
    @vip = vip
  end

  def numero_de_cuenta
    return "#{@vip}-#{@numero_de_cuenta}"
  end
end

p1 = CuentaBancaria.new('Sofia',11223344)
puts p1.numero_de_cuenta

p2 = CuentaBancaria.new('Lucia',11223344,1)
puts p2.numero_de_cuenta

