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
