# frozen_string_literal: true
require_relative './constants'
class Workspace
  IGNORE = [".", "..", REPOSITORY_DIRECTORY, ".git", ".idea"]

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
