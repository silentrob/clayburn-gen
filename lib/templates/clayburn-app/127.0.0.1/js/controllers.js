HomeController = {

    layout : 'application.html',
    
    index : function () {
        this.render();
    },
    
    show : function () {
        this.render();
    },
    
    create : function() {
        this.redirect('index');        
    },
    
    destroy : function () {
        this.redirect("index");
    }   
}