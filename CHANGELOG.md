# Changelog

## [1.0.22](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.22) (2022-07-15)

- add support for DFU from local image

## [1.0.21](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.21) (2022-07-10)

- add support for DFU from local image
- add read access to current activity instance

## [1.0.20](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.20) (2022-06-20)

- add support to set user data without stopping activity

## [1.0.19](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.19) (2022-06-07)

- skip chunks with 0 packetType

## [1.0.18](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.18) (2022-06-02)

- refactored monitored activity

## [1.0.17](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.17) (2022-05-23)

- fix for monitored activity

## [1.0.16](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.16) (2022-05-19)

- added logging into log file

## [1.0.15](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.15) (2022-05-04)

- clear data when mobility scan is started

## [1.0.14](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.14) (2022-04-14)

- command acknowledge for reset command in mobility scan flow

## [1.0.13](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.13) (2022-04-14)

- observers updated for latest firmware

## [1.0.12](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.12) (2022-04-13)

- DFU support for Baliston firmware 

## [1.0.11](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.11) (2022-04-08)

- MSG_TIME value type changed 

## [1.0.10](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.10) (2022-04-07)

- check for mobility scan data and return ZTError `.invalidMobilityScanResults` if it doesn't have enough data 

## [1.0.9](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.9) (2022-04-06)

- timeout added for mobility scan error if not started

## [1.0.7](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.7) (2022-03-30)

- checking missed chunks on reconnect

## [1.0.6](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.6) (2022-03-29)

- removed activity meta data from chunks analysis
- added more logging for `Mobility Scan`

## [1.0.5](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.5) (2022-03-28)
- using Activity Metadata for activity

## [1.0.4](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.4) (2022-03-25)
- fixed timestamps for activity chunks

## [1.0.3](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.3) (2022-03-15)
- refactored mobility scan start and stop

## [1.0.2](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.2) (2022-02-07)

- updated method `stopMobilityScan` to have 'cancel mobility scan' functionality using parameter  `silently`, if set to `true` - no data is sending to ZCloud

## [1.0.1](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.1) (2022-02-03)

- new methods added: `sendDirectMessage`, `getDirectMessages`, `deleteDirectMessage`, `sendCannedMessage`, `getCannedMessages`, `getTileMessage`, `getMobilityMessage` from ZTCoreKit 
- new method added `getMyShoeData(code:completion:)` to receive data for shoes by code
- new method added `getMyShoesData(completion:)` to receive data for all user's shoes

## [1.0.0](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.0) (2021-11-29)

- Mobility scan: `startMobilityScan(timeout:completion:)`, `stopMobilityScan(timeout:completion:)`
- Always start automatic activity if it is not running  
