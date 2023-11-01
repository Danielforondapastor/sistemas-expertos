deffacts hechos-iniciales
    (es-pelicula)
    (tiene-accion)
    (tiene-romance)
    (tiene-ciencia-ficcion)
    (tiene-duracion-larga)
    (tiene-buen-argumento)
    (tiene-humor)
    (tiene-efectos-especiales)
    (tiene-violencia)
    (tiene-misterio)
)

(defrule clasificar-drama
    (es-pelicula)
    (tiene-accion)
    =>
    (assert (genero "Drama"))
    (printout t "La película es de género Drama." crlf)
)

(defrule clasificar-comedia
    (es-pelicula)
    (tiene-humor)
    =>
    (assert (genero "Comedia"))
    (printout t "La película es de género Comedia." crlf)
)

(defrule clasificar-accion
    (es-pelicula)
    (tiene-accion)
    (tiene-violencia)
    =>
    (assert (genero "Acción"))
    (printout t "La película es de género Acción." crlf)
)

(defrule clasificar-ciencia-ficcion
    (es-pelicula)
    (tiene-ciencia-ficcion)
    (tiene-duracion-larga)
    (tiene-efectos-especiales)
    =>
    (assert (genero "Ciencia Ficción"))
    (printout t "La película es de género Ciencia Ficción." crlf)
)

(defrule clasificar-romance
    (es-pelicula)
    (tiene-romance)
    (tiene-buen-argumento)
    =>
    (assert (genero "Romance"))
    (printout t "La película es de género Romance." crlf)
)

(defrule clasificar-misterio
    (es-pelicula)
    (tiene-misterio)
    =>
    (assert (genero "Misterio"))
    (printout t "La película es de género Misterio." crlf)
)

# Tabla de Seguimiento:

| Hechos                              | E                                  | Agenda                       | D                                  |
|-------------------------------------|------------------------------------|------------------------------|------------------------------------|
| `(es-pelicula)`                     |                                    | `clasificar-drama: f1`       |                                    |
| `(tiene-accion)`                    |                                    | `clasificar-comedia: f2`     |                                    |
| `(tiene-romance)`                   |                                    | `clasificar-accion: f3`     |                                    |
| `(tiene-ciencia-ficcion)`           |                                    | `clasificar-ciencia-ficcion: f4` |                                    |
| `(tiene-duracion-larga)`            |                                    | `clasificar-romance: f5`     |                                    |
| `(tiene-buen-argumento)`            |                                    | `clasificar-misterio: f6`    |                                    |
| `(tiene-humor)`                     |                                    |                              |                                    |
| `(tiene-efectos-especiales)`         |                                    |                              |                                    |
| `(tiene-violencia)`                 |                                    |                              |                                    |
| `(tiene-misterio)`                  |                                    |                              |                                    |
|                                     | `clasificar-drama: f1`           |                              | "La película es de género Drama." |
|                                     | `clasificar-comedia: f2`         |                              | "La película es de género Comedia." |
|                                     | `clasificar-accion: f3`         |                              | "La película es de género Acción." |
|                                     | `clasificar-ciencia-ficcion: f4` |                              | "La película es de género Ciencia Ficción." |
|                                     | `clasificar-romance: f5`         |                              | "La película es de género Romance." |
|                                     | `clasificar-misterio: f6`        |                              | "La película es de género Misterio." |

| f4 (es-drama)              |  |                        |    |
| f5 (es-accion)              |  |                        |    |
| f6 (es-crimen)    |    |                        |  |
