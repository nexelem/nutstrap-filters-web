(function(){filtersModule.filter("clean_and_capitalise",function(){return function(input){return input?"string"!=typeof input?"":input.replace(/_/g," ").replace(/-/g," ").toLowerCase().replace(/(?:^|\s)\S/g,function(a){return a.toUpperCase()}):""}})}).call(this);