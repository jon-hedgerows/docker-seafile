# docker-seafile

docker config for Seafile

## env.sample

- adapt and include this as the environment config in Komodo

## predeploy.sh

- set the predeploy script to the following:
  `bash predeploy.sh "[[seafile-google-client-id]]" "[[seafile-google-client-secret]]"`

- this passes a couple of secrets to the predeploy script which sets up oauth2

## seahub_settings.py

- adjust this to configure oauth2

## links for the Links section

- https://seafile.hedgerows.org.uk/
- https://manual.seafile.com/latest/config/
