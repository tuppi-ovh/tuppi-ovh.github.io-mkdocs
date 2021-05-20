*Last update on 25/04/2020*

# Recycle MP3 Player 

## Introduction

This page describes an idea how to recycle an old MP3 player. 

I had an MP3 player with broken screen and also a low quality 
speaker from a low cost market. So, I decided to reuse 
both of them and to make a Fairy Tail Speaker 
for my daughter. It could be a good alternative to musical 
books or children musical phones. 

What I needed:

- MP3 player
  
- speeker
  
- USB cable 
  
- several push buttons
  
- 7-pin connector
  
- USB battery (optionnal)

## Put Things Together

The idea is very simple: 

- put the things together
  
- add some buttons to be able to navigate between stories
  
- add a connector for supply and for MP3 download

The diagram of connections:
```plantuml
@startuml
rectangle "USB Battery" as M_BAT
rectangle "Fairy Tail Speaker" as M_FAIRY  {
    rectangle "MP3 Player" as M_MP3 {
        rectangle "Mini USB" as M_MP3_USB
        rectangle "3.5 Jack" as M_MP3_JACK
        rectangle "**Buttons:** \n\n Volume UP \n Volume DOWN \n NEXT \n PLAY \n POWER ON" as M_MP3_BUT 
    }
    rectangle "Speaker" as M_SPEAK {
        rectangle "Amplifier" as M_SPEAK_AMPL 
        rectangle "3.5 Jack" as M_SPEAK_JACK
        rectangle "Speaker" as M_SPEAK_SPEAK
        rectangle "Power" as M_SPEAK_POW
    }
    rectangle "**Connector:** \n\n 1 - 5V \n 2 - DATA1 \n 3 - DATA2 \n 4 - GND \n 5 - GND \n 6 - 5V \n 7 - NC" as M_CONN
    rectangle "**Buttons:** \n\n Volume UP \n Volume DOWN \n NEXT \n PLAY \n POWER ON" as M_BUT 
}

M_BAT -[hidden] M_FAIRY
M_BUT -[hidden] M_MP3
M_MP3 -[hidden] M_CONN
M_SPEAK -[hidden] M_CONN

M_MP3_USB <- M_CONN 
M_SPEAK_POW <- M_CONN

M_BAT -> M_CONN

M_BUT <- M_MP3_BUT

M_MP3 -[hidden]-- M_SPEAK

M_MP3_JACK -> M_SPEAK_JACK

M_SPEAK_POW -> M_SPEAK_AMPL
M_SPEAK_AMPL <- M_SPEAK_JACK 
M_SPEAK_AMPL --> M_SPEAK_SPEAK
@enduml
```

Inside of my Old MP3 player:

<img src="../images/img_doc_mp3_player_1.jpg" width="400"/>
<br>

I soldered buttons and fixed them to the speaker case:

<img src="../images/img_doc_mp3_player_2.jpg" width="400"/>
<br>

The 7-pin connector which I use in every DIY project. I cut a mini USB cable on two parts: one part goes from an USB battery to the connector, another one goes from the connector to the player:

<img src="../images/img_doc_mp3_player_3.jpg" width="400"/>
<br>

I added some stickers to reconize the commands:

<img src="../images/img_doc_mp3_player_4.jpg" width="400"/>
<br>

And the final look after a month of use:

<img src="../images/img_doc_mp3_player_5.jpg" width="400"/>
<br>

## Conclusion

So, the Fairy Tail Speaker works! I download up to 10 stories at the same time to facilitate navigation by buttons. 

I won also a Li-ion battery from the MP3 player which 
can be reused in another DIY project.
