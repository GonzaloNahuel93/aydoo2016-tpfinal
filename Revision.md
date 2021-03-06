# Revisión del Trabajo Práctico final de AyDOO 2016
## Estado del repositorio a las 14:00 hs. del 27/06/2016
## Revisor: Gonzalo Alejandro Cozzi.

----------------------------------------------------------------------
* Observación 01: existe código repetido en las clases hijas de 'ObjetoEspacial', en particular los atributos 'masa', 'vida' y 'esta_vivo'. Sugiero "subirlos" a la superclase.

Respuesta: ACEPTADO. Buena observación. Ahora cada clase llama al constructor del padre 'Objeto_Espacial' para guardar los datos correspondientes a 'vida', 'masa', y 'esta_vivo'.

----------------------------------------------------------------------

* Observación 02: considero innecesario que la clase 'Colision' almacene algún atributo. Sugiero que se limite a operar con los objetos espaciales que reciba sin almacenarlos para evitar una ocupación de memoria que es innecesaria.

Respuesta: RECHAZADO. Para mi es importante que la clase 'Colision' almacene y conozca a los objetos que colisionaron. Además, el modelado de esta situación se asemeja a la realidad ya que cuando dos objetos colisionan, se crea (Justamente) una colisión que tiene como involucrados a los dos protagonistas de la misma. El uso de memoria en este caso es mínimo, y a mi parecer, determinar si este uso de memoria es necesario o innecesario sale del foco de este trabajo práctico.

----------------------------------------------------------------------

* Observación 03: en la clase 'ObjetoEspacial' se define un attribute accessor para los atributos 'masa' y 'vida', y debajo se definen esos atributos individualmente. Se considera mala práctica en Ruby, por ser redundante, representar a los atributos individualmente al mismo tiempo que se define un attribute accessor, por lo que recomiendo removerlos dejando únicamente el attribute accessor de los mismos.

Respuesta: ACEPTADO. No me había dado cuenta de ese detalle. Buena observación. Esos atributos definidos de manera redundante fueron removidos, y simplemente quedó el attribute accessor.

----------------------------------------------------------------------

* Observación 04: el nombre del método 'actualizar_datos' de la clase 'ObjetoEspacial' no indica claramente cuál es su responsabilidad. Sugiero cambiarlo por un nombre más descriptivo para mejorar la claridad del código.

Respuesta: ACEPTADO. Se ha cambiado el nombre de ese método por 'actualizar_estado'. Cuyo estado es conformado por la cantidad de vida, masa, y un booleano que indica si el objeto está o no vivo. 

----------------------------------------------------------------------

* Observación 05: faltan clases de prueba para la mayoría de las clases. Aunque la cobertura pudiera ser alta, esto no garantiza la calidad de las pruebas. Además, más allá de la existencia de pruebas de integración, se necesitan pruebas específicas para cada clase.

Respuesta: ACEPTADO. Si, faltaban las pruebas específicas para cada clase. El TDD se había empezado a hacer con las pruebas de integración de colisiones. Pero ya están hechas las pruebas unitarias para cada clase del dominio del problema.

----------------------------------------------------------------------

* Observación 06: es mala práctica que cada prueba unitaria tenga más de una aserción. Sugiero partir las pruebas que no cumplen esto en pruebas independientes que tengan una única aserción.

Respuesta: ACEPTADO. Coincido totalmente con lo que decís y soy consciente de que es una mala práctica. Pero sinceramente me siento obligado a comprobar en las pruebas, que luego de una colisión, la vida y la masa de ambos objetos involucrados es correcta. Igualmente, documentaré este detalle en el README.md. 

----------------------------------------------------------------------

* Observación 07: las clases de efecto ('EfectoMasa', 'EfectoDestructivo', etc.) tienen código repetido. Sugiero que hereden de una superclase 'Efectos'.

Respuesta: RECHAZADO. Y coloco 'RECHAZADO' porque no coincido en absoluto que se repite código en esas clases. Los efectos reciben parámetros de diferentes tipos y la lógica para aplicar cada uno de esos efectos difieren completamente entre sí.

- El Efecto Nulo no altera el estado de un objeto (No modifica su vida ni su masa).
- El Efecto Destructivo disminuye la vida de un objeto en una determinada cantidad de unidades.
- El Efecto Constructivo aumenta la vida de un objeto en una determinada cantidad de unidades.
- El Efecto Masa aumenta o disminuye la masa de un objeto en una cantidad proporcional (Porcentaje) a la masa del objeto con el que colisionó.

Por eso repito: La lógica definida en cada clase es diferente, y NO se repite código entre ellas. De todas formas, tomo que cada efecto herede de una superclase 'Efecto'.

----------------------------------------------------------------------

* Observación 08: considero innecesaria la creación de objetos que no tienen comportamiento o estado alguno, como la clase 'EfectoNulo', ya que aunque pertenezca al dominio no hace ni hará nada jamás (de otra forma no se debería denominar 'EfectoNulo'). Sugiero eliminarla y reemplazarla por algún estado ya existente configurado para que no provoque cambio alguno.

Respuesta: RECHAZADO. Si bien es verdad que el Efecto Nulo no hace nada, y hasta admito que me siento incómodo teniendo una clase que no cambia el estado de ningun objeto, hace que mi código sea legible en cuanto a qué efecto debe sufrir un objeto espacial cuando colisiona con otro diferente o igual a su tipo. Además, como bien se dijo, el Efecto Nulo pertenece al dominio del problema, con lo cual me siento obligado de cierta forma a que ese efecto esté entre las clases a modelar. Igualmente, documentaré este detalle en el README.md.

----------------------------------------------------------------------

* [Pedido de Observación] Observación 09: las 95 pruebas corren todas ok.

Respuesta: -

----------------------------------------------------------------------
