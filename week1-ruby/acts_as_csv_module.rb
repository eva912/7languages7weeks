module ActsAsCsv

  class CsvRow
    attr :contents

    def initialize(contents)
      @contents = contents
    end

  end

  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  module InstanceMethods
    attr_accessor :headers, :csv_contents

    def initialize
      read
    end

    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')
      file.each do |row|
        @csv_contents << row.chomp.split(', ')
      end
    end

    def each(&block)
      @csv_contents.each do |r|
        row = CsvRow.new(r)
        block.call(row)
      end
    end

  end

end

class RubyCsv
  include ActsAsCsv
  acts_as_csv
end

m = RubyCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect

m.each{|row| puts row.inspect }
