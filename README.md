### angular-filters-web

This module contains AngularJS filters for a variety of String and collection manipulation.

### Build

gradle build

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

```
<script src='@routes.WebJarAssets.at(WebJarAssets.locate("StaticData.js"))' type="text/javascript"></script>
<script src='@routes.WebJarAssets.at(WebJarAssets.locate("Slice.js"))' type="text/javascript"></script>
<script src='@routes.WebJarAssets.at(WebJarAssets.locate("Truncate.js"))' type="text/javascript"></script>
<script src='@routes.WebJarAssets.at(WebJarAssets.locate("Capitalise.js"))' type="text/javascript"></script>
<script src='@routes.WebJarAssets.at(WebJarAssets.locate("CleanAndCapitalise.js"))' type="text/javascript"></script>
<script src='@routes.WebJarAssets.at(WebJarAssets.locate("Reverse.js"))' type="text/javascript"></script>
```

