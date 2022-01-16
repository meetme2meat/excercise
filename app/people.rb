require_relative './person'
require_relative '../lib/parser/parser'
class People
  class << self
    ## populate: load individual person from the io data.
    def populate(io_data, format, col_sep, date_format)
      parser(format).
        new(col_sep).
          parse(io_data, date_format)
    end

    private
      # parser: find relevant parser depending upon the format.
      def parser(format); Parser.find(format); end
  end
end
