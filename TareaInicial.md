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

# 2. Mapa mental

# 3. Define que es un sistema experto y que tipo de tareas se pueden resolver con él. Pon ejemplos reales de sistemas expertos, que hacen y donde se utilizan.

Un sistema experto es un software creado para imitar la forma en que los seres humanos razonan y aplican su conocimiento en un área específica. Su principal objetivo es solucionar problemas o tomar decisiones dentro de ese campo particular. Estos sistemas son una rama de la inteligencia artificial y se basan en un conjunto de reglas y una base de datos de conocimiento que utilizan para ofrecer recomendaciones o resolver problemas en un dominio de aplicación concreto. Para llegar a sus conclusiones, los sistemas expertos siguen un proceso lógico de inferencia basado en la información disponible y las reglas predefinidas.

Las tareas que se pueden resolver con sistemas expertos son variadas y van desde la resolución de problemas de diagnóstico médico hasta la toma de decisiones en la gestión de recursos humanos. Algunos ejemplos de tareas y aplicaciones de sistemas expertos incluyen:

**Recursos Humanos:** Sistemas expertos de recursos humanos pueden ayudar en la selección de personal, evaluación de desempeño, y toma de decisiones relacionadas con la gestión de empleados.
**Planificación y Programación:** Los sistemas expertos pueden ser empleados en la planificación de rutas de transporte, la programación de horarios en instituciones educativas, o la programación de la producción en fábricas.

# 4. ¿Qué es CLIPS?, quién lo crea, en que año, se sigue manteniendo en la actualidad, acaba de completar con datos que consideres interesantes.

CLIPS (C Language Integrated Production System) es un lenguaje de programación y un sistema de desarrollo de sistemas expertos que fue creado por el Dr. Charles L. Forgy a principios de la década de 1980 en la Universidad de Carnegie Mellon. Aunque su desarrollo comenzó en 1985 y se lanzó la primera versión pública en 1986, CLIPS sigue siendo relevante en la actualidad.

Algunos puntos interesantes acerca de CLIPS:

- Versatilidad: CLIPS combina un lenguaje de programación con una herramienta de desarrollo, lo que lo hace adecuado para la creación de sistemas expertos en una variedad de aplicaciones, desde el control de procesos industriales hasta la medicina y el soporte técnico.

- Mantenimiento Continuo: Aunque mi información se detiene en 2021, hasta esa fecha, CLIPS continuaba siendo mantenido y desarrollado. La última versión conocida es la 6.30, lanzada en 2016, pero es posible que se hayan realizado actualizaciones posteriores.

- Documentación Sólida: CLIPS ofrece una documentación detallada, que incluye manuales y tutoriales, lo que facilita a los programadores aprender y utilizar eficazmente el sistema.

- Portabilidad: CLIPS está diseñado para ser portátil, lo que significa que puede ejecutarse en diferentes plataformas y sistemas operativos, lo que amplía su alcance.

# 5. ¿Cual es el futuro de los sistemas expertos con el auge de la inteligencia artificial, es decir como afectará la IA a los SE?

El futuro de los sistemas expertos se ve influenciado positivamente por el auge de la inteligencia artificial (IA). Aquí hay algunas maneras en las que la IA está impactando a los sistemas expertos:

- Aprendizaje y Adaptación Continua: Gracias al aprendizaje automático, los sistemas expertos pueden actualizarse y adaptarse constantemente. Esto significa que pueden aprender de nuevos datos y experiencias, mejorando su capacidad para tomar decisiones precisas.

- Automatización Reforzada: La IA agiliza la creación y el mantenimiento de sistemas expertos. Los algoritmos de aprendizaje automático pueden ayudar a identificar patrones y reglas en grandes conjuntos de datos, lo que facilita la generación de reglas en un sistema experto.

- Datos en Tiempo Real: La IA permite que los sistemas expertos accedan a datos en tiempo real, lo que mejora su capacidad para tomar decisiones basadas en información actualizada.

- Interacción más Natural: Gracias al progreso en el procesamiento de lenguaje natural, la interacción con sistemas expertos se vuelve más natural y basada en el lenguaje, lo que facilita su uso para una variedad de usuarios.

- Aplicaciones más Amplias: La IA amplía la aplicabilidad de los sistemas expertos al permitir que se utilicen en una variedad más amplia de dominios, ya que pueden adaptarse y aprender de manera más eficiente.

- Colaboración con Humanos: La IA fomenta la colaboración entre sistemas expertos y expertos humanos, lo que mejora la toma de decisiones y la productividad.

# 6. En el ejemplo en rojo que puedes encontrar mas abajo, haz que el código imprima "jirafa", ¿cómo lo has hecho?

(deffacts hechos-iniciales
(tiene-pelos)
(tiene-pezugnas)
(tiene-rayas-negras))

(defrule mamifero-1
(tiene-pelos)
=>
(assert (es-mamifero)))

(defrule mamifero-2
(da-leche)
=>
(assert (es-mamifero)))

(defrule ungulado-1
(es-mamifero)
(tiene-pezugnas)
=>
(assert (es-ungulado)))

(defrule ungulado-2
(es-mamifero)
(rumia)
=>
(assert (es-ungulado)))

(defrule jirafa
(es-ungulado)
(tiene-cuello-largo)
=>
(printout t "Es una jirafa" crlf))
 
(defrule cebra
(es-ungulado)
(tiene-rayas-negras)
=>
(printout t "Es una cebra" crlf))

Para que este codigo imprima jirafa simplemente tenemos que cambiar
