module Destructor
  require 'destructor/version'
  require 'destructor/core_ext'
end

Class.__send__(:prepend,Destructor::CoreExt::Class)