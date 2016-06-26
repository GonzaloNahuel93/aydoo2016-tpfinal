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

  it 'Se verifica que un Efecto Nulo no altere el estado de un Misil' do
    efecto_nulo = Efecto_Nulo.new
    misil = Misil.new(200,200)

    efecto_nulo.aplicar(misil, nil)

    #Estado actualizado del misil
    expect(misil.vida).to eq 200
    expect(misil.masa).to eq 200
  end

  it 'Se verifica que un Efecto Nulo no altere el estado de una Bomba' do
    efecto_nulo = Efecto_Nulo.new
    bomba = Bomba.new(300,300)

    efecto_nulo.aplicar(bomba, nil)

    #Estado actualizado de la bomba
    expect(bomba.vida).to eq 300
    expect(bomba.masa).to eq 300
  end

  it 'Se verifica que un Efecto Nulo no altere el estado de un Asteroide' do
    efecto_nulo = Efecto_Nulo.new
    asteroide = Asteroide.new(400,400)

    efecto_nulo.aplicar(asteroide, nil)

    #Estado actualizado del asteroide
    expect(asteroide.vida).to eq 400
    expect(asteroide.masa).to eq 400
  end

end