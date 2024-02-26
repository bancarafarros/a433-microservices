# Mengambil base image Node.js versi 14
FROM node:14-alpine

# Menentukan working directory untuk container di /app.
WORKDIR /app

# Menyalin seluruh source code ke working directory di container
COPY . .

# Menentukan agar aplikasi berjalan dalam production mode dan menggunakan container bernama item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Menggunakan port 8080
EXPOSE 8080

# Menjalankan server dengan perintah npm start ketika container diluncurkan
CMD ["npm", "start"]