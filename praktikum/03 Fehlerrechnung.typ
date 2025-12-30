#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/unify:0.7.1": num,qty,unit
#import "../layout.typ": *

#let gebiet = "Grundlagen"
#let titel = [Fehlerrechnung]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#sym.compose], [‣], [–]))
#set enum(numbering: "a)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)


= Fehlerrechnung

== Aufgabe
Bestimmen Sie den absoluten Fehler der Dichte eines Körpers aus dem letzten Praktikum. Sie wählen dazu einen Körper, der ein zusammengesetztes Volumen hat. Vergleichen Sie das um den absoluten Fehler ergänzte Resultat mit den Tabellenwerten.

== Theorie
Die exakte Messung einer physikalischen Grösse ist nicht möglich, da jede Messung Fehler aufweist. Das Messergebnis sollte daher nicht nur aus einem Schätzwert für den wahren Wert der betreffenden Messgrösse bestehen, sondern auch aus einer Genauigkeitsangabe, d.h. eines Wertebereichs, innerhalb dessen der wahre Wert der Messgrösse sich befinden sollte.

Beispiel: Die Dichte eines Körpers beträgt $rho=qty("1520+-20", "kg/m^3")$. 

Die Angabe hinter dem $plus.minus$ wird als _absoluter Fehler $Delta rho$_ bezeichnet. Die Division des absoluten Fehlers durch den Messwert heisst relativer Fehler $(Delta rho)/rho$ der Dichte.
#v(-.05em)
=== Unterteilung der Messfehler
- _Grobe Fehler:_ offenkundige Irrtümer, falsche Bedienung von Geräten, Rechenfehler, ...

  Diese Art Fehler lassen sich mit Sorgfalt und Kontrollmassnahmen hoffentlich vermeiden.

- _Systematische Fehler:_ unerkannte Einflüsse verfälschen die Messung immer gleich.

  Diese Art Fehler lassen sich beispielsweise durch Austausch eines Messgeräts oder durch Vergleich mit einer völlig anderen Messmethode aufdecken. Sie bleiben aber auch oft unerkannt!

- _Zufällige Fehler:_ lassen sich nicht vermeiden.

  Erfahrungsgemäss ergeben wiederholte Messungen derselben Grösse (auch unter gleichen Bedingungen) nicht immer den gleichen Wert. Die Differenz des nachfolgenden zum vorangehenden Messwert fällt unregelmässig aus, einmal positiv, dann wieder negativ. Auch ihr Betrag wechselt innerhalb gewissen Grenzen ganz zufällig. Diese Fehler unterliegen deshalb den Gesetzen der Wahrscheinlichkeitsrechnung, man kann sie also mit Hilfe von statistischen Methoden in den Griff bekommen.

Uns interessieren des weiteren nur die zufälligen Fehler.
#v(-.05em)
=== Schätzen des absoluten Fehlers einer Messung

Werden wiederholte Messungen derselben Grösse vorgenommen, gibt uns die Standardabweichung (ein Mittel aus der Statistik) ein Mass für den absoluten Fehler einer Messgrösse. Häufig wird der absolute Fehler geschätzt. Für unsere Messungen gilt:

$Delta m=qty("0.1", "g")$

$Delta x=qty("0.2", "mm")$

#v(-.05em)
=== Fehlerfortpflanzung
- Bei der Addition und Subtraktion physikalischer Grössen werden die absoluten Fehler der einzelnen Messwerte zusammengezählt, um den absoluten (Maximal-)Fehler des Resultates abzuschätzen.

- Bei der Multiplikation und der Division werden die relativen Fehler zusammengezählt. So erhält man den relativen (Maximal-)Fehler des Ergebnisses, der allenfalls mit dem Ergebnis selbst multipliziert werden muss, um den absoluten (Maximal-)Fehler zu erhalten.
== Protokoll
Ihr Protokoll weist die Berechnung des absoluten Fehlers der Dichte eines Körpers sauber auf. Der Weg ist wichtiger als das Ziel.

#showbox("Beispiel einer Fehlerrechnung für zwei Volumina", haupt-farbe)[
  #grid(
    columns: (auto, 1fr),
    align: (horizon, left),
    gutter: .5cm,
    row-gutter: 1cm,
    [
      #cetz.canvas({
        import cetz.draw: *

        set-style(stroke: .5pt)

        ortho(x: 20deg, y: 30deg, {
          let s = 1.5 // Seitenlänge des Würfels
          
          // 1. Rechte Seite (Dunklerer Schatten)
          fill(beige.darken(20%))
          line((s,0,0), (s,s,0), (s,s,s), (s,0,s), close: true)
          
          // 2. Obere Seite (Am hellsten, da Licht oft von oben kommt)
          fill(beige.lighten(40%))
          line((0,s,0), (s,s,0), (s,s,s), (0,s,s), close: true)
          
          // 3. Vorderseite (Mittlere Helligkeit)
          fill(beige)
          line((0,0,s), (s,0,s), (s,s,s), (0,s,s), close: true)
          
          line((0,s,s), (s,s,s), stroke: red, name: "a")
          line((s,s,s), (s,0,s), stroke: green, name: "b") 
          line((s,s,s), (s,s,0), stroke: blue, name: "c")
          on-layer(2, content("a", text(fill: red)[$a$], anchor: "south"))
          on-layer(2, content("b", text(fill: green)[$b$], anchor: "east", padding: 2pt))
          on-layer(2, content("c", text(fill: blue)[$c$], anchor: "north-east", padding: 0.5pt))
        })
        content((0.3, -1.1), [Quader])
      })
    ],
    [
      Für das *Quadervolumen* $V$ mit den Kantenlängen #text(fill: red)[$a$], #text(fill: green)[$b$] und #text(fill: blue)[$c$] gilt:
      
      $V = #text(fill:red)[$a$] dot #text(fill: green)[$b$] dot #text(fill: blue)[$c$]$

      Da das Volumen rein *multiplikativ* berechnet wird, werden die _relativen Fehler_ zusammengezählt, um den _relativen Fehler_ des Volumens zu bestimmen: \ #text(size: 9pt)[Es sei $Delta x$ der absolute Fehler jeder gemessenen Länge]

      $(Delta V)/V = (Delta x)/#text(fill: red)[$a$]+(Delta x)/#text(fill: green)[$b$]+(Delta x)/#text(fill: blue)[$c$]$

      Für den _absoluten Fehler_ des Quadervolumens gilt somit:

      $Delta V = V((Delta x)/#text(fill: red)[$a$]+(Delta x)/#text(fill: green)[$b$]+(Delta x)/#text(fill: blue)[$c$]) = #text(fill: red)[$a$] dot #text(fill: green)[$b$] dot #text(fill: blue)[$c$] dot ((Delta x)/#text(fill: red)[$a$]+(Delta x)/#text(fill: green)[$b$]+(Delta x)/#text(fill: blue)[$c$])$
    ],
    [
      #cetz.canvas({
        import cetz.draw: *

        set-style(stroke: .5pt)
        let wood = gradient.linear(beige, beige.lighten(40%), beige, beige, beige)

        merge-path(fill: wood, {
          line((-1, 0), (-1, -2))
          arc((), start: -180deg, stop: 0deg, radius: (1, .4))
          line((), (1, 0))
        })
        line((1, -2), (1, 0), stroke: green, name: "h")
        circle((0, 0), radius: (1, .4), fill: beige.lighten(40%), name: "deckel")
        intersections("i", hide(line((20deg, -1), (20deg, 1))), "deckel")
        line("i.0", "i.1", stroke: blue, mark: (symbol: "barbed"), name: "d")

        content((0, -2.9), [Zylinder])
        content("h", text(fill: green)[$h$], anchor: "east", padding: 2pt)
        content("d", text(fill: blue)[$d$], anchor: "south-east", padding: 1pt)
        
      })
    ],
    [
      Für das *Zylindervolumen* $V$ mit dem Durchmesser #text(fill: blue)[$d$] und der Höhe #text(fill: green)[$h$] gilt:
      
      $V = pi/4 #text(fill: blue)[$d$]^2 dot #text(fill: green)[$h$]$

      Da das Volumen rein *multiplikativ* berechnet wird, werden die _relativen Fehler_ zusammengezählt, um den _relativen Fehler_ des Volumens zu bestimmen: \ #text(size: 9pt)[Es sei $#text(fill: blue)[$d$]^2=#text(fill: blue)[$d$] dot #text(fill: blue)[$d$]$ und $pi/4$ fehlerfrei, da es nicht gemessen wurde]

      $(Delta V)/V = (Delta x)/#text(fill: blue)[$d$]+(Delta x)/#text(fill: blue)[$d$]+(Delta x)/#text(fill: green)[$h$]=2 (Delta x)/#text(fill: blue)[$d$]+(Delta x)/#text(fill: green)[$h$]$

      Für den _absoluten Fehler_ des Zylindervolumens gilt somit:

      $Delta V = V(2 (Delta x)/#text(fill: blue)[$d$]+(Delta x)/#text(fill: green)[$h$])=pi/4 #text(fill: blue)[$d$]^2 dot #text(fill: green)[$h$] dot (2 (Delta x)/#text(fill: blue)[$d$]+(Delta x)/#text(fill: green)[$h$])$
    ]
  )
  #v(1em)
]
In Ihrem Protokoll werden Sie den absoluten Fehler der *Dichte* eines *zusammengesetzten* Körpers bestimmen. Sie müssen also zwei Volumina addieren oder voneinander subtrahieren. Denken Sie daran, dass bei der Addition oder Subtraktion jeweils die _absoluten Fehler_ zusammengezählt werden müssen.

