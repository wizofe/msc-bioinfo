-- Protein
CREATE TABLE protein (
  pdb_code VARCHAR(4) NOT NULL,
  resolution DECIMAL(5,2) DEFAULT 999 NOT NULL,
  CHECK (resolution = 999 OR (resolution <= 30.0 AND resolution > 0))
  experimental_method CHAR(2) NOT NULL,
  PRIMARY_KEY(pdb_code)
);

-- Chain
CREATE TABLE chain (
  pdb_code VARCHAR(4) NOT NULL,
  chain_letter CHAR(1) NOT NULL,
  length SMALLINT(6) NULL,
  PRIMARY_KEY(pdb_code, chain_letter)
);

-- CATH DOMAIN
CREATE TABLE cath_domain (
  pdb_code VARCHAR(4) NOT NULL,
  chain_letter CHAR(1) NOT NULL,
  n_domains	SMALLINT(6) NULL,
  n_family	VARCHAR(20) NOT NULL,
  PRIMARY_KEY(pdb_code, chain_letter)
);

-- CATH CLASSIFICATION
CREATE TABLE cath_classification (
  n_family VARCHAR(20) NOT NULL,
  family_name VARCHAR(20) NOT NULL,
);

