module Courgette
  
  class Feature
    
    attr_reader :path
    
    def initialize(path)
      @path = path
    end
    
    def name
      name_lines.first.split(':', 2).second.strip
    end
    
    def feature_elements_size
      ast.instance_variable_get('@feature_elements').size
    end
    
  private
  
    def name_lines
      ast.name.respond_to?(:lines) ? ast.name.lines.to_a : ast.name.to_a
    end

    def feature_file
      @feature_file ||= Cucumber::FeatureFile.new(path)
    end
  
    def ast
      @ast ||= feature_file.parse
    end
    
    
  end
  
  
end