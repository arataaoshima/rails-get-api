require 'net/http'
class HomeController < ApplicationController
  def top
  end

  def starwars
    uri = URI.parse("https://swapi.dev/api/people/11/")
    response = Net::HTTP.get_response(uri)
    data = JSON.parse(response.body, symbolize_names: true)
    @name = data[:name]
  end

  def characters
    num = params[:id]
    url = "https://swapi.dev/api/people/" + num
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    data = JSON.parse(response.body, symbolize_names: true)
    @name = data[:name]
    @height = data[:height]
    @gender = data[:gender]
  end

  def char_all
  end

  def pokemon
    num = params[:id]
    url = "https://pokeapi.co/api/v2/pokemon/" + num
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    data = JSON.parse(response.body, symbolize_names: true)
    @name = data[:forms][0][:name]
  end

end
