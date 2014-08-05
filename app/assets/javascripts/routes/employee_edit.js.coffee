App.EmployeeEditRoute = Ember.Route.extend

  activate:   -> @controllerFor('employee').set 'isEditing', true
  deactivate: -> @controllerFor('employee').set 'isEditing', false
