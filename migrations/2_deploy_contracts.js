const TodoList = artifacts.require("ToDoList");

module.exports = function (deployer) {
  deployer.deploy(TodoList);
};
