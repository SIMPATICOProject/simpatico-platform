# simpatico-platform
The SIMPATICO platform configuration, installation, and documentation repository.


## AAC

### Configurations

Edit properties in 
* aac/aac.env
* aac/mysql.env

## Gamification Engine

### Configurations

Edit users in `gamification/run-configs/users.yml`


## UPM

### Configurations

Edit properties in `upm/upm-db.env`

## Adaptation Engines

### Configurations

Edit properties in `sae/app.env`

## ESM

:warning: Actually you have to clone eSM repository at the same level of simpatico-platform to work :warning:

### Configurations

Edit properties in `esm/configs/properties.json`

## Citizenpedia

:warning: Actually you have to clone citizenpedia repository at the same level of simpatico-platform to work :warning:

### Configurations

#### Gateway
Edit properties in `citizenpedia/web` folder

#### Server
Edit qae section of `docker-compose.yml`
```
  environment:
      - AAC_ID=
      - AAC_SECRET=
      - AAC_ROOT_URL=
      - AAC_TOKEN_URL=
      - AAC_URL=
      - AAC_CALLBACK_URL=
```
