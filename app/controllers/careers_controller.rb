require 'open-uri'
require 'nokogiri'

class CareersController < ApplicationController
  before_action :set_career, except: :suggestions

  def suggestions
    user_traits = current_user.traits
    careers_of_traits = []
    user_traits.each do |trait|
      careers_of_traits << trait.careers
    end
    @careers = careers_of_traits.inject(:&)
  end

  def show
    @books = []
    url = "https://openlibrary.org/search?q=#{@career.title}&mode=ebooks&has_fulltext=true"
  #   html_file = open(url).read
  #   html_doc = Nokogiri::HTML(html_file)
  #   html_doc.search('.searchResultItem').each do |book|
  #     book_cover = book.search('.bookcover')
  #     book_details = book.search('.details')
  #     @books << { cover: book_cover.to_s, details: book_details.to_s }
  #   end
  end

  def toggle_like
    current_user.toggle_like(@career)
  end

  private

  def set_career
    @career = Career.find(params[:id])
  end
end
