# react-native boilerplate
  
This repository is meant to house patches to ease initial configuration of a react native project (at least for me).
  
It involves:
  
* enabling Hermes
* enabling architecture based splitting
* disabling builds for x86 and x64
* removing initial tests and sample files
* adding dynamic light/dark mode support
* proper directory structure
* typescript
* svg plugin integration
* newest gradle version for android
* removal of jcenter from android, since it's deprecated
  
After you run `react-native init`, `cd` into the project folder and run [skeleton.sh](https://github.com/uditkarode/react-native-skeleton/raw/master/skeleton.sh) from this repository.

## Important Note
Everytime you do a yarn operation (yarn install, or similar), make sure to run `projectFixer.sh` from this repo. The `skeleton.sh` script should have auto added it into your project. This is required to fix a bug in one of the gradle files which appears when using a newer version of gradle.
