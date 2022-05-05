![Laravel + Docker](https://miro.medium.com/max/1400/1*lThfRGpuoHA0rcB6SQfrsQ@2x.png)

#TODO 
- [ ] Certs for PROD not working

# How to run
1. docker-compose build composer
2. docker-compose run --rm --user laravel composer create-project laravel/laravel .
3. docker-compose run --rm npm install
4. docker-compose run --rm artisan migrate:fresh
5. Define your .env Laravel file with your settings
6. docker-compose run nginx

# Build for production
1. docker-compose -f docker-compose.yml -f docker-compose.prod.yml up --build nginx
2. docker-compose run --rm npm run production
3. Check OPCACHE => docker-compose run --rm php -i | grep opcache

# How to run tests in app with PHPUnit
1. docker-compose run --rm artisan test
 
In testing add: 
```
        <env name="DB_CONNECTION" value="sqlite"/>
        <env name="DB_DATABASE" value=":memory:"/>
```
To your phpunit.xml file so you don't pollute your local DB
