# Changelog

## [1.0.2](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.2) (2022-02-07)

- updated method `stopMobilityScan` to have 'cancel mobility scan' functionality using parameter  `silently`, if set to `true` - no data is sending to ZCloud

## [1.0.1](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.1) (2022-02-03)

- new methods added: `sendDirectMessage`, `getDirectMessages`, `deleteDirectMessage`, `sendCannedMessage`, `getCannedMessages`, `getTileMessage`, `getMobilityMessage` from ZTCoreKit 
- new method added `getMyShoeData(code:completion:)` to receive data for shoes by code
- new method added `getMyShoesData(completion:)` to receive data for all user's shoes

## [1.0.0](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.0) (2021-11-29)

- Mobility scan: `startMobilityScan(timeout:completion:)`, `stopMobilityScan(timeout:completion:)`
- Always start automatic activity if it is not running  
