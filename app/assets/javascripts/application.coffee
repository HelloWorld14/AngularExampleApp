#= require angular/angular
#= require ui-router/release/angular-ui-router
#= require angular-rails-templates
#= require lodash/lodash
#= require restangular/src/restangular


#= require_self
#= require questions/questions_module

AngularAppConf = ($stateProvider, $urlRouterProvider, RestangularProvider) ->
    $urlRouterProvider.otherwise('/')
    RestangularProvider.setRequestSuffix('.json')

AngularAppConf.$inject = ['$stateProvider', '$urlRouterProvider', 'RestangularProvider']

angular
  .module('AngularApp', [
    'ui.router'
    'templates'
    'restangular'
    'AngularApp.questions'
  ])
  .config(AngularAppConf)