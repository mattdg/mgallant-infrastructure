docker run \
-d \
--name plex \
-p 32400:32400/tcp \
-p 3005:3005/tcp \
-p 8324:8324/tcp \
-p 32469:32469/tcp \
-p 1900:1900/udp \
-p 32410:32410/udp \
-p 32412:32412/udp \
-p 32413:32413/udp \
-p 32414:32414/udp \
-e TZ="America/Toronto" \
-e PLEX_CLAIM="claim-39aQ7sHgF7RQndTE4gXs" \
-e ADVERTISE_IP="http://192.168.1.22:32400/" \
-h PlexVids \
-v /mnt/c/Plex/config:/config \
-v /mnt/c/Plex/transcode:/transcode \
-v /mnt/x/Vids:/data/Vids \
plexinc/pms-docker