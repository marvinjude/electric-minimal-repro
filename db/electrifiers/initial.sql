
-- ⚡
-- Electrify initial tables
CALL electric.electrify('users');
CALL electric.electrify('people');
CALL electric.electrify('companies');
CALL electric.electrify('deals');
CALL electric.electrify('activities');
CALL electric.electrify('files');
CALL electric.electrify('emails');
CALL electric.electrify('email_receipts');
CALL electric.electrify('meetings');
CALL electric.electrify('invitees'); 
CALL electric.electrify('tasks');
CALL electric.electrify('tags');
CALL electric.electrify('workspaces');
CALL electric.electrify('views');
CALL electric.electrify('favourites');


-- ⚡ Note!
-- For every new table, you'll need to create a new file(`electrify-table-x`) and add `CALL electric.electrify('NewTable')` to the File