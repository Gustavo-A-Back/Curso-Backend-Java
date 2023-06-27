var prompt = require('prompt-sync')();

const listaCod=["100","101","102","103","104","105"];
const listaPre=[1.2,1.3,1.5,1.2,1.3,1];
const codUser=[];
const preUser=[];
const quantUser=[];
let posicao=0;
let totalQuant=0;
let totalValor=0;

// Aqui usei um rótulo "laço", para poder citar a qualquer momento e não precisar usar vários "break" 
laço: while (true){
    
    //pede o código
    codigo= prompt("Digite o código do seu lanche: ");

    //verifica a posição do código dentro da lista de códigos
    posicao=listaCod.indexOf(codigo);

    //para a operação se for 999
    if(codigo==999){
        break;
    }

   
    for (i=0;i<codigo.length;i++){
        //registra o número Ascii de cada caractere digitado no código
        let codAscii=codigo.charCodeAt(i);
        

        //verifica se o código acima está dentro do intervalo da tabela Ascii desejado (números)
        //Se o código Ascii for menor que 48 ou maior que 57, ou não estiver na listacod, o sistema força o usuário a repetir um código válido
        while (codAscii < 48 || codAscii > 57 || posicao==-1){
            codigo= prompt("Digite o código do seu lanche: ");
            if(codigo==999){
                break laço;
            }
            
            codAscii=codigo.charCodeAt(i);
            posicao=listaCod.indexOf(codigo);
        }

       
        

    }
   

    //pede a quantidade
    let quantidade= prompt("Digite a quantidade desejada: ");

    for (i=0;i<quantidade.length;i++){

        //registra o número Ascii de cada caractere digitado na quantidade
        let codAscii=quantidade.charCodeAt(i);
        

        //verifica se o código acima está dentro do intervalo da tabela Ascii desejado (números)
        while (codAscii < 48 || codAscii > 57 || posicao==-1){
            quantidade= prompt("Digite a quantidade desejada: ");

            codAscii=quantidade.charCodeAt(i);

        }

    }
    
    //transforma quantidade em Number para efetuar os cálculos
    quantidade=Number(quantidade);

    let posicod=codUser.indexOf(codigo);

    //verifica se o código foi digitado anteriormente e soma as quantidades e valores nas posições corretas dos vetores.
    if(posicod != -1){
        preUser[posicod]= (preUser[posicod] + (quantidade*listaPre[posicao]));
        quantUser[posicod]= (quantUser[posicod] + quantidade);
    }

    else{
        valor=quantidade*listaPre[posicao];
        preUser.push(valor);
        quantUser.push(quantidade);
        codUser.push(codigo);

    }

    

}

//usa um "for" para imprimir todas as posições dos vetores e também soma as quantidades e valores totais.

console.log(" ");
for(i=0;i<codUser.length;i++){
    console.log(`Cod  ${codUser[i]} ${quantUser[i]} R$${preUser[i].toFixed(2)}`);
    totalValor=(totalValor+preUser[i]);
    totalQuant=(totalQuant+quantUser[i]);
}
console.log(`         ${totalQuant} R$${totalValor.toFixed(2)}`);

