class Parser
  autoload :CSVParser, './lib/parser/csv.rb'
  autoload :Default, './lib/parser/default.rb'
  CITIES = {
    "NYC": "New York City",
    "LA": "Los Angeles"
  } 

  ## #find: return the parser for the given. If not present return default
  def self.find(format=nil)
    case format
    when :csv
      return CSVParser
    else
      return Default
    end
  end


  def initialize(col_sep)
    @col_sep = col_sep
  end

  ## parse: raise error when attempting to call parent parse
  def parse(reader, date_format) 
    # raise NotImplemented.new("not implemented")
    raise 'not implemented'
  end

  protected
    attr_reader :col_sep
end


# class NotImplemented < StandardError ; end