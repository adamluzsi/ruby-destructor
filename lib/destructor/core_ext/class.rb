module Destructor::CoreExt::Class

  def new(*args,&block)
    object = super(*args,&block)
    ::ObjectSpace.define_finalizer( object, proc { object.__send__(:finalize) } )
    return object
  end

end