# triggers vyzh`dra the cursed on death
#

sub EVENT_SPAWN {
  quest::settimer("despawn",3600);
}

sub EVENT_DEATH {
  quest::stoptimer("despawn");
  quest::signalwith(162255,3,0);
  quest::setglobal("exiled_dead",1,3,"D3");
  #quest::spawn2(162206,3,0);
}

sub EVENT_TIMER {
  quest::stoptimer("despawn");
  quest::depop();
}

# EOF zone: ssratemple ID: 162214 NPC: #Vyzh`dra_the_Banished

