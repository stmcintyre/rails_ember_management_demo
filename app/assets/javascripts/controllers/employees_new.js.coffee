App.EmployeesNewController = Ember.Controller.extend

  actions:

    createEmployee: ->
      fields = @get('fields')
      if App.Employee.valid(fields)
        employee = @store.createRecord 'employee', fields
        employee.save().then (employee) =>
          @transitionToRoute 'employee', employee
      else
        @set 'showError', true
