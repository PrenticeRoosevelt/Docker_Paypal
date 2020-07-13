FROM node

WORKDIR /usr/src/app/
RUN git clone https://github.com/PrenticeRoosevelt/paypal-payment
RUN cp /usr/src/app/paypal-payment/src/config/*.js /usr/src/app/paypal-payment/src/config/AcessServices.js
WORKDIR /usr/src/app/paypal-payment/src/config/
RUN sed -i 's/CLIENT_ID/AVr-bStSamBDsKW5GkgSaNpOtXRv6ZaUxsxhL8NgdqyiiTqe1Gi8JQhS6aS9RVRn2fQR6p38izq2NvxR/g' AcessServices.js
RUN sed -i 's/SECRET/EPwQJx1Z9lnbs1fR5FYt3nC7z98-H77TjKl_ZRRUrdSf8H3L9uNGR3a17fyTixQ4olG71pBxgUN37mca/g' AcessServices.js
WORKDIR /usr/src/app/paypal-payment
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]
