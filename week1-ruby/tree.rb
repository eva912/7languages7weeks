class Tree
  attr_accessor :children, :node_name

  def initialize(first_argument, children = [])
    initialize_with_hash(first_argument) if first_argument.is_a? Hash
    initialize_with_string(first_argument, children) if first_argument.is_a? String
  end

  def initialize_with_string(name, children = [])
    @children = children
    @node_name = name
  end

  def initialize_with_hash(tree)
    tree.each_pair do |name, children|
      @node_name = name
      @children = []
      children.each do |child|
        @children << Tree.new({child[0] => child[1]})
      end
    end
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block }
  end

  def visit(&block)
    block.call self
  end

end


ruby_tree = Tree.new('Ruby', [Tree.new('Reia'), Tree.new('MacRuby')])

puts 'Visiting a node'
ruby_tree.visit {|node| puts node.node_name }
puts

puts 'Visiting entire tree'
ruby_tree.visit_all{|node| puts node.node_name }

family_tree = Tree.new({'grandpa' => {
                        'dad' => {'child 1' => {}, 'child 2' => {}},
                        'uncle' => {'child 3' => {}, 'child 4' => {}}
                      }})

puts
puts 'Visiting family tree'
family_tree.visit_all{|node| puts node.node_name }
