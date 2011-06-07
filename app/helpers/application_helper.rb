module ApplicationHelper
  def active_if?(name)
    "active" if controller_name == name
  end
end
