require 'rspec'
require 'spec_helper'
require_relative '../model/Efecto_Masa'
require_relative '../model/Nave'
require_relative '../model/Misil'
require_relative '../model/Bomba'
require_relative '../model/Asteroide'
require_relative '../model/Estrella'

describe 'Efecto_Masa' do

  it 'Se verifica que un Efecto Masa altere correctamente la masa de una Nave en base a una Estrella' do
    efecto_masa = Efecto_Masa.new(0.5)
    nave = Nave.new(100,100)
    estrella = Estrella.new(200,200)

    #La nave debe incrementar su masa en un valor igual al 50% de la masa de la estrella
    efecto_masa.aplicar(nave, estrella)

    #Vida actualizada de la nave
    expect(nave.masa).to eq 200
  end

  it 'Se verifica que un Efecto Masa altere correctamente la masa de un Misil en base a un Asteroide' do
    efecto_masa = Efecto_Masa.new(-0.5)
    misil = Misil.new(500,500)
    asteroide = Asteroide.new(100,100)

    #El misil debe disminuir su masa en un valor igual al 50% de la masa del asteroide
    efecto_masa.aplicar(misil, asteroide)

    #Vida actualizada del misil
    expect(misil.masa).to eq 450
  end

  it 'Se verifica que un Efecto Masa altere correctamente la masa de una Bomba en base a una Nave' do
    efecto_masa = Efecto_Masa.new(0.1)
    bomba = Bomba.new(1000,1000)
    nave = Nave.new(1000,1000)

    #La bomba debe incrementar su masa en un valor igual al 10% de la masa de la nave
    efecto_masa.aplicar(bomba, nave)

    #Vida actualizada de la bomba
    expect(bomba.masa).to eq 1100
  end

end