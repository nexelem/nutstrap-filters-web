(function(){filtersModule.filter("capitalise",function(){return function(input){return input?"string"!=typeof input?"":input.toLowerCase().replace(/(?:^|\s)\S/g,function(a){return a.toUpperCase()}):""}})}).call(this);