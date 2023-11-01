class Commit
  attr_accessor :oid

  def initialize(tree, parent, author, message)
    @tree = tree
    @parent = parent
    @author = author
    @message = message
  end

  def type
    "commit"
  end

  def to_s
    lines = []
    lines.push("tree #{ @tree }")
    lines.push("parent #{ @parent }") if @parent
    lines.push("author #{ @author }")
    lines.push("committer #{ @author }")
    lines.push("")
    lines.push(@message)

    lines.join("\n")
  end
end
