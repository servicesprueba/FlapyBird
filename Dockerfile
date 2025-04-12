FROM dorowu/ubuntu-desktop-lxde-vnc

# 🛠️ Arreglar el error del repo de Chrome
RUN rm /etc/apt/sources.list.d/google-chrome.list || true

# Instala Java
RUN apt-get update && \
    apt-get install -y openjdk-8-jdk && \
    apt-get clean

# Crear directorio y copiar código
WORKDIR /opt/flappybird
COPY . /opt/flappybird

# Compilar
RUN javac FlappyBird.java

# Ejecutar el juego
CMD ["java", "FlappyBird"]
