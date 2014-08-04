App.Router.reopen
  location: 'auto'
  rootURL: '/'

App.Router.map ()->
  @resource 'employees', path: '/', ->
    @resource 'employee', path: '/employees/:id'
