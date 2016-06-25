require 'rspec'
require_relative '../model/Nave'
require_relative '../model/Misil'
require_relative '../model/Bomba'
require_relative '../model/Asteroide'
require_relative '../model/Estrella'

describe 'Ejemplos' do

  it 'Colision Nave-Asteroide: Se verifica que se efectuen correctamente los cambios luego de la colision' do
    nave = Nave.new(100,100)
    asteroide = Asteroide.new(50,100)

    #Una nave (vida=100, masa=100) colisiona con un asteroide (vida=50, masa=100)
    nave.colisionar_con(asteroide)

    #nave: Disminuye su masa en un valor igual al 50% de la masa del otro objeto => nave (vida=100, masa=50)
    expect(nave.vida).to eq 100
    expect(nave.masa).to eq 50

    #asteroide: Aumenta su masa en un valor igual al 10% de la masa del otro objeto => asteroide (vida=100, masa=110)
    expect(asteroide.vida).to eq 50
    expect(asteroide.masa).to eq 110
  end

  it 'Colision Estrella-Misil: Se verifica que se efectuen correctamente los cambios luego de la colision' do
    estrella = Estrella.new(50,10)
    misil = Misil.new(10,30)

    #Una estrella (vida=50, masa=10) colisiona con un misil (vida=10, masa=30)
    estrella.colisionar_con(misil)

    #estrella: Efecto Nulo => estrella (vida=50, masa=10)
    expect(estrella.vida).to eq 50
    expect(estrella.masa).to eq 10

    #misil: Efecto Nulo => misil (vida=10, masa=30)
    expect(misil.vida).to eq 10
    expect(misil.masa).to eq 30
  end

  it 'Colision Bomba-Bomba: Se verifica que se efectuen correctamente los cambios luego de la colision' do
    primera_bomba = Bomba.new(200,90)
    segunda_bomba = Bomba.new(20,45)

    #Una estrella (vida=200, masa=90) colisiona con otra bomba (vida=20, masa=45)
    primera_bomba.colisionar_con(segunda_bomba)

    #primera_bomba: Efecto Destructivo, 100 unidades => primera_bomba (vida=100, masa=90)
    expect(primera_bomba.vida).to eq 100
    expect(primera_bomba.masa).to eq 90

    #segunda_bomba: Efecto Destructivo, 100 unidades => segunda_bomba (vida=0, masa=45)
    expect(segunda_bomba.vida).to eq 0
    expect(segunda_bomba.masa).to eq 45
  end

  it 'Colision Bomba-Asteroide: Se verifica que se efectuen correctamente los cambios luego de la colision' do
    bomba = Bomba.new(200,100)
    asteroide = Asteroide.new(30,100)

    #Una bomba (vida=200, masa=100) colisiona con un asteroide (vida=30, masa=100)
    bomba.colisionar_con(asteroide)

    #bomba: Efecto Destructivo 100% => bomba (vida=0, masa=100)
    expect(bomba.vida).to eq 0
    expect(bomba.masa).to eq 100

    #asteroide: Efecto Nulo => asteroide (vida=30, masa=100)
    expect(asteroide.vida).to eq 30
    expect(asteroide.masa).to eq 100
  end

end