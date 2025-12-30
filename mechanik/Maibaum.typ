#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/unify:0.7.1": num,qty,unit
#import "../layout.typ": *

#let gebiet = "Mechanik"
#let titel = "Aufrichten eines Maibaums"
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#sym.checkmark], [‣], [–]))
#set enum(numbering: "a)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Aufrichten eines Maibaums

#grid(
  columns: (auto, 2cm),
  [Tragen Sie jeweils die am Maibaum angreifende Stosskraft $arrow(F)_S$ der Handwerker ein, wobei Sie versuchen, den optimalen Angriffspunkt und die optimale Richtung zu wählen. Optimal heisst, dass die Stosskraft einen möglichst geringen Betrag hat, um die gleiche Wirkung zu erzielen.], [
    #align(center)[
      #cetz.canvas({
        import cetz.draw: *
      
        circle((), radius: 0.5pt, stroke: red)
        line((), (0,1.5), stroke: red, mark: (end: "barbed"), name: "F")
        content("F", text(fill: red)[$arrow(F)_S$], anchor: "west", padding: 2pt)      
      })
    ]
  ]
)
+ Noch liegt der Maibaum #v(2em)

  #box(width: 100%)[
    #align(center)[
      #cetz.canvas({
        import cetz.draw: *
  
        set-style(stroke: 0.5pt)
  
        rect((-1, 0), (10, -0.5), fill: gray.lighten(20%), stroke: none)
  
        line((0.5, 1.2), (9.5, 1.125), (9.5, .875), (0.5, 0.8), close: true, fill: blue.lighten(80%), stroke: blue)      
  
        rect((1,0), (1.5, 1.5), fill: blue, stroke: none)
        circle((1.25, 1), radius: 3pt, fill: gray.lighten(80%))
        line((-1,0), (10, 0), stroke: 1pt)
      })
    ]
  ]
+ Nach dem ersten Anheben #v(1em)

  #box(width: 100%)[
    #align(center)[
      #cetz.canvas({
        import cetz.draw: *
  
        set-style(stroke: 0.5pt)
  
        rect((-1, 0), (10, -0.5), fill: gray.lighten(20%), stroke: none)
  
        scope({
          rotate(40deg, origin: (1.25, 1))
          line((0.5, 1.2), (9.5, 1.125), (9.5, .875), (0.5, 0.8), close: true, fill: blue.lighten(80%), stroke: blue)      
        })
        line((-1, 5), (10, 5), stroke: (paint: gray, dash: "dashed"), name: "grenze")
        rect((1,0), (1.5, 1.5), fill: blue, stroke: none)
        circle((1.25, 1), radius: 3pt, fill: gray.lighten(80%))
        line((-1,0), (10, 0), stroke: 1pt)

        content("grenze.26%", text(size: 8pt)[Bis zu dieser Höhe können \ die Handwerker mit ihrer Stosskraft ansetzen ])
      })
    ]
  ]

+ Noch etwas später #v(1em)

  #box(width: 100%)[
    #align(center)[
      #cetz.canvas({
        import cetz.draw: *
  
        set-style(stroke: 0.5pt)
  
        rect((-1, 0), (10, -0.5), fill: gray.lighten(20%), stroke: none)
  
        scope({
          rotate(65deg, origin: (1.25, 1))
          line((0.5, 1.2), (9.5, 1.125), (9.5, .875), (0.5, 0.8), close: true, fill: blue.lighten(80%), stroke: blue)      
        })
        line((-1, 5), (10, 5), stroke: (paint: gray, dash: "dashed"), name: "grenze")
        rect((1,0), (1.5, 1.5), fill: blue, stroke: none)
        circle((1.25, 1), radius: 3pt, fill: gray.lighten(80%))
        line((-1,0), (10, 0), stroke: 1pt)
      })
    ]
  ]

