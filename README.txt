PORTIPEL SAS - SISTEMA DE LISTAS DE PRECIOS PRO

Incluye:
- Login con Supabase
- Base de datos preparada
- Cálculo por tonelada + formato + gramaje + hojas
- Aumento por cliente, familia y producto
- Precio especial por tonelada
- PDF PRO limpio para cliente
- Precios USD sin IVA

INSTALACION RAPIDA:
1) Crear proyecto en Supabase.
2) Ir a SQL Editor y ejecutar el archivo supabase.sql.
3) En Supabase > Authentication > Users, crear usuario:
   Email: leaportillo18@gmail.com
   Password: Portipel123
4) Copiar Supabase URL y anon key en Vercel como variables:
   VITE_SUPABASE_URL
   VITE_SUPABASE_ANON_KEY
5) Subir este proyecto a Vercel.

PARA USO LOCAL:
1) Instalar Node.js.
2) Abrir carpeta del proyecto.
3) Crear archivo .env con los datos de Supabase.
4) Ejecutar:
   npm install
   npm run dev
