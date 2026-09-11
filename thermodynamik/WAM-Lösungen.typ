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

#set text(size: 10pt)
#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "a)1)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Lösungen

#grid(
  columns: (2cm, 2cm, auto),
  gutter: .5cm,
  [*Posten 1*],
  [Aufgaben],
  [
    - Durch das Erwärmen der Luft im Glaskolben dehnt sich die Luft darin aus und drückt das Wasser heraus in das Becherglas. Dieses wird immer schwerer und gewinnt irgendwann gegen das Gegengewicht. Dadurch öffnet sich die Tür.

      Es ist keine Wärmearbeitsmaschine im Sinn der Definition auf dem Einführungsblatt, da keine periodische Bewegung entsteht.

    - Links: Das Altarfeuer wird gelöscht, indem mit der Hitze des Altarfeuers Wasser zum Verdampfen gebracht wird und der Druck des Dampfes das Wasser in die Amphoren hochdrückt. Bei der Maschine rechts wird Wasser mit einem Feuer zum Sieden gebracht und strömt in einem drehbar gelagerten Gefäss beidseitig so aus, dass es in Drehbewegung versetzt wird.
  ],

  [],
  [Frage],
  [
    - Schiffe und Lokomotiven, wenig später Autos
  ],

  [*Posten 2*],
  [Frage],
  [
    - Ja. Aber der Motor läuft dann in die andere Richtung.
  ],

  [*Posten 3*],
  [],
  [
    + Arbeiten gegen den Druck: Def. der Arbeit: $W=F dot s$, wobei $F=p A$, somit $W=p A dot s$; $A dot s$ ist das überstrichene Volumen $Delta V$, somit: $W=p Delta V$
    + $W$ ist die Fläche im Diagramm unter der Kurve.
  ],

  [],
  [Frage],
  [
    - Die adiabatische Expansion ist deshalb nötig, weil man auf ein tieferes Temperaturniveau gelangen muss, um in diesem Kreisprozess überhaupt eine Fläche einschliessen und damit Arbeit abgeben zu können. Man könnte allerdings auch Wärme bei $V="konst."$ abführen, was einem ebenfalls auf ein tieferes Temperaturniveau bringen würde.
  ],

  [*Posten 4*],
  [Fragen],
  [
    - #grid(
        columns: (1fr, 1fr, 5fr),
        row-gutter: 0.5cm,
        [2-Takt:],
        [Vorteile:],
        [Leistungsfähiger da doppelt so viele Arbeitstakte; Billiger, da weniger bewegliche Teile; Wenig schadenanfällig],
        [],
        [Nachteile:],
        [viele Abgase (schlechte Trennung von verbranntem und frischem Gemisch führt zur Durchmischung). Eine bessere Trennung wird dadurch erreicht, in dem man das Treibstoffgemisch in den 				abgeschlossenen Zylinder einspritzt, dabei geht kein Treibstoff 				„verloren“. Allerdings kann dieser Motor nicht mit	Dreiwegkatalysator betrieben werden, da der Motor, soll er immer	mit frischen Gemisch arbeiten, gespült werden muss (mit	Gebläse), was viel Luft im Auspuff ergibt. Ohne Spülung fällt die Leistung zusammen, sodass diese kaum höher als bei einem Viertakter ist.],
        [4-Takt:], grid.cell(colspan: 2)[Was die Vorteile des einen sind hier die Nachteile und umgekehrt!],
      )
    - 2-Takt hat schlechteren Wirkungsgrad, er nutzt die Energie im Treibstoff schlechter. D.h. ein 2-Takt-Motor mit gleicher Leistung wie ein 4-Takt-Motor braucht mehr Treibstoff.
    - Unterschiede: Diesel ohne Zündkerze; Diesel höhere Verdichtung

      Gleich: 4 Takte

      Diesel hat besseren Wirkungsgrad (ist also sparsamer), hat aber weniger Leistung bei 	gleicher Grösse. Schadstoffe sind beim Diesel-Motor problematischer.
  ],
  [*Posten 5*],
  [Fragen],
  [
    - S. Posten 4 Frage 3!
    -
      - Im Rechteck: $W = p V = qty("10", "bar") dot qty("50", "cm^3")=qty("50", "J")$
      - Hat etwa 8 Mal Platz: Also #qty("400", "J")
      - 4200 Umdrehungen pro Minute heisst 70 Umdrehungen pro Sekunde. Da nur bei jeder zweiten Umdrehung ein Arbeitstakt erfolgt, ergibt dies 35 Arbeitstakte pro Sekunde, also 35 Mal #qty("400", "J") in einer Sekunde sind #qty("14", "kW"). Da es sich um einen 4-Zylinder-Motor handelt, muss diese Leistung mit 4 multipliziert werden: #qty("56", "kW") ist die Leistung des Motors (das sind 76 PS).

        Das Hubvolumen: Im Diagramm ist ersichtlich, dass sich der Kolben von etwa #qty("40", "cm^3") bis #qty("300", "cm^3") verschiebt, er überstreicht also ein Volumen von #qty("260", "cm^3"). Da 4 Zylinder: Das Hubvolumen des Motors beträgt #qty("1040", "cm^3").

        _In Realität haben Dieselmotoren eine kleinere Leistung. Allerdings haben wir Reibungsverluste etc. in der Berechnung nicht berücksichtigt._
  ],
  [*Posten 6*],
  [Frage],
  [
    - Vorteile des Wankel: Klein und leicht; Sanfter Lauf; Keine Hin- und Herbewegung; Theoretisch sparsam; 3 Takte finden gleichzeitig statt pro Kolben; Keine Ventile

      Nachteile des Wankel: Abdichten oben, unten und an den Kanten schwierig; Schmieröl auch an den Wänden in der Verbrennungszone nötig wegen Dichtleisten, daraus folgt, dass viel HC (Kohlenwasserstoffe) in den Abgasen; Teure Herstellung; In der Praxis nicht sparsam
  ],
  [*Posten 7*],
  [Aufgabe],
  [
    - Die im Text fett markierten Begriffe sind in der folgenden Abbildung eingezeichnet! Nicht sichtbar sind: Alternator, Anlasser und Treibstoffpumpe.
  ],
  grid.cell(colspan: 3)[
    #figure(
      cetz.canvas({
        import cetz.draw: *
        set-style(stroke: 1pt)

        let callout(start, elbow, end, label-text, align-dir: left) = {
          circle(start, radius: 1.5pt, fill: haupt-farbe, stroke: red)
          line(start, elbow, end, stroke: red)
          content(
            end,
            text(size: 9pt, label-text),
            anchor: if align-dir == left { "east" } else { "west" },
            padding: 0.1,
          )
        }

        content((), image("../bilder/auto-zerlegt.jpg", width: 16cm), anchor: "south-west")
        // grid((0,0), (16, 13), stroke: gray + 0.2pt)

        callout((1.75, 9), (1.5, 11), (1, 11), [Kühler], align-dir: left)
        callout((3.6, 6.8), (2, 2), (1, 2), [Luftfilter], align-dir: left)
        callout((5, 9), (2, 12), (1, 12), [4 Kolben], align-dir: left)
        callout((4.7, 10), (6, 12), (8.5, 12), [Vergaser], align-dir: right)
        callout((6.3, 7.7), (7.5, 10.65), (8.5, 10.65), [Kupplung], align-dir: right)
        callout((6.2, 9), (7, 11.35), (8.5, 11.35), [Zündspule], align-dir: right)
        callout((7.3, 7.7), (8, 10), (8.5, 10), [Getriebe], align-dir: right)
        callout((8, 8), (10.5, 2.7), (11, 2.7), [Schalldämpfer], align-dir: right)
        callout((8, 4.5), (10.5, 2), (11, 2), [Batterie], align-dir: right)
        callout((10, 8), (10.5, 3.4), (11, 3.4), [Katalysator], align-dir: right)
        callout((12.2, 7.5), (13, 12), (13.5, 12), [Differentialgetriebe], align-dir: right)
        callout((13, 7.9), (13.25, 11), (13.5, 11), [Auspuff], align-dir: right)

        // content((13.7, 1.5), text(size: 9pt)[unsichtbar:\ Alternator \ Anlasser])
      }),
    )
  ],
  [*Posten 8*],
  [Fragen],
  [
    - Er hat bei eher konstanten Drehzahlen den besseren Wirkungsgrad, weil dann die Turbine nicht dauernd beschleunigt und abgebremst werden muss, was zu Verlusten führen würde.
    - Wir betrachten dazu ein kleines Zahlenbeispiel. Wir hätten einen Motor, der die Leistung $P$ abgeben kann und dafür pro #qty("100", "km") 6 Liter Benzin benötigt. Daneben haben wir einen Motor, der die 1.5fache Leistung hat (1.5 $P$) und dafür pro #qty("100", "km") 12 Liter Benzin benötigt. Der zweite Motor hat also eine deutlich höhere Leistung (Faktor 1.5), benötigt dafür aber das doppelte an Treibstoff. Damit ist der Wirkungsgrad (Verhältnis Nutzen zu Aufwand, oder hier eben Leistung (mal Zeit) zu Treibstoffenergie) im ersten Fall besser! Dieses Beispiel gilt allerdings nur für den Fall, dass die Motoren mit Höchstleistung arbeiten, was in Realität selten der Fall ist. Motoren arbeiten sehr häufig im so genannten Teillastbereich, d.h. sie geben nur einen Bruchteil von der Leistung ab, die sie abgeben könnten.
  ],
  [*Posten 9*],
  [Frage],
  [
    - Dampfdruckkurve!
  ],
  [*Posten 10*],
  [Fragen],
  [
    - Dampfturbine hat den höheren Wirkungsgrad (gut 40% zu max. 25%). Grund dafür ist auch die aufwändigere Prozessführung mit Zwischenerhitzen und 	Zwischenkondensation zwischen den einzelnen Turbinenstufen.
    - Wasserkraftwerke: 85% #h(3cm) Kohlekraftwerke um 40%.
    - Kühlung mit Flusswasser (an der Aare gebaut), das sich dadurch etwas erwärmt.
  ],
  [*Posten 11*],
  [Wirkungsgrad],
  [
    $ eta_"theor" = (T_1 - T_2)/T_1 = 1 - (T_2/T_1) $
  ],
  [],
  [Fragen],
  [
    - #grid(
        columns: 3,
        gutter: .3cm,
        [4-Takt-#smallcaps[Otto]-Motor:], [Theoretisch: 50%], [Praktisch: max. ca. 35%],
        [Dieselmotor:], [Theoretisch: 73%], [Praktisch: um 42%],
        [Dampfturbine:], [Theoretisch: 60%], [Praktisch: um 40%],
      )
    - $T_2$ (Abgastemperatur) müsste #qty("0", "K") sein, dann ist der zweite Term 0 und damit $eta = 1$. Die Abgastemperatur kann nicht unter der Umgebungstemperatur liegen, auf der Erde je nach Ort um #qty("273", "K").
  ],
  [*Posten 12*],
  [Fragen],
  [
    - Schlechterer Wirkungsgrad eines Düsentriebwerks im Vergleich zu Benzin-Motor. Im Prinzip müsste hier der "Vortriebswirkungsgrad" betrachtet werden, der selbst bei einem eigentlich guten Triebwerkswirkungsgrad bei tiefen Geschwindigkeiten tief ist; Zu laut; Zu windig
    - Siehe erste Frage.
  ],
)
