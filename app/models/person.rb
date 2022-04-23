class Person
  require 'date'
  BIRTH_FORMAT = '%-m/%-d/%Y'
  attr_reader :first_name, :last_name, :city, :birth_date
  def initialize(params, date_format)
    @first_name = params["first_name"]
    @last_name = params["last_name"]
    @city = params["city"]
    @birth_date = format_birthdate(params["birthdate"], date_format) rescue nil
  end

  def to_s
    "#{first_name}, #{city}, #{birth_date.strftime(BIRTH_FORMAT)}"
  end


  private    
    def format_birthdate(date, date_format)
      Date.strptime(date, date_format)
    end
end