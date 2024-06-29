-- User.surql

-- Create schemafull user table.
DEFINE TABLE user SCHEMAFULL;

-- Define some fields.
DEFINE FIELD firstName ON TABLE user TYPE string;
DEFINE FIELD lastName ON TABLE user TYPE string;
DEFINE FIELD email ON TABLE user TYPE string
  ASSERT string::is::email($value);
DEFINE FIELD password_hash ON TABLE user TYPE string;
DEFINE INDEX userEmailIndex ON TABLE user COLUMNS email UNIQUE;
