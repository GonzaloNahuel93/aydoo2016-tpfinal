require 'rspec'
require 'spec_helper'
require_relative '../model/Estrella'

describe 'Estrella' do

  it 'Se verifica que se inicialice una Estrella con la vida y masa por default' do
    estrella = Estrella.new

    #La vida y masa de la estrella deben ser 100 para cada una
    expect(estrella.vida).to eq 100
    expect(estrella.masa).to eq 100
  end

  it 'Se verifica que se inicialice una Estrella con la vida indicada' do
    estrella = Estrella.new(5000,800)

    #La vida de la estrella debe ser 5000
    expect(estrella.vida).to eq 5000
  end

  it 'Se verifica que se inicialice una Estrella con la masa indicada' do
    estrella = Estrella.new(8500,45000)

    #La masa de la estrella debe ser 45000
    expect(estrella.masa).to eq 45000
  end

  it 'Se verifica que se inicialice una Estrella con la vida en 0 (Cero) cuando se inserta un numero negativo para la vida' do
    estrella = Estrella.new(-500,500)

    #La vida de la estrella debe ser 0
    expect(estrella.vida).to eq 0
  end

  it 'Se verifica que se inicialice una Estrella con la masa en 0 (Cero) cuando se inserta un numero negativo para la masa' do
    estrella = Estrella.new(500,-500)

    #La masa de la estrella debe ser 0
    expect(estrella.masa).to eq 0
  end

end