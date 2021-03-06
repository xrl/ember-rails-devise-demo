## In a real app you will probably want to separate components into different files
## They are grouped together here for ease of exposition

App.NavbarController = Ember.ObjectController.extend
  authStateBinding: Ember.Binding.oneWay 'App.LoginStateManager.currentState'
  authState: null,
  authenticated: (->
    log.info "NavbarController authent"
    @.get("authState") == App.LoginStateManager.authenticated
  ).property("authState")
  actions:
    logout: ->
      log.info "NavbarController handling logout event..."
      me = @
      App.Authentication.logout -> me.transitionToRoute "home"


App.WelcomeMsgController = Ember.ObjectController.extend
  authStateBinding: Ember.Binding.oneWay 'App.LoginStateManager.currentState'
  authState: null,
  user: (->
    if @.get("authState") == App.LoginStateManager.authenticated
      App.currentUser
    else
      null
  ).property("authState")




