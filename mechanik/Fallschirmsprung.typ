#import "../layout.typ": *

#let gebiet = "Mechanik"
#let titel = "Fall mit Luftwiderstand"
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#sym.checkmark], [‣], [–]))

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Fall mit Luftwiderstand

== Ziel
- Sie wenden Ihr Wissen an einem realen Beispiel an und lernen dabei den Umgang mit Unsicherheiten.
- Sie lernen auch die Unterschiede zwischen dem freien Fall und dem Fall in Luft kennen.
- Sie arbeiten mit Diagrammen.

== Aufgabe 1: Erwartungen
Erinnern Sie sich an die Schlussfolgerung, die wir aus dem Versuch mit den Papiertrichtern gezogen haben? Die Geschwindigkeit einer Fallbewegung in Luft nimmt nicht stetig zu. Nach einer hinreichend langen Zeit bewegt sich der fallende Körper gleichförmig.

Beschreiben Sie mit Ihren eigenen Worten, wie die Fallbewegung eines Fallschirmspringers Ihrer Meinung nach aussehen muss.

_Vom Absprung bis zum Öffnen des Fallschirms:_
#schreibpapier(height: 1.62cm)

_Vom Öffnen des Fallschirms bis zur Landung:_
#schreibpapier(height: 1.62cm)

_Bei der Landung:_
#schreibpapier(height: 1.62cm)
Zeichnen Sie auch das erwartete Beschleunigungs-Zeit-Diagramm:
#align(center)[
  #cetz.canvas({
    import cetz.draw: *
    set-style(stroke: 0.5pt)
    
    line((), (10,0), mark: (end: "barbed"), name: "x-achse")
    line((0, -3), (0, 3), mark: (end: "barbed"), name: "y-achse")

    line((0.5, -3), (0.5, 3), stroke: (paint: gray, dash: "dashed"), name: "absprung")
    line((4.5, -3), (4.5, 3), stroke: (paint: gray, dash: "dashed"), name: "oeffnen")
    line((8.5, -3), (8.5, 3), stroke: (paint: gray, dash: "dashed"), name: "landung")

    content("x-achse.end", [$t$], anchor: "north", padding: 3pt)
    content("y-achse.end", text(fill: red)[$a$], anchor: "east", padding: 3pt)
    content("absprung.start", [Absprung], anchor: "west", padding: 2pt)
    content("oeffnen.5%", [Öffnen des \ Fallschirms], anchor: "west", padding: 2pt)
    content("landung.start", [Landung], anchor: "west", padding: 2pt)
  })
]

Markieren Sie in der Grafik die Stellen mit grün, bei denen Sie (fast) sicher sind, dass sie stimmen. Mit rot heben Sie die Stellen hervor, bei denen Sie unsicher sind. Versuchen Sie während dem Film, eine Antwort auf Ihre rot markierten Bereiche zu bekommen! _Wichtig: Ändern Sie die Grafik nach dem Film nicht mehr! Sie profitieren so am meisten._

== Aufgabe 2: Vergleich mit den Messwerten

In der @alles sind die Beschleunigungen aufgetragen, die ein kleines Messgerät am Helm des Fallschirmspringers aufgezeichnet hat. Sie sind praktisch unverändert wiedergegeben. Die rasch aufeinander folgenden Änderungen werden als Rauschen bezeichnet.

#figure(
  cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *

    let rohdaten = csv("../daten/fallschirmsprung.csv", delimiter: " ")
    let reihe = range(rohdaten.len()).map(i => (float(rohdaten.at(i).at(0)), float(rohdaten.at(i).at(1))))
    
    set-style(axes: (overshoot: 15pt, shared-zero: false, stroke: 0.5pt, tick: (stroke: 0.5pt), x: (mark: (end: "barbed")), y: (mark: (end: "barbed"))), stroke: 0.5pt)

    plot.plot(axis-style: "school-book", size: (12,8), x-tick-step: 25, y-tick-step: 5, x-label: [$t$], y-min: -15, y-max: 10, y-label: text(fill: red)[$a$], name: "at", {
      plot.add(reihe, style: (stroke: red))      
    })

    content((10, 6.5), [$t_"Absprung" &= #h(2cm) unit("s") \
    t_"Öffnung" &= #h(2cm) unit("s") \
    t_"Landung" &= #h(2cm) unit("s") $])
  }),
  caption: [Der ganze Sprung. Die Beschleunigung #text(fill: red)[$a$] ist in $unit("m/s^2")$, die Zeit in $unit("s")$]
) <alles>

Versuchen Sie aus den verrauschten Messwerten herauszulesen, wann der Fallschirmspringer abspringt, wann er den Fallschirm öffnet und wann er auf den Boden landet. Markieren Sie diese Stellen in der Abbildung und notieren Sie die Zeiten!

Versuchen Sie nun das Beschleunigungs-Zeit-Diagramm ohne Rauschen aufzuzeichnen!

#align(center)[
  #cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *
    
    set-style(axes: (overshoot: 15pt, shared-zero: false, stroke: 0.5pt, tick: (stroke: 0.5pt), x: (mark: (end: "barbed")), y: (mark: (end: "barbed"))), stroke: 0.5pt)

    plot.plot(axis-style: "school-book", size: (12,8), x-min: 150, x-max: 400, x-tick-step: 25, y-tick-step: 5, x-label: [$t$], y-min: -15, y-max: 10, y-label: text(fill: red)[$a$], name: "at", {
      plot.add(((152, 0), (152, 0)), style: (stroke: none))    
    })
  }) 
] 

Vergleichen Sie dieses Diagramm mit Ihren Erwartungen. Stimmen Ihre sicheren Bereiche überein? Wie steht es mit den von Ihnen rot markierten Bereichen? Halten Sie allenfalls kurz fest, wo Sie mit Ihren Erwartungen daneben lagen.

== Aufgabe 3: Die maximale Geschwindigkeit des Fallschirmspringers

Lesen Sie aus der @alles heraus, wann der Fallschirmspringer seine maximale Geschwindigkeit erreicht hat. Wie lange hält er diese Geschwindigkeit bei?

#schreibpapier(height: 32.1mm)

Wie gross ist diese maximale Geschwindigkeit? _Tipp: Die Fläche unter der Kurve im $a$-$t$-Diagramm entspricht der Geschwindigkeitsänderung. Berechnen Sie von Hand, wie gross diese Fläche ist. Sie können sie z.B. durch 8–12 schmale Balken annähern oder durch eine einfache geometrische Form._

Nehmen Sie an, dass der Springer beim Abspringen keine vertikale Anfangsgeschwindigkeit hatte. @absprung zeigt einen vergrösserten Ausschnitt des Absprungs.

#figure(
  cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *

    let rohdaten = csv("../daten/fallschirmsprung.csv", delimiter: " ")
    let reihe = range(rohdaten.len()).map(i => (float(rohdaten.at(i).at(0)), float(rohdaten.at(i).at(1))))
    
    set-style(axes: (overshoot: 15pt, shared-zero: false, stroke: 0.5pt, tick: (stroke: 0.5pt), x: (mark: (end: "barbed")), y: (mark: (end: "barbed"))), stroke: 0.5pt)

    plot.plot(axis-style: "school-book", size: (12,8), x-tick-step: 5, y-tick-step: 2, x-label: [$t$], y-min: -3, y-max: 8, x-min: 170, x-max: 205, y-label: text(fill: red)[$a$], name: "at", {
      plot.add(reihe, style: (stroke: red))      
    })
  }),
  caption: [Der Absprung. Die Beschleunigung #text(fill: red)[$a$] ist in $unit("m/s^2")$, die Zeit in $unit("s")$]
) <absprung>

Die maximale Geschwindigkeit des Springers beträgt:
#schreibpapier()

#place(dx: 5cm, dy: -1.25cm)[#text(size: 14pt)[$v_"max"=$]]

#pagebreak()

== Aufgabe 4: Das Öffnen des Fallschirms
Wie gross ist die maximale Beschleunigung (da sie negativ ist, sagt man ihr auch Verzögerung), die der Springer erfährt, wenn er seinen Fallschirm öffnet? Vergleichen Sie deren Betrag mit dem Betrag der Beschleunigung beim Absprung.
#schreibpapier(height: 1.61cm)

Weshalb senkt wohl das Öffnen des Fallschirms die Fallgeschwindigkeit? Beschreiben Sie einen Versuch, den Sie durchführen könnten, um Ihre Annahme zu überprüfen.
#schreibpapier(height: 1.61cm)

Welche konstante Geschwindigkeit hat der Fallschirmspringer nach dem Öffnen? @oeffnen zeigt den entsprechenden vergrösserten Ausschnitt.

#figure(
  cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *

    let rohdaten = csv("../daten/fallschirmsprung.csv", delimiter: " ")
    let reihe = range(rohdaten.len()).map(i => (float(rohdaten.at(i).at(0)), float(rohdaten.at(i).at(1))))
    
    set-style(axes: (overshoot: 15pt, shared-zero: false, stroke: 0.5pt, tick: (stroke: 0.5pt), x: (mark: (end: "barbed")), y: (mark: (end: "barbed"))), stroke: 0.5pt)

    plot.plot(axis-style: "school-book", size: (12,6), x-tick-step: 2, y-tick-step: 2, x-label: [$t$], y-min: -15, y-max: 2, x-min: 230, x-max: 240, y-label: text(fill: red)[$a$], name: "at", {
      plot.add(reihe, style: (stroke: red))      
    })
  }),
  caption: [Der Fallschirm wird geöffnet. Die Beschleunigung #text(fill: red)[$a$] ist in $unit("m/s^2")$, die Zeit in $unit("s")$]
) <oeffnen>

#schreibpapier(height: 1.61cm)

#place(dx: 5cm, dy: -1cm)[#text(size: 14pt)[$v_"nach dem Öffnen"=$]]

== Aufgabe 5: Zusatzfragen
Weshalb wird zu Beginn nicht die volle Fallbeschleunigung von etwa $qty("9.8", "m/s^2")$ gemessen?
#schreibpapier(height: 1.61cm)

Überprüfen noch einmal kritisch Ihre Ergebnisse. Welche Ergebnisse scheinen Ihnen sinnvoll? Bei welchen sind Sie selbst nach der Messung unsicher? Kann z.B. die hohe Geschwindigkeit nach dem Öffnen des Fallschirms stimmen?

#schreibpapier()
