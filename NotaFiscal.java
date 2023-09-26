/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.exercicio;

import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author guto_
 */
public class NotaFiscal  {
    
    private double valorTotal;
    private Produto item;
    
    List<Produto> produtos= new ArrayList();
  
    
    
    
    public double calcularValorTotal(){
        
        for (Produto soma : produtos){
          valorTotal+=this.item.getPrecoTotal();
        }
        return valorTotal;
    }
    
    public void exibirProdutos (){
        
        for (Produto exibir : produtos){
          this.item.exibirInformacoes();
        }    
        
    }
    
    
    public void adicionarProduto(Produto pr){
        produtos.add (pr);
    }
    
    public void removerProduto(String nomeItem){
        
        if(produtos.contains(this.item)){
            
            produtos.remove(item);
            
            
        }
         
     }
    
    
    public void getProduto(String nomeItem){
        
        if(produtos.contains(nomeItem)){
            
            produtos.remove(item);
            
            
        }
         
     }
        
        
    }
    

