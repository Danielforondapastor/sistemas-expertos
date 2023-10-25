(deffacts peliculas-iniciales
(genero-drama)
(genero-crimen)
;(tiene-banda-sonora))
(tiene-escenas-de-accion))

(defrule drama
(genero-drama)
=>
(assert (es-drama)))

(defrule pelicula-crimen
(genero-crimen)
=>
(assert (es-crimen)))

(defrule pelicula-accion
(tiene-escenas-de-accion)
=>
(assert (es-accion)))

(defrule banda-sonora
(tiene-banda-sonora)
=>
(printout t "La película tiene banda sonora" crlf))

(defrule pelicula-interesante
(es-drama)
(es-crimen)
(es-accion)
=>
(printout t "Esta película tiene elementos de acción, de drama y de crimen" crlf))