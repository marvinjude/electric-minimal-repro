
-- ⚡
-- Electrify initial tables
CALL electric.electrify('users');
CALL electric.electrify('workspaces');
CALL electric.electrify('records');
CALL electric.electrify('record_types');
CALL electric.electrify('favorites');
CALL electric.electrify('activities');
CALL electric.electrify('comments');
CALL electric.electrify('tasks');
CALL electric.electrify('tags');
CALL electric.electrify('views');
CALL electric.electrify('meeting_invites');
CALL electric.electrify('email_receipts');
CALL electric.electrify('srts');

-- ⚡ Note!
-- For every new table, you'll need to create a new file(`electrify-table-x`) and add `CALL electric.electrify('NewTable')` to the File