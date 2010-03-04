Config = {

  /**
   * This is to turn on ClientSide JavaScript Hooks, still expieriemental 
   * By enabling this, jQuery will be loaded into your page automatically, as well as other clayburn specific helpers for
   * models, forms, ect.
   * 
   */
        
    clientSideJS : false,
        
    /**
     * The path to your layouts, absolute from your web folder
     * Note: Don't include a trailing slash.
     *
     *   - /layouts => /127.0.0.1/web/layouts
     * 
     */
     
    layoutPath : '/layouts',
    
    /**
     * The default path to yout views, absolute from your web foloder
     * Note: Don't include a trailing slash.
     *
     *   - /myviews => /127.0.0.1/web/myviews
     * 
     */
     
    viewPath : '/views'
    
}