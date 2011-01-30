module UniversalFlashMessages
  class FlashTypes
    @@valid = [ :info, :success, :warning, :error ]
    cattr_accessor :valid

    #     default_methods_hash   -> {name => type}
    #
    # Returns <code>Hash</code> with the default method name as keys and the default types as values
    #
    #    valid = [ "a", "b" ]
    #    default_methods_hash   #=> {"add_a" => :a, "add_b" => :b}
    #
    def self.default_methods_hash
      self.valid.inject({}) {|hash, type| hash["add_#{type}"]=type; hash}
    end

    #     now_methods_hash   -> {name => type}
    #
    # Returns <code>Hash</code> with the default method name as keys and the default types as values
    #
    #    valid = [ "a", "b" ]
    #    now_methods_hash   #=> {"add_a_now" => :a, "add_b_now" => :b}
    #
    def self.now_methods_hash
      self.valid.inject({}) {|hash, type| hash["add_#{type}_now"]=type; hash}
    end

  end
end