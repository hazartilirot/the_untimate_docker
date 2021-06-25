#!/bin/sh

echo "Waiting for MongoDB to start..."
./wait-for mongo:27017 

echo "Migrating the database..."
npm run mongo:up 

echo "Starting the server..."
npm start 