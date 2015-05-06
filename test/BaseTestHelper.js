this.commonModule = angular.module('myApp.common',[]);
this.i18nModule = angular.module('myApp.i18n', ['myApp.common']);
this.filtersModule = angular.module('myApp.filters', ['myApp.i18n']);

beforeEach(module('angular-flash.service'));
beforeEach(module('ngI18n'));
beforeEach(module('myApp.i18n'));
beforeEach(module('myApp.filters'));