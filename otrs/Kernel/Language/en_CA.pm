# --
# Kernel/Language/en_CA.pm - provides en_CA language translation
# Copyright (C) 2001-2014 OTRS AG, http://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::en_CA;

use strict;
use warnings;

sub Data {
    my $Self = shift;

    # Hit should be "%y-%m-%d". This is the standard date format in Canada (as specified by
    # the Canadian Standards Association in CSA Z234.5:1989, which adopts the ISO 8601 standard)
    #
    # http://en.wikipedia.org/wiki/Date_and_time_notation_by_country#Canada
    # year(2009)-month(06)-day(09),

    # $$START$$
    # Last translation file sync: Mon Jun  8 07:32:04 2009

    # possible charsets
    $Self->{Charset} = ['us-ascii', 'UTF-8', 'iso-8859-1', 'iso-8859-15', ];

    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Year;)
    $Self->{DateFormat}          = '%Y-%M-%D %T';
    $Self->{DateFormatLong}      = '%T - %Y-%M-%D';
    $Self->{DateFormatShort}     = '%Y-%M-%D';
    $Self->{DateInputFormat}     = '%Y-%M-%D';
    $Self->{DateInputFormatLong} = '%Y-%M-%D - %T';
    $Self->{Separator}           = ',';

    $Self->{Translation} = {

        # we call it cell in canada
        'Mobile' => 'Cell',

        # Zip is american reference, postal code is canadian
        'Zip' => 'Postal Code',

        # history translation
        'History::Move' => 'Ticket moved into Queue "%s" (%s) from Queue "%s" (%s).',
        'History::TypeUpdate' => 'Updated Type to %s (ID=%s).',
        'History::ServiceUpdate' => 'Updated Service to %s (ID=%s).',
        'History::SLAUpdate' => 'Updated SLA to %s (ID=%s).',
        'History::NewTicket' => 'New Ticket [%s] created (Q=%s;P=%s;S=%s).',
        'History::FollowUp' => 'FollowUp for [%s]. %s',
        'History::SendAutoReject' => 'AutoReject sent to "%s".',
        'History::SendAutoReply' => 'AutoReply sent to "%s".',
        'History::SendAutoFollowUp' => 'AutoFollowUp sent to "%s".',
        'History::Forward' => 'Forwarded to "%s".',
        'History::Bounce' => 'Bounced to "%s".',
        'History::SendAnswer' => 'Email sent to "%s".',
        'History::SendAgentNotification' => '"%s"-notification sent to "%s".',
        'History::SendCustomerNotification' => 'Notification sent to "%s".',
        'History::EmailAgent' => 'Email sent to customer.',
        'History::EmailCustomer' => 'Added email. %s',
        'History::PhoneCallAgent' => 'Agent called customer.',
        'History::PhoneCallCustomer' => 'Customer called us.',
        'History::AddNote' => 'Added note (%s)',
        'History::Lock' => 'Locked ticket.',
        'History::Unlock' => 'Unlocked ticket.',
        'History::TimeAccounting' => '%s time unit(s) accounted. Now total %s time unit(s).',
        'History::Remove' => '%s',
        'History::CustomerUpdate' => 'Updated: %s',
        'History::PriorityUpdate' => 'Changed priority from "%s" (%s) to "%s" (%s).',
        'History::OwnerUpdate' => 'New owner is "%s" (ID=%s).',
        'History::ResponsibleUpdate' => 'New responsible is "%s" (ID=%s).',
        'History::LoopProtection' => 'Loop-Protection! No auto-response sent to "%s".',
        'History::Misc' => '%s',
        'History::SetPendingTime' => 'Updated: %s',
        'History::StateUpdate' => 'Old: "%s" New: "%s"',
        'History::TicketDynamicFieldUpdate' => 'Updated: %s=%s;%s=%s;',
        'History::WebRequestCustomer' => 'Customer request via web.',
        'History::TicketLinkAdd' => 'Added link to ticket "%s".',
        'History::TicketLinkDelete' => 'Deleted link to ticket "%s".',
        'History::Subscribe' => 'Added subscription for user "%s".',
        'History::Unsubscribe' => 'Removed subscription for user "%s".',
        'History::SystemRequest' => 'System Request (%s).',
        'History::EscalationResponseTimeNotifyBefore' => 'Escalation response time forewarned',
        'History::EscalationUpdateTimeNotifyBefore' => 'Escalation update time forewarned',
        'History::EscalationSolutionTimeNotifyBefore' => 'Escalation solution time forewarned',
        'History::EscalationResponseTimeStart' => 'Escalation response time in effect',
        'History::EscalationUpdateTimeStart' => 'Escalation update time in effect',
        'History::EscalationSolutionTimeStart' => 'Escalation solution time in effect',
        'History::EscalationResponseTimeStop' => 'Escalation response time finished',
        'History::EscalationUpdateTimeStop' => 'Escalation update time finished',
        'History::EscalationSolutionTimeStop' => 'Escalation solution time finished',
        'History::ArchiveFlagUpdate' => 'Archive state changed: "%s"',
        # There's a difference between May (short) and May (long) in some languages, not in en
        'May_long' => 'May',
        #CustomerUser fields
        'Title{CustomerUser}' => 'Title',
        'Firstname{CustomerUser}' => 'First name',
        'Lastname{CustomerUser}' => 'Last name',
        'Username{CustomerUser}' => 'Username',
        'Email{CustomerUser}' => 'E-mail address',
        'CustomerID{CustomerUser}' => 'Customer ID',
        'Phone{CustomerUser}' => 'Phone',
        'Fax{CustomerUser}' => 'Fax',
        'Mobile{CustomerUser}' => 'Cellphone',
        'Street{CustomerUser}' => 'Street',
        'Zip{CustomerUser}' => 'ZIP code',
        'City{CustomerUser}' => 'City',
        'Country{CustomerUser}' => 'Country',
        'Comment{CustomerUser}' => 'Comment',
        #User field
        'Title{user}' => 'Title',
    };
    # $$STOP$$
    return;
}

1;
