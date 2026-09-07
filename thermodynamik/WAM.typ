#import "../layout.typ": *

#let gebiet = "Wärmelehre"
#let titel = [Wärmearbeitsmaschinen]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)
#let lernziele(doc) = {
  showbox("Lernziele", haupt-farbe)[
    #set list(marker: emoji.darts)
    #doc
  ]
}

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

#set heading(numbering: "1.")

#show heading: it => {
  if it.level == 1 {
    set text(font: "TeX Gyre Heros", style: "italic")
    block(counter(heading).display() + " Posten: " + it.body)
  } else {
    set text(font: "TeX Gyre Heros")
    block(it.body)
  }
}
#pagebreak()

= Dampfmaschine

#lernziele[
An diesem Posten erfahren Sie
- was für Ideen von Wärmearbeitsmaschinen die Menschheit schon vor James Watt hatte.
- was die industrielle Revolution auslöste.
]

== Ablauf

Lesen Sie den folgenden Text durch und beantworten Sie die Fragen. Für diesen Posten benötigen Sie 20 Minuten.


== Ideen aus der Zeit der Griechen

Der griechische Gelehrte #smallcaps[Heron] von Alexandria, der im ersten Jahrhundert n. Chr. gelebt haben muss, hatte einige raffinierte Ideen, wie mit Wärme eine Maschine angetrieben werden könnte. Seine Maschinen und Apparate setzten sich durch Luft- oder Dampfdruck in Bewegung.

#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    Eine seiner berühmtesten Erfindung war die automatische Öffnung einer Tempeltür: Entzündete man auf einem Altar vor dem Tempel ein Opferfeuer, so öffnete sich die Tempeltür. Eine Nachbildung ist auf dem Bild zu sehen! Im oberen Kolben wurde die Luft durch das Feuer erwärmt. Dadurch nahm ihr Volumen zu und begann das Wasser im unteren Kolben zu verdrängen. Dieses Wasser konnte über eine Leitung abfliessen und füllte ein weiteres Gefäss auf. Sobald dieses Gefäss schwer genug war, öffnete sich die Tür!
  ],
  [
    #image("../bilder/tempeltüre.jpg", width: 7.5cm)
  ]
)

== Aufgaben

- Versuchen Sie das Prinzip der Tempeltür anhand der Foto nachzuvollziehen!
#schreibpapier(height: 2cm)
#grid(
  columns: (1fr, 6cm),
  gutter: .5cm,
  [  
    - Betrachten Sie die Abbildungen nebenan. Beides sind Erfindungen des Griechen #smallcaps[Heron]. Links wird ein Altarfeuer wie von Geisterhand gelöscht, rechts sehen Sie eine Maschine, die Heron "Äolipile" nannte. Versuchen Sie herauszufinden, wie diese Maschinen funktionieren!
  ],
  [
    #grid(columns: (1fr, 1fr), image("../bilder/heron1.jpg", height: 4cm), image("../bilder/heron2.jpg", height: 4cm))
  ]
)
#schreibpapier()
#pagebreak()

== Der Weg zur industriellen Revolution

#text(number-type: "old-style")[Erst im 16. Jahrhundert wurden die Ideen von #smallcaps[Heron] wiederentdeckt. Verschiedene Konstrukteure erfanden Maschinen, die wenig Arbeit bei enormem Feueraufwand verrichten konnten. Dabei baute der eine auf dem Werk des andern auf. Der Engländer Thomas #smallcaps[Newcomen] (1663-1729) konstruierte eine Dampfmaschine, die gerade ein Prozent der Energie, die man in Form von Wärme hineinsteckte, in Arbeit umwandelte – eine miserable Ausbeute, und dennoch das Beste, was es damals gab.

Am 5. Januar 1769 erhielt der schottische Mechaniker James #smallcaps[Watt] das Patent für seine Dampfmaschine. Sie erreichte eine viel bessere Ausbeute als alles bisher Erfundene. Diese Maschine löste einen wahren Boom aus und machte menschliche Arbeitskräfte ersetzbar. Die industrielle Revolution nahm ihren Anfang. Noch bis ins 20. Jahrhundert blieben Dampfmaschinen nach dem Prinzip von James #smallcaps[Watt] konkurrenzlos. Und selbst die Benzinmotoren von heute können ihre Verwandtschaft zur Dampfmaschine nicht verbergen. Mit der Dampfmaschine schossen Industriebetriebe aus dem Boden und die Wasserkraft als Antrieb für Webstühle wurde ersetzbar. Diese Erfindung markiert einen Meilenstein in der Geschichte der Menschheit. Und erstmals konnte eine Maschine auch sich selber transportieren, mobile Maschinen konnten nun gebaut werden.]

#grid(
  columns: (auto, 1fr),
  gutter: .5cm,
  [
    #image("../bilder/dampfmaschineModell.jpg", width: 8cm)
  ],
  [
    Und so funktioniert die Dampfmaschine nach James #smallcaps[Watt]:
Heisser Frischdampf wird aus einem Dampfkessel der Maschine zugeführt. Ein kleiner Steuerkolben lässt Dampf nur auf die linke Seite des (grösseren) Arbeitskolbens strömen (s. Abb). Dadurch wird dieser auf die rechte Seite gedrückt und versetzt ein Schwungrad in Bewegung. Der Steuerkolben, der ebenfalls mit dem Schwungrad verbunden ist, klemmt die Dampfzufuhr zum Arbeitskolben ab und öffnet die Dampfzufuhr auf die rechte Seite des Arbeitskolbens, wodurch sich dieser wieder nach links bewegt. Das Ganze läuft dauernd so weiter.
  ]
)
Anzumerken ist noch, dass durch den Steuerkolben jeweils in dem Moment, in welchem z.B. rechts die Dampfzufuhr geöffnet wird, links ein Kanal öffnet, durch den der sich noch im linken Teil befindliche Dampf nach aussen entweichen kann. Dieser Kanal ist im Modell oben als "U-förmige" Aussparung zu erkennen.
Die Drehzahl kann mit einem Fliehkraftregler, wie sie ihn bei den Kreisbewegungen kennengelernt haben, durch Regulieren der Dampfzufuhr konstant gehalten werden.
Die Dampfmaschine nach diesem Prinzip erreicht einen Wirkungsgrad von bis zu 25%.

== Fragen
Was waren die ersten "mobilen Maschinen" (die oben erwähnt werden), die mit einer Dampfmaschine gebaut wurden?

#schreibpapier()
