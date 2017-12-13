SELECT
circ_trans.*,
item_types.item_type_name, item_types.item_type_branch_type, item_types.item_type_division_type, item_types.item_type_print_type,
locations.location_short_code,locations.location_long_code, locations.location_name, locations.location_sierra_label, locations.location_location_type, locations.location_is_public, locations.location_detail_id,
op_codes.opcode_name,
patron_home_regions.patron_home_region_sort_order, patron_home_regions.patron_home_region_name,
patron_types.patron_type_name,
terminal_codes.terminal_code_name,

patrons.patron_city, patrons.patron_region, patrons.patron_postal_code, patrons.patron_lat, patrons.patron_lng,

location_details.location_detail_short_name AS terminal_location_short_name,
location_details.location_detail_lat AS terminal_code_location_lat,
location_details.location_detail_lng AS terminal_code_location_lng

FROM public.circ_trans

LEFT JOIN public.item_types AS item_types ON item_types.item_type_id = circ_trans.itype_code_num
LEFT JOIN public.locations AS locations ON locations.location_id = circ_trans.item_location_code
LEFT JOIN public.op_codes AS op_codes ON op_codes.opcode_id = circ_trans.op_code
LEFT JOIN public.patron_home_regions AS patron_home_regions ON patron_home_regions.patron_home_region_id = circ_trans.pcode3
LEFT JOIN public.patron_types AS patron_types ON patron_types.patron_type_id = circ_trans.ptype_code
LEFT JOIN public.patrons AS patrons ON patrons.patron_id = circ_trans.patron_id
LEFT JOIN public.terminal_codes AS terminal_codes ON terminal_codes.terminal_code_id = circ_trans.stat_group_code_num

LEFT JOIN public.location_details AS location_details ON location_details.location_detail_id = terminal_codes.location_detail_id
