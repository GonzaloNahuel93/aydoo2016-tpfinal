require 'rspec'
require_relative '../model/Nave'
require_relative '../model/Misil'
require_relative '../model/Bomba'
require_relative '../model/Asteroide'
require_relative '../model/Estrella'

describe 'Integracion_De_Colisiones' do

  it 'Se verifica que la colision Nave-Nave se lleve a cabo de manera correcta' do
    primera_nave = Nave.new(200,200)
    segunda_nave = Nave.new(150,150)

    primera_nave.colisionar_con(segunda_nave)

    #Vida & Masa de la primera_nave
    expect(primera_nave.vida).to eq 100
    expect(primera_nave.masa).to eq 200

    #Vida & Masa de la segunda_nave
    expect(segunda_nave.vida).to eq 50
    expect(segunda_nave.masa).to eq 150
  end

  it 'Se verifica que la colision Nave-Misil se lleve a cabo de manera correcta' do
    nave = Nave.new(100,100)
    misil = Misil.new(200,200)

    nave.colisionar_con(misil)

    #Vida & Masa de la nave
    expect(nave.vida).to eq 20
    expect(nave.masa).to eq 100

    #Vida & Masa del misil
    expect(misil.vida).to eq 100
    expect(misil.masa).to eq 200
  end

  it 'Se verifica que la colision Nave-Bomba se lleve a cabo de manera correcta' do
    nave = Nave.new(100,100)
    bomba = Bomba.new(150,150)

    nave.colisionar_con(bomba)

    #Vida & Masa de la nave
    expect(nave.vida).to eq 50
    expect(nave.masa).to eq 100

    #Vida & Masa de la bomba
    expect(bomba.vida).to eq 50
    expect(bomba.masa).to eq 150
  end

  it 'Se verifica que la colision Nave-Asteroide se lleve a cabo de manera correcta' do
    nave = Nave.new(100,100)
    asteroide = Asteroide.new(100,100)

    nave.colisionar_con(asteroide)

    #Vida & Masa de la nave
    expect(nave.vida).to eq 100
    expect(nave.masa).to eq 50

    #Vida & Masa del asteroide
    expect(asteroide.vida).to eq 100
    expect(asteroide.masa).to eq 110
  end

  it 'Se verifica que la colision Nave-Estrella se lleve a cabo de manera correcta' do
    nave = Nave.new(100,100)
    estrella = Estrella.new(100,100)

    nave.colisionar_con(estrella)

    #Vida & Masa de la nave
    expect(nave.vida).to eq 200
    expect(nave.masa).to eq 100

    #Vida & Masa de la estrella
    expect(estrella.vida).to eq 0
    expect(estrella.masa).to eq 100
  end

  it 'Se verifica que la colision Misil-Nave se lleve a cabo de manera correcta' do
    misil = Misil.new(100,100)
    nave = Nave.new(100,100)

    misil.colisionar_con(nave)

    #Vida & Masa del misil
    expect(misil.vida).to eq 0
    expect(misil.masa).to eq 100

    #Vida & Masa de la nave
    expect(nave.vida).to eq 20
    expect(nave.masa).to eq 100
  end

end