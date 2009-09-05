system.use("config");
system.use("clayburn.init");

system.use("controllers");
system.use("model");

match('/').to({ controller: 'Home', action: 'index' });
