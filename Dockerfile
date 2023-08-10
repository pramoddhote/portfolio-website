FROM nginx:alpine
WORKDIR "/App"
ADD https://github.com/Pramoddhote/portfolio-pramod.git  /usr/share/nginx/html
