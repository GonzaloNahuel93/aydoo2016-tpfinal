require 'rspec'
require 'spec_helper'
require_relative '../model/ObjetoEspacial'

describe 'ObjetoEspacial' do

  it 'Se verifica que un Objeto Espacial este vivo cuando se inicializa con su vida y masa por default' do
    objeto_espacial = ObjetoEspacial.new
    expect(objeto_espacial.esta_vivo).to eq true
  end

  it 'Se verifica que un Objeto Espacial este vivo cuando se inicializa con una vida y masa determinada' do
    objeto_espacial = ObjetoEspacial.new(100,100)
    expect(objeto_espacial.esta_vivo).to eq true
  end

  it 'Se verifica que un Objeto Espacial no este vivo cuando se inicializa su vida con 0 (Cero)' do
    objeto_espacial = ObjetoEspacial.new(0,100)
    expect(objeto_espacial.esta_vivo).to eq false
  end

  it 'Se verifica que un Objeto Espacial no este vivo cuando se inicializa su vida con un numero negativo' do
    objeto_espacial = ObjetoEspacial.new(-10,100)
    expect(objeto_espacial.esta_vivo).to eq false
  end

  it 'Se verifica que un Objeto Espacial no este vivo cuando se inicializa su masa con 0 (Cero)' do
    objeto_espacial = ObjetoEspacial.new(100,0)
    expect(objeto_espacial.esta_vivo).to eq false
  end

  it 'Se verifica que un Objeto Espacial no este vivo cuando se inicializa su masa con un numero negativo' do
    objeto_espacial = ObjetoEspacial.new(100,-10)
    expect(objeto_espacial.esta_vivo).to eq false
  end

  it 'Se verifica que un Objeto Espacial no este vivo cuando se inicializa su vida y su masa con 0 (Cero)' do
    objeto_espacial = ObjetoEspacial.new(0,0)
    expect(objeto_espacial.esta_vivo).to eq false
  end

end