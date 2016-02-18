# README

## Configuration

Add file config/local_env.yml and add there these variables:

###action mailer smtp setup
* SMTP_ADDRESS: smtp.gmail.com
* SMTP_PORT: "587"
* SMTP_DOMAIN: gmail.com
* SMTP_USER_NAME: login@gmail.com
* SMTP_PASSWORD: password

###PSQL Database
* PSQL_USER_NAME: username
* PSQL_PASSWORD: password

###Application uses databases:
* portfolio_app_dev
* portfolio_app_test
* portfolio_app_prod

## Contact form
* letters are sent from 'contact-app'
* letters are sent to the user email

#In Production (Digital cloud)
add these variables to the file ~/.profile or ~/.bashrc

## Rails secret key
export SECRET_KEY_BASE=your secret key value (rub rake secret in app directory on prod server)

## Rails setup
### action mailer smtp setup
export SMTP_ADDRESS=smtp.gmail.com
export SMTP_PORT=587
export SMTP_DOMAIN=gmail.com
export SMTP_USER_NAME=email@gmail.com
export SMTP_PASSWORD=password

> may be you will need to check google mail parameters as your letters could not be delivered due to a strange place
