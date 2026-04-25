#import "../layout.typ": *
#import "@preview/physica:0.9.8": isotope

#let vormatur = true
#let hydrodynamik = false

#let gebiet = "Maturvorbereitung"
#if vormatur {
  gebiet = "Vormaturvorbereitung"
}

#let titel = "Gemischte Aufgaben"
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

#set enum(numbering: numbly.numbly("{1:1}.", "{2:a})"), full: true)

= Vorbereitungsaufgaben für die Abschlussprüfung

Bei diesen Aufgaben geht es darum, den Einstieg zu finden. Sobald Sie wissen, wie die Aufgabe gelöst werden muss, notieren Sie sich stichwortartig den Lösungsweg. Erst wenn Sie alle Aufgaben so bearbeitet haben, lösen Sie die eine oder andere Aufgabe vollständig.

+ Wenn Sie das Tischtuch schnell genug wegziehen, bleibt die Tasse fast an Ort und Stelle stehen. Mit welcher Beschleunigung müssen Sie das Tischtuch wegziehen, damit die Tasse auf dem Tischtuch gleitet? Die Haftreibung zwischen Tischtuch und Porzellan ist 0.4, während es keinerlei Reibung zwischen Tischtuch und Tisch geben soll.

+ Das Polonium #isotope("Po", a: 218, z: 84) wandelt sich in Polonium #isotope("Po", a: 214, z: 84) auf drei verschiedene Arten um:

  $alpha$, $beta$, $beta$- oder $beta$, $alpha$, $beta$- oder $beta$, $beta$, $alpha$-Zerfall.
 
  Geben Sie die drei verschiedenen Zerfallswege von Polonium-218 an.

+ Sie möchten in Ihrem Schlafzimmer einen Spiegel an die Wand hängen, in dem Sie sich vom Scheitel bis zur Sohle sehen können. Wie hoch muss der Spiegel sein und in welcher Höhe müssen Sie ihn aufhängen?

+ Sandra hat zum Teekochen einen Tauchsieder (#qty("230", "Volt") / #qty("900", "Watt")) in die Ferien mitgenommen.

  + Wie lang dauert es, um mit dem Tauchsieder #qty("5.0", "deci litre") Wasser von #qty("15", "Celsius") auf #qty("100", "Celsius") zu erwärmen, wenn Wärmeverluste vernachlässigt werden?
  + Wie gross ist der Widerstand des Tauchsieders? 
  + Wie lang würde der Kochprozess in a) dauern bei einer Netzspannung von #qty("115", "Volt") -- z.B. in den USA?

+ Wenn man Helium einatmet, werden auch tiefe Männerstimmen zu hohen Mickey-Maus-Stimmen. Die Tonhöhe erhöht sich etwa um eine Oktave plus eine Quinte (genaues Frequenzverhältnis 2.92). Was ergibt sich daraus für die Schallgeschwindigkeit im Helium? ($c_"Luft" = qty("353", "m/s")$ bei #qty("20", "Celsius"))

+  Zur Auslösung eines Spaltprozesses bei Kernkraftwerken werden langsame Neutronen benötigt. Daher müssen die bei der Spaltung frei werdenden Neutronen abgebremst werden. Dies erfolgt im rumänischen Kernkraftwerk von Cernavoda mit dem Deuterium #super[2]H des schweren Wassers. Im Gegensatz zu den Schweizer Kernkraftwerken, die mit angereichertem Uran betrieben werden müssen, arbeiten die Schwerwasserreaktoren mit natürlichem Uran, das weitaus billiger ist als angereichertes.

  Ein Neutron stösst vollkommen elastisch und zentral auf ein ruhendes Deuteriumatom. Die Masse des Deuteriumatoms ist 1.99-mal grösser als die Neutronenmasse.

  Wie viel Prozent der kinetischen Energie des Neutrons wird ins Deuteriumatom übertragen?

+ Ein Blumentopf fällt in einem Hochhaus vom Fenstersims. Bei der Familie Huber rast er mit #qty("10.5", "m/s") am Fenster vorbei. Drei Etagen weiter unten bei der Familie Meierhans ist seine Geschwindigkeit bereits auf #qty("16.6", "m/s") angestiegen.

  Wie hoch ist eine Etage? Aus welchem Stock ist der Topf gefallen?

+ Sie öffnen einen Gefrierschrank und schliessen ihn, ohne etwas zu entnehmen. Dabei werden 230~Liter #qty("-18.0", "Celsius") kalte Luft durch #qty("25.0", "Celsius") warme Luft ersetzt. Nach dem Schliessen der Tür kühlt sich die Luft ab und es stellt sich nach einiger Zeit der Anfangszustand ein, wobei auch wieder ein Druckausgleich mit der Aussenluft bei einem Luftdruck von #qty("98.0", "kilo Pascal") stattfindet. Wie viel Wärme musste der Luft im Gefrierschrank bei diesem Vorgang entzogen werden?

#if hydrodynamik [
  + Zwei waagrecht liegende Rohre einer Trinkwasserleitung sind durch einen Reduzierkegel miteinander verbunden. Das weitere Rohr hat einen Durchmesser von 1¼~Zoll und das engere einen von ½~Zoll. Die Strömungsgeschwindigkeit im weiteren Rohr beträgt #qty("2.5", "m/s") bei einem Druck von #qty("7.1", "bar").
    + Welcher Druck herrscht im engeren Rohr?
    + Wie viel Liter fliesst pro Sekunde durch diese Wasserleitung, wenn die Zuleitung geöffnet wird?
  ]

+ Herr Meiers Rasenmäher nimmt eine Leistung von #qty("1.9", "kW") auf, wenn er direkt an eine #qty("230", "Volt")-Steckdose angeschlossen wird. Um auch in den entlegensten Ecken des Gartens mähen zu können, verwendet Herr Meier ein #qty("30", "m") langes Verlängerungskabel. In diesem Kabel fliesst der Strom hin und zurück durch je eine Kupferader mit #qty("1.5", "mm^2") Querschnitt.

  + Welchen zusätzlichen Widerstand stellt das Verlängerungskabel dar?
  + Wie gross ist die Spannung, die bei Verwendung des Kabels für den Rasenmäher noch zur Verfügung steht?
  + Welche elektrische Leistung nimmt der Rasenmäher in diesem Fall auf?
  + Wie gross ist die Leistung, die im Verlängerungskabel umgesetzt wird?

+ Bei einem Hellraumprojektor beträgt der Abstand von der Folie bis zur Leinwand (über den Spiegel gemessen) #qty("5.75", "m"). Durch Verschieben der Abbildungslinse, mit Brennweite $f=qty("320", "mm")$, wird das Bild scharf gestellt.

  + In welchem Abstand von der Folie befindet sich die Abbildungslinse?
  + In welcher Grösse wird die Folie (A4: #qty("21", "cm")~×~#qty("30", "cm") abgebildet, und wievielmal kleiner als auf der Folie ist die Flächenhelligkeit auf der Leinwand?

+ Infolge der natürlichen und künstlichen Strahlenbelastung absorbiert der menschliche Körper jährlich eine Äquivalentdosis von rund #qty("4", "milli Sievert"). Der Grenzwert ist auf #qty("5", "milli Sievert") pro Jahr festgesetzt, bzw. #qty("50", "milli Sievert") pro Jahr für Personen, die beruflich mit Radioaktivität zu tun haben.

  + Im "Sarkophag" des Unglückreaktors von Tschernobyl beträgt die Strahlenbelastung (Dokumentation #text(number-type: "old-style")[2003]) #qty("150", "micro Sievert per hour"). Wie lange dürften Sie sich dort beruflich aufhalten?
  + In grossen Höhen gibt es mehr Höhenstrahlung. Auf #qty("5000", "m") über Meer beträgt die Strahlenbelastung ungefähr #qty("3.0", "micro Sievert per hour"). Welche Jahresdosis erhalten Sie dort?

+  Karl fährt täglich mit der Bahn von Aarau nach Lausanne und zurück. Karl will unterwegs seinen MP3-Player statt mit Batterien mit einer Induktionsschleife betreiben. Er bastelt sich eine flache Spule mit vielen Windungen und hält sie im Zug so, dass ein möglichst grosser magnetischer Fluss vom Erdmagnetfeld durch die Spulenfläche tritt. Wenn der Zug mit etwa #qty("100", "km/h") in Ost-West-Richtung oder umgekehrt fährt, rechnet er mit einer genügend grossen Induktionsspannung. Wird das funktionieren? Wenn ja, geben Sie an, wie gross das Produkt aus Windungszahl und Spulenfläche mindestens sein muss. Wenn nein, begründen Sie, warum.

+ Wer schon einmal getaucht ist, weiss, dass nur in einem relativ kleinen Kreis der Himmel beobachtet werden kann. Ausserhalb dieses Kreises ist alles dunkel, wie auf dem Foto schön zu sehen ist.

  + Woher kommt diese Erscheinung?
  + Wie gross ist der Radius dieses Kreises, falls Sie #qty("1.0", "m") untergetaucht sind?

+ Baden im See, das macht allen Spass! Doch haben Sie sich auch schon einmal gewundert, weshalb das kühlere Flusswasser nicht an der Seeoberfläche bleibt, sondern glücklicherweise absinkt?

  Das kalte Wasser muss eine grössere Dichte haben als das warme. Das Flusswasser habe eine Temperatur von #qty("14", "Celsius"), das Seewasser eine von #qty("20", "Celsius"). In der Formelsammlung finden Sie leider nur die Dichte für Wasser bei #qty("20", "Celsius"). Doch können Sie die Dichte des kälteren Wassers abschätzen. Welche Dichte hat das Flusswasser?

+ Eine MD-11 braucht eine Geschwindigkeit von etwa #qty("360", "km/h"), um von der Piste abheben zu können. Die mittlere Startbeschleunigung bei voller Beladung beträgt #qty("3.9", "m/s^2").

  + Umschreiben Sie in einem Satz die Bedeutung der Beschleunigungsangabe.
  + Kann die MD-11 auf einer Piste starten, die #qty("1.2", "km") lang ist? 
  + Wie gross ist die mittlere Geschwindigkeit auf den ersten #qty("100", "m") der Startstrecke?

+ Eine Hochspannungsleitung hängt frei zwischen zwei Masten mit einem Abstand von #qty("120", "m"). Um den grösstmöglichen Einfluss des Erdfeldes auf die Leitung abzuschätzen, wird nur der Scheitelwert des Wechselstromes in der ungünstigsten Richtung betrachtet. Dieser beträgt #qty("150", "Ampere"). Das Durchhängen der Freileitung wird nicht berücksichtigt.

  + In welche Himmelsrichtung verläuft die Hochspannungsleitung, wenn die Lorentzkraft durch die Horizontalkomponente des Erdfeldes am grössten, respektive am kleinsten ist? 
  + Wie gross ist die maximale Lorentzkraft, wenn die Horizontalkomponente der Flussdichte des magnetischen Erdfeldes #qty("2.1e-5", "Tesla") beträgt?
  + Muss die Lorentzkraft bei der Konstruktion der Leitung berücksichtigt werden?

+ Sie haben kurzfristig Lust auf eine Vorspeise zum Abendessen. Deshalb nehmen Sie einen Plastikbeutel mit Krevetten aus dem Tiefkühler (#qty("-15", "Celsius")). Eine dicke Eisschicht umgibt die "Meerestierchen" und Sie sollten das Eis so schnell wie möglich abtauen. Wie viel Gramm Eis lässt sich mit #qty("1.0", "litre") Wasser von #qty("50", "Celsius") im günstigsten Falle schmelzen?

+  Ein guter Sportwagen hat einen Bremsweg von #qty("35", "m") um von #qty("100", "km/h") zum Stillstand zu kommen.

  + Wie gross ist die Reibungszahl?
  + Welche Verzögerungswerte treten auf?

+ Radium-226 wird als Gammastrahler in der Medizin für die Krebstherapie verwendet. Es besitzt eine Halbwertszeit von 1600~Jahren. Wie lang muss man die Radiumabfälle lagern, bis sie noch 10% der ursprünglichen Aktivität aufweisen?

+ Beim Bau der Albulabahn wurden die Gleisüberhöhungen so ausgelegt, dass Kurven mit #qty("120", "m") Radius mit #qty("38", "km/h") befahren werden können, ohne dass die Schienen seitliche Kräfte aufzunehmen haben. Um welchen Winkel ist demnach das Schienenbett gegenüber der Horizontalen geneigt?

+ Eine weitsichtige Person muss die Zeitung weit weg von sich halten, um sie zu lesen. Wenn sie jedoch eine Lesebrille aufsetzt, kann sie die Zeitung in der deutlichen Sehweite bequem lesen. Auf der Fassung der Lesebrille steht $+2.5$ Dioptrien. Bei welchem Abstand kann die Person ohne Lesebrille Zeitung lesen?

+ Sie sollen einen möglichst einfachen Generator für sinusförmige Wechselspannung mit einer Scheitelspannung von #qty("2.00", "Volt") bauen. Dazu lassen Sie eine flache, eisenlose Spule im Magnetfeld der Erde rotieren. Das Erdmagnetfeld hat dort, wo Sie sind, eine Flussdichte von #qty("47.0", "micro Tesla") und weist keine Deklination auf. Ihre Spule schafft maximal 180 Umdrehungen pro Minute.

  + Wie muss die waagerechte Drehachse orientiert sein, um den grössten Effekt zu erreichen?
  + Wie gross muss das Produkt aus Windungszahl und Spulenfläche sein? 
  + Geben Sie für eine kreisrunde Spule die Länge des Spulendrahtes als Funktion der Windungszahl $N$ an. Diskutieren Sie die technischen Schwierigkeiten, die bei kleinen und grossen Windungszahlen auftreten können.

+ Petra will die #qty("90", "Celsius") heisse Suppenpfanne auf den #qty("20", "Celsius") warmen Tisch stellen, ohne diesen dadurch zu beschädigen. Sie verwendet deshalb eine #qty("1.5", "cm") dicke Korkunterlage mit der Fläche #qty("5.7", "dm^2").

  + Wie viel Wärmeenergie wird von der Unterlage in 10~Minuten abgeleitet?
  + Wie dick müsste eine gleich gut isolierende Holzunterlage (Holztäfer) mit gleicher Fläche sein?
  + Weshalb ist eine Steinplatte als Unterlage nicht sinnvoll?

+ Michelle findet auf dem Dachboden einige alte Linsen. Als Objektiv für ein Fernrohr hat sie sich für eine Linse mit einer grossen Brennweite entschieden. Sie hat die Brennweite dieser Linse zu #qty("2.40", "m") bestimmt.

  + Wie könnte Michelle die Brennweite der Linse (experimentell) bestimmt haben?
  + Welche Brennweite muss das Okular aufweisen, damit sie ein (zweilinsiges) Fernrohr mit einer 100fachen Vergrösserung bauen kann? (mehr als eine Lösung)
  + Welche Baulänge(n) ergeben sich für b)?

+ Als Souvenir werden im Berner Oberland kleine Kuckucksuhren mit langen Federpendeln angeboten. Die Schwingungsdauer dieser Federn entspricht möglichst genau einer Sekunde. Wie schnell gehen sie durch die Nulllage, wenn die maximale Auslenkung #qty("15", "cm") beträgt?

+ Anlässlich eines Dorffestes werden für einen Wettbewerb Helium-Ballone losgelassen.

  Die mit Heliumgas gefüllten Ballone sind nahezu kugelrund und haben einen Durchmesser von #qty("38", "cm"). Die Ballonhülle wiegt #qty("7.2", "g"). Der Druck im Ballon beträgt #qty("1120", "hecto Pascal"), der Luftdruck am Startplatz ist #qty("980", "hecto Pascal") und die Temperatur #qty("27", "Celsius"). Wie schwer darf die Postkarte mit Halterung höchstens sein? 

+ Ein Wagen der Tramlinie 6 fährt in 3.0~Minuten die #qty("950", "m") lange Strecke von der Haltestelle "Platte" zur "Kirche Fluntern". Welche mittlere Leistung gibt der Motor ab?

  Verwenden Sie die folgenden Daten: Masse des besetzten Wagens #qty("14", "t"); mittlere Steigung 6.0%; Reibungszahl 0.01.

+ Jonas möchte zwei Glühlampen (Betriebsdaten #qty("6", "Volt") / #qty("0.2", "Ampere") bzw. #qty("4", "Volt") / #qty("0.3", "Ampere")) mit Hilfe von zwei Zusatzwiderständen so an eine 12-V-Batterie anschliessen, dass beide gemäss ihren Betriebsdaten brennen.

  + Zeichnen Sie die vier möglichen Schaltungen auf.
  + Bei welcher Schaltung ist die von der Batterie abgegebene Leistung minimal?

+ Ein Kosmetikspiegel hat eine Brennweite von #qty("15", "cm"). In welcher Entfernung von der Spiegelfläche müssen Sie eine brennende Kerze aufstellen, damit das Bild genau in der Mitte zwischen der Kerze und dem Brennpunkt entsteht?

+ Im einem Experiment wird die Temperatur eines glühenden Eisendrahtes bestimmt: Ein #qty("50", "cm") langes Stück des Drahtes ist zwischen zwei elektrisch isolierenden Stützen straff gespannt. Das Drahtstück ist in der Mitte mit einer kleinen Schraube beschwert. Nun wird der Draht mit elektrischem Strom erhitzt.

  Wie heiss ist der Draht, wenn die Schraube sich um #qty("3.5", "cm") senkt?

+ Astronomen gehen heute davon aus, dass sich im Zentrum unserer Milchstrasse ein schwarzes Loch befindet. Einer Forschungsgruppe gelang es, einen Stern auszumachen, der in nur 15~Jahren um dieses Zentrum kreist. Die grosse Halbachse seiner Umlaufbahn beträgt etwa #qty("0.013", "LJ") (Lichtjahre). Berechnen Sie aus den Bahndaten dieses Sterns die Masse des schwarzen Lochs und vergleichen Sie diese mit unserer Sonnenmasse.

+ Jemand erzählt Ihnen, er hätte bei normalem Luftdruck ein festes, glühendes Stück Eisen von ca. #qty("120", "g") in einen Liter Wasser geworfen. Dabei sei rund 20% des Wassers verdampft. Ist das möglich? Führen Sie notwendige Abschätzungen und Rechnungen durch, um die Frage klar zu entscheiden.

+ Ein Segelflugzeug wird bei einem Windenstart mit einem langen Seil beschleunigt, das von einer Seilwinde aufgerollt wird. Am Anfang des Startvorganges beträgt die Seilkraft #qty("2.45", "kilo Newton") und bewirkt eine Beschleunigung des Segelflugzeuges von #qty("7.25", "m/s"). Welche Masse kann das Segelflugzeug höchstens haben?

+ Nach einem Sonnenbad im Bikini begibt sich Esther ins Restaurant des Freibades, wo sie keiner Sonneneinstrahlung mehr ausgesetzt ist.

  Wie gross muss die Lufttemperatur im Restaurant mindestens sein, damit Esther nicht zu frieren beginnt? Nehmen Sie an, dass Esther eine Körperoberfläche von #qty("1.8", "m^2"), eine Oberflächentemperatur von #qty("34", "Celsius") und ihr Körper eine Wärmeleistung von #qty("100", "Watt") hat.

+ Ein kugelförmiger Luftballon enthält Luft von #qty("20.5", "Celsius") bei einem Druck von #qty("1020", "milli bar"). Der Durchmesser des Ballons beträgt #qty("28.4", "cm"). Marco befestigt den Ballon an seinem Schlitten und geht damit ins Freie, wo eine Temperatur von #qty("-5.7", "Celsius") herrscht. Auf welchen Durchmesser wird der Ballon dabei schrumpfen? (Man nehme einen unveränderten Druck an!)

+ Sie springen von der Höhe #qty("10", "cm") auf eine Personenwaage. Die Waage lässt sich als Feder der Federkonstante #qty("60", "kilo Newton per meter") ansehen.

  + Welchen maximalen Wert zeigt die Waage an?
  + Wie gross ist dieser Wert, wenn Sie von einer sehr kleinen Höhe ($h approx 0$) auf die Waage springen?

+ Der Hörbereich des menschlichen Ohrs liegt zwischen #qty("16", "Hz") und #qty("20", "kHz"). Welche Partialfrequenzen einer #qty("4.3", "cm") langen gedackten Orgelpfeife liegen im Hörbereich? Die Schallgeschwindigkeit in Luft betrage #qty("344", "m/s").

+ Eine 4-stufige Kochplatte aus dem Sortiment der Nr. 2 im Schweizer Detailhandel enthält zwei Heizwiderstände, die mit Hilfe eines Schalters einzeln, parallel oder in Serie an die Netzspannung von #qty("230", "Volt") angeschlossen werden können. Die kleinste Heizleistung beträgt #qty("300", "Watt"), die grösste #qty("1250", "Watt").

  + Wie gross sind die einzelnen Heizwiderstände?
  + Wie gross ist die Heizleistung bei den anderen beiden Schaltungen?
