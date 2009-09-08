/**
 *  Kick off the main config and init
 */
system.use("config");
system.use("clayburn.init");

/**
 *  All controllers and models are defined in these two files ~ you can have one controller per file
 */
system.use("controllers");
system.use("model");

/**
 *  The Root and default route
 */
match('/').to({ controller: 'Home', action: 'index' });
match(':controller/:action/:id').to();