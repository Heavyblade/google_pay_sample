## Simple google pay server implentation

The goal of this repo is to have a google pay button that actually works and can
provide you with a google pay token.

this app was developed following the google guide:
[google pay tutorial](https://developers.google.com/pay/api/web/guides/tutorial)

## Set you merchantId

To properly make the example work on the application.js file update your merchantId with the key value
of one of your local core environments.

## Enable your personal account.

To use te entire set of test credit cards you need to join to the developers group
[test card suite](https://developers.google.com/pay/api/android/guides/resources/test-card-suite)


## Running the server

To run the sample app you just need to start the sinatra app

```bash
bundle exec ruby server.rb
```
