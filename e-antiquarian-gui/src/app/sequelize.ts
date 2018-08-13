import {Sequelize} from 'sequelize-typescript';

export const sequelize = new Sequelize({
  dialect: 'sqlite',
  operatorsAliases: Sequelize.Op as any,
  database: 'collections',
  username: 'sqlite',
  password: '',
  storage: './collections.sqlite',
  modelPaths: [ __dirname + '/models' ]
});