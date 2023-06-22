# Variable Caster GTM Template

## Overview

This Google Tag Manager Variable Template will let you cast an existing variable into a new type.

## Cast Options
### String (default)
As variables are strings by default, this is not necessary

### Booleans
Casts the following strings to `true`, everything else will be `false`

- true
- 1
- treu
- aye

### Integers

`'1'` becomes `1`

### Arrays
This will split a string in spaces.
`'I am an array'` will become `['I', 'am', 'an', 'array']`

### Single Item Array
This is what led me to create this template, as we needed to make a single item array from a string.

`'I am an array'` will become `['I am an array']`