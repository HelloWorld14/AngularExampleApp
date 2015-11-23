indexCtrl = (questions, Question) ->
  vm = @
  vm.questions = questions

  vm.order_questions = '+created_at'

  vm.changeOrder = (order) ->
    console.log 'hello'
    vm.order_questions = order

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