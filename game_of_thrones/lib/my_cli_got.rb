require 'nokogiri'
require 'colorize'

class GOT
  
  def run 
    welcome
    list_of_house
    general_info
    menu
  end
  
  def welcome
    puts ""
    puts"       |>      |>                     |>      |>".bold
    puts"       |_-___-_|                      |_-___-_|".bold
    puts"        |vvvvv|                        |vvvvv|".bold
    puts"       |__[[]]_|                      |_[[]]__|".bold
    puts"      |   |**|  |_-_-_-_-_-_-_-_-_-_-_| |**|  |".bold
    puts"     |    |  |   vvvvvvvvvvvvvvvvvvvvv  |  |   |".bold
    puts"     |    |XX|          GAME OF         |XX|   |".bold
    puts"     |    |()|          THRONES         |()|   |".bold
    puts"     |     \/      vvvvvvvvvvvvvvvvv     \/    |".bold
    puts"     |                  +++++                  |".bold
    puts"     |                _/     \_                |".bold
    puts"     |               _|   O   |_               |".bold
    puts"     |               _|  ooo  |_               |".bold
    puts"     |mmmmmmmmmmmmmmmm|       |mmmmmmmmmmmmmmmm|".bold
    puts ""
    puts "To see the list of the great houses of Westeros, type: list."
    puts "To see the information of all the houses of Westeros, type: all"
  end 
  
  def list_of_house
    input=gets.strip
    if input== "list"
      list = Scraper.house.text.split("House")
      list.each_with_index{|house,index| puts "[#{index+1}] #{house}"}
    end
    list
end

  def general_info
    input=gets.strip
    if input == "all"
      all = Scraper.house.text.split("\n")
      all.each_with_index{|house,index| puts "[#{index+1}] #{house}"}
    elsif input == "exit"
    system "clear" or sys "cls"
    exit
  else
    puts "give me something to work..Try again".bold
    
    end
  all
end

  def menu
    input=gets.strip
end
 
  def sigils
    input=gets.strip
end

def motto
  input=gets.strip
end





end #(f)

