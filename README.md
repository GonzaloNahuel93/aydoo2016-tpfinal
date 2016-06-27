#Gonzalo Nahuel Di Pierro - aydoo2016-tpfinal
##TP Final de Análisis Y Diseño Orientado a Objetos 2016.
##Revisor del TP Final: Gonzalo Alejandro Cozzi.

----------------------------------------------------------------------

##Soluciones ocurridas hasta llegar a la solución definitiva.


1) La primera solución ocurrida fue la de implementar el Patrón Mediator. Este patrón funciona como nodo central para la transmisión de mensajes entre clases. Gracias a esta solución que propone el patrón, evita el acoplamiento entre clases dado que cada una de ellas debe poder mandar mensajes a todas las demás. El mediador se encarga de transmitir estos mensajes sin que las clases tengan una conexión explícita entre ellas.

* Esta solución fue descartada porque, a mi consideración, los varios ejemplos encontrados para aplicar este patrón no se ajustaban del todo a la situación que se planteaba en el trabajo práctico. En cada colisión, los objetos debían conocerse mutuamente. No insinúo que con este patrón no se pueda solucionar el problema, pero sinceramente estaba buscando una solución más simple y con un poco menos de código pensando en mi revisor y para el que haga la correción del trabajo.


2) La segunda solución ocurrida fue la de crear una clase que contenga una sobrecarga de métodos, donde en cada uno de ellos se encuentre la lógica de cada tipo particular de colisión.

* Esta solución fue descartada no sólo por ser una aberración, ya que al fin y al cabo me terminé de dar cuenta que toda casi la lógica principal del programa estaba en esa clase, sino porque luego pude darme cuenta que no se permiten las sobreecargas de métodos en Ruby. En consecuencia, pude determinar de manera rápida que este tipo de solución no era el camino.

----------------------------------------------------------------------

##Diseño de la solución definitiva

- La solución definitiva consiste en lo siguiente:

* Cada clase tiene un Hash Map donde la clave es la clase con la que pueda colisionar alguna vez, y el valor es el efecto que sufrirá si choca con esa determinada clase.

* Para cada clase con la que pueda colisionar, existe un efecto determinado que sufrirá.

* Cuando un objeto colisiona con otro, se crea una clase Colisión con los dos objetos que colisionaron. La colisión aplica los efectos sobre los objetos en cuestión. Con lo cual me parece algo razonable si se piensa en la realidad: Cuando dos objetos colisionan ocurre una colisión (Valga la redundancia) donde esa colisión hace que cambie el estado de ambos objetos.

* La colisión se ocupa de pedirle a cada objeto el efecto sufrido por haber colisionado con el otro objeto. Y luego de esto, se aplican sus respectivos efectos a ambos.

----------------------------------------------------------------------

##Observaciones/Críticas de la solución

* Las clases del dominio: Nave, Misil, Bomba, Asteroide, y Estrella heredan de la clase 'ObjetoEspacial'. Me incomoda saber que esa clase se puede instanciar, ya que ante cualquier intento de hacer colisionar una instancia de 'ObjetoEspacial' no funcionaría. Pero gracias a esa clase pude evitar repetir código en las clases del dominio, ya que la lógica de los métodos 'colisionar_con' y 'get_efecto_sufrido' es igual para todas ellas. Además en 'ObjetoEspacial' se inicializan los atributos vida, masa, y esta_vivo lo cual indica con un booleano si un objeto tiene la vida o la masa en 0 (Cero).

* La clase 'EfectoNulo' no tiene comportamiento. Cuando se aplica este efecto no cambia el estado de ninguno de los dos objetos (Como debería ser). Tiene un método 'aplicar' que está vacío. Me incomoda tener una clase que no hace absolutamente nada, pero es para hacer más claro el código cuando se define el Hash Map para un objeto indicando qué efecto sufriría si choca con otro tipo de objeto particular.

* Hay Tests que tienen como mucho dos expect. Soy consciente de que es mala práctica colocar más de un expect por Test, pero en ocasiones me veía obligado a colocar dos para comprobar la vida y la masa de un objeto. Especialmente en los ejemplos dados en el enunciado, interpreto que debían ser comprobados ambos atributos (Vida y masa).
