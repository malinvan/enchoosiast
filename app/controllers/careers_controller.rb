require 'open-uri'
require 'nokogiri'

class CareersController < ApplicationController
  def suggestions
    @careers = Career.all
  end

  def show
    @career = Career.find(params[:id])
    books = []
    url = "https://austin.bibliocommons.com/v2/search?query=#{@career.title}&searchType=smart"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)
    html_doc.search('.cp-jacket-cover').each do |book_cover|
      html_doc.search('.cp-title').each do |book_title|
        books << { cover: book_cover, title: book_title}
      end
    end
    @book_groups = books.each_slice(3).to_a
  end
end
