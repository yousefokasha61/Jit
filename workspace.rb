# frozen_string_literal: true

class Workspace
  IGNORE = [".", "..", ".git", ".idea"]

  def initialize(pathname)
    @pathname = pathname
  end

  def list_files
    Dir.entries(@pathname) - IGNORE
  end

  def read_file(path)
    File.read(@pathname.join(path))
  end

end
