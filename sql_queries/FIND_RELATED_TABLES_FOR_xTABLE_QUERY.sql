SELECT
    c.CONSTRAINT_NAME,
    cu.TABLE_NAME AS ReferencingTable, cu.COLUMN_NAME AS ReferencingColumn,
    ku.TABLE_NAME AS ReferencedTable, ku.COLUMN_NAME AS ReferencedColumn
FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS c
INNER JOIN INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE cu
ON cu.CONSTRAINT_NAME = c.CONSTRAINT_NAME
INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE ku
ON ku.CONSTRAINT_NAME = c.UNIQUE_CONSTRAINT_NAME
WHERE ku.TABLE_NAME = ''