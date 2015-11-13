indexCtrl = (questions) ->
  vm = @
  vm.questions = questions
  
  return

indexCtrl.$inject = ['questions']

angular
  .module('AngularApp.questions')
  .controller('indexCtrl', indexCtrl)