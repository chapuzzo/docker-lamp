#!/bin/bash

docker-compose exec --user=1000:1000 web php bin/console server:run 0.0.0.0:8000
