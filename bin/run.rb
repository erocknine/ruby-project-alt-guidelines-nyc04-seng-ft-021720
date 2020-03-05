require 'pry'
require 'rest-client'
require 'colorize'
require 'colorized_string'
require 'json'
require 'tty-prompt'
require_relative '../config/environment'
require_relative '../app/models/search.rb'
require_relative '../app/models/user.rb'
require_relative '../app/models/favorite.rb'

def main_menu
    prompt = TTY::Prompt.new
    choice = prompt.select("Welcome to BoxGuide!") do |menu|
        menu.choice "Login User", 1
        menu.choice "Create User", 2
        menu.choice "Exit", 3
    end
    if choice == 1
        login_user
    elsif choice == 2
        create_user
    else
        puts "Thank you, come again!".bold
    end
end

def login_user
    username = gets.chomp
    user = User.find_by("name like ?", username)
    if User.find_by("name like ?", username)
        user
    else
        puts "Cannot find username"
        sleep 2
        main_menu
    end
end

def create_user
    puts "Please enter a new Username:"
    username = gets.chomp
    user = User.find_or_create_by(name: username)
    main_menu
end

def user_menu
    prompt = TTY::Prompt.new
    choice = prompt.select("What would you like to do?") do |menu|
        menu.choice "Search Movies and Shows", 1
        menu.choice "Rummage Searches", 2
        menu.choice "Favorites", 3
        menu.choice "Exit", 4
    end
    if choice == 1
        title_search
    elsif choice == 2
        rummage_searches
    elsif
        favorites
    else
        puts "Thank you, come again!".bold
    end
end


main_menu
user = login_user
user_menu