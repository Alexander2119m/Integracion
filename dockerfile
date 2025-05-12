FROM node:20

# Create non-root user (OpenShift no permite ejecutar como root)
RUN useradd -m nodeuser

WORKDIR /app

# Copia e instala dependencias
COPY package*.json ./
RUN npm install

# Copia el resto del código
COPY . .

# Cambiar propietario de archivos a usuario no root
RUN chown -R nodeuser:nodeuser /app

# Usa el usuario no root
USER nodeuser

# Expón el puerto
EXPOSE 8080

# Comando de arranque
CMD ["node", "server.js"]
