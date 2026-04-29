create extension if not exists "uuid-ossp";

create table if not exists clientes (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid,
  nombre text not null,
  ajuste_general numeric default 0,
  created_at timestamp with time zone default now()
);

create table if not exists familias (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid,
  nombre text not null,
  created_at timestamp with time zone default now()
);

create table if not exists productos (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid,
  codigo text not null,
  producto text not null,
  familia text not null,
  ancho numeric default 0,
  alto numeric default 0,
  gramaje numeric default 0,
  hojas numeric default 0,
  precio_tonelada numeric default 0,
  created_at timestamp with time zone default now()
);

create table if not exists ajustes_familia (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid,
  cliente_id uuid references clientes(id) on delete cascade,
  familia text not null,
  porcentaje numeric default 0,
  created_at timestamp with time zone default now()
);

create table if not exists ajustes_producto (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid,
  cliente_id uuid references clientes(id) on delete cascade,
  codigo text not null,
  porcentaje numeric default 0,
  created_at timestamp with time zone default now()
);

create table if not exists precios_especiales (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid,
  cliente_id uuid references clientes(id) on delete cascade,
  codigo text not null,
  precio_tonelada numeric default 0,
  created_at timestamp with time zone default now()
);
