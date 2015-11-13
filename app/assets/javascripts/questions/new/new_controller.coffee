newCtrl = (Question, $state)->
  vm = @
  vm.question = { 'title' : '', 'body' : '' }

  vm.sendQuestion = ->
    Question.create(vm.question)
      .then((new_question) ->
        $state.go("question_show", { id: new_question.id })
      )


  return

newCtrl.$inject = ['Question', '$state']

angular
  .module('AngularApp.questions')
  .controller('newCtrl', newCtrl)