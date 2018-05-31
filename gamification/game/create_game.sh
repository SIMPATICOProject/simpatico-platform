#!/bin/bash

echo "importing...."
mongoimport --host mongodb --db gamification -c game --file /app-run/simpatico-game.json
echo "imported game"
mongoimport --host mongodb --db gamification -c rule --file /app-run/simpatico-game-rules.json
echo "imported rules"
