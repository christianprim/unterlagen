#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/unify:0.7.1": num,qty,unit
#import "../layout.typ": *

#let gebiet = "Mechanik"
#let titel = "Beobachtungsauftrag zur Kreisbewegung"
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#sym.checkmark], [‣], [–]))
#set enum(numbering: "a)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Das Kraftwerk Dietikon

== Geschichtliches
#grid(
  columns: (auto, 5cm),
  gutter: 1em,
  
  [Am Ende des #text(number-type: "old-style")[19]. Jahrhunderts war die Blütezeit der schweizerischen Textilindustrie. Die Spindeln und die Webstühle wurden damals noch direkt durch die Wasserkraft oder über enorme Dampfmaschinen angetrieben. Im Limmattal wurde die Wasserkraft bereits seit #text(number-type: "old-style")[1864] genutzt. Doch bald hielten die Unternehmer nach einer besser handhabbaren Energieform Ausschau. So wurde #text(number-type: "old-style")[1888] der erste Gleichstromgenerator gebaut: Die erste elektrische Energieübertragung wurde Wirklichkeit.],
  [#image("../bilder/kraftwerk-dietikon.webp")]
)

== Charakteristische Daten
#text(size: 8pt)[(leider lückenhaft, der Broschüre "Kraftwerk Dietikon -Elektrizitätswerke des Kantons Zürich EKZ" entnommen)]

#align(center)[
  #table(
    columns: 6,
    align: (center, center, right, right, right, left),
    stroke: none,
    fill: (x, y) =>
    if x == 0 or y == 0 {
      haupt-farbe.lighten(40%)
    },
    table.header(
      table.hline(start: 0, stroke: 0.5pt + haupt-farbe),
      align(horizon)[Jahr], [Gefälle \ in m], align(center)[Wassermenge \ in $unit("m^3/s")$], align(center)[Installierte Leistung \ in PS], [Produktion \ in kWh$unit("/a")$], [],
    ),
    table.vline(stroke: 0.5pt + haupt-farbe), 
    table.vline(x: 0, stroke: 0.5pt + haupt-farbe),
    text(number-type: "old-style")[1864],  [2.07], [1.81], [36 (netto)], [rein mech.], [],
    text(number-type: "old-style")[1887], [1.56], [5], [110], [rein mech.], [],
    
    text(number-type: "old-style")[1888], [], [], [40], [], [erster Generator], 
    text(number-type: "old-style")[1895], [2.3], [30], [920], [], [Beginn der öffentlichen\ Stromversorgung], 
    text(number-type: "old-style")[1908], [], [], [], [$num("1220000")$], [Übernahme EKZ],  
    text(number-type: "old-style")[1931], [], [], [], [$num("4050000")$], [vor Umbau],
    text(number-type: "old-style")[1934], [$2.8-4.1$], [80], [$num("3400")$], [$num("16500000")$], [nach Umbau], 
    text(number-type: "old-style")[1942], [$2.8-4.8$], [100], [$num("4000")$], [$num("19300000")$], [nach Höherstau],
    table.hline(start: 0, stroke: 0.5pt + haupt-farbe)
  )
]

Technische Daten #text(number-type: "old-style")[1995]:

#align(center)[
  #table(
    columns: 4,
    align: (left),
    stroke: none,
    fill: (x, y) =>
    if y == 0 {
      haupt-farbe.lighten(40%)
    },
    table.header(
      table.hline(start: 0, stroke: 0.5pt + haupt-farbe),
      [*Turbinen*], [], [*Generatoren*], [],
    ),
    table.vline(stroke: 0.5pt + haupt-farbe), 
    table.vline(x: 0, stroke: 0.5pt + haupt-farbe),
    [Lieferant], [Escher Wyss AG], [Lieferant], [Maschinenfabrik Oerlikon AG],
    [Typ], [Kaplan], [Typ], [Synchrongenerator],
    [Baujahr], text(number-type: "old-style")[1933], [Baujahr], [#text(number-type: "old-style")[1931]/#text(number-type: "old-style")[33]], 
    [Anzahl], [2], [Nennleistung], [$qty("1900", "kilo Watt")$],
    [Durchmesser], [$qty("3.3", "m")$], [Nennspannung], [$qty("750", "Volt")$ bei $qty("1480", "A")$],
    [Masse], [je 15.3 Tonnen], [Polpaare], [32],
    [Drehzahl], [$94 unit("U/min")$], [⌀ Polrad], [$qty("4350", "mm")$],  [Wassermenge], [max. $qty("50", "m^3/s")$], [Masse Rotor], [je 26 Tonnen],
    [Gefälle], [$2.5#h(0.2em)-#h(0.2em)qty("4.75", "m")$], [Jahresproduktion], [ca. 19.7 Mio. kWh],
    table.hline(start: 0, stroke: 0.5pt + haupt-farbe)
  )
]

== Aufgaben

+ Berechnen Sie aus den gegebenen Daten die aufgenommene (Wasser-)Leistung des Kraftwerks für die Jahre #text(number-type: "old-style")[1864], #text(number-type: "old-style")[1934] und #text(number-type: "old-style")[1995] bei maximalem Gefälle. Woher kam wohl die Leistungssteigerung?
+ Berechnen Sie den Wirkungsgrad des Kraftwerks zu denselben Zeitpunkten. Was stellen Sie fest? (Umrechnung: $qty("1", "PS") = qty("735.5", "W")$)
