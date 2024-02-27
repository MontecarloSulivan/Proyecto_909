let artista = document.getElementById('artista');

let busqueda = 'Bajo la Lluvia';

async function idCancion() {

    const url = `https://spotify23.p.rapidapi.com/search/?q=${busqueda}&type=tracks&offset=0&limit=10&numberOfTopResults=5`;
    const options = {
        method: 'GET',
        headers: {
            'X-RapidAPI-Key': 'c7c3035f85msh008ab2e4c4ee466p18070cjsn38ed6b1d8327',
            'X-RapidAPI-Host': 'spotify23.p.rapidapi.com'
        }
    };

    try {
        const response = await fetch(url, options);
        const result = await response.text();
        console.log(result);

        // Asignar el resultado al elemento HTML
        artista.innerHTML = result;
    } catch (error) {
        console.error(error);
    }

    console.log(busqueda);

}


async function obtenerURLReproduccion(cancionId) {
    const url = `https://api.spotify.com/v1/tracks/${cancionId}`;
    const options = {
        method: 'GET',
        headers: {
            'Authorization': 'Bearer tu_token_de_acceso_a_la_API_de_Spotify'
        }
    };

    try {
        const response = await fetch(url, options);
        if (!response.ok) {
            throw new Error('Error en la solicitud');
        }
        const data = await response.json();
        if (!data.external_urls || !data.external_urls.spotify) {
            throw new Error('La URL de reproducción no está disponible');
        }
        const urlReproduccion = data.external_urls.spotify;
        return urlReproduccion;
    } catch (error) {
        console.error('Error al obtener la URL de reproducción:', error);
        return null;
    }
}

obtenerURLReproduccion('1fgA9HYB18QxnyFLCmrnJv');


