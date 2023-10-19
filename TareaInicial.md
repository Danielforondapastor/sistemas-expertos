# 1. Define que son lenguajes imperativos y declarativos.

Los lenguajes de programación **imperativa** son como unas instrucciones paso a paso detallados que se escriben para el ordenador, 
indicando claramente los pasos específicos y el orden en el que deben ejecutarse para lograr la solución deseada. 
En esencia, proporcionan instrucciones precisas sobre cómo realizar una tarea.

En la programación **declarativa**, en cambio, se describe directamente el resultado final deseado (el qué).
Un ejemplo culinario para entenderlo mejor: los lenguajes imperativos proporcionan la receta, mientras que los declarativos, fotos del plato preparado.

## Ejemplo de programacion imperativa en PHP:

$listaParticipantes = [1 => 'Peter', 2 => 'Hans', 3 => 'Sarah'];

$nombres = [];

foreach ($listaParticipantes as $id => $name) {

    $nombres[] = $name;
    
}

## Ejemplo de programacion declarativa en PHP: 

$nombres = array_values($listaParticipantes);

#
