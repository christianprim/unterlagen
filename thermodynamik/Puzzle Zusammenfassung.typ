#import "../layout.typ": *

#let gebiet = "Wärmelehre"
#let titel = [Temperatur und Wärmeausdehnung -- Zusammenfassung]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "a)1)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

== Die Temperatur

- Der Vorschlag des schwedischen Astronoms Anders #smallcaps[Celsius] (#text(number-type: "old-style")[1701 -- 1744]) lieferte für alle eine einfach nachvollziehbare Temperaturmessung. Wie lautet der Vorschlag?

#grid(
  columns: (1fr, auto),
  align: (left, horizon),
  gutter: .5cm,
  [
    - Welche Bedingungen sollte die Flüssigkeit im Thermometer erfüllen? Weshalb werden häufig Quecksilber (Hg) oder Alkohol verwendet?
    
    - Etwa gleichzeitig zu Anders #smallcaps[Celsius] erfand der Danziger Glasbläser Daniel #smallcaps[Fahrenheit] eine andere, ebenso willkürliche Einheit der Temperatur, das nach ihm benannte Grad Fahrenheit. Wie lautet die Definition in diesem Fall?
      Zeichnen Sie die Umrechnung in die nebenstehende Grafik ein!

      Wie lauten die Umrechnungsformeln?
      
    - Wieviele °C sind $qty("0", "Fahrenheit")$? Wieviele °C sind $qty("100",  "Fahrenheit")$?
  ],
  [
    #cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *

      set-style(axes: (overshoot: 15pt, shared-zero: false, stroke: 0.5pt, tick: (stroke: 0.5pt), x: (mark: (end: "barbed")), y: (mark: (end: "barbed"))), stroke: 0.5pt)

      plot.plot(axis-style: "school-book", size: (5, 5), x-min: 0, x-max: 100, x-tick-step: 20, x-minor-tick-step: 10, y-tick-step: 40, y-minor-tick-step: 10, x-label: [$unit("Celsius")$], y-min: 20, y-max: 200, y-label: [$unit("Fahrenheit")$], name: "at", {
        plot.add(((0, 0), ), style: (stroke: none))      
      })
    })
  ]
)

== Wärmeausdehnung von Flüssigkeiten, Festkörpern und Gasen

=== Festkörper
- Was macht ein Festkörper, wenn man ihn erwärmt? Erläutern Sie das durchgeführte Experiment dazu!

- Um wieviel Prozent nimmt die Länge des Stabes etwa zu, wenn man ihn um $qty("1", "Celsius")$ erwärmt?

- Für die Längenänderung #text(fill: green)[$Delta l$] des Stabes (Festkörper) findet man (Formel):

  #text(fill:blue)[$alpha$] bedeutet darin folgendes:

  Die Einheit von #text(fill:blue)[$alpha$] ist: $[alpha] =$

- Die totale Länge #text(fill: green)[$l$] des Stabes beträgt somit (Formel):

  (#text(fill: green)[$l_0$]: ursprüngliche Stablänge)
  
- Die Werte von #text(fill:blue)[$alpha$] für verschiedene Materialien sind in Tabelle 6 der Formelsammlung zu finden.

- Die Quai-Brücke in Zürich hat eine Länge von $qty("125", "m")$ und besteht aus Beton. Die jahreszeitlichen Temperaturschwankungen, welchen sie ausgesetzt ist, betragen $qty("30", "Celsius")$. Der Längenausdehnungskoeffizient für Beton beträgt $qty("12e-6", "per Celsius")$.

  + Um wieviel schwankt ihre Länge innerhalb eines Jahres?
  + Wie wird diesem Problem baulich Rechnung getragen?

=== Anwendung von Festkörperausdehnung: Der Bimetallstreifen
- Was geschieht, wenn zwei unterschiedliche Metalle aneinander befestigt werden und dieser sog. Bimetallstreifen dann erhitzt wird? Erklären Sie die Beobachtung!

- Bimetallstreifen finden sowohl in Thermometern (s. Abb. 1) als auch in Regelkreisen Verwendung. So kann er zum Beispiel als Schalter in einem Thermostaten eingesetzt werden, d.h. er regelt die Temperatur eines Raumes. Ein solcher Schalter ist in Abb. 2 gezeichnet. Solange die Temperatur unter (in diesem Fall) $qty("20", "Celsius")$ liegt, wird der Bimetallstreifen an den Kontakt gedrückt und damit ist der elektrische Stromkreis geschlossen. An diesem Stromkreis ist die Heizung angeschlossen. Steigt nun die Temperatur im Raum über $qty("20", "Celsius")$, so öffnet sich der Stromkreis zwischen Bimetallstreifen und Kontakt, wodurch die Heizung automatisch abgestellt wird.
  Erklären Sie die Funktionsweise des Bimetallstreifens in diesen Geräten.
  #grid(
    columns: (1fr, 1fr),
    align: center,
    [#image("../bilder/bimetall-thermometer.jpg", height: 2.8cm)], [#image("../bilder/regelkreis.png", height: 2.8cm)],
    [Abb. 1], [Abb. 2]
  )
  
- Erklären Sie die Aufgabe, die Sie dazu lösten!
  
  Zur Lösung brauchen Sie folgendes: Erhitzt man einen Stab von $qty("1", "m")$ Länge um $qty("100", "Celsius")$, so wird er um #text(fill: green)[$Delta l$] länger. Experimente zeigen, dass für unsere Materialien gilt:
  
  $#text(fill: green)[$Delta l_"Kupfer"$] = qty("1.6", "mm")," " #text(fill: green)[$Delta l_"Eisen"$] = qty("1.2", "mm")$

=== Flüssigkeiten
- Was macht eine Flüssigkeit, wenn man sie erwärmt? Erläutern Sie das durchgeführte Experiment dazu!

- Um wieviel Prozent nimmt das Volumen von Wasser etwa zu, wenn man es um $qty("1", "Celsius")$ erwärmt?

- Für die Volumenänderung $Delta V$ der Flüssigkeit findet man (Formel):

  #text(fill: red)[$gamma$] bedeutet darin folgendes:

  Die Einheit von #text(fill: red)[$gamma$] ist: $[gamma] =$

- Das totale Volumen $V$ der Flüssigkeit beträgt somit (Formel):

  ($V_0$: ursprüngliches Volumen)

- Die Werte von #text(fill: red)[$gamma$] für verschiedene Flüssigkeiten sind in Tabelle 6 der Formelsammlung zu finden.

- Erklären Sie die Aufgabe 2, die Sie dazu lösten!

=== Gase
- Was macht ein Gas, wenn man es erwärmt? Erläutern Sie das durchgeführte Experiment dazu!

- Um wie viel Prozent nimmt das Volumen der Luft etwa zu, wenn man sie um $qty("1", "Celsius")$ erwärmt?

- Für die Volumenänderung $Delta V$ der Luft (Gas) findet man (Formel):

  #text(fill: red)[$gamma$] bedeutet darin folgendes:

  Die Einheit von #text(fill: red)[$gamma$] ist: $[gamma] =$

- Das totale Volumen $V$ des Gases beträgt somit (Formel):

  ($V_0$: ursprüngliches Volumen)

- In einem mit Helium der Temperatur $qty("-13", "Celsius")$ gefüllten Ballon befindet sich ein Luftvolumen von $qty("0.006", "m^3")$. Der Ballon wird nun durch Sonneneinstrahlung auf $qty("33", "Celsius")$ aufgeheizt. Der Volumenausdehnungskoeffizient von Helium beträgt $#text(fill: red)[$gamma$] = qty("3.66e-3", "per Celsius")$.

  + Drücken Sie das Volumen in Litern aus.
  + Wie gross ist das Volumen der Luft nach Aufheizung des Ballons durch die Sonne?

=== Vergleich
- Was fällt auf, wenn Sie gemeinsam die prozentualen Änderungen miteinander vergleichen: Welche Stoffe reagieren bezüglich Grösse (Volumen oder Länge) am stärksten auf Temperaturschwankungen, welche am schwächsten? Wie können Sie sich das erklären?
