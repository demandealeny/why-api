require 'pp'
class SearchController < ApplicationController
  def index
    @search = {}
    @search[:results] = []
    render if (@search[:request] = params[:search]).empty?
    @search[:results] = Question.search do
      fulltext params[:search] do
        phrase_fields title: 2.0
        query_phrase_slop 100
      end
    end.results
  end
end