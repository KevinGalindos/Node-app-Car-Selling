const app = require('./config/server');



const rutas = require('./routes/rutas');

app.use(rutas);

//Iniciar servidor

app.listen(app.get('port'),()=>{
console.log('Servidor en puerto:', app.get('port'));
});

