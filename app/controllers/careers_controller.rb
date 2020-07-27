require 'open-uri'
require 'nokogiri'

class CareersController < ApplicationController
  def suggestions
    @careers = Career.all
  end

  def show
    @career = Career.find(params[:id])
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

end
