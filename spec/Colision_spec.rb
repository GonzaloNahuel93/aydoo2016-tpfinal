require 'rspec'
require 'spec_helper'
require_relative '../model/Colision'
require_relative '../model/ObjetoMuertoException'

describe 'Colision' do

  it 'Se verifica que se inicialice una Colision con objetos espaciales vivos' do
    primer_objeto_espacial = ObjetoEspacial.new
    segundo_objeto_espacial = ObjetoEspacial.new

    colision = Colision.new(primer_objeto_espacial, segundo_objeto_espacial)
  end

  it 'Se verifica que se inicialice una Colision con objetos espaciales vivos determinando su vida y masa previamente' do
    primer_objeto_espacial = ObjetoEspacial.new(500,500)
    segundo_objeto_espacial = ObjetoEspacial.new(250,250)

    colision = Colision.new(primer_objeto_espacial, segundo_objeto_espacial)
  end

  it 'Se verifica que no se inicialice una Colision con el objeto colisionador muerto' do
    primer_objeto_espacial = ObjetoEspacial.new(0,0)
    segundo_objeto_espacial = ObjetoEspacial.new

    expect {colision = Colision.new(primer_objeto_espacial, segundo_objeto_espacial)}.to raise_exception ObjetoMuertoException
  end

  it 'Se verifica que no se inicialice una Colision con el objeto colisionado muerto' do
    primer_objeto_espacial = ObjetoEspacial.new
    segundo_objeto_espacial = ObjetoEspacial.new(0,0)

    expect {colision = Colision.new(primer_objeto_espacial, segundo_objeto_espacial)}.to raise_exception ObjetoMuertoException
  end

  it 'Se verifica que no se inicialice una Colision con los objetos colisionador y colisionado muertos' do
    primer_objeto_espacial = ObjetoEspacial.new(0,0)
    segundo_objeto_espacial = ObjetoEspacial.new(0,0)

    expect {colision = Colision.new(primer_objeto_espacial, segundo_objeto_espacial)}.to raise_exception ObjetoMuertoException
  end

end