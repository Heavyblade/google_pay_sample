## Simple google pay server implentation

The goal of this repo is to have a google pay button that actually works and can
provide you with a google pay token that you can use with spreedly, something like:

```bash
curl -i -X POST \
   -H "Authorization:Basic xxxxxxxxxx" \
   -H "Accept:application/json" \
   -H "Content-Type:application/json" \
   -d \
'{
    "transaction": {
        "google_pay": {
            "payment_data": {"signature":"MEYCIQCZ2e3fhhxfPleVRrzzztka7DLbYZg+GIJqa9a3p4l3OgIhAJVgteuLC/MeOlKp0JeYTeecRCw/kwEoFa9UNi4QtSsF","protocolVersion":"ECv1","signedMessage":"{\"encryptedMessage\":\"7nNw4fR3lhBFP+ip+MEg4JRYH9qthCgBVxn/uk+ajq2Grd8zQUScThnvFpXoA+UTrrOkmXlzeVksnblmEEYQwLU/S6wowDOJKyjyG228nKyoNyDryI6929WoY9gmRiubx7/0SeMZ5sUQSqt95mkXcR4NwyhbVlRz3uzyNaaaxQfcLoOMlFxD7bval9LLE0fi/7YGcPp/GwtJzfW+bo6bKQbA0MkA3ZHvOR4Bs9asUtj+h1gYFj2Tayzg68JoiWdW2meevT176lVmhJfFnccytfUaSYLwZlvJIU7ZfRQjB5hJhxtKH5hpdk33UrhUJC7qMrFDMhHcrBpKjqzjNAF4DepeORBX3agHeRCvv5jJCrDCslLBS445oiXtBNIgeNq1kF/+qjp2BNcpiy+fddDILmDYITzaL/NlgzuYI8ohcBCmHQ8aMlCAtMYmXiVogs0dVTlUZQplX81mjAVHPfSfHRzTjxc93Q\\u003d\\u003d\",\"ephemeralPublicKey\":\"BEOYiu919e4wjeRT2hfKUP54ornHogBFIDxi0wpfFgmXNZXxqIZ7cw1e1rgrIc40cuqbZ8kWJVds61jhMM74mFg\\u003d\",\"tag\":\"rFud+MbH4fFqeCvW0mAG1odNt/rW/NA6FbeZybfE/c0\\u003d\"}"}
        },
      	"amount": 200,
        "currency_code": "USD",
        "order_id": "16cbf878-3dbd-11ec-9bbca7" 
    }
}' \
 'http://spreedly/v1/gateways/<your_gateway_token>/authorize.json'
```


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
