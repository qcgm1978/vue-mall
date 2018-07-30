//sequelize基础配置文件
const Sequelize = require('sequelize');
const sequelize = new Sequelize('mall', 'root', 'test@2018', {
	host: '127.0.0.1',
	dialect: 'mysql',
	pass: 'test@2018',
})

module.exports = sequelize;