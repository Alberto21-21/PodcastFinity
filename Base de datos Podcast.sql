CREATE TABLE Usuario (
    id_usuario NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    correo VARCHAR2(100) UNIQUE NOT NULL,
    contraseña VARCHAR2(255) NOT NULL,
    fecha_registro DATE DEFAULT SYSDATE NOT NULL,
    rol VARCHAR2(20) CHECK (rol IN ('Administrador', 'Miembro')) NOT NULL
);

CREATE TABLE Podcast (
    id_podcast NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    titulo VARCHAR2(255) NOT NULL,
    creador VARCHAR2(255) NOT NULL,
    descripcion CLOB,
    fecha_publicacion DATE NOT NULL,
    categoria VARCHAR2(100) NOT NULL,
    popularidad NUMBER DEFAULT 0 CHECK (popularidad >= 0),
    total_valoraciones NUMBER DEFAULT 0 CHECK (total_valoraciones >= 0),
    promedio_puntuacion NUMBER(3,2) DEFAULT 0 CHECK (promedio_puntuacion BETWEEN 0 AND 5)
);

CREATE TABLE Puntuacion (
    id_puntuacion NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_usuario NUMBER NOT NULL,
    id_podcast NUMBER NOT NULL,
    valor NUMBER(1) CHECK (valor BETWEEN 1 AND 5) NOT NULL,
    comentario CLOB,
    fecha_puntuacion DATE DEFAULT SYSDATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario) ON DELETE CASCADE,
    FOREIGN KEY (id_podcast) REFERENCES Podcast(id_podcast) ON DELETE CASCADE
);

CREATE TABLE Comentario (
    id_comentario NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_usuario NUMBER NOT NULL,
    id_podcast NUMBER NOT NULL,
    comentario CLOB NOT NULL,
    fecha_comentario DATE DEFAULT SYSDATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario) ON DELETE CASCADE,
    FOREIGN KEY (id_podcast) REFERENCES Podcast(id_podcast) ON DELETE CASCADE
);

CREATE TABLE Estadistica (
    id_estadistica NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_podcast NUMBER NOT NULL,
    veces_valorado NUMBER DEFAULT 0 CHECK (veces_valorado >= 0),
    promedio_puntuacion NUMBER(3,2) DEFAULT 0 CHECK (promedio_puntuacion BETWEEN 0 AND 5),
    FOREIGN KEY (id_podcast) REFERENCES Podcast(id_podcast) ON DELETE CASCADE
);

CREATE TABLE Busqueda (
    id_busqueda NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_usuario NUMBER NOT NULL,
    termino_busqueda VARCHAR2(255) NOT NULL,
    fecha_busqueda DATE DEFAULT SYSDATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario) ON DELETE CASCADE
);
