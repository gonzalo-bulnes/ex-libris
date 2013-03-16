module NavigationHelper

  # Get the activity status of a .nav item
  #
  # controller - The Symbol of to the name of the controller which activates the item
  #
  # Example
  #
  #    %ul.nav
  #      %li{ class: "#{ active? :records }" }
  #         ...
  #
  # Returns String 'active' if the view was rendered by :controller
  def active? controller
    (params[:controller] == controller.to_s) ? 'active' : ''
  end
end
