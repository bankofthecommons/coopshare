#!/bin/bash
#curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{"blockchain": "faircoin", "account-id": "mtJbXVjX1CSJnoMZb6PkzunABMgMCT4mrP"}' 'http://freecoin.seedbloom.it:2000/wallet/v1/balance'
#curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{"blockchain": "faircoin", "account-id": "mtJbXVjX1CSJnoMZb6PkzunABMgMCT4mrP"}' 'http://freecoin.seedbloom.it:2000/wallet/v1/transactions/list'
curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{"blockchain": "faircoin", "address": "mtJbXVjX1CSJnoMZb6PkzunABMgMCT4mrP"}' 'http://freecoin.seedbloom.it:2000/wallet/v1/deposits/check'
#curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{"blockchain": "faircoin", "txid": "817e9719bc58496f8220f24a9ccffb8f8823aaeea4dbc49087ee14b1ca49610c"}' 'http://freecoin.seedbloom.it:2000/wallet/v1/transactions/get'
