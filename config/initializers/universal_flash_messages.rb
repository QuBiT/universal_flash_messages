ActionController::Base.send( :include, UniversalFlashMessages::ControllerHelpers )
ActionView::Base.send( :include, UniversalFlashMessages::ViewHelpers )