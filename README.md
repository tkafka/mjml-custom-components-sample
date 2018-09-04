Install:

> yarn

Compile:

> ./render.sh

See sample components at `mjml-components/lmc-button.js` and `mjml-components/lmc-image.js` - they are a clone of `<mj-button>` and `<mj-image>` with added `data-msys-linkname` property.

What was needed was to specify dependencies, like this:

```
import { registerDependencies } from 'mjml-validator'

registerDependencies({
	// which components can contain image
  'mj-column': ['lmc-image'],
  // 'mj-something-else': ['lmc-image'],

	// image can contain no components
  'lmc-image': []
});
```