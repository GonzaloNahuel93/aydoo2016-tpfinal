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

  it 'Se verifica que la colision Misil-Misil se lleve a cabo de manera correcta' do
    primer_misil = Misil.new(200,200)
    segundo_misil = Misil.new(200,200)

    primer_misil.colisionar_con(segundo_misil)

    #Vida & Masa del primer_misil
    expect(primer_misil.vida).to eq 100
    expect(primer_misil.masa).to eq 200

    #Vida & Masa del segundo_misil
    expect(segundo_misil.vida).to eq 100
    expect(segundo_misil.masa).to eq 200
  end

  it 'Se verifica que la colision Misil-Bomba se lleve a cabo de manera correcta' do
    misil = Misil.new(200,200)
    bomba = Bomba.new(100,200)

    misil.colisionar_con(bomba)

    #Vida & Masa del misil
    expect(misil.vida).to eq 200
    expect(misil.masa).to eq 200

    #Vida & Masa de la bomba
    expect(bomba.vida).to eq 50
    expect(bomba.masa).to eq 200
  end

  it 'Se verifica que la colision Misil-Asteroide se lleve a cabo de manera correcta' do
    misil = Misil.new(200,200)
    asteroide = Asteroide.new(300,300)

    misil.colisionar_con(asteroide)

    #Vida & Masa del misil
    expect(misil.vida).to eq 200
    expect(misil.masa).to eq 200

    #Vida & Masa del asteroide
    expect(asteroide.vida).to eq 300
    expect(asteroide.masa).to eq 300
  end

  it 'Se verifica que la colision Misil-Estrella se lleve a cabo de manera correcta' do
    misil = Misil.new(200,200)
    estrella = Estrella.new(1000,1000)

    misil.colisionar_con(estrella)

    #Vida & Masa del misil
    expect(misil.vida).to eq 200
    expect(misil.masa).to eq 200

    #Vida & Masa de la estrella
    expect(estrella.vida).to eq 1000
    expect(estrella.masa).to eq 1000
  end

  it 'Se verifica que la colision Bomba-Nave se lleve a cabo de manera correcta' do
    bomba = Bomba.new(200,200)
    nave = Nave.new(100,100)

    bomba.colisionar_con(nave)

    #Vida & Masa de la bomba
    expect(bomba.vida).to eq 100
    expect(bomba.masa).to eq 200

    #Vida & Masa de la nave
    expect(nave.vida).to eq 50
    expect(nave.masa).to eq 100
  end

  it 'Se verifica que la colision Bomba-Misil se lleve a cabo de manera correcta' do
    bomba = Bomba.new(250,250)
    misil = Misil.new(100,100)

    bomba.colisionar_con(misil)

    #Vida & Masa de la bomba
    expect(bomba.vida).to eq 125
    expect(bomba.masa).to eq 250

    #Vida & Masa del misil
    expect(misil.vida).to eq 100
    expect(misil.masa).to eq 100
  end

  it 'Se verifica que la colision Bomba-Bomba se lleve a cabo de manera correcta' do
    primera_bomba = Bomba.new(150,150)
    segunda_bomba = Bomba.new(150,150)

    primera_bomba.colisionar_con(segunda_bomba)

    #Vida & Masa de la primera_bomba
    expect(primera_bomba.vida).to eq 50
    expect(primera_bomba.masa).to eq 150

    #Vida & Masa de la segunda_bomba
    expect(segunda_bomba.vida).to eq 50
    expect(segunda_bomba.masa).to eq 150
  end

  it 'Se verifica que la colision Bomba-Asteroide se lleve a cabo de manera correcta' do
    bomba = Bomba.new(500,500)
    asteroide = Asteroide.new(1000,1000)

    bomba.colisionar_con(asteroide)

    #Vida & Masa de la bomba
    expect(bomba.vida).to eq 0
    expect(bomba.masa).to eq 500

    #Vida & Masa del asteroide
    expect(asteroide.vida).to eq 1000
    expect(asteroide.masa).to eq 1000
  end

  it 'Se verifica que la colision Bomba-Estrella se lleve a cabo de manera correcta' do
    bomba = Bomba.new(300,300)
    estrella = Estrella.new(300,300)

    bomba.colisionar_con(estrella)

    #Vida & Masa de la bomba
    expect(bomba.vida).to eq 200
    expect(bomba.masa).to eq 300

    #Vida & Masa de la estrella
    expect(estrella.vida).to eq 0
    expect(estrella.masa).to eq 300
  end

  it 'Se verifica que la colision Asteroide-Nave se lleve a cabo de manera correcta' do
    asteroide = Asteroide.new(1000,1000)
    nave = Nave.new(500,1000)

    asteroide.colisionar_con(nave)

    #Vida & Masa del asteroide
    expect(asteroide.vida).to eq 1000
    expect(asteroide.masa).to eq 1100

    #Vida & Masa de la nave
    expect(nave.vida).to eq 500
    expect(nave.masa).to eq 500
  end

  it 'Se verifica que la colision Asteroide-Misil se lleve a cabo de manera correcta' do
    asteroide = Asteroide.new(100,100)
    misil = Misil.new(100,100)

    asteroide.colisionar_con(misil)

    #Vida & Masa del asteroide
    expect(asteroide.vida).to eq 100
    expect(asteroide.masa).to eq 100

    #Vida & Masa del misil
    expect(misil.vida).to eq 100
    expect(misil.masa).to eq 100
  end

  it 'Se verifica que la colision Asteroide-Bomba se lleve a cabo de manera correcta' do
    asteroide = Asteroide.new(250,250)
    bomba = Bomba.new(1000,1000)

    asteroide.colisionar_con(bomba)

    #Vida & Masa del asteroide
    expect(asteroide.vida).to eq 250
    expect(asteroide.masa).to eq 250

    #Vida & Masa de la bomba
    expect(bomba.vida).to eq 0
    expect(bomba.masa).to eq 1000
  end

  it 'Se verifica que la colision Asteroide-Asteroide se lleve a cabo de manera correcta' do
    primer_asteroide = Asteroide.new(500,500)
    segundo_asteroide = Asteroide.new(600,600)

    primer_asteroide.colisionar_con(segundo_asteroide)

    #Vida & Masa del primer_asteroide
    expect(primer_asteroide.vida).to eq 500
    expect(primer_asteroide.masa).to eq 500

    #Vida & Masa del segundo_asteroide
    expect(segundo_asteroide.vida).to eq 600
    expect(segundo_asteroide.masa).to eq 600
  end

  it 'Se verifica que la colision Asteroide-Estrella se lleve a cabo de manera correcta' do
    asteroide = Asteroide.new(100,100)
    estrella = Estrella.new(5000,10000)

    asteroide.colisionar_con(estrella)

    #Vida & Masa del asteroide
    expect(asteroide.vida).to eq 100
    expect(asteroide.masa).to eq 100

    #Vida & Masa de la estrella
    expect(estrella.vida).to eq 0
    expect(estrella.masa).to eq 10000
  end

  it 'Se verifica que la colision Estrella-Nave se lleve a cabo de manera correcta' do
    estrella = Estrella.new(10000,10000)
    nave = Nave.new(500,500)

    estrella.colisionar_con(nave)

    #Vida & Masa de la estrella
    expect(estrella.vida).to eq 0
    expect(estrella.masa).to eq 10000

    #Vida & Masa de la nave
    expect(nave.vida).to eq 10500
    expect(nave.masa).to eq 500
  end

end