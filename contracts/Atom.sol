// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract AtomTeste is Ownable, ReentrancyGuard {
    mapping(address => uint256) private balances;

    event Deposit(address indexed user, uint256 amount);
    event Withdrawal(address indexed user, uint256 amount);

    // construtor
    constructor() Ownable(msg.sender) {
        // o criador do contrato será o proprietário por padrão.
    }

    // função de depósito
    function deposit() external payable {
        require(msg.value > 0, "Valor de deposito precisa ser maior que zero");

        balances[msg.sender] += msg.value;
        emit Deposit(msg.sender, msg.value);
    }

    // função para verificar o saldo do próprio usuário
    function getBalance() external view returns (uint256) {
        return balances[msg.sender];
    }

    // função de retirada protegida contra reentrância
    function withdraw(uint256 _amount) external nonReentrant {
        uint256 userBalance = balances[msg.sender];
        require(_amount <= userBalance, "Saldo insuficiente");

        // usando unchecked para evitar revert em overflow/underflow
        balances[msg.sender] -= _amount; // aqui pode causar underflow se não for verificado
        payable(msg.sender).transfer(_amount);

        emit Withdrawal(msg.sender, _amount);
    }
}
