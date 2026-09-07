#import "../layout.typ": *

#let gebiet = "Wärmelehre"
#let titel = [Wärmearbeitsmaschinen]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "a)1)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Was sind Wärmearbeitsmaschinen?

Das Umwandeln von Arbeit in Wärme ist einfach. Es ist sogar ausserordentlich schwierig, beim Arbeiten keine Wärme zu erzeugen, da Reibung allgegenwärtig ist.
Das Gegenteil hingegen, das Umwandeln von Wärme in Arbeit, ist wesentlich schwieriger. Die Menschen versuchten lange Zeit vergeblich, eine Maschine zu entwickeln, die dies in befriedigender Art und Weise konnte. Wärmearbeitsmaschinen, wie Sie sie jetzt kennen lernen werden, haben folgendes gemeinsam:

_Der Druck eines Gases versetzt ein Bauteil in Bewegung. Diese Bewegung ist meist periodisch, muss es aber nicht sein!_


= Was werden Sie tun?

In dieser Werkstatt werden Sie selbständig in Gruppen zu 2 bis 3 Personen die verschiedenen Wärmearbeitsmaschinen kennen lernen. Zum Teil werden Sie auch Experimente ausführen oder Modelle ausprobieren können. Ich bitte Sie dabei um Sorgfalt im Umgang mit dem Material. Sie bekommen zu jedem Posten Unterlagen, mit welchen Sie arbeiten sollen. Neben Informationen, Theorie und Experimenten zu den jeweiligen Posten werden Sie auch Aufgaben zu bearbeiten haben. Beachten Sie die Zeitvorgaben für die einzelnen Posten. Die Posten können in beliebiger Reihenfolge absolviert werden. Allerdings können gewisse Fragen eines bestimmten Postens unter Umständen erst nach Absolvieren eines anderen Postens beantwortet werden.

Folgende Posten stehen zur Verfügung:

#grid(
  columns: 4,
  align: (left, right, left, left),
  gutter: 1em,
  [☞], [1\. Posten:], [Der Weg zur Dampfmaschine des James Watt], [20 min],
  [☞], [2\. Posten:], [Erfindung eines Geistlichen: Der Stirling-Motor], [15 min],
  [☞], [3\. Posten:], [Der Carnot-Prozess], [20 min],
  [☞], [4\. Posten:], [Benzin-Motoren: Im 4-Takt und 2-Takt], [20 min],
  [☞], [5\. Posten:], [Der Diesel-Motor: Im Kampf gegen den Benziner], [20 min],
  [☞], [6\. Posten:], [Der Wankel-Motor: Eine Nachkriegserfindung], [15 min],
  [☞], [7\. Posten:], [Rund ums Auto], [15 min],
  [☞], [8\. Posten:], [Kompressoren und Turbolader], [10 min],
  [☞], [9\. Posten:], [Vom Eismann zum Kühlschrank], [25 min],
  [☞], [10\. Posten:], [Die Dampfturbine: Einfaches Prinzip hoch aktuell], [10 min],
  [☞], [11\. Posten:], [Der Raketen-Antrieb: Primitiv und trotzdem leistungsfähig], [20 min],
  [☞], [12\. Posten:], [Das Düsentriebwerk, eine fliegende Wärmearbeitsmaschine], [10 min],
)

