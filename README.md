# Data Warehouse

This repo is intended to be used for information relevant to the NYPL Data Warehouse.

## Tables

Name                  | Data Schema                                                                                                                                                     | Table Schema                                        | Query                                    | Load                                            | Notes
--------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------- | ---------------------------------------- | ----------------------------------------------- | ------------------------------------
`circ_trans`          | [Development](https://dev-platform.nypl.org/api/v0.1/current-schemas/circ_trans) - [Production](https://platform.nypl.org/api/v0.1/current-schemas/circ_trans)  | [schema.sql](tables/circ_trans/schema.sql)          | [query.sql](tables/circ_trans/query.sql) | [load.sql](tables/circ_trans/load.sql)          | [Notes](tables/circ_trans/README.md)
`item_types`          |                                                                                                                                                                 | [schema.sql](tables/item_types/schema.sql)          |                                          | [load.sql](tables/item_types/load.sql)          |
`locations`           |                                                                                                                                                                 | [schema.sql](tables/locations/schema.sql)           |                                          | [load.sql](tables/locations/load.sql)           |
`op_codes  `          |                                                                                                                                                                 | [schema.sql](tables/op_codes/schema.sql)            |                                          | [load.sql](tables/op_codes/load.sql)            |
`patron_types`        |                                                                                                                                                                 | [schema.sql](tables/patron_types/schema.sql)        |                                          | [load.sql](tables/patron_types/load.sql)        |
`terminal_codes`      |                                                                                                                                                                 | [schema.sql](tables/terminal_codes/schema.sql)      |                                          | [load.sql](tables/terminal_codes/load.sql)      |
`patron_home_regions` |                                                                                                                                                                 | [schema.sql](tables/patron_home_regions/schema.sql) |                                          | [load.sql](tables/patron_home_regions/load.sql) |

## Data

The [data](data) directory contains CSVs with data for various lookup tables.

## Services Involved
1) circTransPoller - `https://github.com/NYPL/dataHarvester`
2) circTransTransformerService - `https://github.com/NYPL/dw-circ-trans-transformer`
