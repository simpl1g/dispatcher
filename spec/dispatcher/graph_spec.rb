require 'spec_helper'

describe Dispatcher::Graph do
  let(:file_path) { 'input.txt' }
  let(:subject) { described_class.new(file_path) }

  it 'counts distance of the route' do
    expect(subject.distance_of_the_route('A-B-C')).to     eq 9
    expect(subject.distance_of_the_route('A-D')).to       eq 5
    expect(subject.distance_of_the_route('A-D-C')).to     eq 13
    expect(subject.distance_of_the_route('A-E-B-C-D')).to eq 22
    expect(subject.distance_of_the_route('A-E-D')).to     eq 'NO SUCH ROUTE'
  end

  it 'counts number of the route depending on stops count' do
    expect(subject.number_of_the_routes_with_stops('C', 'C', '>=', 3)).to eq 2
    expect(subject.number_of_the_routes_with_stops('A', 'C', '==', 4)).to eq 3
  end

  it 'counts shortest route beetween 2 points' do
    expect(subject.shortest_route('A', 'C')).to eq 9
    expect(subject.shortest_route('B', 'B')).to eq 9
  end

  it 'counts number of the route depending on distance' do
    expect(subject.number_of_the_routes_with_distance('C', 'C', '<', 30)).to eq 7
  end
end