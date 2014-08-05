App.Router.reopen
  rootURL: '/'
  location: 'auto'


App.Router.map ()->
  @resource 'employees', path: '/', ->
    @route 'new'
    @resource 'employee', path: '/employees/:id', ->
      @route 'edit'
