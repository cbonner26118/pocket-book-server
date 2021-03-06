CREATE TYPE input_type AS ENUM ('income', 'debt');

CREATE TABLE inputs (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    title input_type NOT NULL,
    amount NUMERIC(10,2) NOT NULL,
    content  TEXT NOT NULL,
    date_added TIMESTAMPTZ DEFAULT now() NOT NULL,
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE NOT NULL
);