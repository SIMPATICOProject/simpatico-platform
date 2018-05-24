#!/bin/bash

cp /app-run/config/index.js /app/server/config/environment
cp /app-run/config/production.js /app/server/config/environment
cp /app-run/config/shared.js /app/server/config/environment
cp /app-run/config/local.env.js /app/server/config
grunt serve
