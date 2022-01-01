require 'rspec'
require './labWork2.rb'

RSpec.describe "Laboratory Work 2" do

  it "#squareOrReverse, word have no 'CS' in the end" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(2, "Listen")

    expect(squareOrReverse).to eq("netsiL")
  end

  it "#squareOrReverse, word have 'CS' in the end" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(2, "Hello CS")

    expect(squareOrReverse).to eq(4)
  end

  it "#squareOrReverse with incorrect number" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return("Listen")

    expect(squareOrReverse).to eq('error')
  end

  it "#addPokemonToArray with incorrect number" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return("Blah")

    expect(addPokemonToArray).to eq('error')
  end

  it "#addPokemonToArray" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(2, "Charmander", "Orange", "Hoothoot", "Brown")

    expect(addPokemonToArray).to eq([{name: "Charmander", color: "Orange"}, {name: "Hoothoot", color: "Brown"}])
  end
end