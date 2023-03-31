# Utiliza la imagen oficial de nginx (servidor web) en su versión alpine (más ligera)
FROM nginx:alpine

# Crea un archivo index.html con el contenido "Hola Mundo"
RUN echo "<h1>Hola Mundo</h1>" > /usr/share/nginx/html/index.html

#Crea un directorio html-2
RUN mkdir /usr/share/nginx/html-2

#EXPONE el puerto 8181
#EXPOSE 8181

#Configurar el puerto en la configuracion de nginx
#RUN sed -i 's/listen 80;/listen 81;/g' /etc/nginx

# Inicia el servidor nginx
CMD ["nginx", "-g", "daemon off;"]
