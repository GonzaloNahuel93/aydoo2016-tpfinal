require 'rspec'
require 'spec_helper'
require_relative '../model/ObjetoEspacial'

describe 'ObjetoEspacial' do

  it 'Se verifica que un Objeto Espacial este vivo cuando se inicializa con su vida y masa por default' do
    objeto_espacial = ObjetoEspacial.new
    expect(objeto_espacial.esta_vivo).to eq true
  end

end