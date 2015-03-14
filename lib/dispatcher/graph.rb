module Dispatcher
  class Graph

    def initialize(file_path)
      @data = InputParser.new(file_path).call
    end

    def distance_of_the_route(route)
    end

    def shortest_route(from, to)
    end

    def number_of_the_routes_with_stops(from, to, comparator, stops_count)
    end

    def number_of_the_routes_with_distance(from, to, comparator, distance)
    end

    private

    def content
      File.read(@file_path)
    end
  end
end