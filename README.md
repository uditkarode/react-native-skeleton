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
  
After you run `react-native init`, you can pick the patches after the commit which added this README.
