var pg = require('pg');
var connectionString = process.env.DATABASE_URL || 'postgres://localhost:5432/compost';

var client = new pg.Client(connectionString);
client.connect();

