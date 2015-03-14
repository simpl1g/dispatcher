module Dispatcher
  class InputParser

    def initialize(file_path)
      @file_path = file_path
    end

    def call
      content.split(/, |\n/)
    end

    private

    def content
      File.read(@file_path)
    end
  end
end