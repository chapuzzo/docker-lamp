#!/bin/bash
docker-compose exec web curl -LsS https://symfony.com/installer -o /usr/local/bin/symfony
docker-compose exec web chmod a+x /usr/local/bin/symfony
