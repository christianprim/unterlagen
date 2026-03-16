#import "../layout.typ": *

#let gebiet = "Wärmelehre"
#let titel = [Wärmearbeitsmaschinen - Gruppe B]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "1.")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

#set page(
  footer: [
      #set text(font: "TeX Gyre Heros", fill: haupt-farbe)
      #v(0.5em) // Vertikaler Abstand
      _KZN_ #h(1fr) _Technik_
  ]
)


= Benzinmotoren

=== Ablauf

Lies den Text durch und beantworte die Fragen. Das solltest du in 10 bis 15 Minuten erledigt haben.

Such anschliessend eine Person der anderen Gruppe, die ihr Blatt auch fertig gelesen hat. Es muss nicht die beste Kollegin/der beste Kolleg sein.

Erklärt euch gegenseitig das, was ihr gelesen habt. Dafür habt ihr gesamthaft für beide Blätter wieder etwa 10 bis 15 Minuten.

== Funktionsweise der Benzinmotoren

Bei den Benzinmotoren unterscheidet man zwischen dem 2-Takt- und dem 4-Takt-Motor, welcher auch #smallcaps[Otto]-Motor genannt wird.

=== Der 4-Takt- oder #smallcaps[Otto]-Motor

#figure(
  image("../bilder/4takt.png")
)

Nicolaus #smallcaps[Otto] stellte seinen Verbrennungsmotor #text(number-type: "old-style")[1867 vor. 1883] wurde er von den Herren #smallcaps[Daimler] und #smallcaps[Benz] weiterentwickelt. Heute erreicht dieser Motor Wirkungsgrade von maximal 35%. Die Funktionsweise kann in vier Takte unterteilt werden.

_1. Takt_: Der Kolben ist oben und beginnt sich nach unten zu bewegen. In diesem Moment öffnet das Einlassventil und das Treibstoff-Luft-Gemisch wird in den Zylinder gesogen.

_2. Takt_: Nachdem der Kolben die unterste Position erreicht hat, schliesst das Einlassventil. Der Kolben bewegt sich nach oben und verdichtet das Gemisch. Das Volumen wird auf etwa einen Zehntel verkleinert, wodurch der Druck auf etwas mehr als #qty("22", "bar") ansteigt. Man spricht von einem Verdichtungsverhältnis von 10:1. Das Gemisch erreicht dabei etwa eine Temperatur von #qty("300", "Celsius") bis #qty("400", "Celsius"). Bei Temperaturen über #qty("500", "Celsius") würde sich das Benzin-Luft-Gemisch selbständig entzünden, was den Motor beschädigen kann (führt zu sogenanntem Klopfen).

Bei Benzinsorten unterscheidet man unterschiedliche Oktan-Zahlen. Je höher die Oktan-Zahl des Benzins, umso höher liegt die Temperatur, bei welcher sich das Benzin-Luft-Gemisch selbständig entzündet. Das heisst, dass Motoren mit höherem Verdichtungsverhältnis Benzin-Sorten mit grösserer Oktan-Zahl benötigen (Bsp.: Bleifrei 95 hat die Oktan-Zahl 95, Bleifrei 98 eine entsprechend höhere).

_3. Takt_: Ein Funken der Zündkerze entzündet das Gemisch, die Temperatur steigt auf über #qty("2500", "Celsius") und dadurch erhöht sich der Druck auf etwa #qty("60", "bar"). Der Kolben wird nach unten gedrückt (Arbeitstakt).

_4. Takt_: In dem Moment, in welchem sich der Kolben wieder nach oben bewegt, öffnet das Auslassventil und die Abgase werden nach aussen gedrückt. Ist der Kolben oben angelangt, so schliesst das Auslassventil und der Ablauf beginnt wieder mit dem 1\. Takt.

Bei genauer Betrachtung der Funktionsweise des 4-Takt-Motors erkennt man, dass auf zwei Auf- und Abbewegungen nur ein Arbeitstakt stattfindet. Zudem ist der 4-Takt-Motor auf Ventile angewiesen, die Störungen hervorrufen können. Der folgende Motor hat diese Nachteile nicht.

=== Der 2-Takt-Motor

Die Funktionsweise kann in zwei Takte unterteilt werden:

#figure(
  image("../bilder/2takt.png", width: 10cm)
)

_1. Takt_: Der sich nach oben bewegende Kolben (s. Abb. a rechts) komprimiert das über ihm befindliche Gemisch. Gleichzeitig wird neues Gemisch durch den nun offenen Gaseinlass in das Kurbelgehäuse gesogen.

_2. Takt_: Das komprimierte Gemisch wird entzündet (s. Abb. b unten in der Mitte). Der entstehende grosse Druck presst den Kolben nach unten (Arbeitstakt). Das Gemisch im Kurbelgehäuse wird dadurch etwas zusammengepresst, kann aber nicht mehr zum Gaseinlass heraus, da dieser vom Kolben bald versperrt wird. Sobald der Kolben in der untersten Position ist, wird das Gemisch im Kurbelgehäuse durch den Überströmkanal in den Brennraum über den Kolben geleitet (s. Abb. c unten rechts). Gleichzeitig wird das verbrannte Gemisch durch das neu eintretende Gemisch zum Gasaustritt hinausgedrückt. Aufgrund der etwas speziellen Formgebung des Kolbenoberteils tritt nur wenig frisches Gemisch direkt wieder zum Gasaustritt aus, allerdings lässt sich das bei Zwei-Taktern nicht verhindern, was man an den Abgasen riechen kann. Einspritz-Zweitakter haben diese Durchmischung zwar nicht, doch liessen sie sich nicht mit einem Dreiwegkatalysator betreiben bzw. haben eine geringere Leistung. Nun wird wieder beim 1\. Takt begonnen.

- Was sind die Vor- und Nachteile der beiden Motorenarten im Vergleich? Welcher ist leistungsfähiger, welcher ist billiger in der Herstellung, bei welchem können die Abgase geringer gehalten werden? Begründe deine Antworten.
#schreibpapier(height: 2cm)

- Liegt der Wirkungsgrad des 2-Takt-Motors eher über oder unter demjenigen des #smallcaps[Otto]-Motors?
#schreibpapier()
