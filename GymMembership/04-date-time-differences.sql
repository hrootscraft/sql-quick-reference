-- SELECT TIMESTAMPDIFF(MINUTE, last_checkin, last_checkout) FROM memberships;
-- SELECT TIMESTAMPDIFF(HOUR, last_checkin, last_checkout) FROM memberships;
-- SELECT TIMESTAMPDIFF(SECOND, last_checkin, last_checkout) FROM memberships;

-- SELECT DATEDIFF(NOW(), membership_start) FROM memberships;
SELECT DATEDIFF(membership_end, membership_start) FROM memberships;
