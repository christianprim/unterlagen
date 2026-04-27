#import "@preview/cetz:0.4.2"
//#import "@preview/cetz:0.5.0"
#import "@preview/cetz-plot:0.1.3"

#set page("a4", flipped: true, margin: 1cm)
#set text(font: "TeX Gyre Pagella")
#show math.equation: set text(font: "TeX Gyre Pagella Math")

#cetz.canvas(
  {
    import cetz-plot: *
    import cetz.draw: *
    
    set-style(
      stroke: 0.5pt, 
      axes: (left: (tick: (label: (
        angle: 90deg,
        offset: 1.5em,
        anchor: "north"
      ))))
    )
    
    let planeten = (
      ("Merkur", 0.2408467, 0.38709888),
      ("Venus", 0.61519726, 0.72333193),
      ("Erde", 1.0000000, 1.0000000),
      ("Mars", 1.8808476, 1.5236621),
      ("Jupiter", 11.862615, 5.2033623),
      ("Saturn", 29.447498, 9.537069),
      ("Uranus", 84.016846, 19.191261),
      ("Neptun", 164.79132, 30.06896)
    )
    
    plot.plot(
      axis-style: "scientific", 
      size: (26,18), 
      x-mode: "log", x-base: 10, 
      y-mode: "log", y-base: 10, 
      x-min: 0.1, x-max: 1000,
      y-min: 0.1, y-max: 100,
      x-grid: "both", y-grid: "both", 
      x-tick-step: 1, y-tick-step: 1, 
      x-minor-tick-step: 1, y-minor-tick-step: 1, 
      x-label: "Umlaufzeit in Jahre", 
      y-label: "Grosse Halbachse in AE", name: "nomogramm", 
      {
        plot.add(((0.1, calc.root(0.01, 3)), (1000, 100)))
        for (name, T, a) in planeten {
          plot.add(((T, a),), mark: "o", mark-style: (stroke: blue, fill: blue.lighten(50%)))
          plot.add-anchor(name, (T, a))
        }
      }
    )

    for (name, _, _) in planeten{
      content("nomogramm." + str(name), name, anchor: "north-west", padding: 3pt)
    }
  }
)
