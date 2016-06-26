require 'rspec'
require 'spec_helper'
require_relative '../model/Misil'

describe 'Misil' do

  it 'Se verifica que se inicialice un Misil con la vida y masa por default' do

    misil = Misil.new

    #La vida y masa del misil deben ser 100 para cada una
    expect(misil.vida).to eq 100
    expect(misil.masa).to eq 100

  end

  it 'Se verifica que se inicialice un Misil con la vida indicada' do

    misil = Misil.new(300,200)

    #La vida del misil debe ser 300
    expect(misil.vida).to eq 300

  end

  it 'Se verifica que se inicialice un Misil con la masa indicada' do

    misil = Misil.new(500,400)

    #La masa del misil debe ser 400
    expect(misil.masa).to eq 400

  end

#  it 'Se verifica que se inicialice un Misil con la vida 0 (Cero) cuando se inserta un numero negativo para la vida' do

#    misil = Misil.new(-100,100)

    #La vida del misil debe ser 0
#    expect(misil.vida).to eq 0

#  end

#  it 'Se verifica que se inicialice un Misil con la masa 0 (Cero) cuando se inserta un numero negativo para la masa' do

#    misil = Misil.new(100,-100)

    #La masa del misil debe ser 0
#    expect(misil.masa).to eq 0

#  end

end