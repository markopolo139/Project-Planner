#!/bin/bash

cd backend || exit
./gradlew build --no-daemon || exit

cd ../frontend || exit
npm install || exit
npm run build || exit
serve -d build -p 3000 & (cd ../backend && ./gradlew bootRun)
cd ..

