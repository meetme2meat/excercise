require_relative '../models/people'
class PeopleController
  def initialize(params)
    @params = params
  end

  def normalize
    people = People.populate(params[:dollar_format],
      :csv,' $ ', '%d-%m-%Y')

    people += People.populate(params[:percent_format],
        :csv , ' % ', '%Y-%m-%d')


    people.sort_by{ |p| p.send(params[:order]) }.collect(&:to_s)
  end

  private
    attr_reader :params
end
