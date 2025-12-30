#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/unify:0.7.1": num,qty,unit
#import "../layout.typ": *

#let gebiet = "Moderne Physik"
#let titel = [#smallcaps[Verhulst]-Dynamik]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "a)1)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= #smallcaps[Verhulst]-Dynamik

== Geschichtlicher Hintergrund
Zur Zeit der Industrialisierung wuchs die Weltpopulation rasch an. Jedem war damals schon klar, dass dieses Wachstum nicht für immer so weitergehen kann. Es wurde nach einem Modell gesucht, dass die Entwicklung vorhersagen könnte. Der Mathematiker Pierre François #smallcaps[Verhulst] hat folgende Gleichung vorgeschlagen:

$ x_(n+1)=r x_n (1-x_n) $

Darin bedeutet $x_n$ die Population zum Zeitpunkt $n$ und $x_(n+1)$ diejenige eine Zeiteinheit später. Mit $r$ wird die Wachstumsrate bezeichnet. Obige Schreibweise geht von einer maximalen Populationsgrösse von 1 aus.

== Darstellung
Da sich in einem $x$-$t$-Diagramm die Entwicklung nur schlecht erfassen lässt, entstand das sog. Staircase-Diagramm.

#grid(
  columns: (1fr, 1fr),
  align: (center),
  row-gutter: 1em,
  [
    #cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
  
      let r = 2
      let x_0 = 0.1 //Anfangspopulation
      
      set-style(stroke: .5pt)
  
      plot.plot(axis-style: "scientific", x-label: [$x_n$], y-label: [$x_(n+1)$], size: (6, 6), {
        plot.add(((0, 0), (1, 1)), style: (stroke: gray))
        plot.add(y => (r*y*(1-y)), domain: (0, 1), style: (stroke: green))
        let x_m = r*x_0*(1-x_0)
        plot.add(((x_0, 0), (x_0, x_m), (x_m, x_m)), style: (stroke: haupt-farbe))
        let x_n = x_m
        for i in range(20){
          x_m = r*x_n*(1-x_n)
          plot.add(((x_n, x_n), (x_n, x_m), (x_m, x_m)), style: (stroke: haupt-farbe))
          x_n = x_m
        }
      })
    })
  ],
  [
    #cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
  
      let r = 3
      let x_0 = 0.14 //Anfangspopulation
      
      set-style(stroke: .5pt)
  
      plot.plot(axis-style: "scientific", x-label: [$x_n$], y-label: [$x_(n+1)$], size: (6, 6), {
        plot.add(((0, 0), (1, 1)), style: (stroke: gray))
        plot.add(y => (r*y*(1-y)), domain: (0, 1), style: (stroke: green))
        let x_m = r*x_0*(1-x_0)
        plot.add(((x_0, 0), (x_0, x_m), (x_m, x_m)), style: (stroke: haupt-farbe))
        let x_n = x_m
        for i in range(20){
          x_m = r*x_n*(1-x_n)
          plot.add(((x_n, x_n), (x_n, x_m), (x_m, x_m)), style: (stroke: haupt-farbe))
          x_n = x_m
        }
      })
    })
  ],
  [$r=2$: Die stabile Endpopulation $x_oo$ \ wird erreicht], [$r=3$: Die Population schwankt \ zwischen 2 Werten],
  [
    #cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
  
      let r = 3.54
      let x_0 = 0.0991 //Anfangspopulation
      
      set-style(stroke: .5pt)
  
      plot.plot(axis-style: "scientific", x-label: [$x_n$], y-label: [$x_(n+1)$], size: (6, 6), {
        plot.add(((0, 0), (1, 1)), style: (stroke: gray))
        plot.add(y => (r*y*(1-y)), domain: (0, 1), style: (stroke: green))
        let x_m = r*x_0*(1-x_0)
        plot.add(((x_0, 0), (x_0, x_m), (x_m, x_m)), style: (stroke: haupt-farbe))
        let x_n = x_m
        for i in range(20){
          x_m = r*x_n*(1-x_n)
          plot.add(((x_n, x_n), (x_n, x_m), (x_m, x_m)), style: (stroke: haupt-farbe))
          x_n = x_m
        }
      })
    })
  ],
  [
    #cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
  
      let r = 3.57
      let x_0 = 0.099 //Anfangspopulation
      
      set-style(stroke: .5pt)
  
      plot.plot(axis-style: "scientific", x-label: [$x_n$], y-label: [$x_(n+1)$], size: (6, 6), {
        plot.add(((0, 0), (1, 1)), style: (stroke: gray))
        plot.add(y => (r*y*(1-y)), domain: (0, 1), style: (stroke: green))
        let x_m = r*x_0*(1-x_0)
        plot.add(((x_0, 0), (x_0, x_m), (x_m, x_m)), style: (stroke: haupt-farbe))
        let x_n = x_m
        for i in range(20){
          x_m = r*x_n*(1-x_n)
          plot.add(((x_n, x_n), (x_n, x_m), (x_m, x_m)), style: (stroke: haupt-farbe))
          x_n = x_m
        }
      })
    })
  ],
  [$r=3.54$: Die Population schwankt \ zwischen 4 Werten], [$r=3.57$: Die Population entwickelt \ sich chaotisch]
)

== Bifurkationsdiagramm

Die Wachstumsrate $r$ entscheidet darüber, ob die Population einen fixen Wert $x_oo=1-1/r$ erreicht, um diesen schwankt (Periode 2) oder nach einer Periodenverdoppelung (Periode 4) vier Werte annimmt. Ab einer gewissen Wachstumsrate verläuft die Entwicklung der Population chaotisch.

Um den Einfluss von $r$ auf die Populationsentwicklung genauer zu untersuchen, hat sich das Bifurkationsdiagramm durchgesetzt. Darin werden nach einer gewissen Einschwingzeit von 30 Zeiteinheiten, die nächsten 100 Populationen gegenüber der Wachstumsrate aufgetragen.

#align(center)[
  #cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *

    // Formatierung der einzelnen Punkte
    let punkt = (style: (stroke: none), mark: "o", mark-size: 1pt, mark-style: (fill: black, stroke: none))

    let r_min = 0 // Zwischen welchen Werten soll r dargestellt werden
    let r_max = 4 

    let delta_r = 0.01 // Differenz zwischen 2 benachbarten r
    
    set-style(stroke: .5pt)

    plot.plot(axis-style: "scientific", x-label: [$r$], y-label: [$x$], y-tick-step: none, size: (8, 4), {
      let r = r_min
      let r_range = 5
      while r < r_max{
        let x_n = .1
        let data = ()
        for _ in range(50){
          let x_m = r*x_n*(1-x_n)
          x_n = x_m
        }
        if r > 3.5{
          r_range = 30
        }
        for _ in range(r_range){
          let x_m = r*x_n*(1-x_n)
          data.push((r, x_m))
          x_n = x_m
        }
        plot.add((data), ..punkt)
        r += delta_r
      }
    })
  })
]

#align(center)[
  #cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *

    // Formatierung der einzelnen Punkte
    let punkt = (style: (stroke: none), mark: "o", mark-size: .5pt, mark-style: (fill: black, stroke: none))

    let r_min = 2.8 // Zwischen welchen Werten soll r dargestellt werden
    let r_max = 4 

    let delta_r = 0.0025 // Differenz zwischen 2 benachbarten r
    
    set-style(stroke: .5pt)

    plot.plot(axis-style: "scientific", x-label: [$r$], y-label: [$x$], y-tick-step: none, size: (8, 4), {
      let r = r_min
      let r_range = 5
      while r < r_max{
        let x_n = .1
        let data = ()
        for _ in range(50){
          let x_m = r*x_n*(1-x_n)
          x_n = x_m
        }
        if r > 3.5{
          r_range = 100
        }
        for _ in range(r_range){
          let x_m = r*x_n*(1-x_n)
          data.push((r, x_m))
          x_n = x_m
        }
        plot.add((data), ..punkt)
        r += delta_r
      }
    })
  })
]
