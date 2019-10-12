## Prework

#### Ciclo de vida de una app y haz un esquema de todos los estados por los que pasa un app.

Por supuesto, una aplicación escrita en el sistema iOS pasa por un conjunto de estados a medida que se ejecuta. Estos estados se conocen como estados del ciclo de vida de la aplicación. A medida que una aplicación se mueve a través de los estados de su ciclo de vida, el estado de la aplicación se define por su nivel de actividad, como No ejecutándose, Activa o Suspendida.

![image0.jpg](https://www.dummies.com/wp-content/uploads/432628.image0.jpg)



Aquí hay más información sobre los estados:

- Cuando una aplicación está en el estado *No ejecutándose* , la aplicación no se ha iniciado o el sistema la cerró.

- Cuando se inicia una aplicación, pasa por un estado corto, llamado estado *Inactivo* . En realidad se está ejecutando, pero está realizando otras funciones y no está listo para aceptar entradas o eventos del usuario.

- Una aplicación en estado *activo* se ejecuta en primer plano y recibe eventos. Este es el modo normal para aplicaciones en primer plano: aplicaciones que no tienen que ejecutarse en segundo plano sin una interfaz de usuario.

- Cuando una aplicación está en estado de *fondo* , su interfaz de usuario no es visible, pero se *está* ejecutando. La mayoría de las aplicaciones pasan por este estado en camino a ser suspendidas.

  Una aplicación puede necesitar (y solicitar) tiempo de ejecución adicional y puede permanecer en este estado por un tiempo. Además, ciertas aplicaciones se ejecutan en segundo plano. Dicha aplicación ingresa directamente al estado de Fondo y no pasa al estado Inactivo.

- El sistema iOS puede mover una aplicación a un estado *Suspendido* . Aquí la aplicación está en segundo plano pero *no* ejecuta código. Sin embargo, se queda en la memoria. Si ocurre una condición de poca memoria, el sistema puede purgar aplicaciones en estado suspendido sin previo aviso. Tenga en cuenta que, según los estándares de Apple, *solo* el sistema iOS puede matar una aplicación.

  A medida que su aplicación pasa por los estados de su ciclo de vida, iOS llama a ciertos métodos estándar de la aplicación, conocidos como métodos de *ciclo de vida* . A medida que pasa por estos estados, puede agregar un comportamiento específico de la aplicación en cada transición dentro del ciclo de vida de la aplicación.

  Las implicaciones de confiabilidad de este ciclo de vida son que cada vez que la aplicación pasa de estar activa en primer plano a estar en segundo plano, a ser suspendida y luego terminada, tiene que

- Renunciar a todos los recursos que contiene (como conexiones de red y punteros de archivos).
- Guarde cualquier estado que desee conservar cuando se restaure al servicio activo o se inicie nuevamente (este proceso también se conoce como *verificación de puntos* ).

Pero renunciar a los recursos y guardar el estado a medida que la aplicación sale es solo la mitad de la historia. A medida que la aplicación pasa por su secuencia de inicio y ejecuta sus funciones (en términos concretos, carga y sale de cada controlador de vista), debe registrar lo que necesita renunciar y el estado que necesita conservar para que se liberen los recursos y El estado se guarda si la aplicación sale.



#### Arquitectura Modelo Vista Controlador

El MVC o Modelo-Vista-Controlador es un patrón de arquitectura de software que, utilizando 3 componentes (Vistas, Models y Controladores) separa la lógica de la aplicación de la lógica de la vista en una aplicación. 

![img](https://codigofacilito.com/photo_generales_store/29.jpg)

- El **Modelo** que contiene una representación de los datos que maneja el sistema, su lógica de negocio, y sus mecanismos de persistencia.
- La **Vista**, o interfaz de usuario, que compone la información que se envía al cliente y los mecanismos interacción con éste.
- El **Controlador**, que actúa como intermediario entre el Modelo y la Vista, gestionando el flujo de información entre ellos y las transformaciones para adaptar los datos a las necesidades de cada uno.

######  El modelo es el responsable de:

- Acceder a la capa de almacenamiento de datos. Lo ideal es que el modelo sea independiente del sistema de almacenamiento.
- Define las reglas de negocio (la funcionalidad del sistema). Un ejemplo de regla puede ser: "Si la mercancía pedida no está en el almacén, consultar el tiempo de entrega estándar del proveedor".
- Lleva un registro de las vistas y controladores del sistema.
- Si estamos ante un modelo activo, notificará a las vistas los cambios que en los datos pueda producir un agente externo (por ejemplo, un fichero por lotes  que actualiza los datos, un temporizador que desencadena una inserción, etc.).

 

###### El controlador es responsable de:

-  Recibe los eventos de entrada (un clic, un cambio en un campo de texto, etc.).
- Contiene reglas de gestión de eventos, del tipo "SI Evento Z, entonces Acción W". Estas acciones pueden suponer peticiones al modelo o a las vistas. Una de estas peticiones a las vistas puede ser una llamada al método "Actualizar()". Una petición al modelo puede ser "Obtener_tiempo_de_entrega ( nueva_orden_de_venta )". 

 

###### Las vistas son responsables de:

- Recibir datos del modelo y los muestra al usuario.
- Tienen un registro de su controlador asociado (normalmente porque además lo instancia).
- Pueden dar el servicio de "Actualización()", para que sea invocado por el controlador o por el modelo (cuando es un modelo activo que informa de los cambios en los datos producidos por otros agentes).