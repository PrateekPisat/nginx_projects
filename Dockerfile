FROM nginx:1.23-alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d

RUN mkdir /portfolio
COPY ./portfolio/dist /portfolio
RUN chmod -R 755 /portfolio

EXPOSE 80