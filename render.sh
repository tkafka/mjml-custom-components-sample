#!/bin/bash

# yarn add mjml#next
# yarn add --dev babel-plugin-add-module-exports babel-plugin-transform-async-to-generator babel-plugin-transform-decorators-legacy babel-plugin-transform-regenerator babel-plugin-transform-runtime @babel/preset-env @babel/preset-stage-0

BABEL_OPTIONS="--plugins=add-module-exports,transform-async-to-generator,transform-decorators-legacy,transform-regenerator,transform-runtime --presets=env,stage-0"

# build components
echo "Building components ..."
./node_modules/.bin/babel ./mjml-components/lmc-button.js -o ./mjml-components/lmc-button.compiled.js $BABEL_OPTIONS
./node_modules/.bin/babel ./mjml-components/lmc-image.js -o ./mjml-components/lmc-image.compiled.js $BABEL_OPTIONS

echo "Rendering mjml ..."
./node_modules/.bin/mjml ./sample-mjml-template/index.mjml > ./compiled-template.html

echo "Done."