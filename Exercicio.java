/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.exercicio;

/**
 *
 * @author guto_
 */
public class Exercicio {

        
        public static void main(String[] args) {
            
        Livro useACabecaJava = new Livro("Use a cabeça! Java", 65, 5);
        Televisao televisaoSamsung = new Televisao("Televisao Samsung", 3000, 100);
        Computador computadorAcer = new Computador("Computador Acer", 4500, 90);
        
        NotaFiscal nota = new NotaFiscal();
        nota.adicionarProduto(useACabecaJava);
        nota.adicionarProduto(televisaoSamsung);
        nota.adicionarProduto(computadorAcer);
        
        double valorTotalNota = nota.calcularValorTotal();
        System.out.println("Valor total nota: " + valorTotalNota);
        nota.exibirProdutos();
        
        nota.removerProduto("Televisao Samsung");
        System.out.println("Produtos atualizados");
        nota.exibirProdutos();
        
        Produto produtoBuscado = nota.getProdutoPorNome("Computador Acer");
        System.out.println("Produto buscado");
        produtoBuscado.exibirInformacoes();
    }
}
     
        
    }
}
