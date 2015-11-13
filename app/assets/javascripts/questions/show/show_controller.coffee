showCtrl = (question)->
  vm = @
  vm.question = question

  return

showCtrl.$inject = ['question']

angular
  .module('AngularApp.questions')
  .controller('showCtrl', showCtrl)