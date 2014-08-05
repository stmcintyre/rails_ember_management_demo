App.Employee = DS.Model.extend
  firstName: DS.attr('string')
  lastName: DS.attr('string')
  email: DS.attr('string')
  phone: DS.attr('string')
  status: DS.attr('string', defaultValue: 'new')
  notes: DS.attr('string')

  fullName: ( ->
    @get('firstName') + ' ' + @get('lastName')
  ).property('firstName', 'lastName')

App.Employee.reopenClass

  STATUSES: ['New', 'Probation', 'Vacation', 'Sick', 'Suspended', 'Departed', 'Deceased']

  valid: (fields) ->
    fields.firstName and fields.lastName
