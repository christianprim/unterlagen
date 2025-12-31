#import "../layout.typ": *

#let gebiet = "Mechanik"
#let titel = [Zentrale Stösse]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#sym.compose], [‣], [–]))
#set enum(numbering: "a)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Zwei spezielle Stösse

== Was Sie bereits wissen
Sie kennen die physikalische Grösse "Impuls" und wissen auch, dass der Gesamtimpuls eines geschlossenen Systems erhalten bleibt:

$ m_1 #text(fill: blue)[$arrow(v)_1$] + m_2 #text(fill: blue)[$arrow(v)_2$] = m_1 #text(fill: blue)[$arrow(u)_1$] + m_2 #text(fill: blue)[$arrow(u)_2$] $

Weiter wissen Sie von früher, dass die Gesamtenergie eines geschlossenen Systems erhalten bleibt.

Sie haben zu Beginn dieser Stunde zwei Spezialfälle von Stössen kennengelernt und im Experiment beobachtet, wie sie sich voneinander unterscheiden. Es handelt sich um:

- den zentralen, unelastischen Stoss und
- den zentralen, elastischen Stoss.

== Worum geht es?
In dieser Aufgabe berechnen Sie die Geschwindigkeiten der einzelnen Körper

+ nach einem zentralen, unelastischen Stoss und
+ nach einem zentralen, elastischen Stoss.

Sie tun dies mithilfe des neu eingeführten Impulses und der Erhaltungssätze für Impuls und Energie.

Die Motivation: Mit den gewonnenen Gesetzen können Sie die Wirkung eines Stosses abschätzen, ohne diesen selber durchführen zu müssen! Denn bei gewissen Stössen (z.B. zwischen Fahrrad und Auto) könnte das durchaus unangenehm werden.

== a) Der zentrale, unelastische Stoss
Gehen Sie von einem Stoss aus, bei dem beide Partner (Massen $m_1$ und $m_2$ bekannt) vor dem Stoss mit den Geschwindigkeiten #text(fill: blue)[$arrow(v)_1$] und #text(fill: blue)[$arrow(v)_2$] ($#text(fill: blue)[$v_1$]>#text(fill: blue)[$v_2$]$) gegeneinader fahren.

Zeichnen Sie die Ausgangssituation in die Skizze ein und geben Sie die einzelnen Geschwindigkeiten durch Pfeile qualitativ an!

#align(center)[
  #cetz.canvas({
    import cetz.draw: *
    set-style(stroke: 0.5pt)
    
    line((), (10, 0), stroke: gray)
    rect((1, 0.1), (rel: (1.5, .5)), name: "m_1")
    rect((8, 0.1), (rel: (1, .5)), name: "m_2")

    content("m_1", [$m_1$])
    content("m_2", [$m_2$])
  })
]

Wie sieht die Situation nach dem oben beschriebenen unelastischen Stoss aus?
Skizzieren Sie die Situation samt den Geschwindigkeiten!

#align(center)[
  #cetz.canvas({
    import cetz.draw: *
    set-style(stroke: 0.5pt)
    
    line((), (10, 0), stroke: gray)
    line((1, 0), (1, 1), stroke: white)
  })
]

Um die Endgeschwindigkeit zu berechnen, müssen Sie den Gesamtimpuls vor und nach dem Stoss aufstellen:

vor: #h(1cm)$#text(fill: blue)[$arrow(p)_"vor"$] =$ #h(6cm) nach: #h(1cm) $#text(fill: blue)[$arrow(p)_"nach"$]=$

Nach der Impulserhaltung sind die Gesamtimpulse vor und nach dem Stoss . . . . . . . . . . . . . . . . . . . . .

Dadurch ergibt sich für #text(fill: blue)[$arrow(u)$]:

#text(fill: blue)[$ arrow(u) = #h(4cm) $] 

Bis jetzt haben Sie mit den gerichteten Grössen (Vektoren) gerechnet. Wie sieht die #emph[Betrags]gleichung aus? Nehmen Sie an, dass die $x$-Achse von links nach rechts gerichtet ist!

$ #text(fill: blue)[$u$]=#h(4cm) $ 

_Zusatzfrage:_ Berechnen Sie die gesamte Bewegungsenergie vor dem Stoss und nach dem Stoss. Treffen Sie selber Annahmen für die Massen und die Anfangsgeschwindigkeiten -- _Tipp: Wer es geschickt macht, muss gar nicht viel rechnen!_ Was stellen Sie fest? Wie begründen Sie Ihre Beobachtung?
#schreibpapier(height: 1.61cm)

== b) Der zentrale, elastische Stoss
Gehen Sie hier wiederum von einem Stoss aus, bei dem beide Partner gegeneinader fahren. Skizzieren Sie auch hier die Situation vor und nach dem Stoss ($#text(fill: blue)[$v_1$]>#text(fill: blue)[$v_2$]$):

vor dem Stoss:

#align(center)[
  #cetz.canvas({
    import cetz.draw: *
    set-style(stroke: 0.5pt)
    
    line((), (10, 0), stroke: gray)
    rect((1, 0.1), (rel: (1.5, .5)), name: "m_1")
    rect((8, 0.1), (rel: (1, .5)), name: "m_2")

    content("m_1", [$m_1$])
    content("m_2", [$m_2$])
  })
]

nach dem Stoss:

#align(center)[
  #cetz.canvas({
    import cetz.draw: *
    set-style(stroke: 0.5pt)
    
    line((), (10, 0), stroke: gray)
    line((1, 0), (1, 1), stroke: white)
  })
]

Stellen Sie auch hier die Gleichung für die Impulserhaltung auf!
#schreibpapier(height: 1.21cm)

In dieser einen Gleichung treten noch 2 Unbekannte (#text(fill: blue)[$arrow(u)_1$], #text(fill: blue)[$arrow(u)_2$]) auf! Um sie zu lösen fehlt Ihnen noch etwas. Beim unelastischen Stoss haben Sie berechnet, dass die Bewegungsenergie nicht erhalten bleibt. Beim elastischen Stoss hingegen bleibt die gesamte Bewegungsenergie beider Partner vor und nach dem Stoss erhalten.

Stellen Sie die Energieerhaltung auf:
#schreibpapier(height: 1.61cm)

Mit etwas Mathematik können die gesuchten Grössen berechnet werden. Ich übernehme es für Sie:

#cbox(color: haupt-farbe)[
  $ 
  #text(fill: blue)[$arrow(u)_1$] &= (2m_2#text(fill: blue)[$arrow(v)_2$]+(m_1-m_2)#text(fill: blue)[$arrow(v)_1$])/(m_1+m_2) \
  #text(fill: blue)[$arrow(u)_2$] &=(2m_1#text(fill: blue)[$arrow(v)_1$]+(m_2-m_1)#text(fill: blue)[$arrow(v)_2$])/(m_1+m_2)
  $
]
Was geschieht, wenn beide Massen gleich gross sind?
#schreibpapier(height: .81cm)

Was geschieht, wenn der zweite Körper ruht und $m_1$ viel kleiner ist als $m_2$? Wo tritt diese Situation auf?
#schreibpapier()
