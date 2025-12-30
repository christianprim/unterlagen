#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/unify:0.7.1": num,qty,unit
#import "../layout.typ": *

#let gebiet = "Mechanik"
#let titel = [Fallbeschleunigung]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#sym.compose], [‣], [–]))
#set enum(numbering: "a)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)


= Fallbeschleunigung

== Aufgabe
Bestimmen Sie die Fallbeschleunigung #text(fill: red)[$g$] auf drei verschiedene Arten. Vergleichen Sie die Qualität Ihrer Resultate je nach Bestimmungsmethode.

== Theorie
Die Erdbeschleunigung kann (mindestens) auf folgende drei Arten bestimmt werden:
- _Federpendel:_ Mithilfe eines Schwingungsversuchs bestimmt man über die Periodendauer $T$ die Federhärte $D$. Es gilt:
  #v(-1em)
  
  $ T=2 pi sqrt(m /D) $
  
  $m$ steht für die angehängte Masse.

  Im Kräftegleichgewicht halten sich Federkraft ($#text(fill: red)[$F_F$]=D#text(fill: green)[$y$]$) und Gewichtskraft ($#text(fill: red)[$F_G$]=m #text(fill: red)[$g$]$) die Waage. Die gewonnene Betragsgleichung kann nach #text(fill: red)[$g$] aufgelöst werden.

- _Fadenpendel:_ Durch Messung der Periode $T$ und der Fadenlänge #text(fill: green)[$l$] kann man direkt auf #text(fill: red)[$g$] schliessen. Es gilt:
  #v(-1em)
  $ T=2 pi sqrt(#text(fill: green)[$l$]/#text(fill: red)[$g$]) $

  Achtung! Die Formel gilt nur für kleine Auslenkungen!

- _Freier Fall:_ Durch Messung der Fallstrecke und der Fallzeit (elektrisch) erhält man die Fallbeschleunigung. Es gilt:
  #v(-1em)
  $ #text(fill: green)[$y$]=#text(fill: red)[$g$]/2 t^2 $

== Experiment
Um bei den Pendelversuchen bessere Messergebnisse zu erzielen, messen Sie die Dauer von 10 Schwingungsperioden. Die Schwingungsdauer $T$ ist dann ein Zehntel der gemessenen Zeit.

Das Fallexperiment führen Sie 3 Mal aus und bilden den Mittelwert der Fallzeiten.

== Protokoll
Ins Protokoll gehören insbesondere die Aufbauskizzen der einzelnen Experimente. Wichtige Längen sind darin deutlich gekennzeichnet.

Diskutieren Sie die gewonnenen Ergebnisse bezüglich ihrer Messmethode und vergleichen Sie sie mit der Fallbeschleunigung auf dem Hönggerberg: $qty("9.8064790", "m/s^2")$.

#showbox("Beispiel einer Skizze", haupt-farbe)[
  #grid(
    columns: (auto, 1fr),
    align: horizon,
    gutter: .3cm,
    [
      #cetz.canvas({
        import cetz.draw: *

        set-style(stroke: .5pt)

        rect((-.5, 0), (1.5, .1), stroke: none, fill: gradient.linear(gray, gray.transparentize(200%), angle: -90deg))
        line((-.5, 0), (1.5, 0))

        cetz.decorations.coil(line((0, 0), (rel: (0, -.7))), amplitude: .3)
        line((0, -.7), (0, -.8), name: "befestigung")          
        scope({
          translate(x: 1)
          cetz.decorations.coil(line((0, 0), (rel: (0, -1.3))), amplitude: .3)
          line((0, -1.3), (0, -1.4), name: "befestigung")
          circle("befestigung.end", radius: .1, anchor: "north", fill: gradient.radial(gray.lighten(80%), gray, center: (25%, 25%)), name: "kugel")
          line("kugel.center", (rel: (0, -1)), stroke: red, mark: (end: "barbed"), name: "F_G")
          line("kugel.center", (rel: (0, 1)), stroke: red, mark: (end: "barbed"), name: "F_F")
          circle("kugel", radius: .5pt, stroke: red)
        })

        line((-.5, -.8), (1.5, -.8), stroke: (paint: green, dash: "dashed"))
        line((-.5, -1.4), (1.5, -1.4), stroke: (paint: green, dash: "dashed"))
        line((.5, -.8), (.5, -1.4), stroke: green, mark: (end: "barbed"), name: "y")

        content("y", text(fill: green)[$y$], anchor: "east", padding: 2pt)
        content("F_G", text(fill: red)[$arrow(F)_G$], anchor: "east", padding: 2pt)
        content("F_F", text(fill: red)[$arrow(F)_F$], anchor: "west", padding: 8pt)
        content("kugel.south-east", [$m$], anchor: "north-west")
      })
    ],
    [
      In der Skizze nebenan wurden ausser der Federhärte $D$ alle benötigten Grössen eingezeichnet, die beim Federpendel-Experiment fürs Aufstellen des Kräftegleichgewichts benötigt werden. Machen Sie es gleich für die anderen Experimente: alle benötigten Grössen in einer übersichtlichen Skizze einzeichnen. Darin wird insbesondere klar, von wo nach wo, eine Länge gemessen wurde.
    ]
  )
]

Beim Fallexperiment wird zudem eine Fehlerrechnung erwartet. Wie genau können Sie die Fallzeit messen? Bestimmen Sie selbst ein vernünftiges $Delta t$. Auch die Fallstrecke ist ungenau. Legen Sie auch dort ein sinnvolles #text(fill: green)[$Delta y$] fest.
