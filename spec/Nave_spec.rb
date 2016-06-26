require 'rspec'
require 'spec_helper'
require_relative '../model/Nave'

describe 'Nave' do

  it 'Se verifica que se inicialice una Nave con la vida y masa por default' do

    nave = Nave.new

    #La vida y masa de la nave deben ser 100 para cada una
    expect(nave.vida).to eq 100
    expect(nave.masa).to eq 100

  end

  it 'Se verifica que se inicialice una Nave con la vida indicada' do

    nave = Nave.new(200,100)

    #La vida de la nave debe ser 200
    expect(nave.vida).to eq 200

  end

  it 'Se verifica que se inicialice una Nave con la masa indicada' do

    nave = Nave.new(200,300)

    #La masa de la nave debe ser 300
    expect(nave.masa).to eq 300

  end

  it 'Se verifica que se inicialice una Nave con la vida 0 (Cero) cuando se inserta un numero negativo para la vida' do

    nave = Nave.new(-100,100)

    #La vida de la nave debe ser 0
    expect(nave.vida).to eq 0

  end

  it 'Se verifica que se inicialice una Nave con la masa 0 (Cero) cuando se inserta un numero negativo para la masa' do

    nave = Nave.new(100,-100)

    #La masa de la nave debe ser 0
    expect(nave.masa).to eq 0

  end

end