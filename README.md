[![CI](https://github.com/redDwarf03/uniris_lib_dart/actions/workflows/ci.yaml/badge.svg)](https://github.com/redDwarf03/uniris_lib_dart/actions/workflows/ci.yaml) [![Pub](https://img.shields.io/pub/v/uniris_lib_dart.svg)](https://pub.dartlang.org/packages/uniris_lib_dart)

# uniris_lib_dart

Uniris dart library for Flutter based on [Official Uniris Javascript library for Node and Browser](https://github.com/UNIRIS/uniris-libjs)

## Usage

This library aims to provide a easy way to create Uniris transaction and to send them over the network.

It supports the Uniris Cryptography rules which are:

- Algorithm identification: the first byte of key and hashes identify the curve or the digest algorithm used to help determine which algorithm during
  verification.
  
  ```

      Ed25519    Public key
        |           /
        |          /
      <<0, 106, 58, 193, 73, 144, 121, 104, 101, 53, 140, 125, 240, 52, 222, 35, 181,
      13, 81, 241, 114, 227, 205, 51, 167, 139, 100, 176, 111, 68, 234, 206, 72>>

       NIST P-256   Public key
        |          /
        |         /
      <<1, 4, 7, 161, 46, 148, 183, 43, 175, 150, 13, 39, 6, 158, 100, 2, 46, 167,
       101, 222, 82, 108, 56, 71, 28, 192, 188, 104, 154, 182, 87, 11, 218, 58, 107,
      222, 154, 48, 222, 193, 176, 88, 174, 1, 6, 154, 72, 28, 217, 222, 147, 106,
      73, 150, 128, 209, 93, 99, 115, 17, 39, 96, 47, 203, 104, 34>>
  ```
  
- Key derivation:
  
    To be able to retrieve previous public key, the Uniris network designs the key derivation through a seed (passphrase) and an index(number of
     previous public keys/transactions).
    The procedure is described as follows:
    
    ```
    The seed generates a master key and an entropy used in the child keys generation.

                                                               / (256 bytes) Next private key
                          (256 bytes) Master key  --> HMAC-512
                        /                              Key: Master entropy,
      seed --> HMAC-512                                Data: Master key + index)
                        \
                         (256 bytes) Master entropy

    ```  
## API

  ### Cryptographic functions

  #### deriveKeyPair(seed, index, curve)
  It creates a new keypair into hexadecimal format

  - `seed` is hexadecimal encoding representing the transaction chain seed to be able to derive and generate the keys
  - `index` is the number of transactions in the chain, to generate the actual and the next public key (see below the cryptography section)
  - `curve` (optional, "ed25519" by default) is the elliptic curve to use for the key generation (can be "ed25519", "P256", "secp256k1")

  ```dart
  import 'package:uniris_lib_dart/crypto.dart' as crypto;
  import 'package:uniris_lib_dart/key_pair.dart';
  import 'package:uniris_lib_dart/utils.dart';

  KeyPair keypair = crypto.deriveKeyPair("mysuperpassphraseorseed", 0);
  // uint8ListToHex(keypair.publicKey) => 00a6e144cdd34c608f88cc5a92d0962e7cfe9843b0bb62fefbdb60eb41814b7c92
  ```


  #### ecEncrypt(data, publicKey)
  Perform an ECIES encryption using a public key and a data
  
  - `data` Data to encrypt
  - `publicKey` Public key to derive a shared secret and for whom the content must be encrypted
  
  ```dart
  import 'package:uniris_lib_dart/crypto.dart' as crypto;
  import 'package:uniris_lib_dart/key_pair.dart';
  import 'package:uniris_lib_dart/utils.dart';

  Uint8List cipher = crypto.ecEncrypt("dataToEncrypt" "00b1d3750edb9381c96b1a975a55b5b4e4fb37bfab104c10b0b6c9a00433ec4646");
  ```

  #### aesEncrypt(data, publicKey)
  *Don't available for the moment... soon...*
  
  ### TransactionBuilding
  
  `new TransactionBuilder(type)` creates a new instance of the transaction builder
  
  `type` is the string defining the type of transaction to generate ("keychain", "identity", "transfer", "hosting", "code_proposal", "code_approval", "nft")
  
  The transaction builder instance contains the following methods:
  
  #### setCode(code)
  Add the code in the `data.code` section of the transaction
  `code` is a string defining the smart contract
  
  #### setContent(content)
  Add the content in the `data.content` section of the transaction
  `content` is a string defining the smart contract
  
  #### setSecret(secret)
  Add the secret in the `data.keys.secret` section of the transaction
  `secret` is the hexadecimal encoding or Uint8List representing the encrypted secret
  
  #### addAuthorizedKey(publicKey, encryptedSecretKey)
  Add an authorized public key to decrypt the secret to the `data.keys.authorizedKeys` section of the transaction
  - `publicKey` is the hexadecimal encoding or Uint8List representing the public key
  - `encryptedSecretKey` is the hexadecimal encoding or Uint8List representing the secret key encrypted with the public key (see `ecEncrypt`)
  
  #### addUCOTransfer(to, amount)
  Add a UCO transfer to the `data.ledger.uco.transfers` section of the transaction
  - `to` is hexadecimal encoding or Uint8List representing the transaction address (recipient) to receive the funds
  - `amount` is the number of uco to send (double)

  #### addNFTTransfer(to, amount, nft_address)
  Add a NFT transfer to the `data.ledger.nft.transfers` section of the transaction
  - `to` is hexadecimal encoding or Uint8List representing the transaction address (recipient) to receive the funds
  - `amount` is the number of uco to send (double)
  - `nft_address` is hexadecimal encoding or Uint8List representing the NFT address to spend

  #### addRecipient(to)
  Add a recipient (for non UCO transfers, ie. smart contract interaction) to the `data.recipient` section of the transaction
  - `to` is hexadecimal encoding or Uint8List representing the transaction address (recipient)
  
  #### build(seed, index, curve, hashAlgo)
  Generate `address`, `timestamp`, `previousPublicKey`, `previousSignature`, `originSignature` of the transaction and 
  serialize it using a custom binary protocol.
  
  - `seed` is hexadecimal encoding or Uint8List representing the transaction chain seed to be able to derive and generate the keys
  - `index` is the number of transactions in the chain, to generate the actual and the next public key (see below the cryptography section)
  - `curve` is the elliptic curve to use for the key generation (can be "ed25519", "P256", "secp256k1")
  - `hashAlgo` is the hash algorithm to use to generate the address (can be "sha256", "sha512", "sha3-256", "sha3-512", "blake2b")
  
  ```dart
  import 'package:uniris_lib_dart/transaction_builder.dart';

  var tx = new TransactionBuilder("transfer")
    .addUCOTransfer("00b1d3750edb9381c96b1a975a55b5b4e4fb37bfab104c10b0b6c9a00433ec4646", 0.420) 
    .build("mysuperpassphraseorseed", 0) 
  ```

  #### originSign(privateKey)
  Sign the transaction with an origin device private key

   - `privateKey` is hexadecimal encoding or Uint8List representing the private key to generate the origin signature to able to perform the ProofOfWork and authorize the transaction

  ```dart
  import 'package:uniris_lib_dart/transaction_builder.dart';

  var tx = new TransactionBuilder("transfer")
    .addUCOTransfer("00b1d3750edb9381c96b1a975a55b5b4e4fb37bfab104c10b0b6c9a00433ec4646", 0.420) 
    .build("mysuperpassphraseorseed", 0) 
    .originSign(originPrivateKey)

  ```

  #### toJSON()
  Export the transaction generated into JSON

   ```dart
  import 'package:uniris_lib_dart/transaction_builder.dart';

  var tx = new TransactionBuilder("transfer")
    .addUCOTransfer("00b1d3750edb9381c96b1a975a55b5b4e4fb37bfab104c10b0b6c9a00433ec4646", 0.420) 
    .build("mysuperpassphraseorseed", 0) 
    .toJSON()
  ```
  
  ### Remote Endpoint calls
  #### sendTransaction(tx, endpoint)
  Dispatch the transaction to a node by serializing a GraphQL request

  *Don't available for the moment... soon...*

  #### getTransactionIndex(address, endpoint)
  Query a node to find the length of the chain to retrieve the transaction index

  *Don't available for the moment... soon...*

  #### getStorageNoncePublicKey(endpoint)
  Query a node to find the public key of the shared storage node key

  *Don't available for the moment... soon...*

  ### Coingecko functions
  #### getCoinsResponse()
  Get all Uniris Coin infos with http request https://api.coingecko.com/api/v3/coins/uniris

  #### getCoinsChart(currency, nbDays)
  Get Uniris Coin infos (Prices, Marketcaps, Total Volumes) for a period with http request https://api.coingecko.com/api/v3/coins/uniris/market_chart?vs_currency=currency&days=nbDays

  #### getSimplePrice(currency)
  Get Uniris Coin infos (BTC Price, Local Currency Price) with https://api.coingecko.com/api/v3/simple/price?ids=uniris&vs_currencies=currency


## Running the tests

```bash
flutter test
```

