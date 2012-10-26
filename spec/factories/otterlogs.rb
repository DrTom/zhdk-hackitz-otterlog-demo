# -*- encoding : utf-8 -*-

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :otterlog do
    name { Faker::Name.first_name}
    id { SecureRandom.uuid }

    documented_at {DateTime.now}

    state do
      states= ['fröhlich', 'neutral', 'traurig', 'schlafend', 'sich putzend', 'kopulierend']
      states[rand(states.size)]
    end
    
    place do
      placeѕ= ['Am Ufer', 'auf dem grossen Stein', 'im Wasser', 'in Schlafbox A', 'in Schlafbox B']
      placeѕ[rand(placeѕ.size)]
    end

    wetness do
      wetnesses= ['nass', 'trocken', 'langsam trocknend']
      wetnesses[rand(wetnesses.size)]
    end

    is_eating { rand(1) == 0}

  end
end
