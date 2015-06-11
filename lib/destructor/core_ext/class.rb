module Destructor::CoreExt::Class

  def new(*args,&block)

    object = super

    if object.__send__(:methods).include?(:finalize)
      ::ObjectSpace.define_finalizer( object, proc { object.__send__(:finalize) } )
    end

    return object

  end

end