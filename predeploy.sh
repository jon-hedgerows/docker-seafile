# update SEAHUBSETTINGS to point to the seahub_settings file - this must match the environment above
SEAHUBSETTINGS=/srv/volumes/seafile/seafile-data/seafile/conf/seahub_settings.py
CLIENTID="$1"
CLIENTSECRET="$2"

# make the path if required
test -d $(dirname $SEAHUBSETTINGS) || mkdir -p $(dirname $SEAHUBSETTINGS)

# if there's no settings file yet, then pre-seed with OAUTH settings
if ! test -f $SEAHUBSETTINGS; then
    cat seahub_settings.py \
    | sed 's/[[seafile-google-client-id]]/$CLIENTID/g' \
    | sed 's/[[seafile-google-client-secret]/$CLIENTSECRET/g' > $SEAHUBSETTINGS
