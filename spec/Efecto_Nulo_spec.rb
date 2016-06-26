require 'rspec'
require 'spec_helper'
require_relative '../model/Nave'
require_relative '../model/Misil'
require_relative '../model/Bomba'
require_relative '../model/Asteroide'
require_relative '../model/Estrella'

describe 'Efecto_Nulo' do

  it 'Se verifica que un Efecto Nulo no altere el estado de una Nave' do
    efecto_nulo = Efecto_Nulo.new
    nave = Nave.new(100,100)

    efecto_nulo.aplicar(nave, nil)

    #Estado actualizado de la nave
    expect(nave.vida).to eq 100
    expect(nave.masa).to eq 100
  end

end