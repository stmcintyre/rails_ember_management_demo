App.EmployeeEditController = Ember.ObjectController.extend

  actions:

    saveChanges: ->
      @get('model').save().then =>
        @transitionToRoute 'employee'

    cancel: ->
      @get('model').rollback()
      @transitionToRoute 'employee'
