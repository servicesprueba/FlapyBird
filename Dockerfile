FROM dorowu/ubuntu-desktop-lxde-vnc

# Instala Java
RUN apt-get update && \
    apt-get install -y openjdk-8-jdk && \
    apt-get clean

# Crea directorio y copia el juego
WORKDIR /opt/flappybird
COPY . /opt/flappybird

# Compila la app
RUN javac FlappyBird.java

# Ejecuta el juego gráfico
CMD ["java", "FlappyBird"]
