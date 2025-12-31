#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge, shapes.chevron
#import "../layout.typ": *

#let gebiet = "Wärmelehre"
#let titel = [Wirkungsgrad]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#sym.compose], [‣], [–]))
#set enum(numbering: "a)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Eine Tasse heisses Wasser

== Aufgabe
Bestimmen Sie die beste Methode, um $qty("2", "deci litre")$ Wasser für ein heisses Getränk zu erwärmen. Sie berücksichtigen die Aufwärmzeit und den Wirkungsgrad des Aufwärmprozesses.

== Theorie
Unter dem Wirkungsgrad versteht man den Quotient aus gewünschter abgegebener Energie und aufgenommener Energie.#v(1em)

#grid(
  columns: (0.1fr, 1fr, .8fr),
  //align: horizon,
  gutter: .5cm,
  [],
  [
    #diagram({
      node((-.85, 0), text(fill: blue)[$E_"aufgenommen"$], shape: chevron, stroke: .5pt + blue, fill: blue.lighten(80%), height: 1.5cm)
      node((0, 0), text(fill: haupt-farbe)[Gerät], stroke: haupt-farbe + .75pt, width: 2cm, height: 2cm, name: <g>)
      node((.8, 0), text(fill: aqua.darken(20%))[$E_"gewünscht"$], shape: chevron, stroke: aqua + .5pt, fill: aqua.lighten(80%), height: .9cm)
      node((0, .75), rotate(90deg, reflow: true)[#text(fill: purple)[$E_"andere"$]], shape: chevron.with(dir: bottom), stroke: purple + .5pt, fill: purple.lighten(80%), width: .6cm)
    })
  ],
  [
    Formal:

    $
    eta=#text(fill: aqua)[$E_"gewünscht"$]/#text(fill: blue)[$E_"aufgenommen"$]
    $
  ]
)

== Experiment
In diesem Praktikum arbeiten Sie alle zusammen. Teilen Sie sich auf die einzelnen Geräte auf. Beachten Sie, dass nicht jedes Gerät das Aufwärmen von exakt $qty("2", "deci litre")$ Wasser erlaubt. Wählen Sie eine fürs Gerät sinnvolle Menge und berechnen Sie anschliessend die erwartete Aufwärmzeit für die geforderten $qty("2", "deci litre")$.

Bestimmen Sie die aufgenommene Energie mit den Leistungsmessgeräten (richtige Darstellung beachten!). Die gewünschte Energie ist die vom Wasser aufgenommene Wärme ($#text(fill: maroon)[$c_W$]=qty("4182", "J/kg/K")$).

== Protokoll
Sie führen keine Protokolle. Die Ergebnisse der einzelnen Geräte werden tabellarisch an der Wandtafel gesammelt.
