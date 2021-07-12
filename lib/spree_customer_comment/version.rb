module SpreeCustomerComment
  VERSION = '0.0.1-28'.freeze

  module_function

  # Returns the version of the currently loaded SpreeCustomerComment as a
  # <tt>Gem::Version</tt>.
  def version
    Gem::Version.new VERSION
  end
end
