-- ----------------------------------------------------------
--  driver: mssql
-- ----------------------------------------------------------
-- ----------------------------------------------------------
--  insert into table valid
-- ----------------------------------------------------------
INSERT INTO valid (name, create_by, create_time, change_by, change_time)
    VALUES
    ('valid', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table valid
-- ----------------------------------------------------------
INSERT INTO valid (name, create_by, create_time, change_by, change_time)
    VALUES
    ('invalid', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table valid
-- ----------------------------------------------------------
INSERT INTO valid (name, create_by, create_time, change_by, change_time)
    VALUES
    ('invalid-temporarily', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table users
-- ----------------------------------------------------------
INSERT INTO users (first_name, last_name, login, pw, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('Admin', 'OTRS', 'root@localhost', 'roK20XGbWEsSM', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table groups
-- ----------------------------------------------------------
INSERT INTO groups (name, comments, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('users', 'Group for default access.', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table groups
-- ----------------------------------------------------------
INSERT INTO groups (name, comments, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('admin', 'Group of all administrators.', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table groups
-- ----------------------------------------------------------
INSERT INTO groups (name, comments, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('stats', 'Group for statistics access.', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table group_user
-- ----------------------------------------------------------
INSERT INTO group_user (user_id, group_id, permission_key, permission_value, create_by, create_time, change_by, change_time)
    VALUES
    (1, 1, 'rw', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table group_user
-- ----------------------------------------------------------
INSERT INTO group_user (user_id, group_id, permission_key, permission_value, create_by, create_time, change_by, change_time)
    VALUES
    (1, 2, 'rw', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table group_user
-- ----------------------------------------------------------
INSERT INTO group_user (user_id, group_id, permission_key, permission_value, create_by, create_time, change_by, change_time)
    VALUES
    (1, 3, 'rw', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table link_type
-- ----------------------------------------------------------
INSERT INTO link_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('Normal', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table link_type
-- ----------------------------------------------------------
INSERT INTO link_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('ParentChild', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table link_state
-- ----------------------------------------------------------
INSERT INTO link_state (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('Valid', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table link_state
-- ----------------------------------------------------------
INSERT INTO link_state (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('Temporary', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_state_type
-- ----------------------------------------------------------
INSERT INTO ticket_state_type (name, comments, create_by, create_time, change_by, change_time)
    VALUES
    ('new', 'All new state types (default: viewable).', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_state_type
-- ----------------------------------------------------------
INSERT INTO ticket_state_type (name, comments, create_by, create_time, change_by, change_time)
    VALUES
    ('open', 'All open state types (default: viewable).', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_state_type
-- ----------------------------------------------------------
INSERT INTO ticket_state_type (name, comments, create_by, create_time, change_by, change_time)
    VALUES
    ('closed', 'All closed state types (default: not viewable).', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_state_type
-- ----------------------------------------------------------
INSERT INTO ticket_state_type (name, comments, create_by, create_time, change_by, change_time)
    VALUES
    ('pending reminder', 'All ''pending reminder'' state types (default: viewable).', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_state_type
-- ----------------------------------------------------------
INSERT INTO ticket_state_type (name, comments, create_by, create_time, change_by, change_time)
    VALUES
    ('pending auto', 'All ''pending auto *'' state types (default: viewable).', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_state_type
-- ----------------------------------------------------------
INSERT INTO ticket_state_type (name, comments, create_by, create_time, change_by, change_time)
    VALUES
    ('removed', 'All ''removed'' state types (default: not viewable).', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_state_type
-- ----------------------------------------------------------
INSERT INTO ticket_state_type (name, comments, create_by, create_time, change_by, change_time)
    VALUES
    ('merged', 'State type for merged tickets (default: not viewable).', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_state
-- ----------------------------------------------------------
INSERT INTO ticket_state (name, comments, type_id, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('new', 'New ticket created by customer.', 1, 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_state
-- ----------------------------------------------------------
INSERT INTO ticket_state (name, comments, type_id, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('closed successful', 'Ticket is closed successful.', 3, 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_state
-- ----------------------------------------------------------
INSERT INTO ticket_state (name, comments, type_id, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('closed unsuccessful', 'Ticket is closed unsuccessful.', 3, 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_state
-- ----------------------------------------------------------
INSERT INTO ticket_state (name, comments, type_id, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('open', 'Open tickets.', 2, 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_state
-- ----------------------------------------------------------
INSERT INTO ticket_state (name, comments, type_id, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('removed', 'Customer removed ticket.', 6, 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_state
-- ----------------------------------------------------------
INSERT INTO ticket_state (name, comments, type_id, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('pending reminder', 'Ticket is pending for agent reminder.', 4, 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_state
-- ----------------------------------------------------------
INSERT INTO ticket_state (name, comments, type_id, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('pending auto close+', 'Ticket is pending for automatic close.', 5, 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_state
-- ----------------------------------------------------------
INSERT INTO ticket_state (name, comments, type_id, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('pending auto close-', 'Ticket is pending for automatic close.', 5, 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_state
-- ----------------------------------------------------------
INSERT INTO ticket_state (name, comments, type_id, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('merged', 'State for merged tickets.', 7, 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table salutation
-- ----------------------------------------------------------
INSERT INTO salutation (name, text, content_type, comments, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('system standard salutation (en)', 'Dear <OTRS_CUSTOMER_REALNAME>,

Thank you for your request.

', 'text/plain; charset=utf-8', 'Standard Salutation.', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table signature
-- ----------------------------------------------------------
INSERT INTO signature (name, text, content_type, comments, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('system standard signature (en)', '
Your Ticket-Team

 <OTRS_Agent_UserFirstname> <OTRS_Agent_UserLastname>

--
 Super Support - Waterford Business Park
 5201 Blue Lagoon Drive - 8th Floor & 9th Floor - Miami, 33126 USA
 Email: hot@example.com - Web: http://www.example.com/
--', 'text/plain; charset=utf-8', 'Standard Signature.', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table system_address
-- ----------------------------------------------------------
INSERT INTO system_address (value0, value1, comments, valid_id, queue_id, create_by, create_time, change_by, change_time)
    VALUES
    ('otrs@localhost', 'OTRS System', 'Standard Address.', 1, 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table follow_up_possible
-- ----------------------------------------------------------
INSERT INTO follow_up_possible (name, comments, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('possible', 'Follow ups after closed(+|-) possible. Ticket will be reopen.', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table follow_up_possible
-- ----------------------------------------------------------
INSERT INTO follow_up_possible (name, comments, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('reject', 'Follow ups after closed(+|-) not possible. No new ticket will be created.', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table follow_up_possible
-- ----------------------------------------------------------
INSERT INTO follow_up_possible (name, comments, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('new ticket', 'Follow ups after closed(+|-) not possible. A new ticket will be created..', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table queue
-- ----------------------------------------------------------
INSERT INTO queue (name, group_id, system_address_id, salutation_id, signature_id, follow_up_id, follow_up_lock, unlock_timeout, comments, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('Postmaster', 1, 1, 1, 1, 1, 1, 0, 'Postmaster queue.', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table queue
-- ----------------------------------------------------------
INSERT INTO queue (name, group_id, system_address_id, salutation_id, signature_id, follow_up_id, follow_up_lock, unlock_timeout, comments, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('Raw', 1, 1, 1, 1, 1, 1, 0, 'All default incoming tickets.', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table queue
-- ----------------------------------------------------------
INSERT INTO queue (name, group_id, system_address_id, salutation_id, signature_id, follow_up_id, follow_up_lock, unlock_timeout, comments, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('Junk', 1, 1, 1, 1, 1, 1, 0, 'All junk tickets.', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table queue
-- ----------------------------------------------------------
INSERT INTO queue (name, group_id, system_address_id, salutation_id, signature_id, follow_up_id, follow_up_lock, unlock_timeout, comments, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('Misc', 1, 1, 1, 1, 1, 1, 0, 'All misc tickets.', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table standard_template
-- ----------------------------------------------------------
INSERT INTO standard_template (name, text, content_type, template_type, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('empty answer', '', 'text/plain; charset=utf-8', 'Answer', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table standard_template
-- ----------------------------------------------------------
INSERT INTO standard_template (name, text, content_type, template_type, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('test answer', 'Some test answer to show how a standard template can be used.', 'text/plain; charset=utf-8', 'Answer', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table queue_standard_template
-- ----------------------------------------------------------
INSERT INTO queue_standard_template (queue_id, standard_template_id, create_by, create_time, change_by, change_time)
    VALUES
    (1, 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table queue_standard_template
-- ----------------------------------------------------------
INSERT INTO queue_standard_template (queue_id, standard_template_id, create_by, create_time, change_by, change_time)
    VALUES
    (2, 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table queue_standard_template
-- ----------------------------------------------------------
INSERT INTO queue_standard_template (queue_id, standard_template_id, create_by, create_time, change_by, change_time)
    VALUES
    (3, 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table queue_standard_template
-- ----------------------------------------------------------
INSERT INTO queue_standard_template (queue_id, standard_template_id, create_by, create_time, change_by, change_time)
    VALUES
    (4, 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table auto_response_type
-- ----------------------------------------------------------
INSERT INTO auto_response_type (name, comments, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('auto reply', 'Auto reply which will be sent out after a new ticket has been created.', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table auto_response_type
-- ----------------------------------------------------------
INSERT INTO auto_response_type (name, comments, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('auto reject', 'Auto reject which will be sent out after a follow up has been rejected (in case queue follow up option is "reject").', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table auto_response_type
-- ----------------------------------------------------------
INSERT INTO auto_response_type (name, comments, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('auto follow up', 'Auto follow up is sent out after a follow up has been received for a ticket (in case queue follow up option is "possible").', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table auto_response_type
-- ----------------------------------------------------------
INSERT INTO auto_response_type (name, comments, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('auto reply/new ticket', 'Auto reply/new ticket which will be sent out after a follow up has been rejected and a new ticket has been created (in case queue follow up option is "new ticket").', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table auto_response_type
-- ----------------------------------------------------------
INSERT INTO auto_response_type (name, comments, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('auto remove', 'Auto remove will be sent out after a customer removed the request.', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table auto_response
-- ----------------------------------------------------------
INSERT INTO auto_response (type_id, system_address_id, name, text0, text1, charset, content_type, comments, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    (1, 1, 'default reply (after new ticket has been created)', 'This is a demo text which is send to every inquiry.
It could contain something like:

Thanks for your email. A new ticket has been created.

You wrote:
<OTRS_CUSTOMER_EMAIL[6]>

Your email will be answered by a human ASAP

Have fun with OTRS! :-)

Your OTRS Team
', 'RE: <OTRS_CUSTOMER_SUBJECT[24]>', 'utf-8', 'text/plain', '', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table auto_response
-- ----------------------------------------------------------
INSERT INTO auto_response (type_id, system_address_id, name, text0, text1, charset, content_type, comments, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    (2, 1, 'default reject (after follow up and rejected of a closed ticket)', 'Your previous ticket is closed.

-- Your follow up has been rejected. --

Please create a new ticket.

Your OTRS Team
', 'Your email has been rejected! (RE: <OTRS_CUSTOMER_SUBJECT[24]>)', 'utf-8', 'text/plain', '', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table auto_response
-- ----------------------------------------------------------
INSERT INTO auto_response (type_id, system_address_id, name, text0, text1, charset, content_type, comments, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    (3, 1, 'default follow up (after a ticket follow up has been added)', 'Thanks for your follow up email

You wrote:
<OTRS_CUSTOMER_EMAIL[6]>

Your email will be answered by a human ASAP.

Have fun with OTRS!

Your OTRS Team
', 'RE: <OTRS_CUSTOMER_SUBJECT[24]>', 'utf-8', 'text/plain', '', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table auto_response
-- ----------------------------------------------------------
INSERT INTO auto_response (type_id, system_address_id, name, text0, text1, charset, content_type, comments, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    (4, 1, 'default reject/new ticket created (after closed follow up with new ticket creation)', 'Your previous ticket is closed.

-- A new ticket has been created for you. --

You wrote:
<OTRS_CUSTOMER_EMAIL[6]>

Your email will be answered by a human ASAP.

Have fun with OTRS!

Your OTRS Team
', 'New ticket has been created! (RE: <OTRS_CUSTOMER_SUBJECT[24]>)', 'utf-8', 'text/plain', '', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_type
-- ----------------------------------------------------------
INSERT INTO ticket_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('Unclassified', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_priority
-- ----------------------------------------------------------
INSERT INTO ticket_priority (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('1 very low', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_priority
-- ----------------------------------------------------------
INSERT INTO ticket_priority (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('2 low', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_priority
-- ----------------------------------------------------------
INSERT INTO ticket_priority (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('3 normal', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_priority
-- ----------------------------------------------------------
INSERT INTO ticket_priority (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('4 high', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_priority
-- ----------------------------------------------------------
INSERT INTO ticket_priority (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('5 very high', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_lock_type
-- ----------------------------------------------------------
INSERT INTO ticket_lock_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('unlock', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_lock_type
-- ----------------------------------------------------------
INSERT INTO ticket_lock_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('lock', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_lock_type
-- ----------------------------------------------------------
INSERT INTO ticket_lock_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('tmp_lock', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('NewTicket', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('FollowUp', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('SendAutoReject', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('SendAutoReply', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('SendAutoFollowUp', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('Forward', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('Bounce', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('SendAnswer', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('SendAgentNotification', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('SendCustomerNotification', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('EmailAgent', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('EmailCustomer', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('PhoneCallAgent', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('PhoneCallCustomer', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('AddNote', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('Move', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('Lock', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('Unlock', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('Remove', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('TimeAccounting', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('CustomerUpdate', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('PriorityUpdate', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('OwnerUpdate', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('LoopProtection', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('Misc', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('SetPendingTime', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('StateUpdate', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('TicketDynamicFieldUpdate', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('WebRequestCustomer', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('TicketLinkAdd', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('TicketLinkDelete', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('SystemRequest', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('Merged', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('ResponsibleUpdate', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('Subscribe', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('Unsubscribe', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('TypeUpdate', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('ServiceUpdate', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('SLAUpdate', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('ArchiveFlagUpdate', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('EscalationSolutionTimeStop', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('EscalationResponseTimeStart', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('EscalationUpdateTimeStart', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('EscalationSolutionTimeStart', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('EscalationResponseTimeNotifyBefore', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('EscalationUpdateTimeNotifyBefore', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('EscalationSolutionTimeNotifyBefore', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('EscalationResponseTimeStop', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('EscalationUpdateTimeStop', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('TitleUpdate', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table article_type
-- ----------------------------------------------------------
INSERT INTO article_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('email-external', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table article_type
-- ----------------------------------------------------------
INSERT INTO article_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('email-internal', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table article_type
-- ----------------------------------------------------------
INSERT INTO article_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('email-notification-ext', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table article_type
-- ----------------------------------------------------------
INSERT INTO article_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('email-notification-int', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table article_type
-- ----------------------------------------------------------
INSERT INTO article_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('phone', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table article_type
-- ----------------------------------------------------------
INSERT INTO article_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('fax', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table article_type
-- ----------------------------------------------------------
INSERT INTO article_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('sms', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table article_type
-- ----------------------------------------------------------
INSERT INTO article_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('webrequest', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table article_type
-- ----------------------------------------------------------
INSERT INTO article_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('note-internal', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table article_type
-- ----------------------------------------------------------
INSERT INTO article_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('note-external', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table article_type
-- ----------------------------------------------------------
INSERT INTO article_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('note-report', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table article_sender_type
-- ----------------------------------------------------------
INSERT INTO article_sender_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('agent', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table article_sender_type
-- ----------------------------------------------------------
INSERT INTO article_sender_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('system', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table article_sender_type
-- ----------------------------------------------------------
INSERT INTO article_sender_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('customer', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket
-- ----------------------------------------------------------
INSERT INTO ticket (tn, queue_id, ticket_lock_id, user_id, responsible_user_id, ticket_priority_id, ticket_state_id, title, create_time_unix, timeout, until_time, escalation_time, escalation_response_time, escalation_update_time, escalation_solution_time, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('2010080210123456', 2, 1, 1, 1, 3, 1, 'Welcome to OTRS!', 1280750400, 0, 0, 0, 0, 0, 0, 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table article
-- ----------------------------------------------------------
INSERT INTO article (ticket_id, article_type_id, article_sender_type_id, a_from, a_to, a_subject, a_body, a_message_id, incoming_time, content_path, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    (1, 1, 3, 'OTRS Feedback <feedback@otrs.org>', 'Your OTRS System <otrs@localhost>', 'Welcome to OTRS!', 'Welcome!

Thank you for installing OTRS.

You will find updates and patches at http://www.otrs.com/open-source/.
Online documentation is available at http://doc.otrs.org/.
You can also use our mailing lists http://lists.otrs.org/
or our forums at http://forums.otrs.org/

Regards,

The OTRS Project
', '<007@localhost>', 1280750400, '2010/08/02', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table article_plain
-- ----------------------------------------------------------
INSERT INTO article_plain (article_id, body, create_by, create_time, change_by, change_time)
    VALUES
    (1, 'From: OTRS Feedback <feedback@otrs.org>
To: Your OTRS System <otrs@localhost>
Subject: Welcome to OTRS!

Welcome!

Thank you for installing OTRS.

You will find updates and patches at http://www.otrs.com/open-source/.
Online documentation is available at http://doc.otrs.org/.
You can also use our mailing lists http://lists.otrs.org/
or our forums at http://forums.otrs.org/

Regards,

The OTRS Project
', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table ticket_history
-- ----------------------------------------------------------
INSERT INTO ticket_history (name, history_type_id, ticket_id, type_id, article_id, priority_id, owner_id, state_id, queue_id, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('New Ticket [2010080210123456] created.', 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::NewTicket', 'utf-8', 'en', 'New ticket notification! (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Hi <OTRS_UserFirstname>,

There is a new ticket in <OTRS_TICKET_Queue>!

<OTRS_CUSTOMER_FROM> wrote:

<snip>
<OTRS_CUSTOMER_EMAIL[30]>
<snip>

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>

Your OTRS Notification Master', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::FollowUp', 'utf-8', 'en', 'You''ve got a follow up! (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Hi <OTRS_UserFirstname>,

You''ve got a follow up!

<OTRS_CUSTOMER_FROM> wrote:

<snip>
<OTRS_CUSTOMER_EMAIL[30]>
<snip>

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>

Your OTRS Notification Master', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::LockTimeout', 'utf-8', 'en', 'Lock Timeout! (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Hi <OTRS_UserFirstname>,

The lock timeout period on [<OTRS_TICKET_TicketNumber>] has been reached, it is now unlocked.

<OTRS_CUSTOMER_FROM> wrote:

<snip>
<OTRS_CUSTOMER_EMAIL[30]>
<snip>

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>

Your OTRS Notification Master', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::OwnerUpdate', 'utf-8', 'en', 'Ticket owner assigned to you! (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Hi <OTRS_UserFirstname>,

Ticket [<OTRS_TICKET_TicketNumber>] is assigned to you by <OTRS_CURRENT_UserFirstname> <OTRS_CURRENT_UserLastname>.

Comment:

<OTRS_COMMENT>

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>

Your OTRS Notification Master', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::ResponsibleUpdate', 'utf-8', 'en', 'Ticket assigned to you! (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Hi <OTRS_RESPONSIBLE_UserFirstname>,

Ticket [<OTRS_TICKET_TicketNumber>] is assigned to you by <OTRS_CURRENT_UserFirstname> <OTRS_CURRENT_UserLastname>.

Comment:

<OTRS_COMMENT>

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>

Your OTRS Notification Master', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::AddNote', 'utf-8', 'en', 'New note! (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Hi <OTRS_UserFirstname>,

<OTRS_CURRENT_UserFirstname> <OTRS_CURRENT_UserLastname> added a new note to ticket [<OTRS_TICKET_TicketNumber>].

Note:
<OTRS_CUSTOMER_BODY>

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>

Your OTRS Notification Master', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::Move', 'utf-8', 'en', 'Moved ticket in <OTRS_CUSTOMER_QUEUE> queue! (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Hi <OTRS_UserFirstname>,

<OTRS_CURRENT_UserFirstname> <OTRS_CURRENT_UserLastname> moved a ticket [<OTRS_TICKET_TicketNumber>] into <OTRS_CUSTOMER_QUEUE>.

<snip>
<OTRS_CUSTOMER_EMAIL[30]>
<snip>

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>

Your OTRS Notification Master', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::PendingReminder', 'utf-8', 'en', 'Ticket reminder has reached! (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Hi <OTRS_UserFirstname>,

The ticket [<OTRS_TICKET_TicketNumber>] has reached its reminder time!

<OTRS_CUSTOMER_FROM>

wrote:
<snip>
<OTRS_CUSTOMER_EMAIL[30]>
<snip>

Please have a look at:

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>

Your OTRS Notification Master', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::Escalation', 'utf-8', 'en', 'Ticket Escalation! (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Hi <OTRS_UserFirstname>,

The ticket [<OTRS_TICKET_TicketNumber>] is escalated!

Escalated at:    <OTRS_TICKET_EscalationDestinationDate>
Escalated since: <OTRS_TICKET_EscalationDestinationIn>

<OTRS_CUSTOMER_FROM>

wrote:
<snip>
<OTRS_CUSTOMER_EMAIL[30]>
<snip>

Please have a look at:

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>

Your OTRS Notification Master', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::EscalationNotifyBefore', 'utf-8', 'en', 'Ticket Escalation Warning! (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Hi <OTRS_UserFirstname>,

The ticket [<OTRS_TICKET_TicketNumber>] will escalate!

Escalation at: <OTRS_TICKET_EscalationDestinationDate>
Escalation in: <OTRS_TICKET_EscalationDestinationIn>

<OTRS_CUSTOMER_FROM>

wrote:
<snip>
<OTRS_CUSTOMER_EMAIL[30]>
<snip>

Please have a look at:

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>

Your OTRS Notification Master', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::NewTicket', 'utf-8', 'de', 'Neues Ticket! (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Hallo <OTRS_UserFirstname> <OTRS_UserLastname>,

es ist ein neues Ticket in <OTRS_TICKET_Queue>!

<OTRS_CUSTOMER_FROM> schrieb:

<snip>
<OTRS_CUSTOMER_EMAIL[30]>
<snip>

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>

Ihr OTRS Benachrichtigungs-Master', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::FollowUp', 'utf-8', 'de', 'Nachfrage! (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Hallo <OTRS_UserFirstname> <OTRS_UserLastname>,

Sie haben eine Nachfrage bekommen!

<OTRS_CUSTOMER_FROM> schrieb:

<snip>
<OTRS_CUSTOMER_EMAIL[30]>
<snip>

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>

Ihr OTRS Benachrichtigungs-Master', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::LockTimeout', 'utf-8', 'de', 'Lock Timeout! (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Hallo <OTRS_UserFirstname> <OTRS_UserLastname>,

Aufhebung der Sperre auf Dein gesperrtes Ticket [<OTRS_TICKET_TicketNumber>].

<OTRS_CUSTOMER_FROM> schrieb:

<snip>
<OTRS_CUSTOMER_EMAIL[30]>
<snip>

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>

Ihr OTRS Benachrichtigungs-Master', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::OwnerUpdate', 'utf-8', 'de', 'Ticket Besitz uebertragen an Sie! (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Hallo <OTRS_UserFirstname> <OTRS_UserLastname>,

Der Besitz des Tickets [<OTRS_TICKET_TicketNumber>] wurde an Sie von <OTRS_CURRENT_UserFirstname> <OTRS_CURRENT_UserLastname> uebertragen.

Kommentar:

<OTRS_COMMENT>

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>

Ihr OTRS Benachrichtigungs-Master', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::ResponsibleUpdate', 'utf-8', 'de', 'Ticket Verantwortung uebertragen an Sie! (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Hallo <OTRS_RESPONSIBLE_UserFirstname> <OTRS_RESPONSIBLE_UserLastname>,

Die Verantwortung des Tickets [<OTRS_TICKET_TicketNumber>] wurde an Sie von <OTRS_CURRENT_UserFirstname> <OTRS_CURRENT_UserLastname> uebertragen.

Kommentar:

<OTRS_COMMENT>

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>

Ihr OTRS Benachrichtigungs-Master', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::AddNote', 'utf-8', 'de', 'Neue Notiz! (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Hallo <OTRS_UserFirstname> <OTRS_UserLastname>,

<OTRS_CURRENT_UserFirstname> <OTRS_CURRENT_UserLastname> fuegte eine Notiz an Ticket [<OTRS_TICKET_TicketNumber>].

Notiz:
<OTRS_CUSTOMER_BODY>

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>

Ihr OTRS Benachrichtigungs-Master', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::Move', 'utf-8', 'de', 'Ticket verschoben in "<OTRS_CUSTOMER_QUEUE>" Queue! (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Hallo <OTRS_UserFirstname> <OTRS_UserLastname>,

<OTRS_CURRENT_UserFirstname> <OTRS_CURRENT_UserLastname> verschob Ticket [<OTRS_TICKET_TicketNumber>] nach "<OTRS_CUSTOMER_QUEUE>".

<snip>
<OTRS_CUSTOMER_EMAIL[30]>
<snip>

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>

Ihr OTRS Benachrichtigungs-Master', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::PendingReminder', 'utf-8', 'de', 'Ticket Erinnerung erreicht! (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Hallo <OTRS_UserFirstname> <OTRS_UserLastname>,

das Ticket [<OTRS_TICKET_TicketNumber>] hat die Erinnerungszeit erreicht!

<OTRS_CUSTOMER_FROM>

schrieb:
<snip>
<OTRS_CUSTOMER_EMAIL[30]>
<snip>

Bitte um weitere Bearbeitung:

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>

Ihr OTRS Benachrichtigungs-Master', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::Escalation', 'utf-8', 'de', 'Ticket Eskalation! (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Hallo <OTRS_UserFirstname> <OTRS_UserLastname>,

das Ticket [<OTRS_TICKET_TicketNumber>] ist eskaliert!

Eskaliert am:   <OTRS_TICKET_EscalationDestinationDate>
Eskaliert seit: <OTRS_TICKET_EscalationDestinationIn>

<OTRS_CUSTOMER_FROM>

schrieb:
<snip>
<OTRS_CUSTOMER_EMAIL[30]>
<snip>

Bitte um Bearbeitung:

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>

Ihr OTRS Benachrichtigungs-Master', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::EscalationNotifyBefore', 'utf-8', 'de', 'Ticket Eskalations-Warnung! (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Hallo <OTRS_UserFirstname> <OTRS_UserLastname>,

das Ticket [<OTRS_TICKET_TicketNumber>] wird bald eskalieren!

Eskalation um: <OTRS_TICKET_EscalationDestinationDate>
Eskalation in: <OTRS_TICKET_EscalationDestinationIn>

<OTRS_CUSTOMER_FROM>

schrieb:
<snip>
<OTRS_CUSTOMER_EMAIL[30]>
<snip>

Bitte um Bearbeitung:

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>

Ihr OTRS Benachrichtigungs-Master', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::NewTicket', 'utf-8', 'nl', 'Nieuw ticket (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Beste <OTRS_UserFirstname>,

Er is een nieuw ticket aangemaakt in <OTRS_TICKET_Queue>!

<OTRS_CUSTOMER_FROM> schreef:

<OTRS_CUSTOMER_EMAIL[30]>
(eerste 30 regels zijn weergegeven)

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::FollowUp', 'utf-8', 'nl', 'Reactie ontvangen (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Beste <OTRS_UserFirstname>,

Er is een reactie ontvangen op onderstaand ticket.

<OTRS_CUSTOMER_FROM> schreef:

<OTRS_CUSTOMER_EMAIL[30]>
(eerste 30 regels zijn weergegeven)

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>
', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::LockTimeout', 'utf-8', 'nl', 'Ticket ontgrendeld (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Beste <OTRS_UserFirstname>,

De bewerkingstijd van ticket [<OTRS_TICKET_TicketNumber>] is overschreden, het ticket is nu ontgrendeld.

<OTRS_CUSTOMER_FROM> schreef:

<OTRS_CUSTOMER_EMAIL[30]>
(eerste 30 regels zijn weergegeven)

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>
', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::OwnerUpdate', 'utf-8', 'nl', 'Ticket toegewezen (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Beste <OTRS_UserFirstname>,

Ticket [<OTRS_TICKET_TicketNumber>] is aan jou toegewezen door <OTRS_CURRENT_UserFirstname> <OTRS_CURRENT_UserLastname>.

Opmerking:

<OTRS_COMMENT>

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>
', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::ResponsibleUpdate', 'utf-8', 'nl', 'Verantwoordelijkheid bijgewerkt (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Beste <OTRS_RESPONSIBLE_UserFirstname>,

<OTRS_CURRENT_UserFirstname> <OTRS_CURRENT_UserLastname> heeft je geregistreerd als verantwoordelijke voor ticket [<OTRS_TICKET_TicketNumber>].

Opmerking:

<OTRS_COMMENT>

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>
', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::AddNote', 'utf-8', 'nl', 'Nieuwe notitie (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Beste <OTRS_UserFirstname>,

<OTRS_CURRENT_UserFirstname> <OTRS_CURRENT_UserLastname> heeft een nieuwe notitie toegevoegd aan [<OTRS_TICKET_TicketNumber>].

Notitie:
<OTRS_CUSTOMER_BODY>

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>
', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::Move', 'utf-8', 'nl', 'Ticket verplaatst naar <OTRS_CUSTOMER_QUEUE> (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Beste <OTRS_UserFirstname>,

<OTRS_CURRENT_UserFirstname> <OTRS_CURRENT_UserLastname> heeft [<OTRS_TICKET_TicketNumber>] verplaatst naar <OTRS_CUSTOMER_QUEUE>.

<OTRS_CUSTOMER_EMAIL[30]>
(eerste 30 regels zijn weergegeven)

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>
', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::PendingReminder', 'utf-8', 'nl', 'Herinnering (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Beste <OTRS_UserFirstname>,

Het herinnermoment voor ticket [<OTRS_TICKET_TicketNumber>] is bereikt.

<OTRS_CUSTOMER_FROM> schreef:

<OTRS_CUSTOMER_EMAIL[30]>
(eerste 30 regels zijn weergegeven)

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>
', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::Escalation', 'utf-8', 'nl', 'Escalatie (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Beste <OTRS_UserFirstname>,

Het ticket [<OTRS_TICKET_TicketNumber>] is geëscaleerd!

Geëscaleerd op:    <OTRS_TICKET_EscalationDestinationDate>
Geëscaleerd sinds: <OTRS_TICKET_EscalationDestinationIn>

<OTRS_CUSTOMER_FROM> schreef:

<OTRS_CUSTOMER_EMAIL[30]>
(eerste 30 regels zijn weergegeven)

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>
', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table notifications
-- ----------------------------------------------------------
INSERT INTO notifications (notification_type, notification_charset, notification_language, subject, text, content_type, create_by, create_time, change_by, change_time)
    VALUES
    ('Agent::EscalationNotifyBefore', 'utf-8', 'nl', 'Ticket gaat escaleren (<OTRS_CUSTOMER_SUBJECT[24]>)', 'Beste <OTRS_UserFirstname>,

Het ticket [<OTRS_TICKET_TicketNumber>] gaat escaleren!

Escalatie op:   <OTRS_TICKET_EscalationDestinationDate>
Escalatie over: <OTRS_TICKET_EscalationDestinationIn>

<OTRS_CUSTOMER_FROM> schreef:

<OTRS_CUSTOMER_EMAIL[30]>
(eerste 30 regels zijn weergegeven)

<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=AgentTicketZoom;TicketID=<OTRS_TICKET_TicketID>
', 'text/plain', 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table dynamic_field
-- ----------------------------------------------------------
INSERT INTO dynamic_field (internal_field, name, label, field_order, field_type, object_type, config, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    (1, 'ProcessManagementProcessID', 'ProcessManagementProcessID', 1, 'Text', 'Ticket', '---
DefaultValue: ''''
', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  insert into table dynamic_field
-- ----------------------------------------------------------
INSERT INTO dynamic_field (internal_field, name, label, field_order, field_type, object_type, config, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    (1, 'ProcessManagementActivityID', 'ProcessManagementActivityID', 1, 'Text', 'Ticket', '---
DefaultValue: ''''
', 1, 1, current_timestamp, 1, current_timestamp);
