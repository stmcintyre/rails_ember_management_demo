App.EmployeesController = Ember.ArrayController.extend

  sortProperties: ['firstName', 'lastName']

  employees: ( ->
    if @get('search') then @get('searchedEmployees') else @
  ).property('search', 'searchedEmployees')

  searchedEmployees: ( ->
    search = @get('search').toLowerCase()
    @filter (employee) => employee.get('fullName').toLowerCase().indexOf(search) != -1
  ).property('search', '@each.fullName')
