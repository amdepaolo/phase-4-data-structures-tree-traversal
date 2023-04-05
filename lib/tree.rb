class Tree
  def initialize(root = nil)
    @root = root
  end

  def get_element_by_id (string)
    nodes_to_visit = [@root]

    while nodes_to_visit.length > 0
      node = nodes_to_visit.shift
      if node[:id] == string
        return node
      end
        nodes_to_visit =  nodes_to_visit +node[:children]
    end

    return nil
  end 
  
end