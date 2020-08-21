require 'bundler'
Bundler.require

class Larves # la classe des monstres des "Larves"
  def initialize
    
    @larves = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Larves')
    #recevoir les infos des monstres des "Larves"
  end

  
  def json #ecrire les infos des monstres des "Larves" dans le fichier "larves.json"
    File.open("./db/larves.json", 'w') do |file|
      file.write(@larves)
    end
    puts "Larves.json > OK !!!"
  end
end

class Monstres_des_cavernes # la classe des monstres des "cavernes"
  def initialize
    @cavernes = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des cavernes')
      #recevoir les infos des monstres des "Cavernes"
  end

  def json # ecrire les infos des monstres des "Cavernes" dans le fichier "Monstre des cavernes.json"
    File.open("./db/Monstres_des_cavernes.json", 'w') do |file|
      file.write(@cavernes)
    end
    puts "Monstres_des_cavernes.json >  OK !!!"
  end
end

class Monstres_des_plaines_herbeuses # la classe des monstres des "plaines herbeuses"
  def initialize
    @plaines = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des Plaines herbeuses')
        #recevoir les infos des monstres des "Plaines herbeuses"
  end

  def json # ecrire les infos des monstres des "plaines herbeuses" dans le fichier "Monstre des plaines herbeuses.json"
    File.open("./db/Monstres_des_plaines_herbeuses.json", 'w') do |file|
      file.write(@plaines)
    end
    puts "Monstres_des_plaines_herbeuses.json > OK !!!"
  end
end
