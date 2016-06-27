require 'rspec'
require 'spec_helper'
require_relative '../model/EfectoNulo'
require_relative '../model/Nave'
require_relative '../model/Misil'
require_relative '../model/Bomba'
require_relative '../model/Asteroide'
require_relative '../model/Estrella'

describe 'EfectoNulo' do

  it 'Se verifica que un Efecto Nulo no altere el estado de una Nave' do
    efecto_nulo = EfectoNulo.new
    nave = Nave.new(100,100)

    efecto_nulo.aplicar(nave)

    #Estado actualizado de la nave
    expect(nave.vida).to eq 100
    expect(nave.masa).to eq 100
  end

  it 'Se verifica que un Efecto Nulo no altere el estado de un Misil' do
    efecto_nulo = EfectoNulo.new
    misil = Misil.new(200,200)

    efecto_nulo.aplicar(misil)

    #Estado actualizado del misil
    expect(misil.vida).to eq 200
    expect(misil.masa).to eq 200
  end

  it 'Se verifica que un Efecto Nulo no altere el estado de una Bomba' do
    efecto_nulo = EfectoNulo.new
    bomba = Bomba.new(300,300)

    efecto_nulo.aplicar(bomba)

    #Estado actualizado de la bomba
    expect(bomba.vida).to eq 300
    expect(bomba.masa).to eq 300
  end

  it 'Se verifica que un Efecto Nulo no altere el estado de un Asteroide' do
    efecto_nulo = EfectoNulo.new
    asteroide = Asteroide.new(400,400)

    efecto_nulo.aplicar(asteroide)

    #Estado actualizado del asteroide
    expect(asteroide.vida).to eq 400
    expect(asteroide.masa).to eq 400
  end

  it 'Se verifica que un Efecto Nulo no altere el estado de una Estrella' do
    efecto_nulo = EfectoNulo.new
    estrella = Estrella.new(500,500)

    efecto_nulo.aplicar(estrella)

    #Estado actualizado de la estrella
    expect(estrella.vida).to eq 500
    expect(estrella.masa).to eq 500
  end

end