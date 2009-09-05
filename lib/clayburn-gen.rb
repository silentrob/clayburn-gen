require 'rubygems'

class Clayburn
  
  def version
    '0.0.2'
  end
  
  def app(name)
    puts "\nGenerating a new Clayburn Application called #{name}\n\n"
    generate_path = File.join(Dir.pwd,name)    
    template_path = File.join(File.dirname(__FILE__),'templates/clayburn-app')
    FileUtils.cp_r(template_path, generate_path)

    clayburn_path = File.join(File.dirname(__FILE__),'clayburn')
    clayburn_final_path = File.join(generate_path,'127.0.0.1/js/lib/clayburn')
    FileUtils.cp_r(clayburn_path, clayburn_final_path)  

  end
  
  def flat(name)
    puts "\nGenerating a new FLAT Clayburn Application called #{name}\n\n"
    generate_path = File.join(Dir.pwd,name)    
    puts generate_path
    # FileUtils.mkdir(name)
  end
  
  def generate(name)
    
    generate_path = File.join(Dir.pwd,name)    
    puts "in Generate #{name}"

    #FileUtils.mkdir_p(path_to_build)
  end
  
end