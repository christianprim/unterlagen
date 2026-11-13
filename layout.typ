#import "@preview/showybox:2.0.4": showybox
#import "@preview/zap:0.6.0" as zap
#import "@preview/cetz:0.5.2" as cetz
#import "@preview/unify:0.7.1": add-unit, num, qty, unit
#import "@preview/cetz-plot:0.1.4" as cetz-plot
#import "@preview/numbly:0.1.0" as numbly

#let header-footer-font = "TeX Gyre Heros"

#let haupt-farbe(gebiet: "Grundlagen") = {
  let farbe = {
    (
      (gebiet == "Grundlagen", orange),
      (gebiet == "Mechanik", aqua),
      (gebiet == "Schwingungen und Wellen", blue),
      (gebiet == "Wärmelehre", red),
      (gebiet == "Elektrizität", green),
      (gebiet == "Geometrische Optik", yellow.darken(10%)),
      (gebiet == "Moderne Physik", fuchsia),
      (true, black),
    )
      .find(t => t.at(0))
      .at(1)
  }
  (farbe)
}

#let arbeitsblatt(titel: "", gebiet: "Grundlagen", gebiet-farbe: "", doc) = {
  let header-color = gebiet-farbe

  let header-gradient = gradient.linear(
    gebiet-farbe,
    gebiet-farbe.lighten(70%),
    gebiet-farbe.lighten(100%),
    white,
    angle: 90deg,
  )

  let footer-line = line(
    length: 100%,
    stroke: 0.5pt + gray.darken(10%),
  )

  let heading-color = gebiet-farbe.darken(30%)
  set page(
    paper: "a4",
    margin: (x: 2cm, y: 2cm),
    header: [
      #place(dx: -2cm, dy: 0cm)[
        #rect(height: 1cm, width: 21cm, fill: header-gradient)
      ]
      #set text(font: header-footer-font, fill: header-color)
      _#gebiet: #titel _
    ],
    footer: [
      #set text(font: header-footer-font, fill: header-color)
      #v(0.5em) // Vertikaler Abstand
      _KZN_ #h(1fr) _Physik_
    ],
  )

  set text(
    font: "TeX Gyre Pagella",
    lang: "de",
    region: "CH",
  )

  set par(
    justify: true,
  )

  show heading: it => text(font: "TeX Gyre Heros")[#emph[#it]]
  show heading.where(level: 1): it => emph[#it]
  show math.equation: set text(font: "TeX Gyre Pagella Math")

  add-unit("Lichtjahr", "LJ", "upright(\"LJ\")")
  doc
}

// einfache Box mit Farbrand
#let cbox(color: black, term) = align(center)[
  #box(stroke: color + 0.5pt, inset: 1em, term)
]

// Schreibpapier
#let schreibpapier(height: none, size: 4mm) = context {
  let grid_height = height
  if height != none {
    assert(type(height) == length, message: "Height muss eine Länge sein (z.B. 10pt)")
  } else {
    grid_height = 1fr
  }

  block(height: grid_height, layout(place => {
    let columns = calc.floor(place.width / size)
    let rows = calc.floor(place.height / size)

    block({
      grid(
        columns: (size,) * columns,
        rows: (size,) * rows,
        stroke: aqua + .1pt,
      )
    })
  }))
}

// Schöne Box
#let showbox(title, color, doc) = showybox(
  title-style: (
    boxed-style: (
      anchor: (
        x: left,
        y: horizon,
      ),
      radius: 10pt,
    ),
  ),
  frame: (
    title-color: color.darken(10%),
    body-color: color.lighten(95%),
    border-color: color.darken(10%),
    radius: 10pt,
  ),
  title: title,
  doc,
)

// Farben
#let brown = rgb("#a52a2a")
#let beige = rgb("#cfb997")


// offizielle Zap-Symbole
// Die Lampe wird unverändert übernommen, die Batterie fest auf eine Zelle gesetzt.
#let lamp = zap.lamp
#let battery = zap.battery.with(cells: 1)

#let toggle-switch(name, node, ..params) = {
  assert(params.pos().len() == 0, message: "ground supports only one node")

  // Drawing function
  let draw(ctx, position, style) = {
    zap.interface((-style.width / 2, -0.2), (style.width / 2, 0.2), io: position.len() < 2)

    cetz.draw.anchor("in", (-style.width / 2, 0))
    cetz.draw.anchor("out1", (style.angle, style.width / 2))
    cetz.draw.anchor("out2", (-style.angle, style.width / 2))

    cetz.draw.line("in", "out1", stroke: style.stroke)
  }

  // Symbol call
  zap.symbol("toggle-switch", name, node, draw: draw, ..params, label: none)
}

#let init-zap = cetz.draw.set-ctx(ctx => {
  // Bisherige Grössen beibehalten, aber die offiziellen Zap-Symbole verwenden.
  ctx.style.zap.insert(
    "lamp",
    cetz.styles.merge(ctx.style.zap.at("lamp", default: (:)), (
      scale: auto,
      stroke: auto,
      radius: .47cm,
    )),
  )
  ctx.style.zap.insert(
    "battery",
    cetz.styles.merge(ctx.style.zap.at("battery", default: (:)), (
      scale: auto,
      stroke: auto,
      distance: .17,
      plus-width: .8,
      minus-width: .4,
    )),
  )
  ctx.style.zap.insert(
    "toggle-switch",
    cetz.styles.merge(ctx.style.zap.at("toggle-switch", default: (:)), (
      scale: auto,
      stroke: auto,
      width: .8,
      angle: 35deg,
    )),
  )
  ctx
})

#let zap-style = (
  scale: (x: 1, y: 1),
  stroke: 0.5pt,
  decoration: (
    symbol: none,
    current: (
      symbol: "barbed",
      stroke: red,
    ),
    voltage: (
      symbol: none,
      stroke: blue,
      start: (-.3, .0),
      end: (.3, .0),
      center: (0, .2),
    ),
  ),
)

#let circuit(init: zap-style, doc) = zap.circuit({
  import zap: *
  init-zap
  cetz.draw.set-style(zap: init)

  doc
})

