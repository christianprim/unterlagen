#import "../layout.typ": *

#let gebiet = "Mechanik"
#let titel = [3 Chilbi-Attraktionen]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#sym.compose], [‣], [–]))

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= 3 Chilbi-Attraktionen

== Ablauf
Zur Abwechslung erarbeiten Sie diesen Stoff nach der Puzzle-Methode. Diese fordert von Ihnen zwar viel Selbstdisziplin, bereitet aber, wie kaum eine andere Methode, viel Spass. Noch etwas: den Stoff, den Sie so erworben haben, werden Sie nicht gleich wieder vergessen! (Denken Sie an die Prüfungsvorbereitung!)

Der Unterricht ist in zwei Phasen unterteilt:

+ Die Expertenrunde, in der Sie sich zu einem ganz bestimmten Thema zu Experten ausbilden.
+ Die Unterrichtsrunde, in der Sie Ihr Thema einer kleinen Gruppe präsentieren.

In der Expertenrunde sitzen Sie in den einzelnen Gruppen beisammen und erarbeiten selbständig die Grundlagen zum Thema *Kettenkarussell*, *Rotor*, oder *Loopingbahn*. Dazu lesen Sie gemeinsam den Abschnitt auf der nächsten Seite durch und versuchen, in der Gruppe allfällige Unklarheiten zu beseitigen. Dann folgt der interessante Schritt: Sie bereiten sich in der Gruppe so vor, dass jeder einzelne den Stoff den anderen vermitteln kann, als Schüler-Lehrer! Für diesen ersten Teil stehen Ihnen 20’ bis 30’ zur Verfügung.

Anschliessend werden neue Gruppen gebildet, die jeweils aus einem Experten aus jeder Gruppe besteht. Nacheinander zeichnet jeder Experte die vollständigen Situations- und Additionspläne und beantwortet die gestellte Frage anhand der Pläne. Die anderen halten die Ergebnisse fest. Es ist durchaus wünschenswert, dass die Zuhörer auch Fragen stellen!

== Das Wichtige in Kürze

+ Expertenrunde (20’ – 30’)
  - Bearbeiten Sie Ihr Thema auf der nächsten Seite und
  - beseitigen Sie in der Gruppe alle Unklarheiten.
  - Überlegen Sie sich, wie Sie den Stoff am Besten vermitteln können.
  - Legen Sie besonderen Wert auf korrekte Situations- und Additionspläne.

+ Unterrichtsrunde (15’)
  - Präsentieren Sie Ihren Stoff in den neu zusammengestellten Gruppen!

== Themenwahl und Gruppeneinteilung
Die Lehrperson teilt die Klasse in 3 gleich grosse Gruppen auf und weist jeder Gruppe das Thema zu.

== Demonstrationsmodelle
Vorne auf dem Lehrerpult sind 3 Modelle zu den Chilbi-Attraktionen aufgestellt. Sie dürfen gerne sorgfältig in Betrieb genommen werden. Bitte ziehen Sie das Spielzeugauto nicht zu stark auf und kurbeln Sie nicht zu schnell!
#pagebreak()

== Das Kettenkarussell
Das Kettenkarussell ist ein Beispiel einer Kreisbewegung mit _vertikaler Achse_. Der Besucher befindet sich in einem Sitz S, der durch eine Kette mit der Kraft #text(fill: red)[$arrow(F)_S$] festgehalten wird. Kreist das Karussell gleichförmig, heben sich die Sitze und die Besucher schräg nach oben. Der Winkel #text(fill: green)[$phi$] ist von der Winkelgeschwindigkeit abhängig.

#grid(
  columns: (1fr, 1fr),
  align: center,
  row-gutter: 1em,
  [
    #cetz.canvas({
      import cetz.draw: *
  
      set-style(stroke: .5pt)
  
      let a = (-120deg, 2.3)
  
      line((0, 0), a, name: "l")
      line((0, 0), (-60deg, 3), stroke: white)
      line((0, 0), (0, -3), stroke: 2pt + maroon, name: "pfosten")
      line(a, (rel: (60deg, 1)), stroke: red + 1pt, mark: (end: "barbed"), name: "F_S")
      cetz.angle.angle((0, 0), "l", "pfosten", radius: 0.9, label: box(baseline: -0.2em)[#text(fill: green)[$phi$]], label-radius: 0.7)
      circle(a, radius: 2pt, fill: haupt-farbe, stroke: haupt-farbe, name: "S")
   
      content("S.west", [S], anchor: "east", padding: 2pt)
      content("F_S", text(fill: red)[$arrow(F)_S$], anchor: "east", padding: 3pt)
    })
  ], [],
  [Situationsplan], [Additionsplan]
)

Vervollständigen Sie den Situationsplan und zeichnen Sie den dazugehörigen Additionsplan. Erklären Sie zudem, weshalb die Besucher nach oben gehoben werden, wenn das Karussell schneller rotiert.

== Der Rotor
Der Rotor ist eine grosse um ihre _vertikale Achse_ drehbare Trommel von etwa $qty("10", "meter")$ Durchmesser. Bei schneller Rotation bleiben die Personen an der Wand hängen, auch dann, wenn der Boden unter den Füssen gesenkt wird. Die Reibung #text(fill: red)[$arrow(F)_H$] zwischen Wand und Besucher muss also mindestens so gross sein wie die Gewichtskraft.

#grid(
  columns: (1fr, 1fr),
  align: center,
  row-gutter: 1em,
  [
    #cetz.canvas({
      import cetz.draw: *
  
      set-style(stroke: .5pt)

      let S = (1.8, -1.4)

      circle((), radius: (2, 0.5))
      line((-2, 0), (rel: (0, -2.5)))
      line((2, 0), (rel: (0, -2.5)))
      arc((), start: 0deg, stop: -180deg, radius: (2, 0.5))
      on-layer(-1, arc((), start: 180deg, stop: 0deg, radius: (2, 0.5), stroke: gray.lighten(20%)))
  
      scope({
        translate(x: 1.8, y:-1.5)
        circle((0., 7.1mm), radius: 4pt, fill: haupt-farbe, stroke: none)
        line((0, .5), (rel: (0, -1.2)), stroke: (cap: "round", thickness: 5pt, paint: haupt-farbe))
        line((1.2pt, 1pt), (0, .5), (rel: (-95deg, .5)), stroke: (cap: "round", thickness: 5pt, paint: haupt-farbe))
      })

      line(S, (rel: (0, 1)), stroke: red + 1pt, mark: (end: "barbed"), name: "F_H")
      
      circle(S, radius: 1.5pt, fill: white, stroke: black, name: "S")
   
      content("S.west", [S], anchor: "east", padding: 3pt)
      content("F_H", text(fill: red)[$arrow(F)_H$], anchor: "east", padding: 3pt)
    })
  ], [],
  [Situationsplan], [Additionsplan]
)

Zeigen Sie anhand des vervollständigten Situations- und Additionsplans, dass die benötigte Haftreibung von der Winkelgeschwindigkeit abhängt.

== Die Loopingbahn
Die Wagen einer Achterbahn machen beim durchfahren eines Loopings eine Kreisbewegung mit _horizontaler Achse_.

#grid(
  columns: (1fr, 1fr),
  align: center,
  row-gutter: 1em,
  [
    #cetz.canvas({
      import cetz.draw: *
  
      set-style(stroke: .5pt)

      let S = (1.8, -1.4)

      circle((), radius: (1.5))
      line((-2.5, -1.5), (rel: (5, 0)))
      merge-path(fill: haupt-farbe, stroke: haupt-farbe, {
        arc((105deg, 1.42), start: 180deg, stop: 270deg, radius: 0.1)
        line((), (rel: (0.35, 0)), (rel: (0, -0.1)), (rel: (0.02, 0)), (rel: (0, 0.1)), (rel: (0.05, 0)), (rel: (0.1, -0.1)), (rel: (0.07, 0)), (rel: (0, 0.2)), (105deg, 1.42))
      })
      circle((100deg, 1.42), radius: .05, stroke: 1pt, fill: white)
      circle((80deg, 1.42), radius: .05, stroke: 1pt, fill: white)
      
      circle((90deg, 1.33), radius: 1pt, fill: white, stroke: black, name: "S")
   
      content("S.south", [S], anchor: "north-east", padding: 3pt)
    })
  ], [],
  [Situationsplan], [Additionsplan]
)

Zeigen Sie mit Hilfe eines Situations- und Additionsplans, dass ein Wagen im obersten Punkt des Loopings ab einer gewissen Geschwindigkeit nicht runter fällt. Überlegen Sie sich auch, welche Kraft bei einer sehr grossen Geschwindigkeit zusätzlich im obersten Punkt auf den Wagen einwirkt, um ihn auf einer Kreisbahn zu halten.

