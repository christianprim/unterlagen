#import "../layout.typ": *

#let gebiet = "Grundlagen"
#let titel = [Dichte]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#sym.compose], [‣], [–]))
#set enum(numbering: "a)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Dichte

== Aufgabe
Bestimmen Sie von je 2 Holz- und Metallkörpern, deren Volumen geometrisch bestimmbar ist, die Dichten. Vergleichen Sie Ihre Resultate mit Tabellenwerten in der Physikformelsammlung.

== Experiment
Die _Massenbestimmung_ erfolgt mit einer Präzisionswaage. Dazu zwei Hinweise:
- Waage muss horizontal sein (Libelle beachten!)
- Waage darf nicht "driften", der Messwert muss reproduziert werden können

Die _Volumenbestimmung_ geschieht indirekt, indem mit Hilfe einer Schiebelehre (Dialekt: "Schublehre") die Abmessungen ermittelt werden. Mit den Formeln der mathematischen Formelsammlung wird das Volumen berechnet. Drei Hinweise zur Schiebelehre:
- drei Stellen zum Ablesen: Aussenmass / Innenmass / Tiefenmass
- Vorsicht mit der Nullmarke! Objekt richtig einklemmen
- Präzision wird durch die Benutzung des Nonius gesteigert. Dieses Hilfsmittel unbedingt ausnützen.

== Protokoll
Sie notieren zuerst exakt, wie Sie beim Experiment vorgegangen sind. Für jeden Körper fertigen Sie eine Skizze an, in der die gemessenen Grössen aufgeführt sind. Sie geben _algebraisch_ an, wie Sie aus den gemessenen Grössen die Dichte des Körpers bestimmen. Das Ergebnis berücksichtigt die Anzahl signifikanter Stellen und ist mit der Einheit versehen. Vergleichen Sie die erhaltene Dichte mit dem Literaturwert aus Ihrer Formelsammlung. Diskutieren Sie das Ergebnis dieses Vergleichs.

#showbox("Beipiel einer Skizze", haupt-farbe)[

#text(font: "TeX Gyre Heros")[Körper W201 (Zylinder mit Rechteckbohrung)]
#grid(
  columns: (auto, 1fr),
  align: (left, horizon),
  inset: 1em,
  [
    #cetz.canvas({
      import cetz.draw: *

      set-style(stroke: .5pt)

      // Aufsicht
      
        circle((), radius: 2, fill: haupt-farbe.lighten(80%))
        rect((-.5, -.5), (.5, .5), fill: haupt-farbe.lighten(60%))

      
      line((-.5, -.6), (.5, -.6), stroke: green, mark: (symbol: "|"), name: "a")
      line((.6, -.5), (.6, .5), stroke: green, mark: (symbol: "|"), name: "b")
      line((-160deg, 2), (20deg, 2), stroke: blue, mark: (symbol: "barbed"), name: "d")

      // Seitenansicht
      rect((3, -1), (7, 1), fill: haupt-farbe.lighten(80%))
      line((3, -1.1), (7, -1.1), stroke: blue, mark: (symbol: "|"), name: "ds")
      line((7.1, -1), (7.1, 1), stroke: blue, mark: (symbol: "|"), name: "h")
      line((4.5, 1), (4.5, -0.25), (5.5, -0.25), (5.5, 1), stroke: (paint: gray))
      line((4.5, -.35), (5.5, -.35), stroke: green, mark: (symbol: "|"), name: "as")
      line((5.6, 1), (5.6, -.25), stroke: red, mark: (symbol: "|"), name: "c")
      
      // Beschriftungen
      content("a", text(fill: green)[$a$], anchor: "north")
      content("as", text(fill: green)[$a$], anchor: "north")
      content("b", text(fill: green)[$b$], anchor: "west", padding: 2pt)
      content("c", text(fill: red)[$c$], anchor: "west", padding: 2pt)
      content("d", text(fill: blue)[$d$], frame: "rect", stroke: none, fill: haupt-farbe.lighten(60%), padding: 2pt)
      content("ds", text(fill: blue)[$d$], anchor: "north", padding: 2pt)
      content("h", text(fill: blue)[$h$], anchor: "west", padding: 2pt)
    })
  ], 
  [
    $#text(fill: green)[$a$]=qty("10.1", "mm")$

    $#text(fill: green)[$b$]=qty("10.2", "mm")$

    $#text(fill: red)[$c$]=qty("12.5", "mm")$   

    $#text(fill: blue)[$d$]=qty("40.0", "mm")$

    $#text(fill: blue)[$h$]=qty("19.6", "mm")$
  ]
)]
