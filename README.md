### angular-filters-web

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


