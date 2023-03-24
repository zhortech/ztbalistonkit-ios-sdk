# Changelog

## [1.0.46](https://github.com/zhortech/ztbalistonkit-ios-sdk/-/tags/1.0.46) (2023-03-24)

- using `ZTCoreKit` 1.1.74 with new URL for ZC `production` environment

## [1.0.45](https://github.com/zhortech/ztbalistonkit-ios-sdk/-/tags/1.0.45) (2023-03-21)

- check for outside activity and restart activity to have correct anchor time
- use `fwVersion` for activity

## [1.0.44](https://github.com/zhortech/ztbalistonkit-ios-sdk/-/tags/1.0.44) (2023-03-10)

- update activity start time from firmware after DFU was copied

## [1.0.43](https://github.com/zhortech/ztbalistonkit-ios-sdk/-/tags/1.0.43) (2023-03-02)

- moved check for bootloader info into ZTCoreKit

## [1.0.42](https://github.com/zhortech/ztbalistonkit-ios-sdk/-/tags/1.0.42) (2023-02-28)

- check DFU state after reboot

## [1.0.41](https://github.com/zhortech/ztbalistonkit-ios-sdk/-/tags/1.0.41) (2023-02-23)

- backward compatibility for delegate 

## [1.0.40](https://github.com/zhortech/ztbalistonkit-ios-sdk/-/tags/1.0.40) (2023-02-17)

- update ZCloud analytics data when app becomes active. It can be turned on/off using `ZTSettings.shared.enableAnalyticsData`. Latest data can be read from `ZTBaliston.shared.analyticsData`. Data is updated when app becomes active, when device changed connection state and last check was more than 1 hour ago

## [1.0.39](https://github.com/zhortech/ztbalistonkit-ios-sdk/-/tags/1.0.39) (2023-02-15)

- notify ZCloud about background DFU update done

## [1.0.38](https://github.com/zhortech/ztbalistonkit-ios-sdk/-/tags/1.0.38) (2023-02-10)

- using `enableBackgroundDfu` from ZTSettings to enable/disable automatic background DFU

## [1.0.37](https://github.com/zhortech/ztbalistonkit-ios-sdk/-/tags/1.0.37) (2023-02-03)

- using `activityChunkStoreForFreeMemory` from ZTSettings to clear memory

## [1.0.36](https://github.com/zhortech/ztbalistonkit-ios-sdk/-/tags/1.0.36) (2023-02-03)

- added `onChunksDownloadProgress` to notify about missed chunks download progress
- added checking for activity running on both shoes

## [1.0.35](https://github.com/zhortech/ztbalistonkit-ios-sdk/-/tags/1.0.35) (2023-01-26)

- Secure DFU background DFU support
- bootloader DFU state observer `ZTBaliston.shared.onDfuStateUpdated` and current state `ZTBaliston.shared.currentDfuState`
- background DFU state observer `ZTBaliston.shared.onDfuChanged`

## [1.0.34](https://github.com/zhortech/ztbalistonkit-ios-sdk/-/tags/1.0.34) (2023-01-17)

- fixed timestamp calculation
- refactoring for memory free

## [1.0.33](https://github.com/zhortech/ztbalistonkit-ios-sdk/-/tags/1.0.33) (2023-01-12)

- added `age` and `gender` for `ZTUserDataParameters`

## [1.0.32](https://github.com/zhortech/ztbalistonkit-ios-sdk/-/tags/1.0.32) (2023-01-10)

- ZCloud logging for free memory command
- Background DFU using file path

## [1.0.31](https://github.com/zhortech/ztbalistonkit-ios-sdk/-/tags/1.0.31) (2023-01-04)

- always free memory after obtaining all chunks

## [1.0.30](https://github.com/zhortech/ztbalistonkit-ios-sdk/-/tags/1.0.30) (2022-12-30)

- added parsing for "packets number" which fixed timestamp type detection 

## [1.0.29](https://github.com/zhortech/ztbalistonkit-ios-sdk/-/tags/1.0.29) (2022-12-19)

- fix for `getActivity` method to pass parameters 

## [1.0.28](https://github.com/zhortech/ztbalistonkit-ios-sdk/-/tags/1.0.28) (2022-12-16)

- build with new ZTCoreKit version

## [1.0.27](https://github.com/zhortech/ztbalistonkit-ios-sdk/-/tags/1.0.27) (2022-12-06)

- new generic method added to get data from any endpoint by name `getData(path:,name:,parameters:,completion:)`, so when calling method `ZTBaliston.shared.getData(path: "reports", name: "endurance")` it will call `/zc/baliston/reports/endurance` endpoint on ZCloud.

## [1.0.26](https://github.com/zhortech/ztbalistonkit-ios-sdk/-/tags/1.0.26) (2022-12-02)

- support for background DFU
- new method `initiateBackgroundDFU` to start upgrade with background DFU. BL and APP will be updated automatically if they are outdated. SDK will send notification `connectedDevice?.onFirmwareError` with `ZTError.Enums.FirmwareError.restartRequired` so user must turn off/on Bluethooth in Settings or restart iOS device.

## [1.0.25](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.25) (2022-11-15)

- new method to obtaine data related to `mobility` - `public func postMobility(name:, parameters:, completion:)`
- new method to obtaine data related to `activity` - `public func postActivity(name:, parameters:, completion:)`

## [1.0.24](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.24) (2022-09-13)

- removed extra subscriber

## [1.0.23](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/-/tags/1.0.23) (2022-08-19)

- some linting

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
