[![Build Status](https://travis-ci.org/supersubwoofer/bucklescript-tea-sam.svg?branch=bucklescript-tea-sam)](https://travis-ci.org/supersubwoofer/bucklescript-tea-sam)

This is an experiment for [SAM pattern](http://sam.js.org/) on [bucklescript-TEA](https://github.com/OvermindDL1/bucklescript-tea)

# Organisation

* The bucklescript code goes into _src/*.ml_
* The _release_ folder contains an _index.html_ and rollup bundles your js here in _main.js_

# Getting started

* copy or clone this repository
* change the names in package.json
* in the _rollup.config.js_ you can also change the name of the output, you also have to change this name in de _index.html_
* for consistency, also change the name in _bsconfig.json_

## Install

```
npm install
```

## Build

```
npm run build
```

## Watch

```
npm run watch
```

## Docker
- Build
docker build -t sam-bucklescript-tea-launcher .
-run
docker run -p 80:80 -d sam-bucklescript-tea-launcher


## Credits
- [Bucklescript-TEA](https://github.com/OvermindDL1/bucklescript-tea) by OvermindDL1
- [Bucklescript-TEA starter kit](https://github.com/tcoopman/bucklescript-tea-starter-kit) by Thomas Coopman
- [SAM pattern](http://sam.js.org/) by Jean-Jacques Dubray
- [TEA - The Elm Architecture](http://guide.elm-lang.org/architecture/index.html) by Evan Czaplicki