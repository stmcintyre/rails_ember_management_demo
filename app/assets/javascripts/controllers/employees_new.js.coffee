App.EmployeesNewController = Ember.Controller.extend

  actions:

    createEmployee: ->
      lead = @store.createRecord 'employee', @get('fields')
      lead.save().then =>
        @transitionToRoute 'employee', employee
