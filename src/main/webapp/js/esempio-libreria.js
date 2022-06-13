function somma(a,b){
    return a + b;
}
/* attenzione a non fare sovrascrittura di metodi */
function somma(a,b,c){
    return a + b + c;
}


// il valore di numeri.length è 0
let numeri = [];
// array con gia valori all'interno
let numeribis = [2,5,6,10];
//array modificabile senza problemi
// il valore di numeri.length è 1
numeri[0] = 1;
//array misto
let misto = [1,"Franco","Grivet",true];

//se metto un elemento in posizione oltre la lunghezza mette tutti gli altri elementi a undefined

//funzioni array

//aggiunta elemento
numeribis.push(10);

//rimozione dalla coda: shift, rimozione dalla testa: pop

//per inserire elementi nell'array, rimuovere o sostituirli uso splice
// se voglio inserire un elemento nella posizione 2 e shiftare gli altri elementi:
numeribis.splice(1,0,item);