 Instrucciones para ejecutar pruebas con Karate en el Proyecto de PetStore API

Descripción
Este proyecto utiliza el framework Karate para automatizar pruebas sobre la API PetStore (https://petstore.swagger.io/).
Las pruebas están escritas en archivos .feature y pueden ejecutarse directamente desde IntelliJ IDEA o mediante Maven.

Requisitos
Java Development Kit (JDK): Versión 1.8.
Maven: Versión 3.9.1
IntelliJ IDEA: Versión 2025.1

Configuración del Entorno
Instalar JDK:

Descarga e instala JDK.
Asegúrate de configurar la variable de entorno JAVA_HOME apuntando al directorio de instalación de JDK.

Descarga e instala Maven desde Apache Maven.
Configura la variable de entorno MAVEN_HOME apuntando al directorio de instalación de Maven.
Agrega el binario de Maven a la variable de entorno PATH.

Configurar el Proyecto en IntelliJ IDEA:
Abre IntelliJ IDEA.
Importa el proyecto como un proyecto Maven
Asegúrate de que todas las dependencias se resuelvan correctamente.


Configuración del Proyecto Karate
Agregar Dependencias: Asegúrate de que tu archivo pom.xml  incluya las dependencias necesarias para Karate
<dependencies>
    <dependency>
        <groupId>com.intuit.karate</groupId>
        <artifactId>karate-junit5</artifactId>
        <version>1.2.0</version>
        <scope>test</scope>
    </dependency>
</dependencies>


Ejecutar Pruebas:

mvn test
o por test:mvn clean test -Dtest=AddPetRunner
mvn clean test -Dtest=GetPetRunner
mvn clean test -Dtest=GetPetByStatusRunner
mvn clean test -Dtest=UpdatePetRunner
mvn clean test -Dtest=DeletePetRunner

Ejecutar Pruebas de Karate:

Navega al archivo .feature en IntelliJ IDEA.
Haz clic derecho sobre el archivo y selecciona "Run 'PetStoreTests.feature'".
Ver Resultados:

Los resultados de las pruebas se mostrarán en la pestaña de "Run" de IntelliJ IDEA.
Notas
Asegúrate de que tu conexión a Internet esté activa para poder acceder a la API de PetStore durante las pruebas.
Ajusta las versiones de las dependencias en el archivo de configuración según sea necesario.


