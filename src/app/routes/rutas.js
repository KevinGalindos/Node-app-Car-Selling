const dbConnection = require('../../config/dbConnection');


module.exports = app => {
    const connection = dbConnection();

    
    app.get('/', (req, res) => {

        res.render('home/home')
    });

    app.get('/autos', (req, res) => {
        connection.query('SELECT * FROM vehiculo', (err, result) => {

            if (err) {

                console.log(err);

            } else {
                console.log(result);


                res.render('autos/autos', {
                    vehiculos: result

                });
            }


        });
    });

    app.get('/clientes', (req, res) => {
        connection.query('SELECT * FROM persona', (err, result) => {

            if (err) {

                console.log(err);

            } else {
                console.log(result);


                res.render('autos/autos', {
                    personas: result

                });
            }


        });
    });

}