require 'rspec'
require './labWork1.rb'

RSpec.describe "Laboratory Work 1" do

  it "#greetings with age > 18" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return("Данте", "Спардавчук", 42)

    expect(greeting).to eq(["Данте", "Спардавчук", 42])
  end

  it "#greetings with age < 18" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return("Дева", "Мария", 17)

    expect(greeting).to eq(["Дева", "Мария", 17])
  end

  it "#greetings with incorrect age" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return("Дева", "Мария", "Семнадцать")

    expect(greeting).to eq('error')
  end

  it "#foobar with first number = 20" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(20, 15)

    expect(foobar).to eq(15)
  end

  it "#foobar with numbers != 20" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(15, 15)

    expect(foobar).to eq(30)
  end

  it "#foobar with second number = 20" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(10, 20)

    expect(foobar).to eq(10)
  end

  it "#foobar with incorrect first number" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return("awd", 20)

    expect(foobar).to eq('error')
  end
end
