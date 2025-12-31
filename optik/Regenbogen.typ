#import "../layout.typ": *

#let gebiet = "Geometrische Optik"
#let titel = [Der Regenbogen]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "a)1)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Der Regenbogen

== Beobachtung
- Halten Sie als erstes kurz fest, wie ein Beobachter bezüglich der Sonne stehen muss, um einen Regenbogen zu beobachten.
  #schreibpapier(height: 1.21cm)

- Wissen Sie noch, in welcher Reihenfolge die Farben im Regenbogen auftreten? Beginnen Sie mit dem äusseren roten Rand und gehen Sie nach innen.
  #schreibpapier(height: 1.21cm)
  
- _Schwierigere Zusatzfrage:_ Können Sie sich erklären, weshalb am Mittag (die Sonne steht sehr hoch am Himmel) kein Regenbogen beobachtet werden kann.
  #schreibpapier(height: 1.21cm)

== Beschreibung: Ein einzelner Regentropfen
- Zeichnen Sie im Regentropfen den Strahlengang von rotem Licht ein! Der Brechungsindex von rotem Licht in Wasser sei 1.33. Wie würde blaues Licht verlaufen (Brechungsindex 1.34)? Zeichnen Sie ungefähr den Verlauf ein!

  #align(center)[
    #cetz.canvas({
      import cetz.draw: *

      set-style(stroke: .5pt)

      circle((), radius: 2)
      circle((), radius: .5pt)

      line((52deg, 2), (rel: (10, 0)), stroke: 1pt + red, name: "strahl")
      mark("strahl.50%", "strahl.start", symbol: "barbed", stroke: red)
      circle((0, -2.8), radius: 0.5pt, stroke: none)
    })
  ]

- Trifft weisses Sonnenlicht auf einen Tropfen, treten alle Regenbogenfarben (sog. Spektralfarben) auf. Das Sonnenlicht wurde wie in einem Prisma zerlegt. Physiker nennen dies auch Dispersion.

== Beschreibung: Das Zusammenspiel der Regentropfen
- Beantworten Sie nun die Frage, weshalb Sie beim Regenbogen einen Kreisbogen beobachten. Versuchen Sie es möglichst mit Ihren eigenen Worten zu tun. Alles andere macht wenig Sinn!
  #schreibpapier()
