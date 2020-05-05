$LOAD_PATH << File.join(File.dirname(__FILE__), '../lib')

module AttrUtils
  def self.included(mod)
    mod.include AttrUtils::AttrList
  end
end

require_files = []
require_files += Dir[File.join(File.dirname(__FILE__), 'attr-utils/*')]
require_files.each{|f| require f }
