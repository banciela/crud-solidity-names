// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract crudNomes{

    string[] nomes;

    function salvaNome(string memory _nome) external{
        nomes.push(_nome);
    } 

    function lerNome(uint _posicao) external view returns(string memory){
        return nomes[_posicao];
    }

    function atualizaNome(uint _posicao, string memory _novoNome) external{
        nomes[_posicao] = _novoNome;
    }

    function deletaNome(uint _posicao) external{
        delete nomes[_posicao];
    }

    function quantidadeNomes() external view returns (uint){
        return nomes.length;
    } 

}