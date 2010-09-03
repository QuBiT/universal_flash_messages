module UniversalFlashMessages::ControllerHelpers

  def method_missing(method, *args, &block)
    method_name = method.to_s
    default_methods = UniversalFlashMessages::FlashTypes.default_methods_hash
    now_methods = UniversalFlashMessages::FlashTypes.now_methods_hash
    valid_methods = default_methods.merge(now_methods)
    if valid_methods.keys.include?(method_name)
      append_message(valid_methods[method_name], args, now_methods.keys.include?(method_name))
    else
      super(method, *args, &block)
    end
  end
  
  private

  def append_message(type, msg, now)
    f = now ? flash.now : flash
    f[type] ||= []
    f[type] << msg
  end

end