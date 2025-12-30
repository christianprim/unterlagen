#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/zap:0.5.0"
#import "@preview/unify:0.7.1": num,qty,unit
#import "../layout.typ": *

#let gebiet = "Elektrizität"
#let titel = [Absoluter Nullpunkt]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#sym.compose], [‣], [–]))
#set enum(numbering: "a)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Einfache Schaltungen

== Aufgabe
Stecken Sie Schaltungen zusammen, die die unten aufgeführten Aufgaben erfüllen. Zeichnen Sie das jeweils dazugehörige Schaltschema auf.
+ Zwei Lämpchen, die mit einem Schalter ein- und ausgeschaltet werden können, und dann noch weiter brennen, wenn die eine Lampe ausfällt.

+ Zwei Lämpchen und ein Schalter sollen so zusammengesteckt werden, dass immer genau ein Lämpchen brennt.

+ Zwei Lämpchen sollen unabhängig voneinander ein- und ausgeschaltet werden können.

+ In einem Zimmer soll die Deckenbeleuchtung an zwei Stellen unabhängig von einander ein- und ausgeschaltet werden können. 

+ _Schwieriger!_ In einem Zimmer muss an mindestens 3 Stellen die einzige Lampe ein- und ausgeschaltet werden können. Für diese Schaltung brauchen Sie einen speziellen Schalter, den Sie vorne beziehen müssen.

== Theorie
Elektrische Einrichtungen oder elektronische Schaltungen sind in der Regel sehr kompliziert. Um Schaltungen auf Papier zu zeichnen, macht man deshalb Schaltpläne. Für Schaltpläne verwendet man dabei folgende Symbole:
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  align: center + horizon,
  gutter: 1em,
  //row-gutter: 2em,
  [
    #circuit({
      import zap: *

      wire((0, 0), (4, 0))
    })
  ],
  [
    #circuit({
      import zap: *

      wire((0, 0), (4, 0))
      wire((2, -.5), (2, .5))
    })
  ],
  [
    #circuit({
      import zap: *

      node("a", (2,0))
      wire((0, 0), (4, 0))
      wire((2, -.5), (2, .5))
    })
  ],
  [
    #circuit({
      import zap: *
      
      lamp("b", (0, 0), (4, 0))
    })
  ],
  align(top)[Leitung], [Kreuzung ohne \ Kontakt], [Kreuzung mit \ Kontakt], align(top)[Lämpchen],
  [
    #circuit({
      import zap: *

      switch("s", (0, 0), (4, 0))
    })
    #v(0.6em)
  ],
  [
    #circuit({
      import zap: *
      
      toggle-switch("s", (2, 0))
      wire("s.in", (0, 0))
      wire("s.out1", (rel: (1.6, 0)))
      wire("s.out2", (rel: (1.6, 0)))
    })
  ],
  [
    #circuit({
      import zap: *
      
      battery("bat", (0, 0), (4, 0))
    })
  ], [],
  [Schalter], [Wechselschalter], [Batterie]
)

== Experiment
_Bevor_ Sie die Batterie anschliessen, vergewissern Sie sich, dass Sie bei keiner Schalterstellung einen Kurzschluss produzieren.

== Protokoll
Die einzelnen Schaltschemen bilden die einzigen zu protokollierenden Daten. Zeichnen Sie diese möglichst übersichtlich. Die Leitungen sollen nur horizontal oder vertikal verlaufen, nicht zu viele Ecken aufweisen und sich nicht kreuzen. Verwenden Sie die üblichen Symbole.

#showbox("Beispiel eines Schaltplans", haupt-farbe)[
  #grid(
    columns: (auto, 1fr),
    align: horizon,
    gutter: .5cm,
    [
      #circuit({
        import zap: *
  
        battery("b", (0, -1), (0, 1))
        switch("s", "b.out", (3, 1))
        lamp("l", "s.out", (3, -1))
        wire("l.out", (0, -1))
      })
    ],
    [
      Die Leitungen sollen nur waagrecht oder senkrecht verlaufen und sich möglichst nicht überkreuzen. Bei Aufgabe e) ist ein Kreuzen unumgänglich, überall sonst geht es ohne.
      
    ],
    [], []
  )
]
