require 'rubygems'

class Clayburn
  
  def version
    '0.0.2'
  end
  
  def app(name)
    generate_path = File.join(Dir.pwd,name)    
    template_path = File.join(File.dirname(__FILE__),'templates/clayburn-app')
    
    if File.exist?(generate_path)
      puts "error: a file or directory called #{name} already exists."
    else
      # copies templates
      ::FileUtils.cp_r(template_path, generate_path)
      if File.exist?(generate_path)
        puts "\nGenerating with clayburn generator:"
        puts "     [ADDED]  clayburn.sh"
        puts "     [ADDED]  127.0.0.1/js/"
        puts "     [ADDED]  127.0.0.1/js/bootstrap.js"
        puts "     [ADDED]  127.0.0.1/js/config.js"
        puts "     [ADDED]  127.0.0.1/js/controller.js"
        puts "     [ADDED]  127.0.0.1/js/exception.js"
        puts "     [ADDED]  127.0.0.1/js/model.js"
        puts "     [ADDED]  127.0.0.1/web/"
        puts "     [ADDED]  127.0.0.1/web/public/"
        puts "     [ADDED]  127.0.0.1/web/public/logo.png"
        puts "     [ADDED]  127.0.0.1/web/public/master.css"
        puts "     [ADDED]  127.0.0.1/web/public/js/"
        puts "     [ADDED]  127.0.0.1/web/public/js/jquery-1.4.1.min.js"        
        puts "     [ADDED]  127.0.0.1/web/views/"
        puts "     [ADDED]  127.0.0.1/web/views/home/"
        puts "     [ADDED]  127.0.0.1/web/views/home/index.html"                
        puts "     [ADDED]  127.0.0.1/web/views/exception/"
        puts "     [ADDED]  127.0.0.1/web/views/exception/general.html"
        puts "     [ADDED]  127.0.0.1/web/views/exception/notfound.html"                
        puts "     [ADDED]  127.0.0.1/web/layouts/"
        puts "     [ADDED]  127.0.0.1/web/layouts/application.html"        
      end
      
      # git init
      if `cd #{generate_path}/127.0.0.1 && git init && git add . && git commit -am "initial commit by clayburn generator"`
        puts "     [GIT]    init"
        puts "     [GIT]    add ."
        puts "     [GIT]    commit -m \"initial commit by clayburn generator\""
      end
      
      # submodule clayburn
      if `cd #{generate_path}/127.0.0.1 && git submodule add git://github.com/silentrob/clayburn.git js/clayburn && git add . && git commit -am "added clayburn as a git submodule"`
        puts "     [GIT]    submodule add git://github.com/silentrob/clayburn.git js/clayburn"
        puts "     [GIT]    add ."
        puts "     [GIT]    commit -m \"added clayburn as a git submodule\""
      end
    end
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