require 'rspec'
require 'spec_helper'
require_relative '../model/Nave'
require_relative '../model/Misil'
require_relative '../model/Bomba'
require_relative '../model/Asteroide'
require_relative '../model/Estrella'

describe 'Nave' do

  it 'Se verifica que se inicialice una Nave con la vida y masa por default' do

    nave = Nave.new

    #La vida y masa de la nave deben ser 100 para cada una
    expect(nave.vida).to eq 100
    expect(nave.masa).to eq 100

  end

end