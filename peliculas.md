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
    (assert (genero-Drama))
    (printout t "La película es de género Drama." crlf)
)

(defrule clasificar-comedia
    (es-pelicula)
    (tiene-humor)
    =>
    (assert (genero-Comedia))
    (printout t "La película es de género Comedia." crlf)
)

(defrule clasificar-accion
    (es-pelicula)
    (tiene-accion)
    (tiene-violencia)
    =>
    (assert (genero-Acción))
    (printout t "La película es de género Acción." crlf)
)

(defrule clasificar-ciencia-ficcion
    (es-pelicula)
    (tiene-ciencia-ficcion)
    (tiene-duracion-larga)
    (tiene-efectos-especiales)
    =>
    (assert (genero-Ciencia-Ficción))
    (printout t "La película es de género Ciencia Ficción." crlf)
)

(defrule clasificar-romance
    (es-pelicula)
    (tiene-romance)
    (tiene-buen-argumento)
    =>
    (assert (genero-Romance))
    (printout t "La película es de género Romance." crlf)
)

(defrule clasificar-misterio
    (es-pelicula)
    (tiene-misterio)
    =>
    (assert (genero-Misterio))
    (printout t "La película es de género Misterio." crlf)
)

# Tabla de Seguimiento:

| Hechos                              | E                | Agenda                       | D                                  |
|-------------------------------------|------------------|------------------------------|------------------------------------|
|f1 `(es-pelicula)`                   |        0          | `clasificar-drama: f1, f2`       |            1                        |
|f2 `(tiene-accion)`                  |        0          | `clasificar-comedia: f1, f7`     |              2                      |
|f3 `(tiene-romance)`                 |         0         | `clasificar-accion: f1, f2, f9`     |           3                         |
|f4 `(tiene-ciencia-ficcion)`         |        0          | `clasificar-ciencia-ficcion: f1, f4, f5, f8` |          4                          |
|f5 `(tiene-duracion-larga)`          |       0           | `clasificar-romance: f1, f3, f6`     |       5                             |
|f6 `(tiene-buen-argumento)`          |       0           | `clasificar-misterio: f1, f10`    |          6                          |
|f7 `(tiene-humor)`                   |       0            |                              |                                    |
|f8 `(tiene-efectos-especiales)`      |        0          |                              |                                    |
|f9 `(tiene-violencia)`               |        0           |                              |                                    |
|f10 `(tiene-misterio)`               |       0               |                              |                                    |
|f11 `(genero-Drama)`                 |    1        |                              |  |
|f12 `(genero-Comedia)`            |    2     |                              ||
|f13 `(genero-Accion)`               |    3      |                              |  |
|f14 `(genero-Ciencia-Ficcion)`             | 4 |                              |  |
|f15 `(genero-Romance)`               |    5    |                              | |
|f16 `(genero-Misterio)`                |    6     |                              |  |
