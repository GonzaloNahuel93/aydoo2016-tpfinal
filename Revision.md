# Revisión del Trabajo Práctico final de AyDOO 2016
## Estado del repositorio a las 19:20 hs. del 25/06/2016
## Revisor: Gonzalo Alejandro Cozzi.

----------------------------------------------------------------------
* Observación 01: existe código repetido en las clases hijas de 'ObjetoEspacial', en particular los atributos 'masa', 'vida' y 'esta_vivo'. Sugiero "subirlos" a la superclase.

----------------------------------------------------------------------

* Observación 02: considero innecesario que la clase 'Colision' almacene algún atributo. Sugiero que se limite a operar con los objetos espaciales que reciba sin almacenarlos para evitar una ocupación de memoria que es innecesaria.

Respuesta: RECHAZADO. Para mi es importante que la clase 'Colision' almacene y conozca a los objetos que colisionaron. Además, el modelado de esta situación se asemeja a la realidad ya que cuando dos objetos colisionan, se crea (justamente) una colisión que tiene como involucrados a los dos protagonistas de la misma. El uso de memoria en este caso es mínimo, y a mi parecer, determinar si este uso de memoria es necesario o innecesario sale del foco de este trabajo práctico.

----------------------------------------------------------------------

* Observación 03: en la clase 'ObjetoEspacial' se define un attribute accessor para los atributos 'masa' y 'vida', y debajo se definen esos atributos individualmente. Se considera mala práctica en Ruby, por ser redundante, representar a los atributos individualmente al mismo tiempo que se define un attribute accessor, por lo que recomiendo removerlos dejando únicamente el attribute accessor de los mismos.

----------------------------------------------------------------------

* Observación 04: el nombre del método 'actualizar_datos' de la clase 'ObjetoEspacial' no indica claramente cuál es su responsabilidad. Sugiero cambiarlo por un nombre más descriptivo para mejorar la claridad del código.

Respuesta: ACEPTADO. Se ha cambiado el nombre de ese método por 'actualizar_estado'. Cuyo estado es conformado por la cantidad de vida, masa, y un booleano que indica si el objeto está o no vivo. 

----------------------------------------------------------------------

* Observación 05: faltan clases de prueba para la mayoría de las clases. Aunque la cobertura pudiera ser alta, esto no garantiza la calidad de las pruebas. Además, más allá de la existencia de pruebas de integración, se necesitan pruebas específicas para cada clase.

----------------------------------------------------------------------

* Observación 06: es mala práctica que cada prueba unitaria tenga más de una aserción. Sugiero partir las pruebas que no cumplen esto en pruebas independientes que tengan una única aserción.

----------------------------------------------------------------------

* Observación 07: las clases de efecto ('EfectoMasa', 'EfectoDestructivo', etc.) tienen código repetido. Sugiero que hereden de una superclase 'Efectos'.

----------------------------------------------------------------------

* Observación 08: considero innecesaria la creación de objetos que no tienen comportamiento o estado alguno, como la clase 'EfectoNulo', ya que aunque pertenezca al dominio no hace ni hará nada jamás (de otra forma no se debería denominar 'EfectoNulo'). Sugiero eliminarla y reemplazarla por algún estado ya existente configurado para que no provoque cambio alguno.

----------------------------------------------------------------------

