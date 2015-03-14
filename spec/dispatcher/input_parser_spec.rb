require 'spec_helper'

describe Dispatcher::InputParser do
  let(:file_path) { 'input.txt' }
  let(:subject) { described_class.new(file_path) }

  it 'reads an array of data from input file' do
    expect(subject.call).to eq ['AB5', 'BC4', 'CD8', 'DC8', 'DE6', 'AD5', 'CE2', 'EB3', 'AE7']
  end
end