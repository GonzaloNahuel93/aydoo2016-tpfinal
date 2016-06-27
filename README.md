#Gonzalo Nahuel Di Pierro - aydoo2016-tpfinal
##TP Final de Análisis Y Diseño Orientado a Objetos 2016.
##Revisor del TP Final: Gonzalo Alejandro Cozzi.

----------------------------------------------------------------------

##Soluciones ocurridas hasta llegar a la solución definitiva.


1) La primera solución ocurrida fue la de implementar el Patrón Mediator. Este patrón funciona como nodo central para la transmisión de mensajes entre objetos de diferentes clases sin tanto acoplamiento. Gracias a este problema que soluciona el patrón, evita el acoplamiento entre clases dado que cada una de ellas debe poder mandar mensajes a todas las demás. El mediador se encarga de transmitir estos mensajes sin que las clases tengan una conexión explícita entre ellas para el intercambio de mensajes.

* Esta solución fue descartada porque, a mi consideración, los varios ejemplos encontrados para aplicar este patrón no se ajustaban del todo a la situación que se planteaba en el trabajo práctico. En cada colisión, los objetos debían conocerse mutuamente. No insinúo que con este patrón no se pueda solucionar el problema, pero sinceramente estaba buscando una solución más simple y con un poco menos de código pensando en mi revisor y para el que haga la correción del trabajo práctico.


2) La segunda solución ocurrida fue la de crear una clase que contenga una sobrecarga de métodos, donde en cada uno de ellos se encuentre la lógica de cada tipo particular de colisión.

* Esta solución fue descartada no sólo por ser una aberración, ya que al fin y al cabo me terminé de dar cuenta que casi toda la lógica principal del programa estaba en esa clase, sino porque luego pude darme cuenta que no se permiten las sobreecargas de métodos en Ruby. En consecuencia, pude determinar de manera rápida que este tipo de solución no era el camino a seguir.

----------------------------------------------------------------------

##Diseño de la solución definitiva

- La solución definitiva consiste en lo siguiente:

* Cada clase tiene un Hash Map donde la clave es la clase con la que un objeto puede colisionar alguna vez, y el valor es el efecto que sufrirá ese objeto si choca con otro de la clase determinada.

* Para cada clase de objeto con la que pueda colisionar un tipo determinado de objeto, existe un efecto determinado que sufrirá.

* Cuando un objeto colisiona con otro, se crea una clase 'Colisión' con los dos objetos que colisionaron. La colisión aplica los efectos sobre los objetos en cuestión. Con lo cual me parece algo razonable si se piensa en la realidad: Cuando dos objetos colisionan ocurre una colisión (Valga la redundancia) donde esa colisión hace que cambie el estado de ambos objetos.

* La colisión se ocupa de pedirle a cada objeto el efecto que sufrió por haber colisionado con el otro objeto. Y luego de esto, se aplican sus respectivos efectos a ambos.

* En la solución modelada, se pueden seguir agregando al Hash Map distintos tipos de clases y los respectivos efectos que sufriría un tipo objeto por colisionar con otro tipo diferente de objeto. Esto hace que no se viole el principio del Open/Close.

----------------------------------------------------------------------

##Observaciones/Críticas de la solución

* Las clases del dominio: Nave, Misil, Bomba, Asteroide, y Estrella heredan de la clase 'ObjetoEspacial'. Me incomoda saber que esa clase se puede instanciar, ya que ante cualquier intento de hacer colisionar una instancia de 'ObjetoEspacial' no funcionaría. Pero gracias a esa clase pude evitar repetir código en las clases del dominio, ya que la lógica de los métodos 'colisionar_con' y 'get_efecto_sufrido' es igual para todas ellas. Además en 'ObjetoEspacial' se inicializan los atributos vida, masa, y esta_vivo lo cual indica con un booleano si un objeto tiene la vida o la masa en 0 (Cero).

* La clase 'Efecto' también se puede instanciar, y me molesta eso también al igual que 'ObjetoEspacial'. Si se instancia la clase 'Efecto' y luego se invoca al método 'aplicar' no pasará nada, funciona como un Efecto Nulo. Pero me pareció bueno crearla para poder generalizar todos los diferentes efectos que hay y mejorar la claridad del código.

* La clase 'EfectoNulo' no tiene comportamiento. Cuando se aplica este efecto no cambia el estado de ninguno de los dos objetos que colisionaron (Como debería ser). Tiene un método 'aplicar' que está vacío. Me incomoda tener una clase que no hace absolutamente nada, pero es para hacer más claro el código cuando se define el Hash Map para un tipo de objeto, indicando qué efecto sufriría si choca con otro tipo de objeto particular.

* Soy consciente de que no se manejan muchos errores. Especialmente en las clases de los efectos. Como por ejemplo que en el Efecto Destructivo no se le coloque un número negativo para que disminuya esa cantidad de vida a un objeto. El único error que se maneja (Con la excepción creada) es cuando se intenta hacer una colisión donde alguno o los dos objetos está/n muertos.

* Hay Tests que tienen como mucho cuatro expect. Soy consciente de que es mala práctica colocar más de un expect por Test, pero en ocasiones me veía obligado a colocar dos para comprobar la vida y la masa de un objeto. Especialmente en los ejemplos dados en el enunciado, interpreto que debían ser comprobados ambos atributos (Vida y masa) de los dos objetos que colisionan. Y en la prueba de integración de colisiones también me veía obligado a comprobar y demostrar que la vida y masa tanto del objeto colisionador como el colisionado, son correctas luego de ocurrida la colisión.

----------------------------------------------------------------------

##Trabajo Práctico Finalizado
##Cantidad de Pruebas/Tests: 95.
##Cobertura: 100%.

----------------------------------------------------------------------
