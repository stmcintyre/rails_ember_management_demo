App.EmployeeRoute = Ember.Route.extend

  model: (params) -> @store.find 'employee', params.id
