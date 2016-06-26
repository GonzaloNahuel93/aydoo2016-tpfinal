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

    nave = Nave.new(200,200)

    #La vida de la nave deben ser 200
    expect(nave.vida).to eq 200

  end

end