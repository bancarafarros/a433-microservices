# Menggunakan image node versi 16
FROM node:16-alpine
# Membuat direktori app
WORKDIR /app
# Copy semua file yang berawalan package dan berakhiran .json ke direktori /app
COPY package*.json ./
# Instalasi dependencies yang diperlukan dengan npm
RUN npm install
# Copy semua file ke direktori /app
COPY . .
# Mendefinisikan port yang akan diexpose oleh container
EXPOSE 3001
# Menjalankan aplikasi
CMD ["node", "index.js"]
