#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/unify:0.7.1": num,qty,unit
#import "../layout.typ": *

#let gebiet = "Moderne Physik"
#let titel = [Entdeckung der Radioaktivität]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "a)1)")
#set text(number-type: "old-style")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Entdeckung der Radioaktivität

== Wilhelm Conrad Röntgen

#grid(
  columns: (auto, 1fr),
  gutter: .5cm,
  [
    #image("../bilder/röntgen.jpg", width: 4cm)
  ],
  [
    Die Röntgenstrahlen wurden im November 1895 durch Wilhelm Conrad #smallcaps[Röntgen] entdeckt. Röntgen entdeckte seine X-Strahlen durch Zufall. Er stellte fest, dass ein fluoreszierender Schirm aufleuchtete, wenn er in der Nähe einer Elektronenröhre stand. Dies funktionierte auch, wenn die Elektronenröhre mit Karton abgedeckt war. #smallcaps[Röntgen] untersuchte, ob diese Strahlen im Magnetfeld abgelenkt würden, und welche Materialien sie durchdringen. Um seine Entdeckung vorzuführen, machte er auch erste Röntgenaufnahmen. Eine Erklärung für die Röntgenstrahlen fand er jedoch nicht. Für seine Entdeckung, erhielt er 1901, als erster Physiker überhaupt, den Nobelpreis in Physik.
  ]
)

== Antoine Henri Becquerel
An einer Sitzung der Französischen Akademie der Wissenschaften im Januar 1896 erfuhr Antoine Henri #smallcaps[Becquerel] von der Entdeckung der Röntgenstrahlen. Da sich #smallcaps[Becquerel] bereits mit fluoreszierenden Substanzen beschäftigte, fragte er sich, ob es einen Zusammenhang zwischen der Fluoreszenz und der Emission von Röntgenstrahlen gibt. Er begann mit verschlossenen Fotoplatten zu experimentieren. Er setzte diese für längere Zeit der Sonnenstrahlung aus, ohne dass eine Belichtung festzustellen war. Auf verschlossene Fotoplatten legte er auch einen Uransalzkristall. Beides setzte er der Sonnenstrahlung aus, um die seiner Meinung nach nötige Fluoreszenz zu erzeugen. Diese Fotoplatten waren tatsächlich auch belichtet. Erst durch Zufall entdeckte er, dass für die Belichtung der Platten keine Fluoreszenz nötig ist. Dazu die von ihm gemachten Aussagen:

"Ich beschreibe nun, wie ich zu dieser meiner Beobachtung gekommen bin. Ich hatte einige der oben beschriebenen Versuche Mittwoch, den 26., und Donnerstag, den 27. Februar vorbereitet. Da jedoch an diesen Tagen die Sonne nur zeitweise schien, führte ich die geplanten Versuche nicht aus, sondern legte die Plattenbehälter zurück in eine dunkle Schublade, wobei ich das Uransalz auf ihnen liegen liess. Da nun die Sonne auch an den folgenden Tagen nicht schien, entwickelte ich am 1. März die photographischen Platten in der Erwartung, sehr schwache Bilder zu bekommen. Im Gegensatz zu meiner Erwartungen, erschienen aber die Silhouetten in sehr grosser Intensität. Ich dachte mir sofort, dass die Wirkung auch im Dunklen auftritt und stellte die darauf folgenden Versuche demgemäss ein..."

Diese Strahlung die vom Uran ausging wurde zunächst einmal #smallcaps[Becquerel]-Strahlung genannt. Dieser Begriff wird heute nicht mehr verwendet.

== Das Ehepaar Curie
Marie #smallcaps[Curie] war Assistentin bei #smallcaps[Becquerel]. Da sein Interesse an den Strahlen nachliess wurde Marie #smallcaps[Curie] beauftragt, diese Untersuchungen weiterzuführen. Ihr Mann beteiligte sich an diesen Untersuchungen, indem er ein Messinstrument baute, mit welchem kleine Stromstärken gemessen werden konnten. Mit dem Uran war also ein erstes radioaktives Element entdeckt. Die #smallcaps[Curies] untersuchten nun, ob noch weiter radioaktive Elemente vorkommen. 1898 fanden sie schliesslich das Polonium (Po) und bald darauf das Radium (Ra). Für ihre Arbeiten erhielten die #smallcaps[Curies] 1903 zusammen mit #smallcaps[Becquerel] den Nobelpreis für Physik.
