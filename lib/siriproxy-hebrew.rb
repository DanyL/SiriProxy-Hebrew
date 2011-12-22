# encoding: UTF-8
require 'cora'
require 'siri_objects'
require 'pp'

#######
#Siri talking in Hebrew by DanyL (Dany Lisiansky)
######

class SiriProxy::Plugin::Hebrew < SiriProxy::Plugin
  def initialize(config)
  end

  filter "SetRequestOrigin", direction: :from_iphone do |object|
    puts "[Info - User Location] lat: #{object["properties"]["latitude"]}, long: #{object["properties"]["longitude"]}"
  end 

  listen_for /siri/i do
    say "I'm jew now, call me Shiri!"

    request_completed
  end

  listen_for /shitty/i do #שירי - Shiri
    say "כן אדוני, כאן לשירותך!", spoken: "ken adoni, kan le shirutcha"

    request_completed
  end

  listen_for /good morning/i do
    say "דבר בעברית כפרה!", spoken: "daber be ivrit caparra"

    request_completed
  end

  listen_for /shalom/i do #שלום - Shalom
    say "שלום DanyL", spoken: "shalom DanyL"

    request_completed
  end

  listen_for /money anime/i do #מה העניינים - How you doing
    say "הכל טוב", spoken: "Hakol tov"

    request_completed
  end

  listen_for /map/i do #מה - What
    say "מה ששמעת!", spoken: "ma she'sha'mata!"

    request_completed
  end

  listen_for /Llama/i do #למה - Why
    say "ככה!", spoken: "kaha!"

    request_completed
  end

  listen_for /sasha/i do #שרה שרה שיר שמח - Hebrew Tongue Twisters (such as "how much wood would a woodchuck... in english, but much shorter)
    say "שיר שמח שרה שרה", spoken: "Shir sameah shara sara"

    request_completed
  end

  listen_for /easily/i do #עברית - Hebrew
    say "כן אני מדברת עברית", spoken: "ken, ani medaberet ivrit"

    request_completed
  end

  listen_for /and/i do #אן דן דינו - Eeny meeny miny moe
    say "אן דן דינו, סוף על הקטינו\nסוף על הקטי קטו\nאליק בליק בום.", spoken: "and, den, dino, sof, al, hakatino, sof, al, ha kati kato, elik, belik, bom"

    request_completed
  end

  listen_for /shit/i do #שיר - Song
    say "כל עוד בלבב פנימה\nנפש יהודי הומיה\nולפאתי מזרח קדימה\nעין לציון צופיה\nעוד לא אבדה תקותנו\nהתקוה בת שנות אלפים\nלהיות עם חופשי בארצנו\nארץ ציון וירושלים", spoken: "Kol ode balevav \nP'nimah, - \n\nNefesh Yehudi homia, \n\nUlfa'atey mizrach kadimah, \nAyin l'tzion tzofia. \n\nOde lo avdah tikvatenu \nHatikvah bat shnot alpayim: \n\nL'hiyot am chofshi b'eartz'enu, - \nEretz Tzeion ve Yerushalayim."

    request_completed
  end

  listen_for /bye/i do #ביי - bye
    say "להתראות iPhoneIL", spoken: "lehitraot iPhone I L"

    request_completed
  end
end