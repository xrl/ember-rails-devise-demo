

App.MenuItem = Ember.View.extend
  templateName: "comps/menu_item"
  tagName: 'a'
  classNames: ["btn"]
  attributeBindings: ['href', 'hidden']
  label: "labelz"
  hidden: "hidden"

