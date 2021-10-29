
const Fs = require("fs");
const Path = require("path");
const Axios = require("axios");

export async function getGraph() {
    try {
        const location = 'http://localhost:5001/testGraph.jpg'  //temp location for testing only
        const path = Path.resolve(__dirname, 'files', 'graph.jpg') 
        //the last param will be given to the function once the backend actually makes graphs
        //this is a default for proof of concept

        const response = await Axios({
            method: 'GET',
            url: location,
            responseType: 'stream'
        })

        response.data.pipe(Fs.createWriteStream(path))

        return new Promise((resolve, reject) => {
            response.data.on('end', () => {
                resolve()
            })
            response.data.on('error', err => {
                reject(err)
            })
        })
    } catch (error) {
        console.error(error)
    }
}