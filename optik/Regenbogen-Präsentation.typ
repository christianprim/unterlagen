#import "@preview/touying:0.6.1": *
#import themes.metropolis: *
#import "@preview/numbly:0.1.0": numbly
#import "../layout.typ": haupt-farbe

#let gebiet = "Geometrische Optik"
#let haupt-farbe = haupt-farbe(gebiet: gebiet)
#let tropfenfüllung = gradient.radial(white, aqua.lighten(80%), center: (25%, 25%))

#let cetz-canvas = touying-reducer.with(reduce: cetz.canvas, cover: cetz.draw.hide.with(bounds: true))

#show: metropolis-theme.with(
  aspect-ratio: "4-3",
  footer: none,
  config-info(
    title: [Der Regenbogen],
    subtitle: none,
    author: [Christian Prim],
    date: datetime.today(),
    institution: [Kantonsschule Zürich Nord],
  ),
  config-common(
    datetime-format: "[day].[month].[year]",
  ),
  config-colors(
    primary: haupt-farbe, //rgb("#eb811b"),
    primary-light: rgb("#d6c6b7"),
    secondary: haupt-farbe, //rgb("#23373b"),
    neutral-lightest: rgb("#fafafa"),
    neutral-dark: rgb("#23373b"),
    neutral-darkest: rgb("#23373b"),
  ),
)

#set text(font: "TeX Gyre Heros")

//#set heading(numbering: numbly("{1}.", default: "1.1"), )

#title-slide()

= Beobachtung

---

== Doppelregenbogen über Engelberg
#align(center)[#box[
#image("../bilder/regenbogen.webp", height: 1fr)
#align(right)[#v(-.7cm)#text(size: 14pt, fill: gray)[Maria Hübscher]]]
]

= Beschreibung

---

== Ein einzelner Lichtstrahl - gekrümmte Oberfläche
#align(center)[
    #cetz-canvas({
      import cetz.draw: *

      let tropfen = 5 // Radius des Tropfens
      let winkel = 52deg // Winkel, unter dem der Lichtstrahl auf den Tropfen fällt

      set-style(stroke: .5pt)

      circle((), radius: tropfen, stroke: blue, fill: tropfenfüllung)
      circle((), radius: 1pt, fill: black)

      line((winkel, tropfen), (rel: (12, 0)), stroke: 1pt + red, name: "strahl")
      mark("strahl.50%", "strahl.start", symbol: "barbed", stroke: red, scale: 2)

      (pause,)

      line((0, 0), (winkel, tropfen + 2), stroke: (dash: "dash-dotted"), name: "lot")
      content("lot.end", [Lot], anchor: "south-west", padding: 2pt)

      (pause,)
      line((winkel, tropfen), (rel: (winkel - 90deg, tropfen*.7)), stroke: 1pt)
      line((winkel, tropfen), (rel: (winkel + 90deg, tropfen*.7)), stroke: 1pt, name: "tangente")
      cetz.angle.angle((winkel, tropfen), "tangente", "lot", label: text(baseline: -0.1em)[·])
    })
  ]

== Ein einzelner Lichtstrahl - Lösung
#align(center)[
    #cetz-canvas({
      import cetz.draw: *

      let tropfen = 5 // Radius des Tropfens
      let winkel = 52deg // Winkel, unter dem der Lichtstrahl auf den Tropfen fällt

      set-style(stroke: .5pt)

      circle((), radius: tropfen, stroke: blue, fill: tropfenfüllung, name: "regentropfen")
      circle((), radius: 1pt, fill: black)

      line((winkel, tropfen), (rel: (12, 0)), stroke: 1pt + red, name: "strahl")
      mark("strahl.50%", "strahl.start", symbol: "barbed", stroke: red, scale: 2)

      line((0, 0), (winkel, tropfen*1.5), stroke: (dash: "dash-dotted"), name: "lot")

      circle((winkel, tropfen), radius: tropfen/3, stroke: gray, name: "n_L")
      circle((winkel, tropfen), radius: 1.33*tropfen/3, stroke: gray, name: "n_G")

      intersections("i_n_L", hide(line((winkel, tropfen), (rel: (-tropfen, 0)))), "n_L")
      intersections("i_n_G", hide(line(("i_n_L.0"), (winkel, -tropfen))), "n_G")

      line((winkel, tropfen), "i_n_L.0", "i_n_G.0", stroke: (dash: "dotted"))

      intersections("i_T", hide(line((winkel, tropfen), ((winkel, tropfen), 10, "i_n_G.0"))), "regentropfen")

      line((winkel, tropfen), "i_T.0", stroke: 1pt + red, name: "erster-gebrochener-strahl")
      mark("erster-gebrochener-strahl.50%", "i_T.0", symbol: "barbed", stroke: red, scale: 2)

      (pause,)

      line((0, 0), ((), 1.5*tropfen, "i_T.0"), stroke: (dash: "dash-dotted"), name: "lot")

      get-ctx(ctx => {
        let (ctx, a, b) = cetz.coordinate.resolve(ctx, "i_T.0", (winkel, tropfen))
        let winkel-zwei = cetz.vector.angle((0, 0, 0), a, b)
        let winkel-reflektiert-zwei = winkel - 3*winkel-zwei
        intersections("i_3", hide(line("i_T.0", (rel: (winkel-reflektiert-zwei, 2*tropfen)))), "regentropfen")
        line("i_T.0", "i_3.1", stroke: 1pt + red, name: "zweiter-reflektierter-strahl")
        mark("zweiter-reflektierter-strahl.50%", "i_3.1", symbol: "barbed", stroke: red, scale: 2)

        circle("i_3.1", radius: tropfen/3, stroke: gray, name: "n_L")
        circle("i_3.1", radius: 1.33*tropfen/3, stroke: gray, name: "n_G")
        line((0, 0), ((), 1.5*tropfen, "i_3.1"), stroke: (dash: "dash-dotted"), name: "lot")

        intersections("i_G_3", hide(line("i_T.0", (rel: (winkel-reflektiert-zwei, 3*tropfen)))), "n_G")

        get-ctx(ctx => {
          let (ctx, lot-coord) = cetz.coordinate.resolve(ctx, "lot")
          
          intersections("i_L_3", hide(line("i_G_3.1", (rel: (-lot-coord.at(0), -lot-coord.at(1))))), "n_L")
          line("i_3.1", "i_G_3.1", "i_L_3.0", stroke: (dash: "dotted"))
          line("i_3.1", ((), tropfen, "i_L_3.0"), stroke: 1pt + red, name: "dritter-strahl")
          mark("dritter-strahl.50%", "dritter-strahl.end", symbol: "barbed", stroke: red, scale: 2)
        })
      })
    })
  ]
  
== Ein weiterer Lichtstrahl

#align(center)[
    #cetz-canvas({
      import cetz.draw: *

      let tropfen = 5 // Radius des Tropfens
      let winkel = 52deg // Winkel, unter dem der Lichtstrahl auf den Tropfen fällt

      set-style(stroke: .5pt)

      circle((), radius: tropfen, stroke: blue, fill: tropfenfüllung, name: "regentropfen")
      circle((), radius: 1pt, fill: black)

      line((winkel, tropfen), (rel: (12, 0)), stroke: 1pt + red.lighten(50%), name: "strahl")
      mark("strahl.50%", "strahl.start", symbol: "barbed", stroke: red.lighten(50%), scale: 2)
      
      hide(line((0, 0), (winkel, tropfen*1.5), stroke: (dash: "dash-dotted"), name: "lot"))

      hide(circle((winkel, tropfen), radius: tropfen/3, stroke: gray, name: "n_L"))
      hide(circle((winkel, tropfen), radius: 1.33*tropfen/3, stroke: gray, name: "n_G"))

      intersections("i_n_L", hide(line((winkel, tropfen), (rel: (-tropfen, 0)))), "n_L")
      intersections("i_n_G", hide(line(("i_n_L.0"), (winkel, -tropfen))), "n_G")

      hide(line((winkel, tropfen), "i_n_L.0", "i_n_G.0", stroke: (dash: "dotted")))

      intersections("i_T", hide(line((winkel, tropfen), ((winkel, tropfen), 10, "i_n_G.0"))), "regentropfen")

      line((winkel, tropfen), "i_T.0", stroke: 1pt + red.lighten(50%), name: "erster-gebrochener-strahl")
      mark("erster-gebrochener-strahl.50%", "i_T.0", symbol: "barbed", stroke: red.lighten(50%), scale: 2)

      hide(line((0, 0), ((), 1.5*tropfen, "i_T.0"), stroke: (dash: "dash-dotted"), name: "lot"))

      get-ctx(ctx => {
        let (ctx, a, b) = cetz.coordinate.resolve(ctx, "i_T.0", (winkel, tropfen))
        let winkel-zwei = cetz.vector.angle((0, 0, 0), a, b)
        let winkel-reflektiert-zwei = winkel - 3*winkel-zwei
        intersections("i_3", hide(line("i_T.0", (rel: (winkel-reflektiert-zwei, 2*tropfen)))), "regentropfen")
        line("i_T.0", "i_3.1", stroke: 1pt + red.lighten(50%), name: "zweiter-reflektierter-strahl")
        mark("zweiter-reflektierter-strahl.50%", "i_3.1", symbol: "barbed", stroke: red.lighten(50%), scale: 2)

        hide(circle("i_3.1", radius: tropfen/3, stroke: gray, name: "n_L"))
        hide(circle("i_3.1", radius: 1.33*tropfen/3, stroke: gray, name: "n_G"))
        hide(line((0, 0), ((), 1.5*tropfen, "i_3.1"), stroke: (dash: "dash-dotted"), name: "lot"))

        intersections("i_G_3", hide(line("i_T.0", (rel: (winkel-reflektiert-zwei, 3*tropfen)))), "n_G")

        get-ctx(ctx => {
          let (ctx, lot-coord) = cetz.coordinate.resolve(ctx, "lot")
          
          intersections("i_L_3", hide(line("i_G_3.1", (rel: (-lot-coord.at(0), -lot-coord.at(1))))), "n_L")
          hide(line("i_3.1", "i_G_3.1", "i_L_3.0", stroke: (dash: "dotted")))
          line("i_3.1", ((), tropfen, "i_L_3.0"), stroke: 1pt + red.lighten(50%), name: "dritter-strahl")
          mark("dritter-strahl.50%", "dritter-strahl.end", symbol: "barbed", stroke: red.lighten(50%), scale: 2)
        })
      })

      (pause,)
      
      let tropfen = 5 // Radius des Tropfens
      let winkel = 48deg // Winkel, unter dem der Lichtstrahl auf den Tropfen fällt
      
      line((winkel, tropfen), (rel: (12, 0)), stroke: 1pt + red, name: "strahl")
      mark("strahl.50%", "strahl.start", symbol: "barbed", stroke: red, scale: 2)

      line((0, 0), (winkel, tropfen*1.5), stroke: (dash: "dash-dotted"), name: "lot")

      circle((winkel, tropfen), radius: tropfen/3, stroke: gray, name: "n_L")
      circle((winkel, tropfen), radius: 1.33*tropfen/3, stroke: gray, name: "n_G")

      intersections("i_n_L", hide(line((winkel, tropfen), (rel: (-tropfen, 0)))), "n_L")
      intersections("i_n_G", hide(line(("i_n_L.0"), (winkel, -tropfen))), "n_G")

      line((winkel, tropfen), "i_n_L.0", "i_n_G.0", stroke: (dash: "dotted"))

      intersections("i_T", hide(line((winkel, tropfen), ((winkel, tropfen), 10, "i_n_G.0"))), "regentropfen")

      line((winkel, tropfen), "i_T.0", stroke: 1pt + red, name: "erster-gebrochener-strahl")
      mark("erster-gebrochener-strahl.50%", "i_T.0", symbol: "barbed", stroke: red, scale: 2)
      circle((0, -2.8), radius: 0.5pt, stroke: none)

      line((0, 0), ((), 1.5*tropfen, "i_T.0"), stroke: (dash: "dash-dotted"), name: "lot")

      get-ctx(ctx => {
        let (ctx, a, b) = cetz.coordinate.resolve(ctx, "i_T.0", (winkel, tropfen))
        let winkel-zwei = cetz.vector.angle((0, 0, 0), a, b)
        let winkel-reflektiert-zwei = winkel - 3*winkel-zwei
        intersections("i_3", hide(line("i_T.0", (rel: (winkel-reflektiert-zwei, 2*tropfen)))), "regentropfen")
        line("i_T.0", "i_3.1", stroke: 1pt + red, name: "zweiter-reflektierter-strahl")
        mark("zweiter-reflektierter-strahl.50%", "i_3.1", symbol: "barbed", stroke: red, scale: 2)

        circle("i_3.1", radius: tropfen/3, stroke: gray, name: "n_L")
        circle("i_3.1", radius: 1.33*tropfen/3, stroke: gray, name: "n_G")
        line((0, 0), ((), 1.5*tropfen, "i_3.1"), stroke: (dash: "dash-dotted"), name: "lot")

        intersections("i_G_3", hide(line("i_T.0", (rel: (winkel-reflektiert-zwei, 3*tropfen)))), "n_G")

        get-ctx(ctx => {
          let (ctx, lot-coord) = cetz.coordinate.resolve(ctx, "lot")
          
          intersections("i_L_3", hide(line("i_G_3.1", (rel: (-lot-coord.at(0), -lot-coord.at(1))))), "n_L")
          line("i_3.1", "i_G_3.1", "i_L_3.0", stroke: (dash: "dotted"))
          line("i_3.1", ((), tropfen, "i_L_3.0"), stroke: 1pt + red, name: "dritter-strahl")
          mark("dritter-strahl.50%", "dritter-strahl.end", symbol: "barbed", stroke: red, scale: 2)
        })
      })
    })
  ]

== Ein violetter Lichtstrahl (rot und blau)

#align(center)[
    #cetz-canvas({
      import cetz.draw: *

      let tropfen = 5 // Radius des Tropfens
      let winkel = 52deg // Winkel, unter dem der Lichtstrahl auf den Tropfen fällt

      set-style(stroke: .5pt)

      circle((), radius: tropfen, stroke: blue, fill: tropfenfüllung, name: "regentropfen")
      circle((), radius: 1pt, fill: black)

      line((winkel, tropfen), (rel: (12, 0)), stroke: 1pt + purple, name: "strahl")
      mark("strahl.50%", "strahl.start", symbol: "barbed", stroke: purple, scale: 2)

      (pause,)
      
      hide(line((0, 0), (winkel, tropfen*1.5), stroke: (dash: "dash-dotted"), name: "lot"))

      hide(circle((winkel, tropfen), radius: tropfen/3, stroke: gray, name: "n_L"))
      hide(circle((winkel, tropfen), radius: 1.33*tropfen/3, stroke: gray, name: "n_G"))

      intersections("i_n_L", hide(line((winkel, tropfen), (rel: (-tropfen, 0)))), "n_L")
      intersections("i_n_G", hide(line(("i_n_L.0"), (winkel, -tropfen))), "n_G")

      hide(line((winkel, tropfen), "i_n_L.0", "i_n_G.0", stroke: (dash: "dotted")))

      intersections("i_T", hide(line((winkel, tropfen), ((winkel, tropfen), 10, "i_n_G.0"))), "regentropfen")

      line((winkel, tropfen), "i_T.0", stroke: 1pt + red.lighten(50%), name: "erster-gebrochener-strahl")
      mark("erster-gebrochener-strahl.50%", "i_T.0", symbol: "barbed", stroke: red.lighten(50%), scale: 2)

      hide(line((0, 0), ((), 1.5*tropfen, "i_T.0"), stroke: (dash: "dash-dotted"), name: "lot"))

      get-ctx(ctx => {
        let (ctx, a, b) = cetz.coordinate.resolve(ctx, "i_T.0", (winkel, tropfen))
        let winkel-zwei = cetz.vector.angle((0, 0, 0), a, b)
        let winkel-reflektiert-zwei = winkel - 3*winkel-zwei
        intersections("i_3", hide(line("i_T.0", (rel: (winkel-reflektiert-zwei, 2*tropfen)))), "regentropfen")
        line("i_T.0", "i_3.1", stroke: 1pt + red.lighten(50%), name: "zweiter-reflektierter-strahl")
        mark("zweiter-reflektierter-strahl.50%", "i_3.1", symbol: "barbed", stroke: red.lighten(50%), scale: 2)

        hide(circle("i_3.1", radius: tropfen/3, stroke: gray, name: "n_L"))
        hide(circle("i_3.1", radius: 1.33*tropfen/3, stroke: gray, name: "n_G"))
        hide(line((0, 0), ((), 1.5*tropfen, "i_3.1"), stroke: (dash: "dash-dotted"), name: "lot"))

        intersections("i_G_3", hide(line("i_T.0", (rel: (winkel-reflektiert-zwei, 3*tropfen)))), "n_G")

        get-ctx(ctx => {
          let (ctx, lot-coord) = cetz.coordinate.resolve(ctx, "lot")
          
          intersections("i_L_3", hide(line("i_G_3.1", (rel: (-lot-coord.at(0), -lot-coord.at(1))))), "n_L")
          hide(line("i_3.1", "i_G_3.1", "i_L_3.0", stroke: (dash: "dotted")))
          line("i_3.1", ((), tropfen, "i_L_3.0"), stroke: 1pt + red.lighten(50%), name: "dritter-strahl")
          mark("dritter-strahl.50%", "dritter-strahl.end", symbol: "barbed", stroke: red.lighten(50%), scale: 2)
        })
      })

      (pause,) //blauer Lichtstrahl
      
      let tropfen = 5 // Radius des Tropfens
      let winkel = 52deg // Winkel, unter dem der Lichtstrahl auf den Tropfen fällt
      
      line((0, 0), (winkel, tropfen*1.5), stroke: (dash: "dash-dotted"), name: "lot")

      circle((winkel, tropfen), radius: tropfen/3, stroke: gray, name: "n_L")
      circle((winkel, tropfen), radius: 1.34*tropfen/3, stroke: gray, name: "n_G")

      intersections("i_n_L", hide(line((winkel, tropfen), (rel: (-tropfen, 0)))), "n_L")
      intersections("i_n_G", hide(line(("i_n_L.0"), (winkel, -tropfen))), "n_G")

      line((winkel, tropfen), "i_n_L.0", "i_n_G.0", stroke: (dash: "dotted"))

      intersections("i_T", hide(line((winkel, tropfen), ((winkel, tropfen), 10, "i_n_G.0"))), "regentropfen")

      line((winkel, tropfen), "i_T.0", stroke: 1pt + blue, name: "erster-gebrochener-strahl")
      mark("erster-gebrochener-strahl.50%", "i_T.0", symbol: "barbed", stroke: blue, scale: 2)

      line((0, 0), ((), 1.5*tropfen, "i_T.0"), stroke: (dash: "dash-dotted"), name: "lot")

      get-ctx(ctx => {
        let (ctx, a, b) = cetz.coordinate.resolve(ctx, "i_T.0", (winkel, tropfen))
        let winkel-zwei = cetz.vector.angle((0, 0, 0), a, b)
        let winkel-reflektiert-zwei = winkel - 3*winkel-zwei
        intersections("i_3", hide(line("i_T.0", (rel: (winkel-reflektiert-zwei, 2*tropfen)))), "regentropfen")
        line("i_T.0", "i_3.1", stroke: 1pt + blue, name: "zweiter-reflektierter-strahl")
        mark("zweiter-reflektierter-strahl.50%", "i_3.1", symbol: "barbed", stroke: blue, scale: 2)

        circle("i_3.1", radius: tropfen/3, stroke: gray, name: "n_L")
        circle("i_3.1", radius: 1.34*tropfen/3, stroke: gray, name: "n_G")
        line((0, 0), ((), 1.5*tropfen, "i_3.1"), stroke: (dash: "dash-dotted"), name: "lot")

        intersections("i_G_3", hide(line("i_T.0", (rel: (winkel-reflektiert-zwei, 3*tropfen)))), "n_G")

        get-ctx(ctx => {
          let (ctx, lot-coord) = cetz.coordinate.resolve(ctx, "lot")
          
          intersections("i_L_3", hide(line("i_G_3.1", (rel: (-lot-coord.at(0), -lot-coord.at(1))))), "n_L")
          line("i_3.1", "i_G_3.1", "i_L_3.0", stroke: (dash: "dotted"))
          line("i_3.1", ((), tropfen, "i_L_3.0"), stroke: 1pt + blue, name: "dritter-strahl")
          mark("dritter-strahl.50%", "dritter-strahl.end", symbol: "barbed", stroke: blue, scale: 2)
        })
      })
    })
  ]
