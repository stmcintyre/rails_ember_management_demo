App.Router.reopen
  rootURL: '/'
  location: 'auto'


App.Router.map ()->
  @resource 'employees', path: '/', ->
    @resource 'employee', path: '/employees/:id', ->
      @route 'edit'
