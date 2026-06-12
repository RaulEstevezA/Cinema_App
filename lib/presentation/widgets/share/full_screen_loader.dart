import 'package:flutter/material.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  Stream<String> getLoadingMessages(){

    final messages = <String>[
      'Comprando palomitas...',
      'Buscando la mejor butaca...',
      'Apagando los móviles de la sala...',
      'Preparando los créditos...',
      'Esperando a que empiece la función...',
      'Afinando el proyector...',
      'Buscando spoilers para evitarlos...',
      'Contando cuántas veces explota un coche...',
      'Comprobando que el villano sigue vivo...',
      'Llamando a mi pareja...',
      'Preguntando: "¿Qué quieres ver?"...',
      'Discutiendo durante 20 minutos para elegir película...',
      'Todavía seguimos eligiendo...',
      'Cargando populares...',
      'Uff... me está costando...',
      'Esto está tardando más de lo esperado...',
      'No me quieren facilitar la información...',
      'Sobornando al algoritmo...',
      'Negociando con Hollywood...',
      'Persiguiendo a un actor que se ha escapado...',
      'Buscando a Batman (otra vez)...',
      'Despertando al proyeccionista...',
      'Alimentando al hámster que mueve el servidor...',
      'Reiniciando Internet...',
      'Descifrando jeroglíficos...',
      'Consultando la bola de cristal...',
      'Preguntándole a ChatGPT dónde están las películas...',
      'Esperando a que termine el anuncio de 5 minutos...',
      'Saltándonos la intro...',
      'Eligiendo la mejor banda sonora...',
      'Buscando una escena postcréditos...',
      'Convenciendo al servidor para que colabore...',
      'Calentando los servidores...',
      'Sacando el polvo a los DVDs...',
      'Prometemos que ya casi está...',
      'Vale... ahora sí que sí...',
      'Un poquito más de paciencia...',
      'Casi lo tenemos...',

      // Humor
      'Vamos a pasar al plan B...',
      'El becario está escribiendo las películas a mano...',
      'Por favor, no cierres la app. El servidor es tímido...',
      'Sujetando Internet con cinta adhesiva...',
      'Convenciendo a un gato para que pulse "Aceptar"...',
      'Girando el router para que vaya más rápido...',
      'Esperando a que Mercurio deje de estar retrógrado...',
      'Descargando más RAM...',
      'Pulsando cualquier tecla para continuar...',
      'Desenredando los cables de Internet...',
      'El servidor ha dicho "cinco minutos más"...',
      'El café del programador aún no ha hecho efecto...',
      'Prometemos que no estamos viendo una peli nosotros...',
      'Intentando entender la documentación...',
      'Dando una charla motivacional al servidor...',
      'Poniendo música épica mientras carga...',
    ];


    return Stream.periodic(const Duration(milliseconds: 1500), (step) {
      return messages[step];
    }).take(messages.length);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Espere por favor'),
          const SizedBox(height: 10),
          const CircularProgressIndicator(strokeWidth: 2),
          const SizedBox(height: 10),

          StreamBuilder(
            stream: getLoadingMessages(), 
            builder: (context, snapshot) {
              if ( !snapshot.hasData) return const Text('Cargando películas...');

              return Text(snapshot.data!);
            }
          )
        ],
      ),
    );
  }
}