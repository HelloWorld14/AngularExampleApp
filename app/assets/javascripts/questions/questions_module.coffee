#= require_self
#= require_tree .

QuestionsConfig = ($stateProvider) ->
  $stateProvider
    .state('question_new', {
      url: '/questions/new',
      templateUrl: 'questions/new/new.html',
      controller: 'newCtrl',
      controllerAs: 'vm'  
    })
    .state('questions', {
      url: '/',
      templateUrl: 'questions/index/index.html',
      controller: 'indexCtrl',
      controllerAs: 'vm',
      resolve: {
        questions: 
          ['Question', (Question) ->
            Question.all()
              .then (questions) ->
                questions
          ]
      }
    })
    .state('question_show', {
      url: '/questions/:id',
      templateUrl: 'questions/show/show.html',
      controller: 'showCtrl',
      controllerAs: 'vm'
      resolve: {
        question: 
          ['Question', '$stateParams', (Question, $stateParams) ->
            Question.find($stateParams.id)
              .then (question) ->
                question
          ]
      }
    })


angular
  .module('AngularApp.questions', [])
  .config(QuestionsConfig)