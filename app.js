function filtrarPorLetra(arr, letra) {
    var version = "Tambor-2"

    let nuevoArr = [];


    for (let i = 0; i < arr.length; i++) {

        let nombre = arr[i];

        if (nombre[0] === letra) {
            nuevoArr.push(nombre);
        }


    }

    return nuevoArr;
}


// CaSeNsItIvE


let heroes = ['Doom', 'Dr. Strange', 'Hulk', 'She Hulk', 'Spiderman', 'Captain Marvel'];


let heroesCon = filtrarPorLetra(heroes, 'X');
