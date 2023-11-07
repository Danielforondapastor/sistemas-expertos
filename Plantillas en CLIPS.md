 # Definición de la estructura

```clips
(deftemplate pelicula "Una deftemplate de ejemplo"
  (slot nombre)
  (slot genero)
  (slot director)
  (slot año)
)
```
# Ejemplo usando la estructura
```clips
(assert (pelicula (nombre "Seven")
    (genero "Drama")
    (director "David Fincher")
    (año 1995)))
```

![image](https://github.com/Danielforondapastor/sistemas-expertos/assets/95243114/e39e51c4-9e28-4f34-8394-70f75279aa25)

# Pantallazo UI

![Captura](https://github.com/Danielforondapastor/sistemas-expertos/assets/95243114/3926fccd-2c7b-4791-8c65-9804144e34b7)
