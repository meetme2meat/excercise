require 'csv'
class CSVParser < Parser
  @@converters = [ -> (value) { CITIES[value.to_sym] || value }]

  def parse(io_data, date_format)
    reader = CSV.new(io_data, headers: true, col_sep: col_sep, converters: @@converters)
    reader.each.map { |row| Person.new(row.to_h, date_format) }
  end
end