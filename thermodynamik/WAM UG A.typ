#import "../layout.typ": *

#let gebiet = "Wärmelehre"
#let titel = [Wärmearbeitsmaschinen - Gruppe A]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "a)1)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

#set page(
  footer: [
      #set text(font: "TeX Gyre Heros", fill: haupt-farbe)
      #v(0.5em) // Vertikaler Abstand
      _KZN_ #h(1fr) _Technik_
  ]
)

= Die ersten Wärmearbeitsmaschinen

=== Ablauf

Lies den Text durch und beantworte die Fragen. Das solltest du in 10 bis 15 Minuten erledigt haben.

Such anschliessend eine Person der anderen Gruppe, die ihr Blatt auch fertig gelesen hat. Es muss nicht die beste Kollegin/der beste Kolleg sein.

Erklärt euch gegenseitig das, was ihr gelesen habt. Dafür habt ihr gesamthaft für beide Blätter wieder etwa 10 bis 15 Minuten.

== Ideen aus der Zeit der Griechen

Der griechische Gelehrte #smallcaps[Heron] von Alexandria, der im ersten Jahrhundert n. Chr. gelebt haben muss, hatte einige raffinierte Ideen, wie mit Wärme eine Maschine angetrieben werden könnte. Seine Maschinen und Apparate setzten sich durch Luft- oder Dampfdruck in Bewegung.

#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    Eine seiner berühmtesten Erfindung war die automatische Öffnung einer Tempeltür: Entzündete man auf einem Altar vor dem Tempel ein Opferfeuer, so öffnete sich die Tempeltür. Eine Nachbildung ist auf dem Bild zu sehen! Im oberen Kolben wurde die Luft durch das Feuer erwärmt. Dadurch nahm ihr Volumen zu und begann das Wasser im unteren Kolben zu verdrängen. Dieses Wasser konnte über eine Leitung abfliessen und füllte ein weiteres Gefäss auf. Sobald dieses Gefäss schwer genug war, öffnete sich die Tür!
  ],
  [
    #image("../bilder/tempeltüre.jpg", width: 6cm)
  ]
)
- Versuche das Prinzip der Tempeltür anhand der Foto nachzuvollziehen!
#schreibpapier(height: 4cm)


#grid(
  columns: (1fr, 6cm),
  gutter: .5cm,
  [
    
    - Betrachte die Abbildungen nebenan. Beides sind Erfindungen des Griechen #smallcaps[Heron]. Links wird ein Altarfeuer wie von Geisterhand gelöscht, rechts siehst du eine Maschine, die Heron „Äolipile“ nannte.

      Versuche herauszufinden, wie diese Maschinen funktionieren!
  ],
  [
    #grid(columns: (1fr, 1fr), image("../bilder/heron1.jpg", height: 4cm), image("../bilder/heron2.jpg", height: 4cm))
  ]
)
#schreibpapier()
#pagebreak()

== Der Weg zur industriellen Revolution

#text(number-type: "old-style")[Erst im 16\. Jahrhundert wurden die Ideen von #smallcaps[Heron] wiederentdeckt. Verschiedene Konstrukteure erfanden Maschinen, die wenig Arbeit bei enormem Feueraufwand verrichten konnten. Dabei baute der eine auf dem Werk des andern auf. Der Engländer Thomas #smallcaps[Newcomen] (1663-1729) konstruierte eine Dampfmaschine, die gerade ein Prozent der Energie, die man in Form von Wärme hineinsteckte, in Arbeit umwandelte – eine miserable Ausbeute, und dennoch das Beste, was es damals gab.
Am 5. Januar 1769 erhielt der schottische Mechaniker James #smallcaps[Watt] das Patent für seine Dampfmaschine. Sie erreichte eine viel bessere Ausbeute als alles bisher Erfundene. Diese Maschine löste einen wahren Boom aus und machte menschliche Arbeitskräfte ersetzbar. Die industrielle Revolution nahm ihren Anfang. Noch bis ins 20. Jahrhundert blieben Dampfmaschinen nach dem Prinzip von James #smallcaps[Watt] konkurrenzlos. Und selbst die Benzinmotoren von heute können ihre Verwandtschaft zur Dampfmaschine nicht verbergen. Mit der Dampfmaschine schossen Industriebetriebe aus dem Boden und die Wasserkraft als Antrieb für Webstühle wurde ersetzbar. Diese Erfindung markiert einen Meilenstein in der Geschichte der Menschheit. Und erstmals konnte eine Maschine auch sich selber transportieren, mobile Maschinen konnten nun gebaut werden.]


=== So funktioniert die Dampfmaschine nach James #smallcaps[Watt]

#figure(
  image("../bilder/dampfmaschineModell.jpg", width: 8cm)
)

Heisser Frischdampf wird aus einem Dampfkessel der Maschine zugeführt. Ein kleiner Steuerkolben lässt Dampf nur auf die linke Seite des (grösseren) Arbeitskolbens strömen (s. Abb). Dadurch wird dieser auf die rechte Seite gedrückt und versetzt ein Schwungrad in Bewegung. Der Steuerkolben, der ebenfalls mit dem Schwungrad verbunden ist, klemmt die Dampfzufuhr zum Arbeitskolben ab und öffnet die Dampfzufuhr auf die rechte Seite des Arbeitskolbens, wodurch sich dieser wieder nach links bewegt. Das Ganze läuft dauernd so weiter. Anzumerken ist noch, dass durch den Steuerkolben jeweils in dem Moment, in welchem z.B. rechts die Dampfzufuhr geöffnet wird, links ein Kanal öffnet, durch den der sich noch im linken Teil befindliche Dampf nach aussen entweichen kann. Dieser Kanal ist im Modell oben als „U-förmige“ Aussparung zu erkennen.

Die Dampfmaschine nach diesem Prinzip erreicht einen Wirkungsgrad von bis zu 25%. Das heisst, dass ein Viertel der hineingesteckten Energie in Bewegung umgewandelt wird. Der Rest ist Abwärme.

- Was waren die ersten "mobilen Maschinen" (die oben erwähnt werden), die mit einer Dampfmaschine gebaut wurden?

#schreibpapier()

