FROM nginx:mainline-alpine
RUN rm /etc/nginx/conf.d/*
ADD hello.conf /etc/nginx/conf.d/
ADD index.html /usr/share/nginx/html/
# Expose port 8080
EXPOSE 8080
# Start Nginx
CMD ["nginx", "-g", "daemon off;"]