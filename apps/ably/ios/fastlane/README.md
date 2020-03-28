fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

Install _fastlane_ using
```
[sudo] gem install fastlane -NV
```
or alternatively using `brew cask install fastlane`

# Available Actions
## iOS
### ios build_qa
```
fastlane ios build_qa
```
[QA] Build & sign iOS app
### ios build_prod
```
fastlane ios build_prod
```
[Prod] Build & sign iOS app
### ios deploy_qa
```
fastlane ios deploy_qa
```
Deploy QA Build
### ios deploy_prod
```
fastlane ios deploy_prod
```
Deploy Prod Build

----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
