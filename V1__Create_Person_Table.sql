CREATE TABLE IF NOT EXISTS snapshot (
  persistence_id VARCHAR(255) NOT NULL,
  sequence_nr BIGINT NOT NULL,
  created_at BIGINT NOT NULL,
  manifest VARCHAR(255) NOT NULL,
  snapshot LONGTEXT NOT NULL,
  serializer_id INT,
  version BIGINT NOT NULL,
  PRIMARY KEY (persistence_id, sequence_nr),
  INDEX snapshot_sequence_nr_idx (sequence_nr),
  INDEX snapshot_created_at_idx (created_at)
);