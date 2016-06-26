require 'rspec'
require 'spec_helper'
require_relative '../model/Bomba'

describe 'Bomba' do

  it 'Se verifica que se inicialice una Bomba con la vida y masa por default' do
    bomba = Bomba.new

    #La vida y masa de la bomba deben ser 100 para cada una
    expect(bomba.vida).to eq 100
    expect(bomba.masa).to eq 100
  end

  it 'Se verifica que se inicialice una Bomba con la vida indicada' do
    bomba = Bomba.new(10,50)

    #La vida de la bomba debe ser 10
    expect(bomba.vida).to eq 10
  end

  it 'Se verifica que se inicialice una Bomba con la masa indicada' do
    bomba = Bomba.new(250,500)

    #La masa de la bomba debe ser 500
    expect(bomba.masa).to eq 500
  end

  it 'Se verifica que se inicialice una Bomba con la vida en 0 (Cero) cuando se inserta un numero negativo para la vida' do
    bomba = Bomba.new(-300,300)

    #La vida de la bomba debe ser 0
    expect(bomba.vida).to eq 0
  end

  it 'Se verifica que se inicialice una Bomba con la masa en 0 (Cero) cuando se inserta un numero negativo para la masa' do
    bomba = Bomba.new(300,-300)

    #La masa de la bomba debe ser 0
    expect(bomba.masa).to eq 0
  end

end