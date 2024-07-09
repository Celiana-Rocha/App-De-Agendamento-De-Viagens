CREAT TABLE IF NOT EXISTS 'TRIPS' (
    id TEXT PRIMARY KEY,
    destination TEXT NOT NULL,
    start_date DATETIME,
    end_date DATETIME,
    owner_name TEXT NOT NULL,
    owner_email TEXT NOT NULL,
    status INTEGER -- 1 para verdadeirp (true), 0 para falso (false)
);

CREAT TABLE IF NOT EXISTS 'emailz_to_invite' (
    id TEXT PRIMARY KEY,
    trip_id TEXT,
    email TEXT NOT NULL,
    FOREIGN KEY (trip_id) REFERENCES trips(id)
);

CREAT TABLE IF NOT EXISTS 'links' (
    id TEXT PRIMARY KEY,
    trip_id TEXT,
    link TEXT NOT NULL,
    FOREIGN KEY (trip_id) REFERENCES trips(id)
);