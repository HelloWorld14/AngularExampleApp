Question = (Restangular) ->
  question = @

  question.all = ->
    Restangular.all('questions').getList()

  question.find = (id)->
    Restangular.one('questions', id).get()

  question.create = (params) ->
    Restangular.all('questions').post(params)

  question.destroy = (id) ->
    Restangular.one('questions', id).remove()

  return question

Question.$inject = ['Restangular']

angular
  .module('AngularApp.questions')
  .factory('Question', Question)