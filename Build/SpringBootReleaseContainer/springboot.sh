#!/bin/sh
echo java -cp app:app/lib/* $appclassname
java -cp /app:/app/lib/* $appclassname