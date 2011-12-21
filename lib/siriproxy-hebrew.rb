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

  listen_for /shitty/i do
    say "כן אדוני, כאן לשירותך!", spoken: "ken adoni, kan le shirutcha"

    request_completed
  end

  listen_for /good morning/i do
    say "דבר בעברית כפרה!", spoken: "daber be ivrit caparra"

    request_completed
  end

  listen_for /shalom/i do
    say "שלום DanyL", spoken: "shalom DanyL"

    request_completed
  end

  listen_for /money anime/i do
    say "הכל טוב", spoken: "Hakol tov"

    request_completed
  end

  listen_for /ma/i do
    say "מה ששמעת!", spoken: "ma she'sha'mata!"

    request_completed
  end

  listen_for /sasha/i do
    say "שיר שמח שרה שרה", spoken: "Shir sameah shara sara"

    request_completed
  end

  listen_for /the shitty/i do
    say "כל עוד בלבב פנימה\nנפש יהודי הומיה\nולפאתי מזרח קדימה\nעין לציון צופיה\nעוד לא אבדה תקותנו\nהתקוה בת שנות אלפים\nלהיות עם חופשי בארצנו\nארץ ציון וירושלים", spoken: "Kol ode balevav \nP'nimah, - \n\nNefesh Yehudi homia, \n\nUlfa'atey mizrach kadimah, \nAyin l'tzion tzofia. \n\nOde lo avdah tikvatenu \nHatikvah bat shnot alpayim: \n\nL'hiyot am chofshi b'eartz'enu, - \nEretz Tzeion ve Yerushalayim."

    request_completed
  end

  listen_for /bye/i do
    say "להתראות iPhoneIL", spoken: "lehitraot iPhone I L"

    request_completed
  end
end
