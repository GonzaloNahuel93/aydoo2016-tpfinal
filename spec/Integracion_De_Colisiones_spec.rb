require 'rspec'
require_relative '../model/Nave'

describe 'Integracion_De_Colisiones' do

  it 'Se verifica que la colision Nave-Nave se lleve a cabo de manera correcta' do
    primera_nave = Nave.new(200,200)
    segunda_nave = Nave.new(150,150)

    primera_nave.colisionar_con(segunda_nave)

    expect(primera_nave.vida).to eq 100
    expect(segunda_nave.vida).to eq 50
  end

end