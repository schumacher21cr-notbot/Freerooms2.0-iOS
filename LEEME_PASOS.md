# Etapa 1: prueba de instalación

Esta app solo muestra "Hola, FreeRooms", la versión de iOS de tu iPhone y un botón.
Sirve para comprobar que toda la cadena funciona:
GitHub construye la app -> la descargas -> la instalas en tu iPhone.

## Paso 1. Subir los archivos a GitHub
1. Descomprime este zip en tu ordenador.
2. Abre tu repositorio `freerooms-ios` en github.com.
3. Pulsa "uploading an existing file" (o Add file > Upload files).
4. Arrastra DENTRO de esa ventana el CONTENIDO de la carpeta descomprimida:
   la carpeta `FreeRooms`, la carpeta `.github` y el archivo `project.yml`
   (no arrastres el zip, ni este LEEME).
5. Abajo pulsa "Commit changes".

Si la carpeta `.github` no se sube (a veces pasa con carpetas que empiezan por punto):
- Add file > Create new file
- En el nombre escribe exactamente: .github/workflows/build.yml
  (al escribir las barras / se crean las carpetas solas)
- Abre `.github/workflows/build.yml` de este zip con el Bloc de notas, copia todo y pégalo.
- Commit changes.

## Paso 2. Ver cómo se construye
1. En el repositorio pulsa la pestaña "Actions".
2. Verás una ejecución llamada "Construir app iOS":
   - círculo amarillo = trabajando (tarda unos 5 a 10 minutos)
   - check verde = listo
   - cruz roja = falló
3. Si se queda mucho rato sin empezar o dice que no encuentra un "runner", dímelo.

## Paso 3. Si sale verde: descargar la app
1. Entra en la ejecución y baja hasta la sección "Artifacts".
2. Descarga `FreeRooms-ipa` (es un zip). Descomprímelo: dentro está `FreeRooms.ipa`.

## Paso 4. Instalarla en el iPhone con Sideloadly
1. Conecta el iPhone al ordenador con el cable y pulsa "Confiar" en el iPhone.
2. Abre Sideloadly, arrastra `FreeRooms.ipa` y escribe tu Apple ID.
3. Pulsa Start.
4. En el iPhone: Ajustes > General > VPN y gestión de dispositivos > tu Apple ID > Confiar.
5. Si te lo pide: Ajustes > Privacidad y seguridad > Modo desarrollador > activar (reinicia el iPhone).
6. Abre la app FreeRooms.

## Si sale roja o Sideloadly da error
Cópiame:
- GitHub: entra en la ejecución roja, pulsa "build" a la izquierda, abre el paso con la X roja
  y copia las últimas 40 líneas. O descarga el artifact `registro-de-compilacion`.
- Sideloadly: copia el texto del error o haz una captura.
