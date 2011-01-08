require "couchrest_model"


@@CouchDB = CouchRest.new("http://admin:admin@127.0.0.1:5984")
@@CouchDB.default_database = 'devise'