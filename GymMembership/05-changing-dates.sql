-- SELECT membership_start + 7, membership_start FROM memberships; -- does not work, data type is changed
-- SELECT DATE_ADD(membership_start, INTERVAL 7 DAY), membership_start FROM memberships;
SELECT DATE_ADD(membership_start, INTERVAL 7 MONTH), membership_start FROM memberships;
