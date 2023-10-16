const kenx = require("knex")({
    client: "pg",
    connection: {
        host: "localhost",
        port: 5432,
        database: "TP",
        user: "postgres",
        password: "facu",
    },
  });
