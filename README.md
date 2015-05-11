[![Build Status](https://travis-ci.org/nexelem/nutstrap-filters-web.svg)](https://travis-ci.org/nexelem/nutstrap-filters-web)


### nutstrap-filters-web

This module contains AngularJS filters for a variety of String and collection manipulation.

#### Using the module

Include the library in your main angular file  (app.coffee / app.js).

```
dependencies = [
    'myApp.filters'
]
```
and add the module into angular

```
@filtersModule = angular.module('myApp.filters', ['myApp.common'])
```

finally you can add the js to your html, (index.html)

To compile coffeescript, copy files to dist and concat into one use respectively grunt tasks: coffee, copy and uglify.
grunt dist runs all those tasks.
Complete, minified js file can be found in dist/filters-module.min.js

