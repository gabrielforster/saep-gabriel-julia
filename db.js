import mysql from "mysql2";

const pool = mysql.createPool({
    host: "localhost",
    user: "root",
    database: "saep_gabriel_julia",
    password: "root"
});

export default pool.promise();