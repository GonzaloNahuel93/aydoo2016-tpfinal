require 'rspec'
require 'spec_helper'
require_relative '../model/Asteroide'

describe 'Asteroide' do

  it 'Se verifica que se inicialice un Asteroide con la vida y masa por default' do

    asteroide = Asteroide.new

    #La vida y masa del asteroide deben ser 100 para cada una
    expect(asteroide.vida).to eq 100
    expect(asteroide.masa).to eq 100

  end

#  it 'Se verifica que se inicialice un Asteroide con la vida indicada' do

#    asteroide = Asteroide.new(10,50)

    #La vida del asteroide debe ser 10
#    expect(asteroide.vida).to eq 10

#  end

#  it 'Se verifica que se inicialice un Asteroide con la masa indicada' do

#    asteroide = Asteroide.new(250,500)

    #La masa del asteroide debe ser 500
#    expect(asteroide.masa).to eq 500

#  end

#  it 'Se verifica que se inicialice un Asteroide con la vida en 0 (Cero) cuando se inserta un numero negativo para la vida' do

#    asteroide = Asteroide.new(-100,100)

    #La vida del Asteroide debe ser 0
#    expect(asteroide.vida).to eq 0

#  end

#  it 'Se verifica que se inicialice un Asteroide con la masa en 0 (Cero) cuando se inserta un numero negativo para la masa' do

#    asteroide = Asteroide.new(100,-100)

    #La masa del asteroide debe ser 0
#    expect(asteroide.masa).to eq 0

#  end

end