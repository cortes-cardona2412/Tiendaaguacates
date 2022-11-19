import Sequelize from "sequelize";

const dataBase = new Sequelize("db_aguacate", "root", "", {
  host: "localhost",
  port: 3306,
  dialect: "mysql",
  define: {
    timestamps: true,
  },
});

export { dataBase };
