#import "@preview/cetz:0.4.2"

#set page(height: 5cm, width: 5cm, margin: 1em)

#align(center + horizon)[
  #cetz.canvas({
    import cetz.draw: *
  
    set-style(stroke: red + .5pt, fill: red)
  
    scale(0.1)
  
    for x in range(80){
      for y in range(80){
        let xx = (x - 40)/2
        let yy = (y - 40)/2
        let r = calc.sqrt(calc.abs(calc.pow(xx, 2) + calc.pow(yy, 2)))
        
        if r < 20 {
          if r > 17 {
            circle((xx, yy), radius: 5pt)
          } else {
            if r < 14 {
              if r > 11 {
                circle((xx, yy), radius: 5pt)
              } else {
                if r < 8 {
                  circle((xx, yy), radius: 5pt)
                }
              }
            }
          }
        }
      }
    }
  })
]
