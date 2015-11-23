indexCtrl = (questions, Question) ->
  vm = @
  vm.questions = questions

  vm.deleteQuestion = (question) ->
    Question.destroy(question.id).then(
      index = vm.questions.indexOf(question)
      vm.questions.splice(index, 1)
    )
  return

indexCtrl.$inject = ['questions', 'Question']

angular
  .module('AngularApp.questions')
  .controller('indexCtrl', indexCtrl)