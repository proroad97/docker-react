From node:14-alpine as builder 
workdir '/app'
copy package.json .
run npm install
copy . .
run npm run builder

from nginx
copy --from=builder /app/build /usr/share/nginx