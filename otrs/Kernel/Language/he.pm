# --
# Kernel/Language/he.pm - provides Hebrew language translation
# Copyright (C) 2001-2014 OTRS AG, http://otrs.com/
# Copyright (C) 2014 Amir Elion <amir.elion@gmail.com>
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --
package Kernel::Language::he;

use strict;
use warnings;

sub Data {
    my $Self = shift;
    my %Param = @_;


    # $$START$$
    # possible charsets
    $Self->{Charset} = ['utf-8', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Year;)
    $Self->{DateFormat}          = '%D/%M/%Y %T';
    $Self->{DateFormatLong}      = '%A %D %B %T %Y';
    $Self->{DateFormatShort}     = '%D/%M/%Y';
    $Self->{DateInputFormat}     = '%D/%M/%Y';
    $Self->{DateInputFormatLong} = '%D/%M/%Y - %T';

    # csv separator
    $Self->{Separator} = '';

    # TextDirection rtl or ltr
    $Self->{TextDirection} = 'rtl';

    $Self->{Translation} = {

        # Template: AAABase
        'Yes' => 'כן',
        'No' => 'לא',
        'yes' => 'כן',
        'no' => 'לא',
        'Off' => 'כבוי',
        'off' => 'כבוי',
        'On' => 'מופעל',
        'on' => 'מופעל',
        'top' => 'למעלה',
        'end' => 'סוף',
        'Done' => 'בוצע',
        'Cancel' => 'ביטול',
        'Reset' => 'אפס',
        'more than ... ago' => 'יותר מלפני ... ',
        'in more than ...' => 'בעוד יותר מ ... ',
        'within the last ...' => 'ב ... האחרונים',
        'within the next ...' => 'ב ... הבאים',
        'Created within the last' => '',
        'Created more than ... ago' => '',
        'Today' => 'היום',
        'Tomorrow' => 'מחר',
        'Next week' => 'בשבוע הבא',
        'day' => 'יום',
        'days' => 'ימים',
        'day(s)' => 'יום/ימים',
        'd' => 'י',
        'hour' => 'שעה',
        'hours' => 'שעות',
        'hour(s)' => 'שעה/שעות',
        'Hours' => 'שעות',
        'h' => 'ש',
        'minute' => 'דקה',
        'minutes' => 'דקות',
        'minute(s)' => 'דקה/דקות',
        'Minutes' => 'דקות',
        'm' => 'ד',
        'month' => 'חודש',
        'months' => 'חודשים',
        'month(s)' => 'חודש(ים)',
        'week' => 'שבוע',
        'week(s)' => 'שבוע(ות)',
        'year' => 'שנה',
        'years' => 'שנים',
        'year(s)' => 'שנה/שנים',
        'second(s)' => 'שניה/שניות',
        'seconds' => 'שניות',
        'second' => 'שניה',
        's' => 'ש',
        'Time unit' => 'יחידת זמן',
        'wrote' => 'כתב',
        'Message' => 'הודעה',
        'Error' => 'שגיאה',
        'Bug Report' => 'דיווח באג',
        'Attention' => 'שימו לב',
        'Warning' => 'אזהרה',
        'Module' => 'מודולה',
        'Modulefile' => 'קובץ מודולה',
        'Subfunction' => 'תת פונקציה',
        'Line' => 'קו',
        'Setting' => 'הגדרה',
        'Settings' => 'הגדרות',
        'Example' => 'דוגמא',
        'Examples' => 'דוגמאות',
        'valid' => 'תקף',
        'Valid' => 'תקף',
        'invalid' => 'לא תקף',
        'Invalid' => 'לא תקף',
        '* invalid' => '* לא תקף',
        'invalid-temporarily' => 'לא תקף זמנית',
        ' 2 minutes' => ' 2 דקות',
        ' 5 minutes' => ' 5 דקות',
        ' 7 minutes' => ' 7 דקות',
        '10 minutes' => '10 דקות',
        '15 minutes' => '15 דקות',
        'Mr.' => 'מר',
        'Mrs.' => 'מרת',
        'Next' => 'קדימה',
        'Back' => 'אחורה',
        'Next...' => 'קדימה...',
        '...Back' => '...אחורה',
        '-none-' => '-אף אחד-',
        'none' => 'אין',
        'none!' => 'אין!',
        'none - answered' => 'אף אחד - ללא מענה',
        'please do not edit!' => 'נא לא לערוך!',
        'Need Action' => 'נדרשת פעולה',
        'AddLink' => 'הוסף קישור',
        'Link' => 'קישור',
        'Unlink' => 'הסר קישור',
        'Linked' => 'מקושר',
        'Link (Normal)' => 'קישור (רגיל)',
        'Link (Parent)' => 'קישור (אב)',
        'Link (Child)' => 'קישור (בן)',
        'Normal' => 'רגיל',
        'Parent' => 'אב',
        'Child' => 'בן',
        'Hit' => 'ביקור',
        'Hits' => 'ביקורים',
        'Text' => 'מלל',
        'Standard' => 'סטנדרטי',
        'Lite' => 'Lite',
        'User' => 'משתמש',
        'Username' => 'שם משתמש',
        'Language' => 'שפה',
        'Languages' => 'שפות',
        'Password' => 'סיסמא',
        'Preferences' => 'העדפות',
        'Salutation' => 'כינוי כבוד',
        'Salutations' => 'כינויי כבוד',
        'Signature' => 'חתימה',
        'Signatures' => 'חתימות',
        'Customer' => 'לקוח',
        'CustomerID' => 'מספר זיהוי לקוח',
        'CustomerIDs' => 'מספרי זיהוי לקוח',
        'customer' => 'לקוח',
        'agent' => 'סוכן',
        'system' => 'מערכת',
        'Customer Info' => 'מידע לקוח',
        'Customer Information' => 'מידע לקוח',
        'Customer Company' => 'חברת הלקוח',
        'Customer Companies' => 'חברות הלקוח',
        'Company' => 'חברה',
        'go!' => 'התחל!',
        'go' => 'התחל',
        'All' => 'כל',
        'all' => 'כל',
        'Sorry' => 'מצטערים',
        'update!' => 'עדכון!',
        'update' => 'עדכון',
        'Update' => 'עדכון',
        'Updated!' => 'עודכן!',
        'submit!' => 'שלח!',
        'submit' => 'שלח',
        'Submit' => 'שלח',
        'change!' => 'שנה!',
        'Change' => 'שנה',
        'change' => 'שנה',
        'click here' => 'לחץ כאן',
        'Comment' => 'הערה',
        'Invalid Option!' => 'אפשרות לא חוקית!',
        'Invalid time!' => 'זמן לא חוקי!',
        'Invalid date!' => 'תאריך לא חוקי!',
        'Name' => 'שם',
        'Group' => 'קבוצה',
        'Description' => 'תיאור',
        'description' => 'תיאור',
        'Theme' => 'ערכת עיצוב',
        'Created' => 'נוצר',
        'Created by' => 'נוצר על ידי',
        'Changed' => 'שונה',
        'Changed by' => 'שנה על ידי',
        'Search' => 'חיפוש',
        'and' => 'וגם',
        'between' => 'בין',
        'before/after' => 'לפני/אחרי',
        'Fulltext Search' => 'חיפוש טקסט מלא',
        'Data' => 'נתונים',
        'Options' => 'אפשרויות',
        'Title' => 'כותרת',
        'Item' => 'פריט',
        'Delete' => 'מחק',
        'Edit' => 'ערוך',
        'View' => 'צפה',
        'Number' => 'מספר',
        'System' => 'מערכת',
        'Contact' => 'איש קשר',
        'Contacts' => 'אנשי קשר',
        'Export' => 'ייצא',
        'Up' => 'למעלה',
        'Down' => 'למטה',
        'Add' => 'הוסף',
        'Added!' => 'נוסף!',
        'Category' => 'קטגוריה',
        'Viewer' => 'צופה',
        'Expand' => 'הרחב',
        'Small' => 'קטן',
        'Medium' => 'בינוני',
        'Large' => 'גדול',
        'Date picker' => 'בורר תאריך',
        'Show Tree Selection' => 'הצג עץ בחריה',
        'The field content is too long!' => 'תוכן השדה ארוך מדי!',
        'Maximum size is %s characters.' => 'הגודל המירבי הוא %s תווים.',
        'This field is required or' => 'שדה זה הוא שדה חובה או',
        'New message' => 'הודעה חדשה',
        'New message!' => 'הודעה חדשה!',
        'Please answer this ticket(s) to get back to the normal queue view!' =>
            'אנא השב על פניה/פניות אלו כדי לחזור לתצוגת המעקב הרגילה!',
        'You have %s new message(s)!' => 'יש לך %s הודעות חדשות!',
        'You have %s reminder ticket(s)!' => 'יש לך %s תזכורות!',
        'The recommended charset for your language is %s!' => 'קידוד התווים המומלץ לשפה שלך הוא %s!',
        'Change your password.' => 'שנה את הסיסמא שלך.',
        'Please activate %s first!' => 'אנא הפעל %s קודם לכן!',
        'No suggestions' => 'אין הצעות',
        'Word' => 'מילה',
        'Ignore' => 'התעלם',
        'replace with' => 'החלף ב',
        'There is no account with that login name.' => 'אין חשבון עם שם משתמש זה.',
        'Login failed! Your user name or password was entered incorrectly.' =>
            'ההתחברות נכשלה! שם המשתמש או הסיסמא שלך לא הוקלדו נכון.',
        'There is no acount with that user name.' => 'אין חשבון עם שם משתמש זה.',
        'Please contact your administrator' => 'אנא צרו קשר עם מנהל המערכת',
        'Authentication succeeded, but no customer record is found in the customer backend. Please contact your administrator.' =>
            '',
        'This e-mail address already exists. Please log in or reset your password.' =>
            '',
        'Logout' => 'התנתק',
        'Logout successful. Thank you for using %s!' => 'ההתנתקות הצליחה! תודה על השימוש ב-%s!',
        'Feature not active!' => 'יכולת זו אינה מופעלת!',
        'Agent updated!' => 'הסוכן עודכן!',
        'Database Selection' => 'בחירת בסיס נתונים',
        'Create Database' => 'צור בסיס נתונים',
        'System Settings' => 'הגדרות מערכת',
        'Mail Configuration' => 'הגדרות דואר אלקטרוני',
        'Finished' => 'הסתיים',
        'Install OTRS' => 'התקנת OTRS',
        'Intro' => 'מבוא',
        'License' => 'רישיון',
        'Database' => 'בסיס נתונים',
        'Configure Mail' => 'הגדר דואר אלקטרוני',
        'Database deleted.' => 'בסיס הנתונים נמחק.',
        'Enter the password for the administrative database user.' => 'הקלידו את הסיסמא למשתמש מנהל בסיס הנתונים',
        'Enter the password for the database user.' => 'הקלידו את הסיסמא למשתמש בסיס הנתונים',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty.' =>
            'אם קבעתם סיסמת root לבסיס הנתונים שלכם, יש להקלידה כאן. אם לא, השאירו את השדה ריק',
        'Database already contains data - it should be empty!' => 'בסיס הנתונים כבר מכיל מידע - עליו להיות ריק!',
        'Login is needed!' => 'נדרשת התחברות!',
        'Password is needed!' => 'נדרשת סיסמא!',
        'Take this Customer' => 'קבל לקוח זה',
        'Take this User' => 'קבל משתמש זה',
        'possible' => 'אפשרי',
        'reject' => 'דחה',
        'reverse' => 'הפוך',
        'Facility' => 'מתקן',
        'Time Zone' => 'אזור זמן',
        'Pending till' => 'ממתין עד',
        'Don\'t use the Superuser account to work with OTRS! Create new Agents and work with these accounts instead.' =>
            'אל תשתמשו בחשבון משתמש העל עם המערת! צרו סוכנים חדשים ועבדו עם חשבונות אלו במקום זאת',
        'Dispatching by email To: field.' => 'שליחה לפי שדה דוא"ל אל.',
        'Dispatching by selected Queue.' => 'שליחה לפי התור שנבחר.',
        'No entry found!' => 'לא נמצאה רשומה!',
        'Session invalid. Please log in again.' => 'ההתחברות אינה תקפה. אנא התחבר שנית.',
        'Session has timed out. Please log in again.' => 'ההתחברות פגה. אנא התחבר שנית.',
        'Session limit reached! Please try again later.' => 'הזמן המירבי של ההתחברות חלף. אנא נסו שוב מאוחר יותר.',
        'No Permission!' => 'אין הרשאה!',
        '(Click here to add)' => '(לחץ כאן על מנת להוסיף)',
        'Preview' => 'תצוגה מקדימה',
        'Package not correctly deployed! Please reinstall the package.' =>
            'החבילה לא מותקנת נכון. אנא התקינו מחדש.',
        '%s is not writable!' => '%s אינו משתנה!',
        'Cannot create %s!' => 'לא ניתן ליצור %s!',
        'Check to activate this date' => 'סמנו כדי להפעיל תאריך זה',
        'You have Out of Office enabled, would you like to disable it?' =>
            'הגדרה של היעדרות מהמשרד מופעלת, האם תרצו לכבותה?',
        'News about OTRS releases!' => '',
        'Customer %s added' => 'הלקוח %s נוסף',
        'Role added!' => 'התפקיד נוסף!',
        'Role updated!' => 'התפקיד עודכן!',
        'Attachment added!' => 'קובץ מצורף נוסף!',
        'Attachment updated!' => 'קובץ מצורף עודכן!',
        'Response added!' => 'המענה נוסף!',
        'Response updated!' => 'המענה עודכן!',
        'Group updated!' => 'הקבוצה עודכנה',
        'Queue added!' => 'התור נוסף!',
        'Queue updated!' => 'התור עודכן!',
        'State added!' => 'הסטטוס נוסף!',
        'State updated!' => 'הסטטוס עודכן!',
        'Type added!' => 'הסוג נוסף!',
        'Type updated!' => 'הסוג עודכן!',
        'Customer updated!' => 'הלקוח עודכן!',
        'Customer company added!' => 'חברת הלקוח נוספה!',
        'Customer company updated!' => 'חברת הלקוח עודכנה!',
        'Note: Company is invalid!' => 'שים לב: החברה אינה תקינה!',
        'Mail account added!' => 'חשבון דוא"ל נוסף!',
        'Mail account updated!' => 'חשבון דוא"ל עודכן!',
        'System e-mail address added!' => 'כתובת דוא"ל מערכת נוספה!',
        'System e-mail address updated!' => 'כתובת דוא"ל מערכת עודכנה!',
        'Contract' => 'חוזה',
        'Online Customer: %s' => 'לקוח מקוון: %s',
        'Online Agent: %s' => 'סוכן מקוון: %s',
        'Calendar' => 'לוח שנה',
        'File' => 'קובץ',
        'Filename' => 'שם קובץ',
        'Type' => 'סוג',
        'Size' => 'גודל',
        'Upload' => 'העלה',
        'Directory' => 'תיקייה',
        'Signed' => 'חתום',
        'Sign' => 'חתום',
        'Crypted' => 'מוצפן',
        'Crypt' => 'הצפן',
        'PGP' => 'PGP',
        'PGP Key' => 'מפתח PGP',
        'PGP Keys' => 'מפתחות PGP',
        'S/MIME' => 'S/MIME',
        'S/MIME Certificate' => 'תעודת S/MIME',
        'S/MIME Certificates' => 'תעודות S/MIME',
        'Office' => 'משרד',
        'Phone' => 'טלפון',
        'Fax' => 'פקס',
        'Mobile' => 'נייד',
        'Zip' => 'מיקוד',
        'City' => 'עיר',
        'Street' => 'רחוב',
        'Country' => 'ארץ',
        'Location' => 'מיקום',
        'installed' => 'מותקן',
        'uninstalled' => 'לא מותקן',
        'Security Note: You should activate %s because application is already running!' =>
            '',
        'Unable to parse repository index document.' => '',
        'No packages for your framework version found in this repository, it only contains packages for other framework versions.' =>
            '',
        'No packages, or no new packages, found in selected repository.' =>
            '',
        'Edit the system configuration settings.' => 'ערכו את הגדרות המערכת.',
        'ACL information from database is not in sync with the system configuration, please deploy all ACLs.' =>
            '',
        'printed at' => 'הודפס ב',
        'Loading...' => 'טוען...',
        'Dear Mr. %s,' => 'אדון %s היקר,',
        'Dear Mrs. %s,' => 'גברת %s היקרה,',
        'Dear %s,' => '%s היקר/ה,',
        'Hello %s,' => 'שלום %s,',
        'This email address already exists. Please log in or reset your password.' =>
            'כתובת הדוא"ל כבר קיימת. אנא התחברו או אפסו את הסיסמא.',
        'New account created. Sent login information to %s. Please check your email.' =>
            'חשבון חדש נוצר. פרטי התחברות נשלחו אל %s. אנא בדקו את הדוא"ל שלכם',
        'Please press Back and try again.' => 'אנא לחצו על חזור ונסו שנית.',
        'Sent password reset instructions. Please check your email.' => 'נשלחו הנחיות לאיפוס סיסמא. אנא בדקו את הדוא"K שלכם.',
        'Sent new password to %s. Please check your email.' => 'סיסמא חדשה נשלחה אל %s. אנא בדקו את הדוא"ל שלכם',
        'Upcoming Events' => 'אירועים קרובים',
        'Event' => 'אירוע',
        'Events' => 'אירועים',
        'Invalid Token!' => 'קוד לא תקין!',
        'more' => 'עוד',
        'Collapse' => 'צמצם',
        'Shown' => 'מוצג',
        'Shown customer users' => 'משתמשי לקוח מוצגים',
        'News' => 'חדשות',
        'Product News' => 'חדשות מוצר',
        'OTRS News' => 'חדשות OTRS',
        '7 Day Stats' => 'סטטיסטיקה של 7 ימים',
        'Process Management information from database is not in sync with the system configuration, please synchronize all processes.' =>
            '',
        'Package not verified by the OTRS Group! It is recommended not to use this package.' =>
            '',
        '<br>If you continue to install this package, the following issues may occur!<br><br>&nbsp;-Security problems<br>&nbsp;-Stability problems<br>&nbsp;-Performance problems<br><br>Please note that issues that are caused by working with this package are not covered by OTRS service contracts!<br><br>' =>
            '',
        'Mark' => 'סמן',
        'Unmark' => 'בטל סימון',
        'Bold' => 'מודגש',
        'Italic' => 'מוטה',
        'Underline' => 'קו תחתון',
        'Font Color' => 'צבע גופן',
        'Background Color' => 'צבע רקע',
        'Remove Formatting' => 'הסר עיצוב',
        'Show/Hide Hidden Elements' => 'הצג/הסתר רכיבים מוסתרים',
        'Align Left' => 'הצמד לשמאל',
        'Align Center' => 'מרכז',
        'Align Right' => 'הצמד לימין',
        'Justify' => 'הצמד לשני הכיוונים',
        'Header' => 'כותרת',
        'Indent' => 'הזחה',
        'Outdent' => 'בטל הזחה',
        'Create an Unordered List' => 'צור רשימה לא ממוספרת',
        'Create an Ordered List' => 'צור רשימה ממוספרת',
        'HTML Link' => 'קישור HTML',
        'Insert Image' => 'הוסף תמונה',
        'CTRL' => 'CTRL',
        'SHIFT' => 'SHIFT',
        'Undo' => 'בטל',
        'Redo' => 'בצע שנית',
        'Scheduler process is registered but might not be running.' => 'תהליך מתוזמן רשום אך ייתכן שאינו רץ.',
        'Scheduler is not running.' => 'תהליך מתוזמן אינו רץ.',
        'Can\'t contact registration server. Please try again later.' => '',
        'No content received from registration server. Please try again later.' =>
            '',
        'Problems processing server result. Please try again later.' => '',
        'Username and password do not match. Please try again.' => 'שם משתמש וסיסמא אינם תואמים. אנא נסו שנית.',
        'The selected process is invalid!' => 'התהליך שנבחר אינו תקין!',

        # Template: AAACalendar
        'New Year\'s Day' => 'יום תחילת השנה',
        'International Workers\' Day' => 'חג העובדים הבינלאומי',
        'Christmas Eve' => 'ערב חג המולד',
        'First Christmas Day' => '1. היום הראשון של חג המולד',
        'Second Christmas Day' => '2. היום השני של חג המולד',
        'New Year\'s Eve' => 'ערב השנה החדשה האזרחי',

        # Template: AAAGenericInterface
        'OTRS as requester' => 'OTRS כמבקש',
        'OTRS as provider' => 'OTRS כמספק',
        'Webservice "%s" created!' => 'Webservice "%s" נוצר!',
        'Webservice "%s" updated!' => 'Webservice "%s" עודכן!',

        # Template: AAAMonth
        'Jan' => 'ינו',
        'Feb' => 'פבר',
        'Mar' => 'מרץ',
        'Apr' => 'אפר',
        'May' => 'מאי',
        'Jun' => 'יונ',
        'Jul' => 'יול',
        'Aug' => 'אוג',
        'Sep' => 'ספא',
        'Oct' => 'אוק',
        'Nov' => 'נוב',
        'Dec' => 'דצמ',
        'January' => 'ינואר',
        'February' => 'פברואר',
        'March' => 'מרץ',
        'April' => 'אפריל',
        'May_long' => 'מאי',
        'June' => 'יוני',
        'July' => 'יולי',
        'August' => 'אוגוסט',
        'September' => 'ספטמבר',
        'October' => 'אוקטובר',
        'November' => 'נובמבר',
        'December' => 'דצמבר',

        # Template: AAAPreferences
        'Preferences updated successfully!' => 'ההעדפות עודכנו בהצלחה!',
        'User Profile' => 'פרופיל משתמש',
        'Email Settings' => 'הגדרות דוא"ל',
        'Other Settings' => 'הגדרות אחרות',
        'Change Password' => 'שנה סיסמא',
        'Current password' => 'סיסמא נוכחית',
        'New password' => 'סיסמא חדשה',
        'Verify password' => 'אמת סיסמא',
        'Spelling Dictionary' => 'מילון איות',
        'Default spelling dictionary' => 'מילון איות רגיל',
        'Max. shown Tickets a page in Overview.' => 'מספר הפניות המירבי המוצג בעמוד מבט על.',
        'The current password is not correct. Please try again!' => 'הסיסמא הנוכחית אינה נכונה. אנא נסה שנית!',
        'Can\'t update password, your new passwords do not match. Please try again!' =>
            'לא ניתן לעדכן סיסמא. הסיסמאות החדשות שלכם אינן תואמות. אנא נסו שנית!',
        'Can\'t update password, it contains invalid characters!' => 'לא ניתן לעדכן סיסמא. היא כוללת תווים אסורים!',
        'Can\'t update password, it must be at least %s characters long!' =>
            'לא ניתן לעדכן סיסמא. היא חייבת להכיל לפחות  %s  תווים!',
        'Can\'t update password, it must contain at least 2 lowercase and 2 uppercase characters!' =>
            'לא ניתן לעדכן סיסמא. היא חייבת להכיל לפחות 2 אותיות קטנות ו- 2 גדולות!.',
        'Can\'t update password, it must contain at least 1 digit!' => 'לא ניתן לעדכן סיסמא. היא חייבת להכיל לפחות מספר אחד!',
        'Can\'t update password, it must contain at least 2 characters!' =>
            'לא ניתן לעדכן סיסמא. היא חייבת להכיל לפחות 2 תווים!',
        'Can\'t update password, this password has already been used. Please choose a new one!' =>
            'לא ניתן לעדכן סיסמא. כבר השתמשתם בסיסמא זו. אנא בחרו סיסמא חדשה!',
        'Select the separator character used in CSV files (stats and searches). If you don\'t select a separator here, the default separator for your language will be used.' =>
            '',
        'CSV Separator' => 'מפריד CSV',

        # Template: AAAStats
        'Stat' => 'סטטיסטיקה',
        'Sum' => 'סה"כ',
        'Days' => '',
        'No (not supported)' => 'לא (לא נתמך)',
        'Please fill out the required fields!' => 'אנא מלא את השדות הנדרשים!',
        'Please select a file!' => 'אנא בחר קובץ!',
        'Please select an object!' => 'אנא בחרו אובייקט!',
        'Please select a graph size!' => 'אנא בחרו גודל תרשים!',
        'Please select one element for the X-axis!' => 'אנא בחרו פריט לציר ה-X!',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' =>
            'אנא בחרו רק פריט אחד או כבו את כפתור ה \'קבוע\' בו מסומן השדה הנבחר!',
        'If you use a checkbox you have to select some attributes of the select field!' =>
            '',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' =>
            '',
        'The selected end time is before the start time!' => 'זמן הסיום שנבחר הוא לפני זמן ההתחלה!',
        'You have to select one or more attributes from the select field!' =>
            'אנא בחרו מאפיין אחד או יותר משדה הבחירה!',
        'The selected Date isn\'t valid!' => 'התאריך שנבחר אינו חוקי!',
        'Please select only one or two elements via the checkbox!' => 'אנא בחרו רק פריט אחד או שניים בעזרת תיבת הסימון!',
        'If you use a time scale element you can only select one element!' =>
            '',
        'You have an error in your time selection!' => 'יש לכם שגיאה בבחירה!',
        'Your reporting time interval is too small, please use a larger time scale!' =>
            '',
        'The selected start time is before the allowed start time!' => 'זמן ההתחלה שנבחר הוא לפני זמן ההתחלה המותר!',
        'The selected end time is after the allowed end time!' => 'זמן הסיום שנבחר הוא אחרי זמן הסיום המותר!',
        'The selected time period is larger than the allowed time period!' =>
            'התקופה שנבחרה היא ארוכה יותר מהמשך המותר!',
        'Common Specification' => 'מאפיינים טיפוסיים',
        'X-axis' => 'ציר X',
        'Value Series' => 'סדרת הערכים',
        'Restrictions' => 'הגבלות',
        'graph-lines' => 'תרשים קווים',
        'graph-bars' => 'תרשים עמודות',
        'graph-hbars' => 'תרשים עמודות (אופקי)',
        'graph-points' => 'תרשים נקודות',
        'graph-lines-points' => 'תרשים נקודות-קווים',
        'graph-area' => 'תרשים שטח',
        'graph-pie' => 'תרשים עוגה',
        'extended' => 'מורחב',
        'Agent/Owner' => 'סוכן/בעלים',
        'Created by Agent/Owner' => 'נוצר על ידי סוכן/בעלים',
        'Created Priority' => 'נוצר בעדיפות',
        'Created State' => 'מצב נוכחי',
        'Create Time' => 'זמן היצירה',
        'CustomerUserLogin' => 'התחברות משתמש לקוח',
        'Close Time' => 'זמן הסגירה',
        'TicketAccumulation' => 'צבירת פניות',
        'Attributes to be printed' => 'מאפיינים שיש להדפיס',
        'Sort sequence' => 'רצף הסידור',
        'Order by' => 'סדר לפי',
        'Limit' => 'הגבל',
        'Ticketlist' => 'רשימת פניות',
        'ascending' => 'עולה',
        'descending' => 'יורד',
        'First Lock' => 'נעילה ראשונה',
        'Evaluation by' => 'הערכה לפי',
        'Total Time' => 'זמן כולל',
        'Ticket Average' => 'ממוצע פניה',
        'Ticket Min Time' => 'זמן מינימלי לפניה',
        'Ticket Max Time' => 'זמן מירבי לפניה',
        'Number of Tickets' => 'מספר הפניות',
        'Article Average' => 'ממוצע מאמר',
        'Article Min Time' => 'זמן מינימלי למאמר',
        'Article Max Time' => 'זמן מירבי למאמר',
        'Number of Articles' => 'מספר המאמרים',
        'Accounted time by Agent' => 'זמן שהוקדש לפי סוכן',
        'Ticket/Article Accounted Time' => 'זמן שהוקדש לפניה/מאמר',
        'TicketAccountedTime' => 'זמן שהוקדש לפניה',
        'Ticket Create Time' => 'זמן יצירת הפניה',
        'Ticket Close Time' => 'זמן סגירת הפניה',

        # Template: AAASupportDataCollector
        'Unknown' => '',
        'Information' => 'מידע',
        'OK' => 'אישור',
        'Problem' => '',
        'Webserver' => '',
        'Operating System' => 'מערכת הפעלה',
        'OTRS' => '',
        'Table Presence' => '',
        'Internal Error: Could not open file.' => '',
        'Table Check' => '',
        'Internal Error: Could not read file.' => '',
        'Tables found which are not present in the database.' => '',
        'Database Size' => '',
        'Could not determine database size.' => '',
        'Database Version' => '',
        'Could not determine database version.' => '',
        'Client Connection Charset' => '',
        'Setting character_set_client needs to be utf8.' => '',
        'Server Database Charset' => '',
        'Setting character_set_database needs to be UNICODE or UTF8.' => '',
        'Table Charset' => '',
        'There were tables found which no not have utf8 as charset.' => '',
        'Maximum Query Size' => '',
        'The setting \'max_allowed_packet\' must be higher than 20 MB.' =>
            '',
        'Query Cache Size' => '',
        'The setting \'query_cache_size\' should be used (higher than 10 MB but not more than 512 MB).' =>
            '',
        'Default Storage Engine' => '',
        'Tables with a different storage engine than the default engine were found.' =>
            '',
        'Table Status' => '',
        'Tables found which do not have a regular status.' => '',
        'MySQL 5.x or higher is required.' => '',
        'NLS_LANG Setting' => '',
        'NLS_LANG must be set to utf8 (e.g. german_germany.utf8).' => '',
        'NLS_DATE_FORMAT Setting' => '',
        'NLS_DATE_FORMAT must be set to \'YYYY-MM-DD HH24:MI:SS\'.' => '',
        'NLS_DATE_FORMAT Setting SQL Check' => '',
        'Setting client_encoding needs to be UNICODE or UTF8.' => '',
        'Setting server_encoding needs to be UNICODE or UTF8.' => '',
        'Date Format' => '',
        'Setting DateStyle needs to be ISO.' => '',
        'PostgreSQL 8.x or higher is required.' => '',
        'OTRS Disk Partition' => '',
        'Disk Partitions Usage' => '',
        'Distribution' => '',
        'Could not determine distribution.' => '',
        'Kernel Version' => '',
        'Could not determine kernel version.' => '',
        'Load' => '',
        'The load should be at maximum, the number of procesors the system have (e.g. a load of 8 or less on a 8 CPUs system is OK.' =>
            '',
        'Could not determine system load.' => '',
        'Perl Modules' => '',
        'Not all required Perl modules are correctly installed.' => '',
        'Perl Version' => 'גרסת Perl',
        'Free Swap Space (%)' => '',
        'No Swap Enabled.' => '',
        'Used Swap Space (MB)' => '',
        'There should be more than 60% free swap space.' => '',
        'There should be no more than 200 MB swap space used.' => '',
        'Config Settings' => '',
        'Could not determine value.' => '',
        'Database Records' => '',
        'Tickets' => 'פניות',
        'Ticket History Entries' => '',
        'Articles' => '',
        'Attachments (DB, Without HTML)' => '',
        'Customers With At Least One Ticket' => '',
        'Queues' => 'תורות',
        'Agents' => 'סוכנים',
        'Roles' => 'תפקידים',
        'Groups' => 'קבוצות',
        'Dynamic Fields' => 'שדות דינמיים',
        'Dynamic Field Values' => '',
        'GenericInterface Webservices' => '',
        'Processes' => 'תהליכים',
        'Months Between First And Last Ticket' => '',
        'Tickets Per Month (avg)' => '',
        'Default SOAP Username and Password' => '',
        'Security risk: you use the default setting for SOAP::User and SOAP::Password. Please change it.' =>
            '',
        'Default Admin Password' => '',
        'Security risk: the agent account root@localhost still has the default password. Please change it or invalidate the account.' =>
            '',
        'Error Log' => '',
        'There are error reports in your system log.' => '',
        'File System Writable' => '',
        'The file system on your OTRS partition is not writable.' => '',
        'Domain Name' => '',
        'Your FQDN setting is invalid.' => '',
        'Package installation status' => '',
        'Some packages are not correctly installed.' => '',
        'Package List' => '',
        'SystemID' => 'SystemID',
        'Your SystemID setting is invalid, it should only contain digits.' =>
            '',
        'OTRS Version' => 'גרסת OTRS',
        'Ticket Index Module' => '',
        'You have more than 60,000 tickets and should use the StaticDB backend. See admin manual (Performance Tuning) for more information.' =>
            '',
        'Open Tickets' => '',
        'You should not have more than 8,000 open tickets in your system.' =>
            '',
        'Ticket Search Index module' => '',
        'You have more than 50,000 articles and should use the StaticDB backend. See admin manual (Performance Tuning) for more information.' =>
            '',
        'Orphaned Records In ticket_lock_index Table' => '',
        'Table ticket_lock_index contains orphaned records. Please run otrs/bin/otrs.CleanTicketIndex.pl to clean the StaticDB index.' =>
            '',
        'Orphaned Records In ticket_index Table' => '',
        'Table ticket_index contains orphaned records. Please run otrs/bin/otrs.CleanTicketIndex.pl to clean the StaticDB index.' =>
            '',
        'Environment Variables' => '',
        'Webserver Version' => '',
        'Could not determine webserver version.' => '',
        'CGI Accelerator Usage' => '',
        'You should use FastCGI or mod_perl to increase your performance.' =>
            '',
        'mod_deflate Usage' => '',
        'Please install mod_deflate to improve GUI speed.' => '',
        'mod_headers Usage' => '',
        'Please install mod_headers to improve GUI speed.' => '',
        'Apache::Reload Usage' => '',
        'Apache::Reload or Apache2::Reload should be used as PerlModule and PerlInitHandler to prevent web server restarts when installing and upgrading modules.' =>
            '',
        'Apache::DBI Usage' => '',
        'Apache::DBI should be used to get a better performance  with pre-established database connections.' =>
            '',
        'You should use PerlEx to increase your performance.' => '',

        # Template: AAATicket
        'Status View' => 'תצוגת סטטוס',
        'Bulk' => 'מרובה',
        'Lock' => 'נעל',
        'Unlock' => 'שחרר נעילה',
        'History' => 'היסטוריה',
        'Zoom' => 'זום',
        'Age' => 'נוצר לפני',
        'Bounce' => 'החזר',
        'Forward' => 'קדימה',
        'From' => 'מאת',
        'To' => 'אל',
        'Cc' => 'העתק',
        'Bcc' => 'העתק נסתר',
        'Subject' => 'נושא',
        'Move' => 'העבר',
        'Queue' => 'תור',
        'Priority' => 'עדיפות',
        'Priorities' => 'עדיפויות',
        'Priority Update' => 'עדכן עדיפות',
        'Priority added!' => 'העדיפות נוספה!',
        'Priority updated!' => 'העדיפות עודכנה!',
        'Signature added!' => 'חתימה נוספה!',
        'Signature updated!' => 'חתימה עודכנה!',
        'SLA' => 'SLA',
        'Service Level Agreement' => 'הסכם רמת שירות',
        'Service Level Agreements' => 'הסכמי רמת שירות',
        'Service' => 'שירות',
        'Services' => 'שירותים',
        'State' => 'מצב',
        'States' => 'מצבים',
        'Status' => 'סטטוס',
        'Statuses' => 'סטטוסים',
        'Ticket Type' => 'סוג פניה',
        'Ticket Types' => 'סוגי פניות',
        'Compose' => 'חבר',
        'Pending' => 'ממתין',
        'Owner' => 'בעלים',
        'Owner Update' => 'הבעלים עודכן',
        'Responsible' => 'אחראי',
        'Responsible Update' => 'אחראי עודכן',
        'Sender' => 'שולח',
        'Article' => 'מאמר',
        'Ticket' => 'פניה',
        'Createtime' => 'זמן יצירה',
        'plain' => 'לא מעוצב',
        'Email' => 'דוא"ל',
        'email' => 'דוא"ל',
        'Close' => 'סגור',
        'Action' => 'פעולה',
        'Attachment' => 'קובץ מצורף',
        'Attachments' => 'קבצים מצורפים',
        'This message was written in a character set other than your own.' =>
            'הודעה זו נכתבה עם תווים שונים מאלו שלכם.',
        'If it is not displayed correctly,' => 'אם זה לא מוצג באופן תקין,',
        'This is a' => 'זה',
        'to open it in a new window.' => 'לפתיחה בחלון חדש',
        'This is a HTML email. Click here to show it.' => 'זוהי הודעת HTML. לחצו כאן כדי להציגה.',
        'Free Fields' => 'שדות חופשיים',
        'Merge' => 'מזג',
        'merged' => 'מוזג',
        'closed successful' => 'סגירה הצליחה',
        'closed unsuccessful' => 'סגירה לא הצליחה',
        'Locked Tickets Total' => 'סה"כ פניות נעולות',
        'Locked Tickets Reminder Reached' => 'הגיע זמן תזכורת פניה נעולה',
        'Locked Tickets New' => 'פניה נעולה חדשה',
        'Responsible Tickets Total' => 'סה"כ פניות של אחראי',
        'Responsible Tickets New' => 'פניות חדשות לאחראי',
        'Responsible Tickets Reminder Reached' => 'הגיע זמן תזכורת אחראי פניות',
        'Watched Tickets Total' => 'סה"כ פניות במעקב',
        'Watched Tickets New' => 'פניות חדשות במעקב',
        'Watched Tickets Reminder Reached' => 'הגיע זמן תזכורת פניות במעקב',
        'All tickets' => 'כל הפניות',
        'Available tickets' => 'פניות זמינות',
        'Escalation' => 'אסקלציה',
        'last-search' => 'חיפוש אחרון',
        'QueueView' => 'תצוגת התור',
        'Ticket Escalation View' => 'תצוגת אסקלציה של פניה',
        'Message from' => 'הודעה מ',
        'End message' => 'סוף ההודעה',
        'Forwarded message from' => 'הודעה שהועברה מאת',
        'End forwarded message' => 'סוף ההודעה שהועברה',
        'Bounce Article to a different mail address' => '',
        'new' => 'חדש',
        'open' => 'פתוח',
        'Open' => 'פתוח',
        'Open tickets' => 'פניות פתוחות',
        'closed' => 'סגור',
        'Closed' => 'סגור',
        'Closed tickets' => 'פניות סגורות',
        'removed' => 'הוסר',
        'pending reminder' => 'ממתין לתזכורת',
        'pending auto' => 'ממתין לאוטמטי',
        'pending auto close+' => 'ממתין לסגירה אוטומטית+',
        'pending auto close-' => 'ממתין לסגירה אוטומטית-',
        'email-external' => 'דוא"ל חיצוני',
        'email-internal' => 'דוא"ל פנימי',
        'note-external' => 'הודעה חיצונית',
        'note-internal' => 'הודעה פנימית',
        'note-report' => 'הודעה לדוח',
        'phone' => 'טלפון',
        'sms' => 'SMS',
        'webrequest' => 'בקשת אינטרנט',
        'lock' => 'נעל',
        'unlock' => 'שחרר נעילה',
        'very low' => 'נמוכה מאוד',
        'low' => 'נמוכה',
        'normal' => 'רגילה',
        'high' => 'גבוהה',
        'very high' => 'גבוהה מאוד',
        '1 very low' => '1 נמוכה מאוד',
        '2 low' => '2 נמוכה',
        '3 normal' => '3 רגילה',
        '4 high' => '4 גבוהה',
        '5 very high' => '5 גבוהה מאוד',
        'auto follow up' => 'מעקב אוטומטי',
        'auto reject' => 'דחייה אוטומטית',
        'auto remove' => 'הסרה אוטומטית',
        'auto reply' => 'מענה אוטומטי',
        'auto reply/new ticket' => 'מענה אוטומטי/פניה חדשה',
        'Create' => 'צור',
        'Answer' => 'מענה',
        'Phone call' => 'שיחת טלפון',
        'Ticket "%s" created!' => 'הפניה "%s" נוצרה!',
        'Ticket Number' => 'מספר פניה',
        'Ticket Object' => 'אובייקט הפניה',
        'No such Ticket Number "%s"! Can\'t link it!' => 'מספר פניה "%s" לא קיים! לא ניתן לקשר אליה!',
        'You don\'t have write access to this ticket.' => 'אין לכם הרשאות גישה לפניה זו.',
        'Sorry, you need to be the ticket owner to perform this action.' =>
            'מצטערים. עליכם להיות בעלי הפניה כדי לבצע פעולה זו.',
        'Please change the owner first.' => 'אנא שנו את הבעלים קודם.',
        'Ticket selected.' => 'הפניה נבחרה.',
        'Ticket is locked by another agent.' => 'הפניה בבעלות סוכן אחר!',
        'Ticket locked.' => 'הפניה נעולה.',
        'Don\'t show closed Tickets' => 'אל תציג פניות סגורות',
        'Show closed Tickets' => 'הצג פניות סגורות',
        'New Article' => 'מאמר חדש',
        'Unread article(s) available' => 'מאמר(ים) שלא נקראו זמינים',
        'Remove from list of watched tickets' => 'הסר מרשימת פניות במעקב',
        'Add to list of watched tickets' => 'הוסף לרשימת פניות במעקב',
        'Email-Ticket' => 'פניה בדוא"ל',
        'Create new Email Ticket' => 'צור פניה חדשה בדוא"ל',
        'Phone-Ticket' => 'פניה בטלפון',
        'Search Tickets' => 'חפש פניה',
        'Edit Customer Users' => 'ערוך משתמשי לקוח',
        'Edit Customer Company' => 'ערוך את חברת הלקוח',
        'Bulk Action' => 'פעולה גורפת',
        'Bulk Actions on Tickets' => 'פעולות גורפות על פניות',
        'Send Email and create a new Ticket' => 'שלח דוא"ל וצור פניה חדשה',
        'Create new Email Ticket and send this out (Outbound)' => 'צור פניה חדשה בדוא"ל ושלח אותה (דואר יוצא)',
        'Create new Phone Ticket (Inbound)' => 'צור פניה חדשה בטלפון (שיחה נכנסת)',
        'Address %s replaced with registered customer address.' => 'הכתובת %s מוחלפת בכתובת של הלקוח הרשום.',
        'Customer user automatically added in Cc.' => 'משתשמ לקוח נוסף אוטומטית למכותבים.',
        'Overview of all open Tickets' => 'מבט-על של כל הפניות הפתוחות',
        'Locked Tickets' => 'פניות נעולות',
        'My Locked Tickets' => 'הפניות הנעולות שלי',
        'My Watched Tickets' => 'הפניות שאני עוקב אחריהן',
        'My Responsible Tickets' => 'הפניות שאני אחראי עליהן',
        'Watched Tickets' => 'פניות במעקב',
        'Watched' => 'במעקב',
        'Watch' => 'עקוב',
        'Unwatch' => 'הסר מעקב',
        'Lock it to work on it' => 'נעל זאת כדי לעבוד על כך',
        'Unlock to give it back to the queue' => 'שחרר נעילה כדי להחזירה לתור',
        'Show the ticket history' => 'הצג את היסטוריית הפניה',
        'Print this ticket' => 'הדפס פניה זו',
        'Print this article' => 'הדפס מאמר זה',
        'Split' => 'פצל',
        'Split this article' => 'פצל מאמר זה',
        'Forward article via mail' => 'העבר מאמר דרך דוא"ל',
        'Change the ticket priority' => 'שנה עדיפות של הפניה',
        'Change the ticket free fields!' => 'שנה את השדות החופשיים של פניה זו!',
        'Link this ticket to other objects' => 'קשר את הפניה לאובייקטים אחרים',
        'Change the owner for this ticket' => 'שנה את הבעלים של פניה זו',
        'Change the  customer for this ticket' => 'שנה את הלקוח עבור פניה זו',
        'Add a note to this ticket' => 'הוסף הערה לפניה זו',
        'Merge into a different ticket' => 'מזג יחד עם פניה קיימת',
        'Set this ticket to pending' => 'סמן פניה זו כ"ממתינה"',
        'Close this ticket' => 'סגור פניה זו',
        'Look into a ticket!' => 'הסתכל בפרטי הפניה!',
        'Delete this ticket' => 'מחק פניה זו!',
        'Mark as Spam!' => 'סמן כספאם!',
        'My Queues' => 'התורות שלי',
        'Shown Tickets' => 'פניות מוצגות',
        'Shown Columns' => 'עמודות מוצגות',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' =>
            'הדוא"ל שלכם עם פניה מספר "<OTRS_TICKET>" מוזגה עם פניה "<OTRS_MERGE_TO_TICKET>".',
        'Ticket %s: first response time is over (%s)!' => 'פניה %s: זמן המענה הראשוני חלף (%s)!',
        'Ticket %s: first response time will be over in %s!' => 'פניה %s: זמן המענה הראשוני יחלוף תוך %s!',
        'Ticket %s: update time is over (%s)!' => 'פניה %s: זמן העדכון חלף (%s)!',
        'Ticket %s: update time will be over in %s!' => 'פניה %s: זמן העדכון יחלוף בעוד %s!',
        'Ticket %s: solution time is over (%s)!' => 'Ticket %s: Lösungszeit ist abgelaufen (%s)!',
        'Ticket %s: solution time will be over in %s!' => 'פניה %s: זמן הפתרון יחלוף בעוד %s!',
        'There are more escalated tickets!' => 'יש עוד פניות שעברו אסקלציה!',
        'Plain Format' => 'תצורה ללא עיצוב',
        'Reply All' => 'השב לכולם',
        'Direction' => 'כיוון',
        'Agent (All with write permissions)' => 'סוכן (עם כל ההרשאות)',
        'Agent (Owner)' => 'סוכן (בעלים)',
        'Agent (Responsible)' => 'סוכן (אחראי)',
        'New ticket notification' => 'התראה על פניה חדשה',
        'Send me a notification if there is a new ticket in "My Queues".' =>
            'שלח לי התראה אם יש פניה חדשה ב"תורות" שלי.',
        'Send new ticket notifications' => 'שלח התראה על פניה חדשה',
        'Ticket follow up notification' => 'התראה למעקב אחר פניה',
        'Ticket lock timeout notification' => 'התראת נעילת פניה עקב זמן שחלף',
        'Send me a notification if a ticket is unlocked by the system.' =>
            'שלח לי התראות אם נעילת פניה נפתחת על ידי המערכת.',
        'Send ticket lock timeout notifications' => 'שלח התראות נעילת פניה עקב זמן שחלף',
        'Ticket move notification' => 'התראת העברת פניה',
        'Send me a notification if a ticket is moved into one of "My Queues".' =>
            'שלח לי התראה אם פניה מועברת לתוך אחד מ"התורות" שלי.',
        'Send ticket move notifications' => 'שלח התראות בעת העברת פניה',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' =>
            '',
        'Custom Queue' => 'תור מותאם',
        'QueueView refresh time' => 'זמן רענון תצוגת תור',
        'If enabled, the QueueView will automatically refresh after the specified time.' =>
            '',
        'Refresh QueueView after' => 'רענן תצוגת תור מהירה לאחר',
        'Screen after new ticket' => 'המסך לאחר פניות חשדות',
        'Show this screen after I created a new ticket' => 'הצג מסך זה לאחר שאני יוצר פניה חדשה',
        'Closed Tickets' => 'פניות שנסגרו',
        'Show closed tickets.' => 'הצג פניות שנסגרו.',
        'Max. shown Tickets a page in QueueView.' => 'המספר המירבי של פניות בעמוד תצגות תור מהירה.',
        'Ticket Overview "Small" Limit' => 'מגבלת מבט-על מוקטן של פניות',
        'Ticket limit per page for Ticket Overview "Small"' => '',
        'Ticket Overview "Medium" Limit' => '',
        'Ticket limit per page for Ticket Overview "Medium"' => '',
        'Ticket Overview "Preview" Limit' => '',
        'Ticket limit per page for Ticket Overview "Preview"' => '',
        'Ticket watch notification' => 'התראת פניה במעקב',
        'Send me the same notifications for my watched tickets that the ticket owners will get.' =>
            'שלח לי אותן התראות עבור פניות במעקב כמו ההתראות של בעלי פניות אלו',
        'Send ticket watch notifications' => 'שלח התראות פניות במעקב',
        'Out Of Office Time' => 'זמן מחוץ למשרד',
        'New Ticket' => 'פניה חדשה',
        'Create new Ticket' => 'צור פניה חדשה',
        'Customer called' => 'הלקוח התקשר',
        'phone call' => 'שיחת טלפון',
        'Phone Call Outbound' => 'שיחת טלפון יוצאת',
        'Phone Call Inbound' => 'שיחת טלפון נכנסת',
        'Reminder Reached' => 'הגיע זמן התזכורת',
        'Reminder Tickets' => 'פניות תזכורת',
        'Escalated Tickets' => 'פניות עם אסקלציה',
        'New Tickets' => 'פניות חדשות',
        'Open Tickets / Need to be answered' => 'פניות פתוחות / ממתינות למענה',
        'All open tickets, these tickets have already been worked on, but need a response' =>
            'כל הפניות הפתוחות, פניות שכבר עבדו עליהן, אך עדיין ממתינות למענה',
        'All new tickets, these tickets have not been worked on yet' => 'כל הפניות החדשות, כאלו שטרם עבדו עליהן',
        'All escalated tickets' => 'כל הפניות שעברו אסקלציה',
        'All tickets with a reminder set where the reminder date has been reached' =>
            'כל הפניות שמוגדרת להן תזכורת שמועדה הגיע',
        'Archived tickets' => 'פניות שבארכיון',
        'Unarchived tickets' => 'פניות שאינן בארכיון',
        'Ticket Information' => 'מידע על הפניה',
        'History::Move' => 'פניה הועברה מתור "%s" (%s) לתור "%s" (%s).',
        'History::TypeUpdate' => 'סוג עודכן "%s" (ID=%s).',
        'History::ServiceUpdate' => 'שירות עודכן "%s" (ID=%s).',
        'History::SLAUpdate' => 'SLA עודכן "%s" (ID=%s).',
        'History::NewTicket' => 'פניה חדשה [%s] נוצרה (Q=%s;P=%s;S=%s).',
        'History::FollowUp' => 'מעקב עבור [%s]. %s',
        'History::SendAutoReject' => 'דחייה אוטומטית של "%s" נשלחה.',
        'History::SendAutoReply' => 'מענה אוטומטי ל-"%s" נשלח.',
        'History::SendAutoFollowUp' => 'מעקב אוטומטי ל-"%s" נשלח.',
        'History::Forward' => 'העבר "%s".',
        'History::Bounce' => 'חזר "%s".',
        'History::SendAnswer' => 'דוא"ל נשלח ל-"%s".',
        'History::SendAgentNotification' => '"%s"-הודעה נשלחה "%s".',
        'History::SendCustomerNotification' => 'הודעה נשלחה "%s".',
        'History::EmailAgent' => 'דוא"ל נשלח ללקוח.',
        'History::EmailCustomer' => 'דוא"ל נוסף. %s',
        'History::PhoneCallAgent' => 'סוכן התקשר.',
        'History::PhoneCallCustomer' => 'לקוח התקשר.',
        'History::AddNote' => 'הערה נוספה (%s)',
        'History::Lock' => 'פניה ננעלה.',
        'History::Unlock' => 'פניה נפתחה מחדש.',
        'History::TimeAccounting' => '%s זמן שהוקדש. סך זמן מצטבר %s.',
        'History::Remove' => '%s',
        'History::CustomerUpdate' => 'עודכן: %s',
        'History::PriorityUpdate' => 'עדיפות עודכנה עבור "%s" (%s) לאחר "%s" (%s).',
        'History::OwnerUpdate' => 'בעלים חדשים של "%s" (ID=%s).',
        'History::LoopProtection' => 'הגנת לולאה! לא נשלחה תשובה אוטמטית אל "%s".',
        'History::Misc' => '%s',
        'History::SetPendingTime' => 'עודכן: %s',
        'History::StateUpdate' => 'ישן: "%s" חדש: "%s"',
        'History::TicketDynamicFieldUpdate' => 'עודכן: %s=%s;%s=%s;',
        'History::WebRequestCustomer' => 'לקוח שהשיבו לפניה זו באתר.',
        'History::TicketLinkAdd' => 'נוצר קישור עבור "%s".',
        'History::TicketLinkDelete' => 'נמחק קישור עבור "%s".',
        'History::Subscribe' => 'משתמש נרשם למעקב אחרי "%s".',
        'History::Unsubscribe' => 'משתמש ביטל מעקב אחרי "%s".',
        'History::SystemRequest' => 'בקשת מערכת (%s).',
        'History::ResponsibleUpdate' => 'האחראי החדש הוא "%s" (ID=%s).',
        'History::ArchiveFlagUpdate' => 'עודכן סטטוס ארכיון: "%s"',
        'History::TicketTitleUpdate' => 'עודכנה כותרת פניה: ישנה: "%s", חדשה: "%s"',

        # Template: AAAWeekDay
        'Sun' => 'א',
        'Mon' => 'ב',
        'Tue' => 'ג',
        'Wed' => 'ד',
        'Thu' => 'ה',
        'Fri' => 'ו',
        'Sat' => 'ש',

        # Template: AdminACL
        'ACL Management' => 'ניהול ACL',
        'Filter for ACLs' => 'מסנן עבור ACLs',
        'Filter' => 'מסנן',
        'ACL Name' => 'שם ACL',
        'Actions' => 'פעולות',
        'Create New ACL' => 'צור ACL חדש',
        'Deploy ACLs' => 'הפעל ACLs',
        'Export ACLs' => 'ייצא ACLs',
        'Configuration import' => 'הגדרות ייבוא',
        'Here you can upload a configuration file to import ACLs to your system. The file needs to be in .yml format as exported by the ACL editor module.' =>
            '',
        'This field is required.' => 'זהו שדה נדרש.',
        'Overwrite existing ACLs?' => 'לדרוס ACL קיימים?',
        'Upload ACL configuration' => 'העלה הגדרות ACL',
        'Import ACL configuration(s)' => 'ייבא הגדרות ACL',
        'To create a new ACL you can either import ACLs which were exported from another system or create a complete new one.' =>
            '',
        'Changes to the ACLs here only affect the behavior of the system, if you deploy the ACL data afterwards. By deploying the ACL data, the newly made changes will be written to the configuration.' =>
            '',
        'ACLs' => 'ACLs',
        'Please note: This table represents the execution order of the ACLs. If you need to change the order in which ACLs are executed, please change the names of the affected ACLs.' =>
            '',
        'ACL name' => '',
        'Validity' => 'תקפות',
        'Copy' => 'העתק',
        'No data found.' => 'לא נמצאו נתונים.',

        # Template: AdminACLEdit
        'Edit ACL %s' => 'ערוך ACL %s',
        'Go to overview' => 'עבור למבט-על',
        'Delete ACL' => 'מחק ACL',
        'Delete Invalid ACL' => 'מחק ACL לא חוקי',
        'Match settings' => 'התאם הגדרות',
        'Set up matching criteria for this ACL. Use \'Properties\' to match the current screen or \'PropertiesDatabase\' to match attributes of the current ticket that are in the database.' =>
            '',
        'Change settings' => 'שנה הגדרות',
        'Set up what you want to change if the criteria match. Keep in mind that \'Possible\' is a white list, \'PossibleNot\' a black list.' =>
            '',
        'Check the official' => '',
        'documentation' => 'תיעוד',
        'Show or hide the content' => 'הצג או הסתר תוכן',
        'Edit ACL information' => 'ערוך מידע ACL',
        'Stop after match' => 'עצור לאחר ההתאמה',
        'Edit ACL structure' => 'ערוך מבנה ACL',
        'Save' => 'שמור',
        'or' => 'או',
        'Save and finish' => 'שמור וסיים',
        'Do you really want to delete this ACL?' => '',
        'This item still contains sub items. Are you sure you want to remove this item including its sub items?' =>
            '',
        'An item with this name is already present.' => 'פריט עם שם זה כבר קיים.',
        'Add all' => 'הוסף הכל',
        'There was an error reading the ACL data.' => 'שגיאה בקריאת נתוני ACL.',

        # Template: AdminACLNew
        'Create a new ACL by submitting the form data. After creating the ACL, you will be able to add configuration items in edit mode.' =>
            '',

        # Template: AdminAttachment
        'Attachment Management' => 'ניהול קצבים מצורפים',
        'Add attachment' => 'הוסף קובץ מצורף',
        'List' => 'רשימה',
        'Download file' => 'הורד קובץ',
        'Delete this attachment' => 'מחק קובץ מצורף זה',
        'Add Attachment' => 'הוסף קובץ מצורף',
        'Edit Attachment' => 'ערוך קובץ מצורף',

        # Template: AdminAutoResponse
        'Auto Response Management' => 'ניהול מענים אוטומטיים',
        'Add auto response' => 'הוסף מענה אוטומטי',
        'Add Auto Response' => 'הוסף מענה אוטומטי',
        'Edit Auto Response' => 'ערוך מענה אוטומטי',
        'Response' => 'מענה',
        'Auto response from' => 'מענה אוטומטי מאת',
        'Reference' => 'הפנייה',
        'You can use the following tags' => 'אתם יכולים להשתמש בתגיות הבאות',
        'To get the first 20 character of the subject.' => 'לקבל את 20 התווים הראשונים של הנושא',
        'To get the first 5 lines of the email.' => 'לקבל את 5 השורות הראשונות של הדוא"ל',
        'To get the realname of the sender (if given).' => 'לקבל את השם האמיתי של השולח (אם נמסר)',
        'To get the article attribute' => 'לקבל את מאפייני המאמר',
        ' e. g.' => 'למשל',
        'Options of the current customer user data' => 'אפשרויות של נתוני משתמש לקוח נוכחי',
        'Ticket owner options' => 'אפשרויות בעל הפניה',
        'Ticket responsible options' => 'אפשרויות האחראי על הפניה',
        'Options of the current user who requested this action' => 'אפשרויות למשתמש הנוכחי שביקש את הפעולה הזו',
        'Options of the ticket data' => 'אפשרויות לנתוני הפניה',
        'Options of ticket dynamic fields internal key values' => 'אפשרויות לערכי מפתח פנימי בשדות פניה דינמיים',
        'Options of ticket dynamic fields display values, useful for Dropdown and Multiselect fields' =>
            '',
        'Config options' => 'אפשרויות הגדרה',
        'Example response' => 'מענה לדוגמא',

        # Template: AdminCustomerCompany
        'Customer Management' => 'ניהול לקוחות',
        'Wildcards like \'*\' are allowed.' => 'תווי חיפוש מיוחדים כגון \'*\' מותרים.',
        'Add customer' => 'הוסף לקוח',
        'Select' => 'בחר',
        'Please enter a search term to look for customers.' => 'אנא בחרו מונח לחיפוש עבור לקוחות.',
        'Add Customer' => 'הוסף לקוח',
        'Edit Customer' => 'ערוך לקוח',

        # Template: AdminCustomerUser
        'Customer User Management' => 'ניהול משתמשי לקוח',
        'Back to search results' => 'חזרה לתוצאות חיפוש',
        'Add customer user' => 'הוסף משתמש לקוח',
        'Hint' => 'רמז',
        'Customer user are needed to have a customer history and to login via customer panel.' =>
            'משתמשי לקוח נדרשים כדי שתהיה היסטוריית לקוח והתחברות דרך כניסת הלקוחות.',
        'Last Login' => 'התחברות אחרונה',
        'Login as' => 'התחבר כ',
        'Switch to customer' => 'החלף ללקוח',
        'Add Customer User' => 'הוסף משתמש לקוח',
        'Edit Customer User' => 'ערוך משתמש לקוח',
        'This field is required and needs to be a valid email address.' =>
            'שדה זה נדרש וחייב להכיל כתובת דוא"ל תקינה.',
        'This email address is not allowed due to the system configuration.' =>
            'כתובת דוא"ל זו אינה מותרת עקב הגדרות מערכת.',
        'This email address failed MX check.' => '',
        'DNS problem, please check your configuration and the error log.' =>
            '',
        'The syntax of this email address is incorrect.' => '',

        # Template: AdminCustomerUserGroup
        'Manage Customer-Group Relations' => 'נהל יחסי קבוצת לקוח',
        'Notice' => 'הודעה',
        'This feature is disabled!' => 'יכולת זו כבויה!',
        'Just use this feature if you want to define group permissions for customers.' =>
            'השתמשו באפשרות זו אם ברצונכם להגדיר הרשאות קבוצתיות עבור לקוחות',
        'Enable it here!' => 'אפשר זאת כאן!',
        'Search for customers.' => 'חיפוש אחר לקוחות.',
        'Edit Customer Default Groups' => 'ערוך קבוצות ברירת מחדל של לקוחות',
        'These groups are automatically assigned to all customers.' => 'קבוצות אל משוייכות אוטומטית לכל הלקוחות.',
        'You can manage these groups via the configuration setting "CustomerGroupAlwaysGroups".' =>
            'תוכלו לנהל קבוצות אלו דרך הגדרות "CustomerGroupAlwaysGroups".',
        'Filter for Groups' => 'סנן לפי קבוצות',
        'Select the customer:group permissions.' => 'בחרו את הלקוח:הרשאות קבוצה',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the customer).' =>
            'אם דבר לא נבחר, אז אין הרשאות לקבוצה זו (פניות לא יהיו זמינות ללקוח).',
        'Search Results' => 'תוצאות חיפוש',
        'Customers' => 'לקוחות',
        'No matches found.' => 'לא נמצאו התאמות.',
        'Change Group Relations for Customer' => 'שנה יחסי קבוצה עבור הלקוח',
        'Change Customer Relations for Group' => 'שנה יחסי הלקוח עבור הקבוצה',
        'Toggle %s Permission for all' => 'שנה הרשאה %s עבור כולם',
        'Toggle %s permission for %s' => 'שנה הרשאה %s עבור %s',
        'Customer Default Groups:' => 'קבוצות ברירת מחדל ללקוח:',
        'No changes can be made to these groups.' => 'לא ניתן לערוך שינויים בקבוצות אלו.',
        'ro' => 'ro',
        'Read only access to the ticket in this group/queue.' => 'גישת קריאה בלבד לפניות בקבוצה/תור זה.',
        'rw' => 'rw',
        'Full read and write access to the tickets in this group/queue.' =>
            'הרשאות קריאה וכתיבה מלאות לפניות בקבוצה/תור זה.',

        # Template: AdminCustomerUserService
        'Manage Customer-Services Relations' => 'נהל יחסי לקוח-שירותים',
        'Edit default services' => 'ערוך שירותי ברירת מחדל',
        'Filter for Services' => 'סנן עבור שירותים',
        'Allocate Services to Customer' => 'הקצה שירותים ללקוח',
        'Allocate Customers to Service' => 'הקצה לקוחות לשירות',
        'Toggle active state for all' => 'שנה את המצב הפעיל עבור כולם',
        'Active' => 'פעיל',
        'Toggle active state for %s' => 'שנה מצב פעיל עבור %s',

        # Template: AdminDynamicField
        'Dynamic Fields Management' => 'ניהול שדות דינמיים',
        'Add new field for object' => 'הוסף שדה חדש לאובייקט',
        'To add a new field, select the field type form one of the object\'s list, the object defines the boundary of the field and it can\'t be changed after the field creation.' =>
            '',
        'Dynamic Fields List' => 'רשימת שדות דינמיים',
        'Dynamic fields per page' => 'שדות דינמיים לעמוד',
        'Label' => 'תווית',
        'Order' => 'סדר',
        'Object' => 'אובייקט',
        'Delete this field' => 'מחק שדה זה',
        'Do you really want to delete this dynamic field? ALL associated data will be LOST!' =>
            'האם אתם באמת רוצים למחוק שדה דינמי זה? כל הנתונים המקושרים יאבדו!',
        'Delete field' => 'מחק שדה',

        # Template: AdminDynamicFieldCheckbox
        'Field' => 'שדה',
        'Go back to overview' => 'חזור למבט-על',
        'General' => 'כללי',
        'This field is required, and the value should be alphabetic and numeric characters only.' =>
            'זהו שדה נדרש, והערך צריך להיות עם תווי אותיות ומספרים בלבד.',
        'Must be unique and only accept alphabetic and numeric characters.' =>
            'חייב להיות ייחודי ולקבל רק תווי אותיות ומספרים.',
        'Changing this value will require manual changes in the system.' =>
            'שינוי ערך זה ידרוש שינויים ידניים במערכת.',
        'This is the name to be shown on the screens where the field is active.' =>
            'זהו השם שיוצג במסכים בו השדה פעיל.',
        'Field order' => 'סדר השדות',
        'This field is required and must be numeric.' => 'זהו שדה נדרש והוא חייב להיות מספרי.',
        'This is the order in which this field will be shown on the screens where is active.' =>
            'זהו הסדר בו שדה זה יוצג במסכים בו הוא פעיל.',
        'Field type' => 'סוג השדה',
        'Object type' => 'סוג האובייקט',
        'Internal field' => 'שדה פנימי',
        'This field is protected and can\'t be deleted.' => 'שדה זה מוגן ולא ניתן למחקו.',
        'Field Settings' => 'הגדרות שדה',
        'Default value' => 'ערך ברירת מחדל',
        'This is the default value for this field.' => 'זהו ערך ברירת המחדל עבור שדה זה.',

        # Template: AdminDynamicFieldDateTime
        'Default date difference' => 'ברירת מחדל להפרש תאריך',
        'This field must be numeric.' => 'שדה זה חייב להיות מספרי.',
        'The difference from NOW (in seconds) to calculate the field default value (e.g. 3600 or -60).' =>
            '',
        'Define years period' => 'הגדר תקופה בשנים',
        'Activate this feature to define a fixed range of years (in the future and in the past) to be displayed on the year part of the field.' =>
            '',
        'Years in the past' => 'שנים בעבר',
        'Years in the past to display (default: 5 years).' => 'שנים בעבר להצגה (ברירת מחדל: 5).',
        'Years in the future' => 'שנים בעתיד',
        'Years in the future to display (default: 5 years).' => 'שנים בעתיד להצגה (ברירת מחדל: 5).',
        'Show link' => 'הצג קישור',
        'Here you can specify an optional HTTP link for the field value in Overviews and Zoom screens.' =>
            '',

        # Template: AdminDynamicFieldDropdown
        'Possible values' => 'ערכים אפשריים',
        'Key' => 'מפתח',
        'Value' => 'ערך',
        'Remove value' => 'הסר ערך',
        'Add value' => 'הוסף ערך',
        'Add Value' => 'הוסף ערך',
        'Add empty value' => 'הוסף ערך ריק',
        'Activate this option to create an empty selectable value.' => '',
        'Tree View' => '',
        'Activate this option to display values as a tree.' => '',
        'Translatable values' => 'ערכים ברי תרגום',
        'If you activate this option the values will be translated to the user defined language.' =>
            '',
        'Note' => 'הערה',
        'You need to add the translations manually into the language translation files.' =>
            '',

        # Template: AdminDynamicFieldMultiselect

        # Template: AdminDynamicFieldText
        'Number of rows' => 'מספר שורות',
        'Specify the height (in lines) for this field in the edit mode.' =>
            'קבעו את הגובה (בשורות) עבור שדה זו במצב עריכה.',
        'Number of cols' => 'מספר העמודות',
        'Specify the width (in characters) for this field in the edit mode.' =>
            'קבעו את הרוחב (בתווים) עבור שדה זה במצב עריכה.',

        # Template: AdminEmail
        'Admin Notification' => 'התראת מנהל מערכת',
        'With this module, administrators can send messages to agents, group or role members.' =>
            '',
        'Create Administrative Message' => 'צור הודעת מנהל מערכת',
        'Your message was sent to' => 'ההודעה שלך נשלחה אל',
        'Send message to users' => 'שלח הודעה למשתמשים',
        'Send message to group members' => 'שלח הודעה לחברי קבוצה',
        'Group members need to have permission' => '',
        'Send message to role members' => 'שלח הודעה לחברי תפקיד',
        'Also send to customers in groups' => 'שלח גם ללקוחות בקבוצה',
        'Body' => 'גוף',
        'Send' => 'שלח',

        # Template: AdminGenericAgent
        'Generic Agent' => 'סוכן גנרי',
        'Add job' => 'הוסף משימה',
        'Last run' => 'ריצה אחרונה',
        'Run Now!' => 'הפעל ריצה כעת!',
        'Delete this task' => 'מחק משימה זו',
        'Run this task' => 'הרץ משימה זו',
        'Job Settings' => 'הגדרות המשימה',
        'Job name' => 'שם המשימה',
        'The name you entered already exists.' => 'השם שהקלדתם כבר קיים.',
        'Toggle this widget' => '',
        'Automatic execution (multiple tickets)' => 'ביצוע אוטומטי (פניות מרובות)',
        'Execution Schedule' => 'תזמון הביצוע',
        'Schedule minutes' => 'דקות התזמון',
        'Schedule hours' => 'שעות התזמון',
        'Schedule days' => 'ימי התזמון',
        'Currently this generic agent job will not run automatically.' =>
            '',
        'To enable automatic execution select at least one value from minutes, hours and days!' =>
            '',
        'Event based execution (single ticket)' => 'ביצוע מבוסס אירוע (פניה בודדת)',
        'Event Triggers' => 'טריגרים לאירועים',
        'List of all configured events' => 'רשימת כל האירועים המוגדרים',
        'Delete this event' => 'מחק אירוע זה',
        'Additionally or alternatively to a periodic execution, you can define ticket events that will trigger this job.' =>
            '',
        'If a ticket event is fired, the ticket filter will be applied to check if the ticket matches. Only then the job is run on that ticket.' =>
            '',
        'Do you really want to delete this event trigger?' => 'האם אתם באמת רוצים למחוק טריגר אירוע זה?',
        'Add Event Trigger' => 'הוסף טריגר לאירוע',
        'To add a new event select the event object and event name and click on the "+" button' =>
            'להוספת אירוע חדש בחרו את אובייקט האירוע ואת שם האירוע ולחצו על כפתור "+"',
        'Duplicate event.' => 'שכפל אירוע',
        'This event is already attached to the job, Please use a different one.' =>
            'אירוע זה כבר משויך למשימה. אנא בחרו אחד אחר.',
        'Delete this Event Trigger' => 'מחק את טריגר האירוע',
        'Ticket Filter' => 'מסנן פניות',
        '(e. g. 10*5155 or 105658*)' => '(למשל 10*5144 או 105658*)',
        '(e. g. 234321)' => '(למשל 234321)',
        'Customer login' => 'התחברות לקוח',
        '(e. g. U5150)' => '(למשל U5150)',
        'Fulltext-search in article (e. g. "Mar*in" or "Baue*").' => '',
        'Agent' => 'סוכן',
        'Ticket lock' => 'נעילת פניה',
        'Create times' => 'זמני יצירה',
        'No create time settings.' => '',
        'Ticket created' => 'הפניה נוצרה',
        'Ticket created between' => 'פניה נוצרה בין',
        'Change times' => 'זמן השינוי',
        'No change time settings.' => '',
        'Ticket changed' => 'הפניה השתנתה',
        'Ticket changed between' => 'הפניה שונתה בין',
        'Close times' => 'זמן הסגירה',
        'No close time settings.' => 'אין הגדרות זמן סגירה',
        'Ticket closed' => 'הפניה נסגרה',
        'Ticket closed between' => 'הפניה נסגרה בין',
        'Pending times' => '',
        'No pending time settings.' => '',
        'Ticket pending time reached' => '',
        'Ticket pending time reached between' => '',
        'Escalation times' => 'זמני אסקלציה',
        'No escalation time settings.' => 'אין הגדרות זמני אסקלציה',
        'Ticket escalation time reached' => 'הגיע זמן אסקלציה של פניה',
        'Ticket escalation time reached between' => 'הגיע זמן אסקלציה של פניה בין',
        'Escalation - first response time' => 'אסקלציה - זמן מענה ראשוני',
        'Ticket first response time reached' => 'זמן מענה ראשוני לפניה הגיע',
        'Ticket first response time reached between' => 'זמן מענה ראשוני לפניה הגיע בין',
        'Escalation - update time' => 'אסקלציה - זמן עדכון',
        'Ticket update time reached' => 'זמן עדכון פניה הגיע',
        'Ticket update time reached between' => 'זמן עדכון פניה הגיע בין',
        'Escalation - solution time' => 'זמן אסקלציה - פתרון',
        'Ticket solution time reached' => 'פתרון הפניה הגיע',
        'Ticket solution time reached between' => 'פתרון הפניה הגיע בין',
        'Archive search option' => 'אפשרות חיפוש ארכיון',
        'Ticket Action' => 'פעולה על פניה',
        'Set new service' => 'קבע שירות חדש',
        'Set new Service Level Agreement' => 'קבע רמת SLA חדשה',
        'Set new priority' => 'קבע עדיפות חדשה',
        'Set new queue' => 'הגדר תור חדש',
        'Set new state' => 'הגדר מצב חדש',
        'Pending date' => 'תאריך ממתין',
        'Set new agent' => 'קבע סוכן חדש',
        'new owner' => 'בעלים חדש',
        'new responsible' => 'אחראי חדש',
        'Set new ticket lock' => 'קבע נעילת פניה חדשה',
        'New customer' => 'לקוח חדש',
        'New customer ID' => 'מספר זיהוי לקוח חדש',
        'New title' => 'כותרת חדשה',
        'New type' => 'סוג חדש',
        'New Dynamic Field Values' => 'ערכי שדות דינמיים חדשים',
        'Archive selected tickets' => 'העבר פניות שנבחרו לארכיון',
        'Add Note' => 'הוסף הודעה',
        'Time units' => 'יחידות זמן',
        '(work units)' => '(יחידות עבודה)',
        'Ticket Commands' => 'פקודות פניה',
        'Send agent/customer notifications on changes' => 'שלח לסוכן/לקוח התראות על שינויים',
        'CMD' => 'CMD',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' =>
            '',
        'Delete tickets' => 'מחק פניות',
        'Warning: All affected tickets will be removed from the database and cannot be restored!' =>
            '',
        'Execute Custom Module' => '',
        'Param %s key' => 'מפתח פרמטר %s',
        'Param %s value' => 'ערך פרמטר %s',
        'Save Changes' => 'שמור שינויים',
        'Results' => 'תוצאות',
        '%s Tickets affected! What do you want to do?' => '%s פניות הושפעו! מה אתם רוצים לעשות?',
        'Warning: You used the DELETE option. All deleted tickets will be lost!' =>
            '',
        'Edit job' => 'ערוך עבודה',
        'Run job' => 'הרץ עבודה',
        'Affected Tickets' => 'פניות מושפעות',

        # Template: AdminGenericInterfaceDebugger
        'GenericInterface Debugger for Web Service %s' => '',
        'Web Services' => '',
        'Debugger' => '',
        'Go back to web service' => '',
        'Clear' => 'נקה',
        'Do you really want to clear the debug log of this web service?' =>
            '',
        'Request List' => 'רשימת בקשות',
        'Time' => 'זמן',
        'Remote IP' => '',
        'Loading' => 'טוען...',
        'Select a single request to see its details.' => '',
        'Filter by type' => 'סנן לפי סוג',
        'Filter from' => 'סנן מ-',
        'Filter to' => 'סנן עד',
        'Filter by remote IP' => '',
        'Refresh' => 'רענן',
        'Request Details' => '',
        'An error occurred during communication.' => '',
        'Clear debug log' => '',

        # Template: AdminGenericInterfaceInvokerDefault
        'Add new Invoker to Web Service %s' => '',
        'Change Invoker %s of Web Service %s' => '',
        'Add new invoker' => '',
        'Change invoker %s' => '',
        'Do you really want to delete this invoker?' => '',
        'All configuration data will be lost.' => '',
        'Invoker Details' => '',
        'The name is typically used to call up an operation of a remote web service.' =>
            '',
        'Please provide a unique name for this web service invoker.' => '',
        'Invoker backend' => '',
        'This OTRS invoker backend module will be called to prepare the data to be sent to the remote system, and to process its response data.' =>
            '',
        'Mapping for outgoing request data' => '',
        'Configure' => 'הגדר',
        'The data from the invoker of OTRS will be processed by this mapping, to transform it to the kind of data the remote system expects.' =>
            '',
        'Mapping for incoming response data' => '',
        'The response data will be processed by this mapping, to transform it to the kind of data the invoker of OTRS expects.' =>
            '',
        'Asynchronous' => '',
        'This invoker will be triggered by the configured events.' => '',
        'Asynchronous event triggers are handled by the OTRS Scheduler in background (recommended).' =>
            '',
        'Synchronous event triggers would be processed directly during the web request.' =>
            '',
        'Save and continue' => 'שמור והמשך',
        'Delete this Invoker' => '',

        # Template: AdminGenericInterfaceMappingSimple
        'GenericInterface Mapping Simple for Web Service %s' => '',
        'Go back to' => 'חזור אל',
        'Mapping Simple' => 'מיפוי פשוט',
        'Default rule for unmapped keys' => '',
        'This rule will apply for all keys with no mapping rule.' => '',
        'Default rule for unmapped values' => '',
        'This rule will apply for all values with no mapping rule.' => '',
        'New key map' => '',
        'Add key mapping' => '',
        'Mapping for Key ' => '',
        'Remove key mapping' => '',
        'Key mapping' => '',
        'Map key' => '',
        'matching the' => '',
        'to new key' => '',
        'Value mapping' => '',
        'Map value' => '',
        'to new value' => '',
        'Remove value mapping' => '',
        'New value map' => '',
        'Add value mapping' => '',
        'Do you really want to delete this key mapping?' => '',
        'Delete this Key Mapping' => '',

        # Template: AdminGenericInterfaceOperationDefault
        'Add new Operation to Web Service %s' => '',
        'Change Operation %s of Web Service %s' => '',
        'Add new operation' => '',
        'Change operation %s' => '',
        'Do you really want to delete this operation?' => '',
        'Operation Details' => '',
        'The name is typically used to call up this web service operation from a remote system.' =>
            '',
        'Please provide a unique name for this web service.' => '',
        'Mapping for incoming request data' => '',
        'The request data will be processed by this mapping, to transform it to the kind of data OTRS expects.' =>
            '',
        'Operation backend' => '',
        'This OTRS operation backend module will be called internally to process the request, generating data for the response.' =>
            '',
        'Mapping for outgoing response data' => '',
        'The response data will be processed by this mapping, to transform it to the kind of data the remote system expects.' =>
            '',
        'Delete this Operation' => '',

        # Template: AdminGenericInterfaceTransportHTTPSOAP
        'GenericInterface Transport HTTP::SOAP for Web Service %s' => '',
        'Network transport' => '',
        'Properties' => 'מאפיינים',
        'Endpoint' => 'נקודת סיום',
        'URI to indicate a specific location for accessing a service.' =>
            '',
        'e.g. http://local.otrs.com:8000/Webservice/Example' => '',
        'Namespace' => 'Namespace',
        'URI to give SOAP methods a context, reducing ambiguities.' => '',
        'e.g urn:otrs-com:soap:functions or http://www.otrs.com/GenericInterface/actions' =>
            '',
        'Maximum message length' => 'אורך הודעה מירבי',
        'This field should be an integer number.' => 'שדה זה צריך להיות מספר שלם.',
        'Here you can specify the maximum size (in bytes) of SOAP messages that OTRS will process.' =>
            '',
        'Encoding' => 'קידוד',
        'The character encoding for the SOAP message contents.' => '',
        'e.g utf-8, latin1, iso-8859-1, cp1250, Etc.' => '',
        'SOAPAction' => '',
        'Set to "Yes" to send a filled SOAPAction header.' => '',
        'Set to "No" to send an empty SOAPAction header.' => '',
        'SOAPAction separator' => '',
        'Character to use as separator between name space and SOAP method.' =>
            '',
        'Usually .Net web services uses a "/" as separator.' => '',
        'Authentication' => 'אימות',
        'The authentication mechanism to access the remote system.' => '',
        'A "-" value means no authentication.' => '',
        'The user name to be used to access the remote system.' => '',
        'The password for the privileged user.' => '',
        'Use SSL Options' => '',
        'Show or hide SSL options to connect to the remote system.' => '',
        'Certificate File' => '',
        'The full path and name of the SSL certificate file (must be in .p12 format).' =>
            '',
        'e.g. /opt/otrs/var/certificates/SOAP/certificate.p12' => '',
        'Certificate Password File' => '',
        'The password to open the SSL certificate.' => '',
        'Certification Authority (CA) File' => '',
        'The full path and name of the certification authority certificate file that validates SSL certificate.' =>
            '',
        'e.g. /opt/otrs/var/certificates/SOAP/CA/ca.pem' => '',
        'Certification Authority (CA) Directory' => '',
        'The full path of the certification authority directory where the CA certificates are stored in the file system.' =>
            '',
        'e.g. /opt/otrs/var/certificates/SOAP/CA' => '',
        'Proxy Server' => 'שרת Proxy',
        'URI of a proxy server to be used (if needed).' => '',
        'e.g. http://proxy_hostname:8080' => '',
        'Proxy User' => 'משתמש Proxy',
        'The user name to be used to access the proxy server.' => '',
        'Proxy Password' => 'סיסמת Proxy',
        'The password for the proxy user.' => '',

        # Template: AdminGenericInterfaceWebservice
        'GenericInterface Web Service Management' => '',
        'Add web service' => '',
        'Clone web service' => '',
        'The name must be unique.' => '',
        'Clone' => 'שכפל',
        'Export web service' => 'ייצא Webservice',
        'Import web service' => 'ייבא Webservice',
        'Configuration File' => '',
        'The file must be a valid web service configuration YAML file.' =>
            '',
        'Import' => 'ייבא',
        'Configuration history' => '',
        'Delete web service' => '',
        'Do you really want to delete this web service?' => '',
        'After you save the configuration you will be redirected again to the edit screen.' =>
            '',
        'If you want to return to overview please click the "Go to overview" button.' =>
            '',
        'Web Service List' => '',
        'Remote system' => 'מערכת מרוחקת',
        'Provider transport' => '',
        'Requester transport' => '',
        'Details' => 'פרטים',
        'Debug threshold' => '',
        'In provider mode, OTRS offers web services which are used by remote systems.' =>
            '',
        'In requester mode, OTRS uses web services of remote systems.' =>
            '',
        'Operations are individual system functions which remote systems can request.' =>
            '',
        'Invokers prepare data for a request to a remote web service, and process its response data.' =>
            '',
        'Controller' => '',
        'Inbound mapping' => '',
        'Outbound mapping' => '',
        'Delete this action' => '',
        'At least one %s has a controller that is either not active or not present, please check the controller registration or delete the %s' =>
            '',
        'Delete webservice' => 'מחק Webservice',
        'Delete operation' => '',
        'Delete invoker' => '',
        'Clone webservice' => 'שכפל Webservice',
        'Import webservice' => 'ייבא Webservice',

        # Template: AdminGenericInterfaceWebserviceHistory
        'GenericInterface Configuration History for Web Service %s' => '',
        'Go back to Web Service' => '',
        'Here you can view older versions of the current web service\'s configuration, export or even restore them.' =>
            '',
        'Configuration History List' => '',
        'Version' => 'גרסה',
        'Create time' => 'זמן היצירה',
        'Select a single configuration version to see its details.' => '',
        'Export web service configuration' => '',
        'Restore web service configuration' => '',
        'Do you really want to restore this version of the web service configuration?' =>
            '',
        'Your current web service configuration will be overwritten.' => '',
        'Show or hide the content.' => 'הצג או הסתר את התוכן.',
        'Restore' => 'שחזר',

        # Template: AdminGroup
        'WARNING: When you change the name of the group \'admin\', before making the appropriate changes in the SysConfig, you will be locked out of the administrations panel! If this happens, please rename the group back to admin per SQL statement.' =>
            '',
        'Group Management' => 'ניהול קבוצות',
        'Add group' => 'הוסף קבוצה',
        'The admin group is to get in the admin area and the stats group to get stats area.' =>
            '',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...). ' =>
            '',
        'It\'s useful for ASP solutions. ' => '',
        'Add Group' => 'הוסף קבוצה',
        'Edit Group' => 'ערוך קבוצה',

        # Template: AdminLog
        'System Log' => '',
        'Here you will find log information about your system.' => '',
        'Hide this message' => 'הסתר הודעה זו',
        'Recent Log Entries' => '',

        # Template: AdminMailAccount
        'Mail Account Management' => 'ניהול חשבון דוא"ל',
        'Add mail account' => 'הוסף חשבון דואר.',
        'All incoming emails with one account will be dispatched in the selected queue!' =>
            '',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' =>
            '',
        'Host' => 'מארח',
        'Delete account' => 'מחק חשבון',
        'Fetch mail' => 'הבא דואר',
        'Add Mail Account' => 'הוסף חשבון דואר',
        'Example: mail.example.com' => 'למשל: mail.example.com',
        'IMAP Folder' => '',
        'Only modify this if you need to fetch mail from a different folder than INBOX.' =>
            '',
        'Trusted' => 'אמין',
        'Dispatching' => 'שליחה',
        'Edit Mail Account' => 'ערוך חשבון דואר',

        # Template: AdminNavigationBar
        'Admin' => 'ניהול',
        'Agent Management' => 'ניהול סוכנים',
        'Queue Settings' => 'הגדרות תור',
        'Ticket Settings' => 'הגדרות פניות',
        'System Administration' => 'ניהול מערכת',

        # Template: AdminNotification
        'Notification Management' => 'נהל התראות',
        'Select a different language' => 'בחר שפה אחרת',
        'Filter for Notification' => 'סנן עבור התראה',
        'Notifications are sent to an agent or a customer.' => 'התראות נשלחות לסוכן או לקוח.',
        'Notification' => 'התראה',
        'Edit Notification' => 'ערוך התראה',
        'e. g.' => 'למשל',
        'Options of the current customer data' => 'אפשרויות של נתוני הלקוח הנוכחי',

        # Template: AdminNotificationEvent
        'Add notification' => 'הוסף התראה',
        'Delete this notification' => 'מחק התראה זו',
        'Add Notification' => 'הוסף התראה',
        'Article Filter' => 'מסנן מאמר',
        'Only for ArticleCreate and ArticleSend event' => '',
        'Article type' => 'סוג מאמר',
        'If ArticleCreate or ArticleSend is used as a trigger event, you need to specify an article filter as well. Please select at least one of the article filter fields.' =>
            '',
        'Article sender type' => 'סוג שולח מאמר',
        'Subject match' => 'התאמת נושא',
        'Body match' => 'התאמה לגוף',
        'Include attachments to notification' => 'כלול קבצים מצורפים בהתראות',
        'Recipient' => 'נמען',
        'Recipient groups' => 'קבוצות נמענים',
        'Recipient agents' => 'סוכנים נמענים',
        'Recipient roles' => 'תפקידי נמענים',
        'Recipient email addresses' => 'כתובת דוא"ל של נמענים',
        'Notification article type' => 'סוג התראת מאמר',
        'Only for notifications to specified email addresses' => '',
        'To get the first 20 character of the subject (of the latest agent article).' =>
            '',
        'To get the first 5 lines of the body (of the latest agent article).' =>
            '',
        'To get the first 20 character of the subject (of the latest customer article).' =>
            '',
        'To get the first 5 lines of the body (of the latest customer article).' =>
            '',

        # Template: AdminPGP
        'PGP Management' => 'ניהול PGP',
        'Use this feature if you want to work with PGP keys.' => '',
        'Add PGP key' => 'הוסף מפתח PGP',
        'In this way you can directly edit the keyring configured in SysConfig.' =>
            '',
        'Introduction to PGP' => 'מבוא ל-PGP',
        'Result' => 'תוצאה',
        'Identifier' => 'מזהה',
        'Bit' => 'Bit',
        'Fingerprint' => 'טביעת אצבע',
        'Expires' => 'פג',
        'Delete this key' => 'מחק מפתח זה',
        'Add PGP Key' => 'הוסף מפתח PGP',
        'PGP key' => 'מפתח PGP',

        # Template: AdminPackageManager
        'Package Manager' => '',
        'Uninstall package' => '',
        'Do you really want to uninstall this package?' => '',
        'Reinstall package' => '',
        'Do you really want to reinstall this package? Any manual changes will be lost.' =>
            '',
        'Continue' => 'המשך',
        'Please make sure your database accepts packages over %s MB in size (it currently only accepts packages up to %s MB). Please adapt the max_allowed_packet setting of your database in order to avoid errors.' =>
            '',
        'Install' => 'התקנה',
        'Install Package' => 'התקן חבילה',
        'Update repository information' => '',
        'Did not find a required feature? OTRS Group provides their service contract customers with exclusive Add-Ons:' =>
            '',
        'Online Repository' => '',
        'Vendor' => '',
        'Module documentation' => 'תיעוד מודולה',
        'Upgrade' => 'שדרג',
        'Local Repository' => '',
        'This package is verified by OTRSverify (tm)' => '',
        'Uninstall' => 'הסר התקנה',
        'Reinstall' => 'התקן מחדש',
        'Feature Add-Ons' => 'Feature Add-Ons',
        'Download package' => 'הורד חבילה',
        'Rebuild package' => 'בנה חבילה מחדש',
        'Metadata' => '',
        'Change Log' => '',
        'Date' => 'תאריך',
        'List of Files' => 'רשימת קבצים',
        'Permission' => 'הרשאה',
        'Download' => 'הורדה',
        'Download file from package!' => 'הורדת קובץ מהחבילה!',
        'Required' => 'נדרש',
        'PrimaryKey' => 'PrimaryKey',
        'AutoIncrement' => 'AutoIncrement',
        'SQL' => 'SQL',
        'File differences for file %s' => '',

        # Template: AdminPerformanceLog
        'Performance Log' => 'Performance Log',
        'This feature is enabled!' => 'יכולת זו מאופשרת!',
        'Just use this feature if you want to log each request.' => '',
        'Activating this feature might affect your system performance!' =>
            '',
        'Disable it here!' => 'נטרל זאת כאן!',
        'Logfile too large!' => 'קובץ לוג גדול מדי!',
        'The logfile is too large, you need to reset it' => '',
        'Overview' => 'מבט-על',
        'Range' => 'טווח',
        'last' => 'אחרון',
        'Interface' => 'ממשק',
        'Requests' => 'בקשות',
        'Min Response' => 'מענה מינימלי',
        'Max Response' => 'מענה מירבי',
        'Average Response' => 'מענה ממוצע',
        'Period' => 'תקופה',
        'Min' => 'מינ',
        'Max' => 'מקס',
        'Average' => 'ממוצע',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => 'ניהול מסנן PostMaster',
        'Add filter' => 'הוסף מסנן',
        'To dispatch or filter incoming emails based on email headers. Matching using Regular Expressions is also possible.' =>
            '',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' =>
            '',
        'If you use Regular Expressions, you also can use the matched value in () as [***] in the \'Set\' action.' =>
            '',
        'Delete this filter' => 'מחק מסנן זה',
        'Add PostMaster Filter' => 'הוסף מסנן PostMaster',
        'Edit PostMaster Filter' => 'ערוך מסנן PostMaster',
        'The name is required.' => 'השם הוא נדרש.',
        'Filter Condition' => 'תנאי מסנן',
        'AND Condition' => 'תנאי וגם',
        'Negate' => 'היפוך',
        'The field needs to be a valid regular expression or a literal word.' =>
            '',
        'Set Email Headers' => '',
        'The field needs to be a literal word.' => '',

        # Template: AdminPriority
        'Priority Management' => 'ניהול עדיפיות',
        'Add priority' => 'הוסף עדיפות',
        'Add Priority' => 'הוסף עדיפות',
        'Edit Priority' => 'ערוך עדיפות',

        # Template: AdminProcessManagement
        'Process Management' => 'ניהול תהליכים',
        'Filter for Processes' => 'סנן עבור תהליך',
        'Process Name' => 'שם התהליך',
        'Create New Process' => 'צור תהליך חדש',
        'Synchronize All Processes' => 'סנכרן את כל התהליכים',
        'Here you can upload a configuration file to import a process to your system. The file needs to be in .yml format as exported by process management module.' =>
            '',
        'Upload process configuration' => '',
        'Import process configuration' => '',
        'To create a new Process you can either import a Process that was exported from another system or create a complete new one.' =>
            '',
        'Changes to the Processes here only affect the behavior of the system, if you synchronize the Process data. By synchronizing the Processes, the newly made changes will be written to the Configuration.' =>
            '',
        'Process name' => 'שם התהליך',
        'Print' => 'הדפס',
        'Export Process Configuration' => 'ייצא הגדרות תהליך',
        'Copy Process' => 'העתק תהליך',

        # Template: AdminProcessManagementActivity
        'Cancel & close window' => 'בטל וסגור חלון',
        'Go Back' => 'חזור',
        'Please note, that changing this activity will affect the following processes' =>
            '',
        'Activity' => 'פעילות',
        'Activity Name' => 'שם הפעילות',
        'Activity Dialogs' => '',
        'You can assign Activity Dialogs to this Activity by dragging the elements with the mouse from the left list to the right list.' =>
            '',
        'Ordering the elements within the list is also possible by drag \'n\' drop.' =>
            '',
        'Filter available Activity Dialogs' => '',
        'Available Activity Dialogs' => '',
        'Create New Activity Dialog' => '',
        'Assigned Activity Dialogs' => '',
        'As soon as you use this button or link, you will leave this screen and its current state will be saved automatically. Do you want to continue?' =>
            '',

        # Template: AdminProcessManagementActivityDialog
        'Please note that changing this activity dialog will affect the following activities' =>
            '',
        'Please note that customer users will not be able to see or use the following fields: Owner, Responsible, Lock, PendingTime and CustomerID.' =>
            '',
        'The Queue field can only be used by customers when creating a new ticket.' =>
            '',
        'Activity Dialog' => '',
        'Activity dialog Name' => '',
        'Available in' => 'זמין ב',
        'Description (short)' => 'תיאור (קצר)',
        'Description (long)' => 'תיאור (ארוך)',
        'The selected permission does not exist.' => 'ההרשאה שנבחרה אינה קיימת.',
        'Required Lock' => 'נעילה נדרשת',
        'The selected required lock does not exist.' => '',
        'Submit Advice Text' => 'טקסט העזרה לשליחה',
        'Submit Button Text' => 'טקסט כפתור שליחה',
        'Fields' => 'שדות',
        'You can assign Fields to this Activity Dialog by dragging the elements with the mouse from the left list to the right list.' =>
            '',
        'Filter available fields' => 'שדות זמינים למסננים',
        'Available Fields' => 'שדות זמינים',
        'Assigned Fields' => 'שדות משוייכים',
        'Edit Details for Field' => 'ערוך פרטים לשדה',
        'ArticleType' => 'סוג מאמר',
        'Display' => 'הצג',
        'Edit Field Details' => 'ערוך פרטי שדה',
        'Customer interface does not support internal article types.' => '',

        # Template: AdminProcessManagementPath
        'Path' => 'נתיב',
        'Edit this transition' => '',
        'Transition Actions' => '',
        'You can assign Transition Actions to this Transition by dragging the elements with the mouse from the left list to the right list.' =>
            '',
        'Filter available Transition Actions' => '',
        'Available Transition Actions' => '',
        'Create New Transition Action' => '',
        'Assigned Transition Actions' => '',

        # Template: AdminProcessManagementPopupResponse

        # Template: AdminProcessManagementProcessAccordion
        'Activities' => 'פעילויות',
        'Filter Activities...' => 'מסנן פעילויות...',
        'Create New Activity' => 'צור פעילות חדשה',
        'Filter Activity Dialogs...' => '',
        'Transitions' => '',
        'Filter Transitions...' => '',
        'Create New Transition' => '',
        'Filter Transition Actions...' => '',

        # Template: AdminProcessManagementProcessEdit
        'Edit Process' => 'ערוך תהליך',
        'Print process information' => 'הדפס פרטי תהליך',
        'Delete Process' => 'מחק תהליך',
        'Delete Inactive Process' => 'מחק תהליך לא פעיל',
        'Available Process Elements' => 'פריטי תהליך זמינים',
        'The Elements listed above in this sidebar can be moved to the canvas area on the right by using drag\'n\'drop.' =>
            '',
        'You can place Activities on the canvas area to assign this Activity to the Process.' =>
            '',
        'To assign an Activity Dialog to an Activity drop the Activity Dialog element from this sidebar over the Activity placed in the canvas area.' =>
            '',
        'You can start a connection between to Activities by dropping the Transition element over the Start Activity of the connection. After that you can move the loose end of the arrow to the End Activity.' =>
            '',
        'Actions can be assigned to a Transition by dropping the Action Element onto the label of a Transition.' =>
            '',
        'Edit Process Information' => 'ערוך מידע תהליך',
        'The selected state does not exist.' => '',
        'Add and Edit Activities, Activity Dialogs and Transitions' => '',
        'Show EntityIDs' => '',
        'Extend the width of the Canvas' => '',
        'Extend the height of the Canvas' => '',
        'Remove the Activity from this Process' => '',
        'Edit this Activity' => 'ערוך פעילות זו',
        'Save settings' => 'שמור הגדרות',
        'Save Activities, Activity Dialogs and Transitions' => '',
        'Do you really want to delete this Process?' => '',
        'Do you really want to delete this Activity?' => '',
        'Do you really want to delete this Activity Dialog?' => '',
        'Do you really want to delete this Transition?' => '',
        'Do you really want to delete this Transition Action?' => '',
        'Do you really want to remove this activity from the canvas? This can only be undone by leaving this screen without saving.' =>
            '',
        'Do you really want to remove this transition from the canvas? This can only be undone by leaving this screen without saving.' =>
            '',
        'Hide EntityIDs' => '',
        'Delete Entity' => '',
        'Remove Entity from canvas' => '',
        'This Activity is already used in the Process. You cannot add it twice!' =>
            '',
        'This Activity cannot be deleted because it is the Start Activity.' =>
            '',
        'This Transition is already used for this Activity. You cannot use it twice!' =>
            '',
        'This TransitionAction is already used in this Path. You cannot use it twice!' =>
            '',
        'Remove the Transition from this Process' => '',
        'No TransitionActions assigned.' => '',
        'The Start Event cannot loose the Start Transition!' => '',
        'No dialogs assigned yet. Just pick an activity dialog from the list on the left and drag it here.' =>
            '',
        'An unconnected transition is already placed on the canvas. Please connect this transition first before placing another transition.' =>
            '',

        # Template: AdminProcessManagementProcessNew
        'In this screen, you can create a new process. In order to make the new process available to users, please make sure to set its state to \'Active\' and synchronize after completing your work.' =>
            '',

        # Template: AdminProcessManagementProcessPrint
        'Start Activity' => 'התחל פעילות',
        'Contains %s dialog(s)' => '',
        'Assigned dialogs' => '',
        'Activities are not being used in this process.' => '',
        'Assigned fields' => '',
        'Activity dialogs are not being used in this process.' => '',
        'Condition linking' => '',
        'Conditions' => 'תנאים',
        'Condition' => 'תנאי',
        'Transitions are not being used in this process.' => '',
        'Module name' => 'שם המודולה',
        'Configuration' => 'הגדרות',
        'Transition actions are not being used in this process.' => '',

        # Template: AdminProcessManagementTransition
        'Please note that changing this transition will affect the following processes' =>
            '',
        'Transition' => '',
        'Transition Name' => '',
        'Type of Linking between Conditions' => '',
        'Remove this Condition' => 'הסר תנאי זה',
        'Type of Linking' => 'סוג הקישור',
        'Remove this Field' => 'הסר שדה זה',
        'Add a new Field' => 'הוסף שדה חדש',
        'Add New Condition' => 'הוסף תנאי חדש',

        # Template: AdminProcessManagementTransitionAction
        'Please note that changing this transition action will affect the following processes' =>
            '',
        'Transition Action' => '',
        'Transition Action Name' => '',
        'Transition Action Module' => '',
        'Config Parameters' => '',
        'Remove this Parameter' => 'הסר פרמטר זה',
        'Add a new Parameter' => 'הוסף פרמטר חדש',

        # Template: AdminQueue
        'Manage Queues' => 'נהל תורות',
        'Add queue' => 'הוסף תור',
        'Add Queue' => 'הוסף תור',
        'Edit Queue' => 'ערוך תור',
        'Sub-queue of' => 'תור משנה של',
        'Unlock timeout' => '',
        '0 = no unlock' => '0 = אין שחרור נעילה',
        'Only business hours are counted.' => '',
        'If an agent locks a ticket and does not close it before the unlock timeout has passed, the ticket will unlock and will become available for other agents.' =>
            '',
        'Notify by' => 'התראה על ידי',
        '0 = no escalation' => '0 = ללא אסקלציה',
        'If there is not added a customer contact, either email-external or phone, to a new ticket before the time defined here expires, the ticket is escalated.' =>
            '',
        'If there is an article added, such as a follow-up via email or the customer portal, the escalation update time is reset. If there is no customer contact, either email-external or phone, added to a ticket before the time defined here expires, the ticket is escalated.' =>
            '',
        'If the ticket is not set to closed before the time defined here expires, the ticket is escalated.' =>
            '',
        'Follow up Option' => 'אפשרות מעקב',
        'Specifies if follow up to closed tickets would re-open the ticket, be rejected or lead to a new ticket.' =>
            '',
        'Ticket lock after a follow up' => 'נעילת פניה לאחר מעקב',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked to the old owner.' =>
            '',
        'System address' => 'כתובת מערכת',
        'Will be the sender address of this queue for email answers.' => '',
        'Default sign key' => '',
        'The salutation for email answers.' => '',
        'The signature for email answers.' => 'חתימה עבור מענים בדוא"ל',

        # Template: AdminQueueAutoResponse
        'Manage Queue-Auto Response Relations' => 'נהל יחסי תור-מענה אוטומטי',
        'Filter for Queues' => 'סנן עבור תורות',
        'Filter for Auto Responses' => 'סנן עבור מענים אוטמטיים',
        'Auto Responses' => 'מענים אוטומטיים',
        'Change Auto Response Relations for Queue' => 'שנה יחסי מענה אוטומטי עבור תור',

        # Template: AdminQueueTemplates
        'Manage Template-Queue Relations' => 'נהל יחסי תבנית-תור',
        'Filter for Templates' => 'סנן עבור תבניות',
        'Templates' => 'תבניות',
        'Change Queue Relations for Template' => 'שנה יחסי תור לתבנית',
        'Change Template Relations for Queue' => 'שנה יחסי תבנית לתור',

        # Template: AdminRegistration
        'System Registration Management' => 'ניהול רישום מערכת',
        'Edit details' => 'ערוך פרטים',
        'Overview of registered systems' => 'מבט-על של מערכות רשומות',
        'Deregister system' => 'בטל רישום מערכת',
        'System Registration' => 'רישום מערכת',
        'This system is registered with OTRS Group.' => 'מערכת זו רשומה עם קבוצת OTRS.',
        'System type' => 'סוג מערכת',
        'Unique ID' => 'Unique ID',
        'Last communication with registration server' => 'תקשורת אחרונה עם שרת הרישום',
        'Send support data' => '',
        'OTRS-ID Login' => 'OTRS-ID Login',
        'System registration is a service of OTRS Group, which provides a lot of advantages!' =>
            '',
        'Read more' => 'קרא עוד',
        'You need to log in with your OTRS-ID to register your system.' =>
            '',
        'Your OTRS-ID is the email address you used to sign up on the OTRS.com webpage.' =>
            '',
        'Data Protection' => '',
        'What are the advantages of system registration?' => 'מהם היתרונות של רישום מערכת?',
        'You will receive updates about relevant security releases.' => 'תקבלו עדכונים על תיקוני אבטחת מידע רלוונטיים.',
        'With your system registration we can improve our services for you, because we have all relevant information available.' =>
            '',
        'This is only the beginning!' => 'זוהי רק ההתחלה!',
        'We will inform you about our new services and offerings soon.' =>
            '',
        'Can I use OTRS without being registered?' => 'האם אפשר להשתמש ב- OTRS בלי להירשם',
        'System registration is optional.' => 'רישום מערכת הוא אופציונלי',
        'You can download and use OTRS without being registered.' => '',
        'Is it possible to deregister?' => 'האם אפשר לבטל רישום?',
        'You can deregister at any time.' => 'ניתן לבטל רישום בכל זמן.',
        'Which data is transfered when registering?' => 'איזה מידע מועבר בעת הרישום?',
        'A registered system sends the following data to OTRS Group:' => 'רישום מערכת שולח את המידע הבא לקבוצת OTRS:',
        'Fully Qualified Domain Name (FQDN), OTRS version, Database, Operating System and Perl version.' =>
            'ד',
        'Why do I have to provide a description for my system?' => '',
        'The description of the system is optional.' => 'תיאור המערכת הוא אופצינולי.',
        'The description and system type you specify help you to identify and manage the details of your registered systems.' =>
            '',
        'How often does my OTRS system send updates?' => 'כל כמה זמן נשלחים עדכונים למערכת OTRS?',
        'Your system will send updates to the registration server at regular intervals.' =>
            '',
        'Typically this would be around once every three days.' => 'בדרך כלל זה מתרחש אחת לשלושה ימים',
        'In case you would have further questions we would be glad to answer them.' =>
            '',
        'Please visit our' => 'אנא בקרו את',
        'portal' => 'הפורטל שלנו,',
        'and file a request.' => 'והגישו בקשה.',
        'Here at OTRS Group we take the protection of your personal details very seriously and strictly adhere to data protection laws.' =>
            '',
        'All passwords are automatically made unrecognizable before the information is sent.' =>
            '',
        'Under no circumstances will any data we obtain be sold or passed on to unauthorized third parties.' =>
            '',
        'The following explanation provides you with an overview of how we guarantee this protection and which type of data is collected for which purpose.' =>
            '',
        'Data Handling with \'System Registration\'' => '',
        'Information received through the \'Service Center\' is saved by OTRS Group.' =>
            '',
        'This only applies to data that OTRS Group requires to analyze the performance and function of the OTRS server or to establish contact.' =>
            '',
        'Safety of Personal Details' => '',
        'OTRS Group protects your personal data from unauthorized access, use or publication.' =>
            '',
        'OTRS Group ensures that the personal information you store on the server is protected from unauthorized access and publication.' =>
            '',
        'Disclosure of Details' => '',
        'OTRS Group will not pass on your details to third parties unless required for business transactions.' =>
            '',
        'OTRS Group will only pass on your details to entitled public institutions and authorities if required by law or court order.' =>
            '',
        'Amendment of Data Protection Policy' => '',
        'OTRS Group reserves the right to amend this security and data protection policy if required by technical developments.' =>
            '',
        'In this case we will also adapt our information regarding data protection accordingly.' =>
            '',
        'Please regularly refer to the latest version of our Data Protection Policy.' =>
            '',
        'Right to Information' => '',
        'You have the right to demand information concerning the data saved about you, its origin and recipients, as well as the purpose of the data processing at any time.' =>
            '',
        'You can request information about the saved data by sending an e-mail to info@otrs.com.' =>
            '',
        'Further Information' => '',
        'Your trust is very important to us. We are willing to inform you about the processing of your personal details at any time.' =>
            '',
        'If you have any questions that have not been answered by this Data Protection Policy or if you require more detailed information about a specific topic, please contact info@otrs.com.' =>
            '',
        'If you deregister your system, you will loose these benefits:' =>
            '',
        'You need to log in with your OTRS-ID to deregister your system.' =>
            '',
        'OTRS-ID' => 'OTRS-ID',
        'You don\'t have an OTRS-ID yet?' => '',
        'Sign up now' => 'הירשמו עכשיו',
        'Forgot your password?' => 'שכחתם סיסמא?',
        'Retrieve a new one' => 'קבלו חדשה',
        'This data will be frequently transferred to OTRS Group when you register this system.' =>
            '',
        'Attribute' => 'מאפיין',
        'FQDN' => 'FQDN',
        'Optional description of this system.' => 'תיאור אופציונלי של מערכת זו.',
        'This will allow the system to send additional support data information to OTRS Group.' =>
            '',
        'Service Center' => '',
        'Support Data Management' => '',
        'Register' => 'רישום',
        'Deregister System' => 'ביטול רישום מערכת',
        'Continuing with this step will deregister the system from OTRS Group.' =>
            '',
        'Deregister' => 'בטל רישום',
        'You can modify registration settings here.' => '',

        # Template: AdminRole
        'Role Management' => 'ניהול תפקידים',
        'Add role' => 'הוסף תפקיד',
        'Create a role and put groups in it. Then add the role to the users.' =>
            '',
        'There are no roles defined. Please use the \'Add\' button to create a new role.' =>
            '',
        'Add Role' => 'הוסף תפקיד',
        'Edit Role' => 'ערוך תפקיד',

        # Template: AdminRoleGroup
        'Manage Role-Group Relations' => 'נהל יחסי תפקיד-קבוצה',
        'Filter for Roles' => 'סנן עבור תפקידים',
        'Select the role:group permissions.' => '',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the role).' =>
            '',
        'Change Role Relations for Group' => 'שנה יחסי תפקיד לקבוצה',
        'Change Group Relations for Role' => 'שנה יחסי קבוצה לתפקיד',
        'Toggle %s permission for all' => 'שנה הרשאת %s לכולם',
        'move_into' => 'העבר אל',
        'Permissions to move tickets into this group/queue.' => '',
        'create' => 'צור',
        'Permissions to create tickets in this group/queue.' => '',
        'priority' => 'עדיפות',
        'Permissions to change the ticket priority in this group/queue.' =>
            '',

        # Template: AdminRoleUser
        'Manage Agent-Role Relations' => 'נהל יחסי סוכן-תפקיד',
        'Filter for Agents' => 'סנן עבור סוכנים',
        'Manage Role-Agent Relations' => 'נהל יחסי תפקיד-סוכן',
        'Change Role Relations for Agent' => 'שנה יחסי תפקיד לסוכן',
        'Change Agent Relations for Role' => 'שנה יחסי סוכן לתפקיד',

        # Template: AdminSLA
        'SLA Management' => 'ניהול SLA',
        'Add SLA' => 'הוסף SLA',
        'Edit SLA' => 'ערוך SLA',
        'Please write only numbers!' => 'נא להקליד מספרים בלבד!',

        # Template: AdminSMIME
        'S/MIME Management' => 'נהיול S/MIME',
        'Add certificate' => '',
        'Add private key' => 'הוסף מפתח פרטי',
        'Filter for certificates' => '',
        'Filter for SMIME certs' => '',
        'To show certificate details click on a certificate icon.' => '',
        'To manage private certificate relations click on a private key icon.' =>
            '',
        'Here you can add relations to your private certificate, these will be embedded to the SMIME signature every time you use this certificate to sign an email.' =>
            '',
        'See also' => 'ראו גם',
        'In this way you can directly edit the certification and private keys in file system.' =>
            '',
        'Hash' => 'Hash',
        'Handle related certificates' => '',
        'Read certificate' => '',
        'Delete this certificate' => '',
        'Add Certificate' => '',
        'Add Private Key' => '',
        'Secret' => '',
        'Related Certificates for' => '',
        'Delete this relation' => '',
        'Available Certificates' => '',
        'Relate this certificate' => '',

        # Template: AdminSMIMECertRead
        'SMIME Certificate' => '',
        'Close window' => 'סגור חלון',

        # Template: AdminSalutation
        'Salutation Management' => '',
        'Add salutation' => '',
        'Add Salutation' => '',
        'Edit Salutation' => '',
        'Example salutation' => '',

        # Template: AdminScheduler
        'This option will force Scheduler to start even if the process is still registered in the database' =>
            '',
        'Start scheduler' => '',
        'Scheduler could not be started. Check if scheduler is not running and try it again with Force Start option' =>
            '',

        # Template: AdminSecureMode
        'Secure mode needs to be enabled!' => 'Sicherheitsmodus muss eingeschaltet sein!',
        'Secure mode will (normally) be set after the initial installation is completed.' =>
            '',
        'If secure mode is not activated, activate it via SysConfig because your application is already running.' =>
            '',

        # Template: AdminSelectBox
        'SQL Box' => '',
        'Here you can enter SQL to send it directly to the application database.' =>
            '',
        'The syntax of your SQL query has a mistake. Please check it.' =>
            '',
        'There is at least one parameter missing for the binding. Please check it.' =>
            '',
        'Result format' => '',
        'Run Query' => '',

        # Template: AdminService
        'Service Management' => 'ניהול שירותים',
        'Add service' => 'הוסף שירות',
        'Add Service' => 'הוסף שירות',
        'Edit Service' => 'ערוך שירות',
        'Sub-service of' => 'שירות-משנה של',

        # Template: AdminServiceCenterSupportDataCollector
        'This data is sent to OTRS Group on a regular basis. To stop sending this data please update your system registration.' =>
            '',
        'You can manually trigger the Support Data sending by pressing this button:' =>
            '',
        'Send Update' => '',
        'Sending Update...' => '',
        'Support Data information was successfully sent.' => '',
        'Was not possible to send Support Data information.' => '',
        'Update Result' => '',
        'Currently this data is only shown in this system.' => '',
        'It is highly recommended to send this data to OTRS Group in order to get better support.' =>
            '',
        'To enable data sending, please register your system with OTRS Group or update your system registration information (make sure to activate the \'send support data\' option.)' =>
            '',
        'A support bundle (including: system registration information, support data, a list of installed packages and all locally modified source code files) can be generated by pressing this button:' =>
            '',
        'Generate Support Bundle' => '',
        'Generating...' => '',
        'It was not possible to generate the Support Bundle.' => '',
        'Generate Result' => '',
        'Support Bundle' => '',
        'The mail could not be sent' => '',
        'The support bundle has been generated.' => '',
        'Please choose one of the following options.' => '',
        'Send by Email' => '',
        'The support bundle is too large to send it by email, this option has been disabled.' =>
            '',
        'The email address for this user is invalid, this option has been disabled.' =>
            '',
        'Sending' => '',
        'The support bundle will be sent to OTRS Group via email automatically.' =>
            '',
        'Download File' => '',
        'A file containing the support bundle will be downloaded to the local system. Please save the file and send it to the OTRS Group, using an alternate method.' =>
            '',
        'Support Data' => '',
        'Error: Support data could not be collected (%s).' => '',

        # Template: AdminSession
        'Session Management' => '',
        'All sessions' => '',
        'Agent sessions' => '',
        'Customer sessions' => '',
        'Unique agents' => '',
        'Unique customers' => 'לקוחות ייחודיים',
        'Kill all sessions' => '',
        'Kill this session' => '',
        'Session' => 'Session',
        'Kill' => '',
        'Detail View for SessionID' => '',

        # Template: AdminSignature
        'Signature Management' => 'ניהול חתימות',
        'Add signature' => 'הוסף חתימה',
        'Add Signature' => 'הוסף חתימה',
        'Edit Signature' => 'ערוך חתימה',
        'Example signature' => 'חתימה לדוגמא',

        # Template: AdminState
        'State Management' => 'ניהול מצבים',
        'Add state' => 'הוסף מצב',
        'Please also update the states in SysConfig where needed.' => '',
        'Add State' => 'הוסף מצב',
        'Edit State' => 'ערוך מצב',
        'State type' => 'סוג מצב',

        # Template: AdminSysConfig
        'SysConfig' => 'SysConfig',
        'Navigate by searching in %s settings' => '',
        'Navigate by selecting config groups' => '',
        'Download all system config changes' => '',
        'Export settings' => 'ייצא הגדרות',
        'Load SysConfig settings from file' => '',
        'Import settings' => 'ייבא הגדרות',
        'Import Settings' => 'ייבא הגדרות',
        'Please enter a search term to look for settings.' => '',
        'Subgroup' => 'תת קבוצה',
        'Elements' => 'פריט',

        # Template: AdminSysConfigEdit
        'Edit Config Settings' => '',
        'This config item is only available in a higher config level!' =>
            '',
        'Reset this setting' => 'אפס הגדרה זו',
        'Error: this file could not be found.' => '',
        'Error: this directory could not be found.' => '',
        'Error: an invalid value was entered.' => '',
        'Content' => 'תוכן',
        'Remove this entry' => 'הסר רשומה זו',
        'Add entry' => 'הוסף רשומה',
        'Remove entry' => 'הסר רשומה',
        'Add new entry' => 'הוסך רשומה חדשה',
        'Delete this entry' => 'מחק רשומה זו',
        'Create new entry' => 'צור רשומה חדשה',
        'New group' => 'קבוצה חדשה',
        'Group ro' => 'ro של קבוצה',
        'Readonly group' => 'קבוצה לקריאה בלבד',
        'New group ro' => 'ro חדש לקבוצה',
        'Loader' => '',
        'File to load for this frontend module' => '',
        'New Loader File' => '',
        'NavBarName' => 'תפריט ניווט חדש',
        'NavBar' => 'תפריט ניווט',
        'LinkOption' => 'LinkOption',
        'Block' => 'Block',
        'AccessKey' => 'AccessKey',
        'Add NavBar entry' => '',
        'Year' => 'שנה',
        'Month' => 'חודש',
        'Day' => 'יום',
        'Invalid year' => '',
        'Invalid month' => '',
        'Invalid day' => '',
        'Show more' => 'הצג עוד',

        # Template: AdminSystemAddress
        'System Email Addresses Management' => 'ניהול כתובת דוא"ל מערכת',
        'Add system address' => 'הוסף כתובת מערכת',
        'All incoming email with this address in To or Cc will be dispatched to the selected queue.' =>
            '',
        'Email address' => 'כתובת דוא"ל',
        'Display name' => 'שם תצוגה',
        'Add System Email Address' => 'הוסף כתובת דוא"ל מערכת',
        'Edit System Email Address' => 'ערוך כתובת דוא"ל מערכת',
        'The display name and email address will be shown on mail you send.' =>
            'שם התצוגה והדוא"ל יוצגו בהודעה שתשלחו',

        # Template: AdminTemplate
        'Manage Templates' => 'נהל תבניות',
        'Add template' => 'הוסף תבנית',
        'A template is a default text which helps your agents to write faster tickets, answers or forwards.' =>
            '',
        'Don\'t forget to add new templates to queues.' => 'אל תשכחו להוסיף תבניות חדשות לתורות.',
        'Add Template' => 'הוסף תבנית',
        'Edit Template' => 'ערוך תבנית',
        'Template' => 'תבנית',
        'Create type templates only supports this smart tags' => 'צור סוג תבניות שתומכות רק בתגית חכמה זו',
        'Example template' => 'תבנית לדוגמא',
        'The current ticket state is' => 'מצב הפניה הנוכחי הוא',
        'Your email address is' => 'כתובת הדוא"ל שלך היא',

        # Template: AdminTemplateAttachment
        'Manage Templates <-> Attachments Relations' => 'נהל יחסי תבניות <-> קבצים מצורפים',
        'Filter for Attachments' => 'מסנן עבור קבצים מצורפים',
        'Change Template Relations for Attachment' => 'שנה יחסי תבנית לקובץ מצורף',
        'Change Attachment Relations for Template' => 'שנה יחסי קובץ מצורף לתבנית',
        'Toggle active for all' => 'הפוך לפעיל עבור כולם',
        'Link %s to selected %s' => 'קשר %s ל-%s שנבחרו',

        # Template: AdminType
        'Type Management' => 'ניהול סוגים',
        'Add ticket type' => 'הוסף סוג פניה',
        'Add Type' => 'הוסף סוג',
        'Edit Type' => 'ערוך סוג',

        # Template: AdminUser
        'Add agent' => 'הוסף סוכן',
        'Agents will be needed to handle tickets.' => 'יש ליצור סוכנים על מנת לטפל לפניות.',
        'Don\'t forget to add a new agent to groups and/or roles!' => 'אל תשכחו להוסיף סוכן חדש לקבוצות ו/או תפקידים!',
        'Please enter a search term to look for agents.' => 'אנא הקלידו את המונח לחיפוש עבור סוכנים',
        'Last login' => 'התחברות אחרונה',
        'Switch to agent' => 'החלף לסוכן',
        'Add Agent' => 'הוסף סוכן',
        'Edit Agent' => 'ערוך סוכן',
        'Firstname' => 'שם פרטי',
        'Lastname' => 'שם משפחה',
        'Will be auto-generated if left empty.' => 'תיווצר אוטומטית אם השדה ריק.',
        'Start' => 'התחל',
        'End' => 'סיים',

        # Template: AdminUserGroup
        'Manage Agent-Group Relations' => 'נהל יחסי סוכן-קבוצה',
        'Change Group Relations for Agent' => 'שנה יחסי קבוצה לסוכן',
        'Change Agent Relations for Group' => 'שנה יחסי סוכן לקבוצה',
        'note' => 'הערה',
        'Permissions to add notes to tickets in this group/queue.' => 'הרשאות להוספת הערות לפניות בקבוצה/תור זה.',
        'owner' => 'בעלים',
        'Permissions to change the owner of tickets in this group/queue.' =>
            'הרשאות לשינוי בעלי הפניות בקבוצה/תור זה',

        # Template: AgentBook
        'Address Book' => '',
        'Search for a customer' => '',
        'Add email address %s to the To field' => 'הוסף כתובת דוא"ל %s לשדה To',
        'Add email address %s to the Cc field' => 'הוסף כתובת דוא"ל %s לשדה CC',
        'Add email address %s to the Bcc field' => 'הוסף כתובת דוא"ל %s לשדה BCC',
        'Apply' => 'החל',

        # Template: AgentCustomerInformationCenter
        'Customer Information Center' => 'מרכז מידע ללקוח',

        # Template: AgentCustomerInformationCenterBlank

        # Template: AgentCustomerInformationCenterSearch
        'Customer ID' => 'מספר זיהוי לקוח',
        'Customer User' => 'משתמש לקוח',

        # Template: AgentCustomerSearch
        'Duplicated entry' => 'רשומה כפולה',
        'This address already exists on the address list.' => 'כתובת זו כבר קיימת ברשימת הכתובות',
        'It is going to be deleted from the field, please try again.' => 'זה יימחק מהשדה, אנא נסו שנית.',

        # Template: AgentCustomerTableView
        'Note: Customer is invalid!' => 'שימו לב: הלקוח לא תקין!',

        # Template: AgentDashboard
        'Dashboard' => 'לוח בקרה',

        # Template: AgentDashboardCalendarOverview
        'in' => 'in',

        # Template: AgentDashboardCommon
        'Available Columns' => 'עמודות זמינות',
        'Visible Columns (order by drag & drop)' => 'עמודות נראות (סדר בגרירה של העמודות)',

        # Template: AgentDashboardCustomerCompanyInformation

        # Template: AgentDashboardCustomerIDStatus
        'Escalated tickets' => 'פניות באסקלציה',

        # Template: AgentDashboardCustomerUserList
        'Customer information' => 'פרטי לקוח',
        'Phone ticket' => 'פניה בטלפון',
        'Email ticket' => 'פניה בדוא"ל',
        '%s open ticket(s) of %s' => '%s פניות פתוחות מתוך %s',
        '%s closed ticket(s) of %s' => '%s פניות סגורות מתוך %s',
        'New phone ticket from %s' => 'פניות טלפון חדשות מ-%s',
        'New email ticket to %s' => 'פניות דוא"ל חדשות מ-%s',

        # Template: AgentDashboardIFrame

        # Template: AgentDashboardImage

        # Template: AgentDashboardProductNotify
        '%s %s is available!' => '%s %s זמין!',
        'Please update now.' => 'אנא עדכנו כעת.',
        'Release Note' => 'פרטי גרסה',
        'Level' => 'רמה',

        # Template: AgentDashboardRSSOverview
        'Posted %s ago.' => 'נכתב לפני %s.',

        # Template: AgentDashboardStats
        'The content of this statistic is being prepared for you, please be patient.' =>
            '',
        'Grouped' => '',
        'Stacked' => '',
        'Expanded' => '',
        'Stream' => '',
        'CSV' => '',
        'PDF' => '',

        # Template: AgentDashboardTicketGeneric
        'My locked tickets' => 'הפניות הנעולות שלי',
        'My watched tickets' => 'הפניות במעקב שלי',
        'My responsibilities' => 'באחריות שלי',
        'Tickets in My Queues' => 'פניות בתורים שלי',
        'Service Time' => 'זמן השירוץ',
        'Remove active filters for this widget.' => 'הסר מסננים פעילים לחלונית זו.',

        # Template: AgentDashboardTicketQueueOverview
        'Totals' => 'סה"כ',

        # Template: AgentDashboardTicketStats

        # Template: AgentDashboardUserOnline
        'out of office' => 'מחוץ למשרד',

        # Template: AgentDashboardUserOutOfOffice
        'until' => 'עד',

        # Template: AgentHTMLReferenceForms

        # Template: AgentHTMLReferenceOverview

        # Template: AgentHTMLReferencePageLayout
        'The ticket has been locked' => '',
        'Undo & close window' => '',

        # Template: AgentInfo
        'Info' => 'מידע',
        'To accept some news, a license or some changes.' => '',

        # Template: AgentLinkObject
        'Link Object: %s' => 'קשר אובייקט ל: %s',
        'go to link delete screen' => 'עבור למסך מחיקת קישור',
        'Select Target Object' => 'בחר אובייקט מטרה',
        'Link Object' => 'קשר אובייקט',
        'with' => 'עפ',
        'Unlink Object: %s' => 'בטל קישור אובייקט: %s',
        'go to link add screen' => 'עבור למסך הוספת קישור',

        # Template: AgentNavigationBar

        # Template: AgentPreferences
        'Edit your preferences' => 'ערכו את ההעדפות שלכם',

        # Template: AgentSpelling
        'Spell Checker' => 'בודק איות',
        'spelling error(s)' => 'שגיאות איות',
        'Apply these changes' => 'החל שינויים אלו',

        # Template: AgentStatsDelete
        'Delete stat' => 'מחק סטטיסטיקה',
        'Stat#' => 'סטטיטיקה #',
        'Do you really want to delete this stat?' => 'האם אתם בטוחים שברצונכם למחוק סטטיסטיקה זו?',

        # Template: AgentStatsEditRestrictions
        'Step %s' => 'שלב %s',
        'General Specifications' => 'איפיון כללי',
        'Select the element that will be used at the X-axis' => '',
        'Select the elements for the value series' => '',
        'Select the restrictions to characterize the stat' => '',
        'Here you can make restrictions to your stat.' => '',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' =>
            '',
        'Fixed' => 'קבוע',
        'Please select only one element or turn off the button \'Fixed\'.' =>
            '',
        'Absolute Period' => 'תקופה אבסולוטית',
        'Between' => 'בין',
        'Relative Period' => 'תקופה יחסית',
        'The last' => 'האחרון',
        'Finish' => 'סיים',

        # Template: AgentStatsEditSpecification
        'Permissions' => 'הרשאות',
        'You can select one or more groups to define access for different agents.' =>
            '',
        'Some result formats are disabled because at least one needed package is not installed.' =>
            '',
        'Please contact your administrator.' => '',
        'Graph size' => 'גודל תרשים',
        'If you use a graph as output format you have to select at least one graph size.' =>
            '',
        'Sum rows' => 'שורות סכום',
        'Sum columns' => 'עמודות סכום',
        'Use cache' => '',
        'Most of the stats can be cached. This will speed up the presentation of this stat.' =>
            '',
        'Show as dashboard widget' => '',
        'Provide the statistic as a widget that agents can activate in their dashboard.' =>
            '',
        'Please note' => '',
        'Enabling the dashboard widget will activate caching for this statistic in the dashboard.' =>
            '',
        'Agents will not be able to change absolute time settings for statistics dashboard widgets.' =>
            '',
        'IE8 doesn\'t support statistics dashboard widgets.' => 'IE8 לא תומך בלוחיות בקרת סטטיסטיקה',
        'If set to invalid end users can not generate the stat.' => '',

        # Template: AgentStatsEditValueSeries
        'Here you can define the value series.' => '',
        'You have the possibility to select one or two elements.' => '',
        'Then you can select the attributes of elements.' => '',
        'Each attribute will be shown as single value series.' => '',
        'If you don\'t select any attribute all attributes of the element will be used if you generate a stat, as well as new attributes which were added since the last configuration.' =>
            '',
        'Scale' => 'סולם',
        'minimal' => 'מינימלי',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' =>
            '',

        # Template: AgentStatsEditXaxis
        'Here you can define the x-axis. You can select one element via the radio button.' =>
            '',
        'maximal period' => 'תקופה מירבית',
        'minimal scale' => 'סולם מינימלי',

        # Template: AgentStatsImport
        'Import Stat' => 'ייבא סטטיסטיקה',
        'File is not a Stats config' => 'הקובץ אינו מכיל הגדרות סטטיסטיקה',
        'No File selected' => 'לא נבחר קובץ',

        # Template: AgentStatsOverview
        'Stats' => 'סטטיסטיקה',

        # Template: AgentStatsPrint
        'No Element selected.' => 'לא נבחר רכיב.',

        # Template: AgentStatsView
        'Export config' => 'ייצא הגדרות',
        'With the input and select fields you can influence the format and contents of the statistic.' =>
            '',
        'Exactly what fields and formats you can influence is defined by the statistic administrator.' =>
            '',
        'Stat Details' => 'פרטי סטטיסטיקה',
        'Format' => 'תצורה',
        'Graphsize' => 'גודל תרשים',
        'Cache' => 'Cache',
        'Exchange Axis' => 'שנה ציר',

        # Template: AgentStatsViewSettings
        'Configurable params of static stat' => 'פרמטרים שניתן להגדיר לסטטיסטיקה סטטית',
        'No element selected.' => 'לא נבחר רכיב.',
        'maximal period from' => 'תקופה מירבית מ-',
        'to' => 'עד',
        'not changable for dashboard statistics' => '',
        'Select Chart Type' => '',
        'Chart Type' => '',
        'Multi Bar Chart' => '',
        'Multi Line Chart' => '',
        'Stacked Area Chart' => '',

        # Template: AgentTicketActionCommon
        'Change Free Text of Ticket' => 'שנה את הטקסט "החופשי" של הפניה',
        'Change Owner of Ticket' => 'שנה את בעלי הפניה',
        'Close Ticket' => 'סגור פניה',
        'Add Note to Ticket' => 'הוסף הערה לפניה',
        'Set Pending' => 'קבע כממתינה',
        'Change Priority of Ticket' => 'שנה עדיפות הפניה',
        'Change Responsible of Ticket' => 'שנה אחראי על הפניה',
        'All fields marked with an asterisk (*) are mandatory.' => 'כל השדות המסומנים עם כוכבית (*) הם שדות חובה.',
        'Service invalid.' => 'שירות לא חוקי.',
        'New Owner' => 'בעלים חדש',
        'Please set a new owner!' => 'אנא בחרו בעלים חדש',
        'Previous Owner' => 'בעלים קודם',
        'Inform Agent' => 'יידע סוכן',
        'Optional' => 'אופציונלי',
        'Inform involved Agents' => 'יידע סוכנים מעורבים',
        'Spell check' => 'בדיקתת איות',
        'Note type' => 'סוג ההערה',
        'Next state' => 'מצב חדש',
        'Date invalid!' => 'תאריך לא תקף!',

        # Template: AgentTicketActionPopupClose

        # Template: AgentTicketBounce
        'Bounce Ticket' => 'העבר פניה',
        'Bounce to' => 'העבר אל',
        'You need a email address.' => 'Sie benötigen eine E-Mail-Adresse',
        'Need a valid email address or don\'t use a local email address.' =>
            'Benötige eine gültige E-Mail-Adresse, verwenden Sie keine lokale Adresse.',
        'Next ticket state' => 'מצב הפניה הבא',
        'Inform sender' => 'יידע את השולח',
        'Send mail' => 'שלח דו"אל',

        # Template: AgentTicketBulk
        'Ticket Bulk Action' => 'פעולות גורפות על פניות',
        'Send Email' => 'שלח דוא"ל',
        'Merge to' => 'מזג אל',
        'Invalid ticket identifier!' => '',
        'Merge to oldest' => 'מזג לישן ביותר',
        'Link together' => 'קשר יחד',
        'Link to parent' => 'קשר לפריט אב',
        'Unlock tickets' => 'שחחר נעילות פניות',

        # Template: AgentTicketClose

        # Template: AgentTicketCompose
        'Compose answer for ticket' => 'חבר תשובה לפניה',
        'Please include at least one recipient' => 'נא לכלול לפחות נמען אחד',
        'Remove Ticket Customer' => 'הסר לקוח של פניה',
        'Please remove this entry and enter a new one with the correct value.' =>
            '',
        'Remove Cc' => 'הסר Cc',
        'Remove Bcc' => 'הסר Bcc',
        'Address book' => 'פנקס כתובות',
        'Pending Date' => '',
        'for pending* states' => '',
        'Date Invalid!' => 'תאריך לא תקין!',

        # Template: AgentTicketCustomer
        'Change customer of ticket' => 'שנה לקוח של הפניה',
        'Customer user' => 'משתמש הלקוח',

        # Template: AgentTicketEmail
        'Create New Email Ticket' => 'צור פניית דוא"ל חדשה',
        'From queue' => 'מהתור',
        'To customer user' => 'למשתמש לקוח',
        'Please include at least one customer user for the ticket.' => 'נא לכלול לפחות משתמש לקוח אחד עבור הפניה',
        'Select this customer as the main customer.' => 'בחר לקוח זה כלקוח העיקרי.',
        'Remove Ticket Customer User' => 'הסר משתמש לקוח מהפניה',
        'Get all' => 'קבל הכל',
        'Text Template' => 'תבנית טקסט',

        # Template: AgentTicketEscalation

        # Template: AgentTicketForward
        'Forward ticket: %s - %s' => 'העבר פניה:  %s - %s',

        # Template: AgentTicketFreeText

        # Template: AgentTicketHistory
        'History of' => 'היסטוריה של',
        'History Content' => 'תוכן ההיסטוריה',
        'Zoom view' => 'מבט זום',

        # Template: AgentTicketMerge
        'Ticket Merge' => 'מזג פניה',
        'You need to use a ticket number!' => 'עליך להשתמש במספר פניה!',
        'A valid ticket number is required.' => 'Eine gültige Ticketnummer ist erforderlich.',
        'Need a valid email address.' => 'Benötige gültige E-Mail-Adresse.',

        # Template: AgentTicketMove
        'Move Ticket' => 'העבר פניה',
        'New Queue' => 'תור חדש',

        # Template: AgentTicketNote

        # Template: AgentTicketOverviewMedium
        'Select all' => 'בחר הכל',
        'No ticket data found.' => 'לא נמצאו נתוני פניה.',
        'First Response Time' => 'זמן המענה הראשוני',
        'Update Time' => 'זמן העדכון',
        'Solution Time' => 'זמן הפתרון',
        'Move ticket to a different queue' => 'העבר פניה לתור אחר',
        'Change queue' => 'שנה תור',

        # Template: AgentTicketOverviewNavBar
        'Change search options' => 'שנה אפשרויות חיפוש',
        'Remove active filters for this screen.' => 'הסר מסננים פעילים במסך זה.',
        'Tickets per page' => 'פניות בעמוד',

        # Template: AgentTicketOverviewPreview

        # Template: AgentTicketOverviewSmall
        'Reset overview' => 'אפס מבט-על',
        'Column Filters Form' => 'טופס סינון עמודות',

        # Template: AgentTicketOwner

        # Template: AgentTicketPending

        # Template: AgentTicketPhone
        'Create New Phone Ticket' => 'צור פניית טלפון חדשה',
        'Please include at least one customer for the ticket.' => 'נא לכלול לפחות לקוח אחד לפניה.',
        'To queue' => 'לתור',

        # Template: AgentTicketPhoneCommon

        # Template: AgentTicketPlain
        'Email Text Plain View' => 'תצוגת טקסט לא מעוצב של דוא"ל',
        'Plain' => 'לא מעוצב',
        'Download this email' => 'הורד דוא"ל זה',

        # Template: AgentTicketPrint
        'Ticket-Info' => 'מידע פניה',
        'Accounted time' => 'זמן שחושב',
        'Linked-Object' => 'אובייקט מקושר',
        'by' => 'על ידי ',

        # Template: AgentTicketPriority

        # Template: AgentTicketProcess
        'Create New Process Ticket' => 'צור פניית תהליך חדשה',
        'Process' => 'תהליך',

        # Template: AgentTicketProcessNavigationBar

        # Template: AgentTicketQueue

        # Template: AgentTicketResponsible

        # Template: AgentTicketSearch
        'Search template' => 'חפש תבנית',
        'Create Template' => 'צור תבנית',
        'Create New' => 'צור חדשה',
        'Profile link' => 'קישור לפרופיל',
        'Save changes in template' => 'שמור שינויים בתבנית',
        'Filters in use' => '',
        'Additional filters' => '',
        'Add another attribute' => 'הוסף מאפיין נוסף',
        'Output' => 'פלט',
        'Fulltext' => 'טקסט מלא',
        'Remove' => 'הסר',
        'Searches in the attributes From, To, Cc, Subject and the article body, overriding other attributes with the same name.' =>
            'חיפושים במאפיינים של שדות מאת, אל, העתק, ובגוף המאמר, הגוברים על מאפיינים אחרים באותו שם.',
        'Customer User Login' => 'התחברות משתמש לקוח',
        'Created in Queue' => 'נוצר בתור',
        'Lock state' => 'נעל מצב',
        'Watcher' => 'צופה',
        'Article Create Time (before/after)' => 'זמן יצירת מאמר (לפני/אחרי)',
        'Article Create Time (between)' => 'זמן יצירת מאמר (בין)',
        'Ticket Create Time (before/after)' => 'זמן יצירת פניה (לפני/אחרי)',
        'Ticket Create Time (between)' => 'זמן יצירת פניה (בין)',
        'Ticket Change Time (before/after)' => 'זמן שינוי פניה (לפני/אחרי)',
        'Ticket Change Time (between)' => 'זמן שינוי פניה (בין)',
        'Ticket Close Time (before/after)' => 'זמן סגירת פניה (לפני/אחרי)',
        'Ticket Close Time (between)' => 'זמן סגירת פניה (בין)',
        'Ticket Escalation Time (before/after)' => 'זמן אסקלציית פניה (לפני/אחרי)',
        'Ticket Escalation Time (between)' => 'זמן אסקלציית פניה (בין)',
        'Archive Search' => 'העבר חיפוש לארכיון',
        'Run search' => 'הרץ חיפוש',

        # Template: AgentTicketSearchOpenSearchDescriptionFulltext

        # Template: AgentTicketSearchOpenSearchDescriptionTicketNumber

        # Template: AgentTicketSearchResultPrint

        # Template: AgentTicketZoom
        'Article filter' => 'מסנן מאמרים',
        'Article Type' => 'סוג מאמר',
        'Sender Type' => 'סוג שולח',
        'Save filter settings as default' => 'שמור הגדרות מסנן כברירת מחדל',
        'Archive' => 'ארכיון',
        'This ticket is archived.' => 'פניה זו היא בארכיון.',
        'Locked' => 'נעולה',
        'Linked Objects' => 'פריטים מקושרים',
        'Article(s)' => 'מאמר(ים)',
        'Change Queue' => 'שנה תור',
        'There are no dialogs available at this point in the process.' =>
            'אין תיבות שיח זמינות בשלב זה של התהליך.',
        'This item has no articles yet.' => 'לפריט זה עדיין אין מאמרים',
        'Add Filter' => 'הוסף מסנן',
        'Set' => 'הגדר',
        'Reset Filter' => 'אפס מסנן',
        'Show one article' => 'הצג מאמר אחד',
        'Show all articles' => 'הצג את כל המאמרים',
        'Unread articles' => 'מאמרים שלא נקראו',
        'No.' => 'מס.',
        'Important' => 'חשוב',
        'Unread Article!' => 'מאמר שלא נקרא!',
        'Incoming message' => 'הודעה נכנסת',
        'Outgoing message' => 'הודעה יוצאת',
        'Internal message' => 'הודעה פנימית',
        'Resize' => 'שנה גודל',

        # Template: AttachmentBlocker
        'To protect your privacy, remote content was blocked.' => 'על מנת להגן על הפרטיות שלך, נחסם תוכן חיצוני.',
        'Load blocked content.' => 'טען תוכן חסום.',

        # Template: Copyright

        # Template: CustomerAccept

        # Template: CustomerError
        'Traceback' => 'Traceback',

        # Template: CustomerFooter
        'Powered by' => 'מבוסס על',
        'One or more errors occurred!' => 'התרחשו שגיאה אחת או יותר!',
        'Close this dialog' => 'סגור תיבת שיח זו',
        'Could not open popup window. Please disable any popup blockers for this application.' =>
            'לא ניתן לפתוח חלון קופץ. אנא נטרלו חוסמי חלונות קופצים עבור יישום זה.',
        'There are currently no elements available to select from.' => 'אין כעת פריטים זמינים שניתן לבחור.',

        # Template: CustomerFooterSmall

        # Template: CustomerHeader

        # Template: CustomerHeaderSmall

        # Template: CustomerLogin
        'JavaScript Not Available' => 'JavaScript לא זמין.',
        'In order to experience OTRS, you\'ll need to enable JavaScript in your browser.' =>
            'על מנת להפעיל את המערכת, עליכם לאפשר JavaScript בדפדפן.',
        'Browser Warning' => 'אזהרת דפדפן',
        'The browser you are using is too old.' => 'הדפדפן שלכם ישן מדי.',
        'OTRS runs with a huge lists of browsers, please upgrade to one of these.' =>
            'מערכת זו מופעלת על מגוון רחב של דפדפנים, אנא שדרגו לאחד מהם.',
        'Please see the documentation or ask your admin for further information.' =>
            'אנא צפו בתיעוד או בקשו מידע נוסף ממנהל המערכת.',
        'Login' => 'התחבר',
        'User name' => 'שם משתמש',
        'Your user name' => 'שם המשתמש שלך',
        'Your password' => 'הסיסמא שלך',
        'Forgot password?' => 'שכחת סיסמא?',
        'Log In' => 'התחבר',
        'Not yet registered?' => 'עדיין לא נרשמת?',
        'Request new password' => 'בקש סיסמא חדשה',
        'Your User Name' => 'שם המשתמש שלך',
        'A new password will be sent to your email address.' => 'סיסמא חדשה תישלח לכובת הדוא"ל שלך.',
        'Create Account' => 'צור חשבון',
        'Please fill out this form to receive login credentials.' => 'אנא מלאו את הטופס על מנת לקבל פרטי התחברות.',
        'How we should address you' => 'כיצד עלינו לפנות אליכם?',
        'Your First Name' => 'השם הפרטי שלך',
        'Your Last Name' => 'שם המשפחה שלך',
        'Your email address (this will become your username)' => 'כתובת הדוא"ל שלך (זה יהיה שם המשתמש שלך)',

        # Template: CustomerNavigationBar
        'Edit personal preferences' => 'עריכת העדפות אישיות',
        'Logout %s' => 'התנתק %s',

        # Template: CustomerPreferences

        # Template: CustomerRichTextEditor
        'Split Quote' => '',

        # Template: CustomerTicketMessage
        'Service level agreement' => 'הסכם רמת שירות SLA',

        # Template: CustomerTicketOverview
        'Welcome!' => 'ברוכים הבאים!',
        'Please click the button below to create your first ticket.' => 'נא ללחוץ על הכפתור למטה על מנת ליצור את הפניה הראשונה שלכם.',
        'Create your first ticket' => 'צרו את הפניה הראשונה שלכם',

        # Template: CustomerTicketPrint
        'Ticket Print' => 'הדפסת פניה',
        'Ticket Dynamic Fields' => 'שדות פניה דינמיים',

        # Template: CustomerTicketProcess

        # Template: CustomerTicketProcessNavigationBar

        # Template: CustomerTicketSearch
        'Profile' => 'פרופיל',
        'e. g. 10*5155 or 105658*' => 'למשל 10*5155 או 105658*',
        'Fulltext search in tickets (e. g. "John*n" or "Will*")' => 'חיפוש טקסט מלא בפניות (למשל "ממשק*" או "מס*ים")',
        'Carbon Copy' => 'העתק',
        'Types' => 'סוגים',
        'Time restrictions' => 'הגבלות זמן',
        'No time settings' => 'Keine Zeiteinstellungen',
        'Only tickets created' => 'רק פניות שנוצרו',
        'Only tickets created between' => 'רק פניות שנוצרו בין',
        'Ticket archive system' => 'מערכת ארכיון פניות',
        'Save search as template?' => 'שמור חיפוש זה כתבנית?',
        'Save as Template?' => 'שמור כתבנית?',
        'Save as Template' => 'שמור כתבנית',
        'Template Name' => 'שם התבנית',
        'Pick a profile name' => 'בחר שם פרופיל',
        'Output to' => 'פלט אל',

        # Template: CustomerTicketSearchOpenSearchDescription

        # Template: CustomerTicketSearchResultPrint

        # Template: CustomerTicketSearchResultShort
        'of' => 'מתוך',
        'Page' => 'עמוד',
        'Search Results for' => 'חפש תוצאות עבור',

        # Template: CustomerTicketZoom
        'Expand article' => 'הרחב מאמר',
        'Next Steps' => 'השלבים הבאים',
        'Reply' => 'השב',

        # Template: CustomerWarning

        # Template: DashboardEventsTicketCalendar
        'All-day' => 'יום שלם',
        'Sunday' => 'ראשון',
        'Monday' => 'שני',
        'Tuesday' => 'שלישי',
        'Wednesday' => 'רביעי',
        'Thursday' => 'חמישי',
        'Friday' => 'שישי',
        'Saturday' => 'שבת',
        'Su' => 'א',
        'Mo' => 'ב',
        'Tu' => 'ג',
        'We' => 'ד',
        'Th' => 'ה',
        'Fr' => 'ו',
        'Sa' => 'ש',
        'Event Information' => 'פרטי האירוע',
        'Ticket fields' => 'שדות הפניה',
        'Dynamic fields' => 'שדות דינמיים',

        # Template: Datepicker
        'Invalid date (need a future date)!' => 'תאריך לא תקין (חייב להיות עתידי)!',
        'Previous' => 'קודם',
        'Open date selection' => 'פתח בחירת תאריך',

        # Template: Error
        'Oops! An Error occurred.' => 'אופס. התרחשה שגיאה.',
        'Error Message' => 'הודעת שגיאה',
        'You can' => 'אתם יכולים',
        'Send a bugreport' => 'לשלוח דיווח על שגיאה',
        'go back to the previous page' => 'לחזור לעמוד הקודם',
        'Error Details' => 'פרטי השגיאה',

        # Template: Footer
        'Top of page' => 'לראש העמוד',

        # Template: FooterJS
        'If you now leave this page, all open popup windows will be closed, too!' =>
            '',
        'A popup of this screen is already open. Do you want to close it and load this one instead?' =>
            '',
        'Please enter at least one search value or * to find anything.' =>
            '',
        'Please check the fields marked as red for valid inputs.' => '',

        # Template: FooterSmall

        # Template: HTMLHead

        # Template: HTMLHeadBlockEvents

        # Template: Header
        'You are logged in as' => 'אתם מחוברים כ',

        # Template: HeaderSmall

        # Template: Installer
        'JavaScript not available' => 'JavaScript לא זמין',
        'Database Settings' => 'הגדרות בסיס נתונים',
        'General Specifications and Mail Settings' => '',
        'Welcome to %s' => 'ברוכים הבאים אל %s',
        'Web site' => 'אתר',
        'Mail check successful.' => 'בדיקת דועאר הצליחה.',
        'Error in the mail settings. Please correct and try again.' => '',

        # Template: InstallerConfigureMail
        'Configure Outbound Mail' => '',
        'Outbound mail type' => '',
        'Select outbound mail type.' => '',
        'Outbound mail port' => '',
        'Select outbound mail port.' => '',
        'SMTP host' => '',
        'SMTP host.' => '',
        'SMTP authentication' => '',
        'Does your SMTP host need authentication?' => '',
        'SMTP auth user' => '',
        'Username for SMTP auth.' => '',
        'SMTP auth password' => '',
        'Password for SMTP auth.' => '',
        'Configure Inbound Mail' => 'הגדרת דואר נכנס',
        'Inbound mail type' => 'סוג דואר נכנס',
        'Select inbound mail type.' => 'בחרו סוג דואר נכנס',
        'Inbound mail host' => 'מארח דואר נכנס',
        'Inbound mail host.' => 'מארח דואר נכנס.',
        'Inbound mail user' => 'משתמש עבור דואר יוצא',
        'User for inbound mail.' => 'משתמש עבור דואר נכנס.',
        'Inbound mail password' => 'סיסמא עבור דואר יוצא',
        'Password for inbound mail.' => 'סיסמא עבור דואר נכנס.',
        'Result of mail configuration check' => 'תוצאות בדיקת הגדרות דוא"ל',
        'Check mail configuration' => 'בדוק הדגרות דוא"ל',
        'Skip this step' => 'דלג על שלב זה',

        # Template: InstallerDBResult
        'Database setup successful!' => 'התקנת בסיס הנתונים הצליחה!',

        # Template: InstallerDBStart
        'Install Type' => 'סוג ההתקנה',
        'Create a new database for OTRS' => '',
        'Use an existing database for OTRS' => '',

        # Template: InstallerDBmssql
        'Database name' => 'שם בסיס הנתונים',
        'Check database settings' => 'בדוק הגדרות בסיס נתונים',
        'Result of database check' => 'תוצאות בדיקת בסיס נתונים',
        'Database check successful.' => 'בדיקת בסיס הנתונים הצליחה.',
        'Database User' => 'משתמש בסיס נתונים',
        'New' => 'חדש',
        'A new database user with limited permissions will be created for this OTRS system.' =>
            '',
        'Repeat Password' => 'חזרו על סיסמא',
        'Generated password' => 'ייצר סיסמא',

        # Template: InstallerDBmysql
        'Passwords do not match' => 'הסיסמאות לא תואמות',

        # Template: InstallerDBoracle
        'SID' => 'SID',
        'Port' => 'Port',

        # Template: InstallerDBpostgresql

        # Template: InstallerFinish
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' =>
            '',
        'Restart your webserver' => 'אתחל את השרת שלך.',
        'After doing so your OTRS is up and running.' => 'לאחר שמערכת OTRS תותקן.',
        'Start page' => 'עמוד התחלה',
        'Your OTRS Team' => '',

        # Template: InstallerLicense
        'Accept license' => 'קבל רישיון',
        'Don\'t accept license' => 'סרב לקבל רישיון',

        # Template: InstallerLicenseText

        # Template: InstallerSystem
        'The identifier of the system. Each ticket number and each HTTP session ID contain this number.' =>
            '',
        'System FQDN' => 'System FQDN',
        'Fully qualified domain name of your system.' => 'שם הדומיין המלא של המערכת שלכם.',
        'AdminEmail' => 'דוא"ל של מנהל מערכת',
        'Email address of the system administrator.' => 'דוא"ל של מנהל מערכת.',
        'Organization' => 'ארגון',
        'Log' => '',
        'LogModule' => '',
        'Log backend to use.' => '',
        'LogFile' => '',
        'Webfrontend' => '',
        'Default language' => 'שפת ברירת מחדל',
        'Default language.' => 'שפת ברירת מחדל.',
        'CheckMXRecord' => '',
        'Email addresses that are manually entered are checked against the MX records found in DNS. Don\'t use this option if your DNS is slow or does not resolve public addresses.' =>
            '',

        # Template: LinkObject
        'Object#' => 'אובייקט#',
        'Add links' => 'הוסף קישורים',
        'Delete links' => 'מחק קישורים',

        # Template: Login
        'Lost your password?' => 'שכחתם סיסמא?',
        'Request New Password' => 'בקש סיסמא חדשה',
        'Back to login' => 'חזרה להתחברות',

        # Template: Motd
        'Message of the Day' => 'ההודעה היומית',

        # Template: NoPermission
        'Insufficient Rights' => 'הרשאות לא מספיקות',
        'Back to the previous page' => 'חזרה לעמוד הקודם',

        # Template: Notify

        # Template: Pagination
        'Show first page' => 'הצג עמוד ראשון',
        'Show previous pages' => 'הצג עמוד קודם',
        'Show page %s' => 'הצג עמוד %s',
        'Show next pages' => 'הצג עמוד הבא',
        'Show last page' => 'הצג עמוד אחרון',

        # Template: PictureUpload
        'Need FormID!' => 'נדרש FormID!',
        'No file found!' => 'לא נמצא קובץ!',
        'The file is not an image that can be shown inline!' => 'קובץ זה אינו תמונה ולא ניתן להראותו משולב!',

        # Template: PrintFooter

        # Template: PrintHeader
        'printed by' => 'הודפס על ידי',

        # Template: PublicDefault

        # Template: Redirect

        # Template: RichTextEditor

        # Template: SpellingInline

        # Template: Test
        'OTRS Test Page' => 'עמוד בדיקה OTRS',
        'Welcome %s' => 'ברוך הבא %s',
        'Counter' => 'מונה',

        # Template: Warning
        'Go back to the previous page' => 'חזור לעמוד הקודם',

        # SysConfig
        '(UserLogin) Firstname Lastname' => '',
        '(UserLogin) Lastname, Firstname' => '',
        'ACL module that allows closing parent tickets only if all its children are already closed ("State" shows which states are not available for the parent ticket until all child tickets are closed).' =>
            '',
        'Access Control Lists (ACL)' => 'Access Control Lists (ACL)',
        'AccountedTime' => 'Erfasste Zeit',
        'Activates a blinking mechanism of the queue that contains the oldest ticket.' =>
            '',
        'Activates lost password feature for agents, in the agent interface.' =>
            '',
        'Activates lost password feature for customers.' => '',
        'Activates support for customer groups.' => '',
        'Activates the article filter in the zoom view to specify which articles should be shown.' =>
            '',
        'Activates the available themes on the system. Value 1 means active, 0 means inactive.' =>
            '',
        'Activates the ticket archive system search in the customer interface.' =>
            '',
        'Activates the ticket archive system to have a faster system by moving some tickets out of the daily scope. To search for these tickets, the archive flag has to be enabled in the ticket search.' =>
            '',
        'Activates time accounting.' => '',
        'Adds a suffix with the actual year and month to the OTRS log file. A logfile for every month will be created.' =>
            '',
        'Adds customers email addresses to recipients in the ticket compose screen of the agent interface. The customers email address won\'t be added if the article type is email-internal.' =>
            '',
        'Adds the one time vacation days for the indicated calendar. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Adds the one time vacation days. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Adds the permanent vacation days for the indicated calendar. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Adds the permanent vacation days. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Agent Notifications' => 'התראות סוכנים',
        'Agent interface article notification module to check PGP.' => '',
        'Agent interface article notification module to check S/MIME.' =>
            '',
        'Agent interface module to access CIC search via nav bar.' => '',
        'Agent interface module to access fulltext search via nav bar.' =>
            '',
        'Agent interface module to access search profiles via nav bar.' =>
            '',
        'Agent interface module to check incoming emails in the Ticket-Zoom-View if the S/MIME-key is available and true.' =>
            '',
        'Agent interface notification module to check the used charset.' =>
            '',
        'Agent interface notification module to see the number of tickets an agent is responsible for.' =>
            '',
        'Agent interface notification module to see the number of watched tickets.' =>
            '',
        'Agents <-> Groups' => 'סוכנים <-> קבוצות',
        'Agents <-> Roles' => 'סוכן <-> תפקיד',
        'All customer users of a CustomerID' => 'Alle Kundenbenutzer einer Kundennummer',
        'Allows adding notes in the close ticket screen of the agent interface.' =>
            '',
        'Allows adding notes in the ticket free text screen of the agent interface.' =>
            '',
        'Allows adding notes in the ticket note screen of the agent interface.' =>
            '',
        'Allows adding notes in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Allows adding notes in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Allows adding notes in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Allows adding notes in the ticket responsible screen of the agent interface.' =>
            '',
        'Allows agents to exchange the axis of a stat if they generate one.' =>
            '',
        'Allows agents to generate individual-related stats.' => '',
        'Allows choosing between showing the attachments of a ticket in the browser (inline) or just make them downloadable (attachment).' =>
            '',
        'Allows choosing the next compose state for customer tickets in the customer interface.' =>
            '',
        'Allows customers to change the ticket priority in the customer interface.' =>
            '',
        'Allows customers to set the ticket SLA in the customer interface.' =>
            '',
        'Allows customers to set the ticket priority in the customer interface.' =>
            '',
        'Allows customers to set the ticket queue in the customer interface. If this is set to \'No\', QueueDefault should be configured.' =>
            '',
        'Allows customers to set the ticket service in the customer interface.' =>
            '',
        'Allows customers to set the ticket type in the customer interface. If this is set to \'No\', TicketTypeDefault should be configured.' =>
            '',
        'Allows default services to be selected also for non existing customers.' =>
            '',
        'Allows defining new types for ticket (if ticket type feature is enabled).' =>
            '',
        'Allows defining services and SLAs for tickets (e. g. email, desktop, network, ...), and escalation attributes for SLAs (if ticket service/SLA feature is enabled).' =>
            '',
        'Allows extended search conditions in ticket search of the agent interface. With this feature you can search e. g. with this kind of conditions like "(key1&&key2)" or "(key1||key2)".' =>
            '',
        'Allows extended search conditions in ticket search of the customer interface. With this feature you can search w. g. with this kind of conditions like "(key1&&key2)" or "(key1||key2)".' =>
            '',
        'Allows having a medium format ticket overview (CustomerInfo => 1 - shows also the customer information).' =>
            '',
        'Allows having a small format ticket overview (CustomerInfo => 1 - shows also the customer information).' =>
            '',
        'Allows invalid agents to generate individual-related stats.' => '',
        'Allows the administrators to login as other customers, via the customer user administration panel.' =>
            '',
        'Allows the administrators to login as other users, via the users administration panel.' =>
            '',
        'Allows to set a new ticket state in the move ticket screen of the agent interface.' =>
            '',
        'ArticleTree' => 'Artikelbaum',
        'Attachments <-> Templates' => 'קבצים מצרופים <-> תבניות',
        'Auto Responses <-> Queues' => 'מענים אוטומטיים <-> תורים',
        'Automated line break in text messages after x number of chars.' =>
            '',
        'Automatically lock and set owner to current Agent after selecting for an Bulk Action.' =>
            '',
        'Automatically sets the owner of a ticket as the responsible for it (if ticket responsible feature is enabled).' =>
            '',
        'Automatically sets the responsible of a ticket (if it is not set yet) after the first owner update.' =>
            '',
        'Balanced white skin by Felix Niklas (slim version).' => '',
        'Balanced white skin by Felix Niklas.' => '',
        'Basic fulltext index settings. Execute "bin/otrs.RebuildFulltextIndex.pl" in order to generate a new index.' =>
            '',
        'Blocks all the incoming emails that do not have a valid ticket number in subject with From: @example.com address.' =>
            '',
        'Builds an article index right after the article\'s creation.' =>
            '',
        'CMD example setup. Ignores emails where external CMD returns some output on STDOUT (email will be piped into STDIN of some.bin).' =>
            '',
        'Cache time in seconds for agent authentication in the GenericInterface.' =>
            '',
        'Cache time in seconds for customer authentication in the GenericInterface.' =>
            '',
        'Cache time in seconds for the DB ACL backend.' => '',
        'Cache time in seconds for the DB process backend.' => '',
        'Cache time in seconds for the SSL certificate attributes.' => '',
        'Cache time in seconds for the ticket process navigation bar output module.' =>
            '',
        'Cache time in seconds for the web service config backend.' => '',
        'Change password' => 'שנה סיסמא',
        'Change queue!' => 'שנה תור',
        'Change the customer for this ticket' => 'שנה את הלקוח של פניה זו',
        'Change the free fields for this ticket' => 'שנה את השדות החופשיים לפניה זו',
        'Change the priority for this ticket' => 'שנה את העדיפות של פניה זו',
        'Change the responsible person for this ticket' => 'שנה את האדם האחראי לפניה זו',
        'Changes the owner of tickets to everyone (useful for ASP). Normally only agent with rw permissions in the queue of the ticket will be shown.' =>
            '',
        'Checkbox' => '',
        'Checks the SystemID in ticket number detection for follow-ups (use "No" if SystemID has been changed after using the system).' =>
            '',
        'Closed tickets of customer' => 'פניות סוגורת של הלקוח',
        'Column ticket filters for Ticket Overviews type "Small".' => '',
        'Columns that can be filtered in the escalation view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes and Dynamic Fields (DynamicField_NameX) are allowed.' =>
            '',
        'Columns that can be filtered in the locked view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes and Dynamic Fields (DynamicField_NameX) are allowed.' =>
            '',
        'Columns that can be filtered in the queue view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes and Dynamic Fields (DynamicField_NameX) are allowed.' =>
            '',
        'Columns that can be filtered in the responsible view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes and Dynamic Fields (DynamicField_NameX) are allowed.' =>
            '',
        'Columns that can be filtered in the status view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes and Dynamic Fields (DynamicField_NameX) are allowed.' =>
            '',
        'Columns that can be filtered in the ticket search result view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes and Dynamic Fields (DynamicField_NameX) are allowed.' =>
            '',
        'Columns that can be filtered in the watch view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes and Dynamic Fields (DynamicField_NameX) are allowed.' =>
            '',
        'Comment for new history entries in the customer interface.' => '',
        'Company Status' => 'סטטוס חברה',
        'Company Tickets' => 'פניות של החברה',
        'Company name which will be included in outgoing emails as an X-Header.' =>
            '',
        'Configure Processes.' => 'הגדר תהליכים.',
        'Configure and manage ACLs.' => '',
        'Configure your own log text for PGP.' => '',
        'Configures a default TicketDynamicField setting. "Name" defines the dynamic field which should be used, "Value" is the data that will be set, and "Event" defines the trigger event. Please check the developer manual (http://doc.otrs.org/), chapter "Ticket Event Module".' =>
            '',
        'Controls if customers have the ability to sort their tickets.' =>
            '',
        'Controls if more than one from entry can be set in the new phone ticket in the agent interface.' =>
            '',
        'Controls if the ticket and article seen flags are removed when a ticket is archived.' =>
            '',
        'Converts HTML mails into text messages.' => 'המר דוא"לי HTML להודעות טקסט',
        'Create New process ticket' => 'צור פניית תהליך חדשה',
        'Create and manage Service Level Agreements (SLAs).' => 'צור ונהל הסכמי רמת שירות (SLA).',
        'Create and manage agents.' => 'צור ונהל סוכנים.',
        'Create and manage attachments.' => 'צור ונהל קבצים מצורפים.',
        'Create and manage customer users.' => 'צור ונהל משתמשי לקוח.',
        'Create and manage customers.' => 'צור ונהל לקוחות.',
        'Create and manage dynamic fields.' => 'צור ונהל שדות דינמיים.',
        'Create and manage event based notifications.' => 'צור ונהל התראות על בסיס אירועים.',
        'Create and manage groups.' => 'צור ונהל קבוצות.',
        'Create and manage queues.' => 'צור ונהל תורים.',
        'Create and manage responses that are automatically sent.' => 'צור ונהל מענים שנשלחים אוטומטית.',
        'Create and manage roles.' => 'צור ונהל תפקידים.',
        'Create and manage salutations.' => 'צור ונהל ברכות.',
        'Create and manage services.' => 'צור ונהל שירותים.',
        'Create and manage signatures.' => 'צור ונהל חתימות.',
        'Create and manage templates.' => 'צור ונהל תבניות.',
        'Create and manage ticket priorities.' => 'צור ונהל עדיפויות פניות.',
        'Create and manage ticket states.' => 'צור ונהל מצבי פניות.',
        'Create and manage ticket types.' => 'צור ונהל סוגי פניות.',
        'Create and manage web services.' => 'צור ונהל שירותי Webservices.',
        'Create new email ticket and send this out (outbound)' => 'צור ונהל פניית דוא"ל חדשה ושלח אותה (דואר יוצא)',
        'Create new phone ticket (inbound)' => 'צור ונהל פניית טלפון חדשה (נכנסת)',
        'Create new process ticket' => 'צור ונהל פניית תהליך חדשה',
        'Custom text for the page shown to customers that have no tickets yet.' =>
            'טקסט מותאם לעמוד שמוצג ללקוחות שעדיין אין להם פניות',
        'Customer Company Administration' => 'ניהול חברות לקוחות',
        'Customer Company Administration.' => '',
        'Customer Company Information' => 'מידע על חברות לקוחות',
        'Customer Information Center.' => '',
        'Customer User <-> Groups' => 'משתמש לקוח <-> קבוצות',
        'Customer User <-> Services' => 'משתמש לקוח <-> שירותים',
        'Customer User Administration' => 'ניהול משתמשי לקוח',
        'Customer User Administration.' => '',
        'Customer Users' => 'משתמשי לקוח',
        'Customer item (icon) which shows the closed tickets of this customer as info block. Setting CustomerUserLogin to 1 searches for tickets based on login name rather than CustomerID.' =>
            '',
        'Customer item (icon) which shows the open tickets of this customer as info block. Setting CustomerUserLogin to 1 searches for tickets based on login name rather than CustomerID.' =>
            '',
        'CustomerName' => 'שם לקוח',
        'Customers <-> Groups' => 'לקוחות <-> קבוצות',
        'Data used to export the search result in CSV format.' => '',
        'Date / Time' => 'תאריך / זמן',
        'Debugs the translation set. If this is set to "Yes" all strings (text) without translations are written to STDERR. This can be helpful when you are creating a new translation file. Otherwise, this option should remain set to "No".' =>
            '',
        'Default ACL values for ticket actions.' => '',
        'Default ProcessManagement entity prefixes for entity IDs that are automatically generated.' =>
            '',
        'Default data to use on attribute for ticket search screen. Example: "TicketCreateTimePointFormat=year;TicketCreateTimePointStart=Last;TicketCreateTimePoint=2;".' =>
            '',
        'Default data to use on attribute for ticket search screen. Example: "TicketCreateTimeStartYear=2010;TicketCreateTimeStartMonth=10;TicketCreateTimeStartDay=4;TicketCreateTimeStopYear=2010;TicketCreateTimeStopMonth=11;TicketCreateTimeStopDay=3;".' =>
            '',
        'Default loop protection module.' => '',
        'Default queue ID used by the system in the agent interface.' => '',
        'Default skin for OTRS 3.0 interface.' => '',
        'Default skin for the agent interface (slim version).' => '',
        'Default skin for the agent interface.' => '',
        'Default ticket ID used by the system in the agent interface.' =>
            '',
        'Default ticket ID used by the system in the customer interface.' =>
            '',
        'Default value for NameX' => '',
        'Define a filter for html output to add links behind a defined string. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Define a mapping between variables of the customer user data (keys) and dynamic fields of a ticket (values). The purpose is to store customer user data in ticket dynamic fields. The dynamic fields must be present in the system and should be enabled for AgentTicketFreeText, so that they can be set/updated manually by the agent. They mustn\'t be enabled for AgentTicketPhone, AgentTicketEmail and AgentTicketCustomer. If they were, they would have precedence over the automatically set values. To use this mapping, you have to also activate the next setting below.' =>
            '',
        'Define dynamic field name for end time. This field has to be manually added to the system as Ticket: "Date / Time" and must be activated in ticket creation screens and/or in any other ticket action screens.' =>
            '',
        'Define dynamic field name for start time. This field has to be manually added to the system as Ticket: "Date / Time" and must be activated in ticket creation screens and/or in any other ticket action screens.' =>
            '',
        'Define the max depth of queues.' => '',
        'Define the start day of the week for the date picker.' => '',
        'Defines a customer item, which generates a LinkedIn icon at the end of a customer info block.' =>
            '',
        'Defines a customer item, which generates a XING icon at the end of a customer info block.' =>
            '',
        'Defines a customer item, which generates a google icon at the end of a customer info block.' =>
            '',
        'Defines a customer item, which generates a google maps icon at the end of a customer info block.' =>
            '',
        'Defines a default list of words, that are ignored by the spell checker.' =>
            '',
        'Defines a filter for html output to add links behind CVE numbers. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter for html output to add links behind MSBulletin numbers. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter for html output to add links behind a defined string. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter for html output to add links behind bugtraq numbers. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter to process the text in the articles, in order to highlight predefined keywords.' =>
            '',
        'Defines a regular expression that excludes some addresses from the syntax check (if "CheckEmailAddresses" is set to "Yes"). Please enter a regex in this field for email addresses, that aren\'t syntactically valid, but are necessary for the system (i.e. "root@localhost").' =>
            '',
        'Defines a regular expression that filters all email addresses that should not be used in the application.' =>
            '',
        'Defines a useful module to load specific user options or to display news.' =>
            '',
        'Defines all the X-headers that should be scanned.' => '',
        'Defines all the languages that are available to the application. The Key/Content pair links the front-end display name to the appropriate language PM file. The "Key" value should be the base-name of the PM file (i.e. de.pm is the file, then de is the "Key" value). The "Content" value should be the display name for the front-end. Specify any own-defined language here (see the developer documentation http://doc.otrs.org/ for more infomation). Please remember to use the HTML equivalents for non-ASCII characters (i.e. for the German oe = o umlaut, it is necessary to use the &ouml; symbol).' =>
            '',
        'Defines all the parameters for the RefreshTime object in the customer preferences of the customer interface.' =>
            '',
        'Defines all the parameters for the ShownTickets object in the customer preferences of the customer interface.' =>
            '',
        'Defines all the parameters for this item in the customer preferences.' =>
            '',
        'Defines all the possible stats output formats.' => '',
        'Defines an alternate URL, where the login link refers to.' => '',
        'Defines an alternate URL, where the logout link refers to.' => '',
        'Defines an alternate login URL for the customer panel..' => '',
        'Defines an alternate logout URL for the customer panel.' => '',
        'Defines an external link to the database of the customer (e.g. \'http://yourhost/customer.php?CID=$Data{"CustomerID"}\' or \'\').' =>
            '',
        'Defines from which ticket attributes the agent can select the result order.' =>
            '',
        'Defines how the From field from the emails (sent from answers and email tickets) should look like.' =>
            '',
        'Defines if a pre-sorting by priority should be done in the queue view.' =>
            '',
        'Defines if a ticket lock is required in the close ticket screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket bounce screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket compose screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket forward screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket free text screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket merge screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket note screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket owner screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket pending screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket phone inbound screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket phone outbound screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket priority screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket responsible screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required to change the customer of a ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if composed messages have to be spell checked in the agent interface.' =>
            '',
        'Defines if the enhanced mode should be used (enables use of table, replace, subscript, superscript, paste from word, etc.).' =>
            '',
        'Defines if the list for filters should be retrieve just from current tickets in system. Just for clarification, Customers list will always came from system\'s tickets.' =>
            '',
        'Defines if time accounting is mandatory in the agent interface.' =>
            '',
        'Defines if time accounting must be set to all tickets in bulk action.' =>
            '',
        'Defines queues that\'s tickets are used for displaying as calendar events.' =>
            '',
        'Defines scheduler PID update time in seconds.' => '',
        'Defines scheduler sleep time in seconds after processing all available tasks (floating point number).' =>
            '',
        'Defines the IP regular expression for accessing the local repository. You need to enable this to have access to your local repository and the package::RepositoryList is required on the remote host.' =>
            '',
        'Defines the URL CSS path.' => '',
        'Defines the URL base path of icons, CSS and Java Script.' => '',
        'Defines the URL image path of icons for navigation.' => '',
        'Defines the URL java script path.' => '',
        'Defines the URL rich text editor path.' => '',
        'Defines the address of a dedicated DNS server, if necessary, for the "CheckMXRecord" look-ups.' =>
            '',
        'Defines the body text for notification mails sent to agents, about new password (after using this link the new password will be sent).' =>
            '',
        'Defines the body text for notification mails sent to agents, with token about new requested password (after using this link the new password will be sent).' =>
            '',
        'Defines the body text for notification mails sent to customers, about new account.' =>
            '',
        'Defines the body text for notification mails sent to customers, about new password (after using this link the new password will be sent).' =>
            '',
        'Defines the body text for notification mails sent to customers, with token about new requested password (after using this link the new password will be sent).' =>
            '',
        'Defines the body text for rejected emails.' => '',
        'Defines the boldness of the line drawed by the graph.' => '',
        'Defines the calendar width in percent. Default is 95%.' => '',
        'Defines the colors for the graphs.' => '',
        'Defines the column to store the keys for the preferences table.' =>
            '',
        'Defines the config options for the autocompletion feature.' => '',
        'Defines the config parameters of this item, to be shown in the preferences view.' =>
            '',
        'Defines the config parameters of this item, to be shown in the preferences view. Take care to maintain the dictionaries installed in the system in the data section.' =>
            '',
        'Defines the connections for http/ftp, via a proxy.' => '',
        'Defines the date input format used in forms (option or input fields).' =>
            '',
        'Defines the default CSS used in rich text editors.' => '',
        'Defines the default auto response type of the article for this operation.' =>
            '',
        'Defines the default body of a note in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default front-end (HTML) theme to be used by the agents and customers. If you like, you can add your own theme. Please refer the administrator manual located at http://doc.otrs.org/.' =>
            '',
        'Defines the default front-end language. All the possible values are determined by the available language files on the system (see the next setting).' =>
            '',
        'Defines the default history type in the customer interface.' => '',
        'Defines the default maximum number of X-axis attributes for the time scale.' =>
            '',
        'Defines the default maximum number of search results shown on the overview page.' =>
            '',
        'Defines the default next state for a ticket after customer follow up in the customer interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the close ticket screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket bulk screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket note screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket responsible screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after being bounced, in the ticket bounce screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after being forwarded, in the ticket forward screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket if it is composed / answered in the ticket compose screen of the agent interface.' =>
            '',
        'Defines the default note body text for phone tickets in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default note body text for phone tickets in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default priority of follow up customer tickets in the ticket zoom screen in the customer interface.' =>
            '',
        'Defines the default priority of new customer tickets in the customer interface.' =>
            '',
        'Defines the default priority of new tickets.' => '',
        'Defines the default queue for new customer tickets in the customer interface.' =>
            '',
        'Defines the default selection at the drop down menu for dynamic objects (Form: Common Specification).' =>
            '',
        'Defines the default selection at the drop down menu for permissions (Form: Common Specification).' =>
            '',
        'Defines the default selection at the drop down menu for stats format (Form: Common Specification). Please insert the format key (see Stats::Format).' =>
            '',
        'Defines the default sender type for phone tickets in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default sender type for phone tickets in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default sender type for tickets in the ticket zoom screen of the customer interface.' =>
            '',
        'Defines the default shown ticket search attribute for ticket search screen.' =>
            '',
        'Defines the default shown ticket search attribute for ticket search screen. Example: "Key" must have the name of the Dynamic Field in this case \'X\', "Content" must have the value of the Dynamic Field depending on the Dynamic Field type,  Text: \'a text\', Dropdown: \'1\', Date/Time: \'Search_DynamicField_XTimeSlotStartYear=1974; Search_DynamicField_XTimeSlotStartMonth=01; Search_DynamicField_XTimeSlotStartDay=26; Search_DynamicField_XTimeSlotStartHour=00; Search_DynamicField_XTimeSlotStartMinute=00; Search_DynamicField_XTimeSlotStartSecond=00; Search_DynamicField_XTimeSlotStopYear=2013; Search_DynamicField_XTimeSlotStopMonth=01; Search_DynamicField_XTimeSlotStopDay=26; Search_DynamicField_XTimeSlotStopHour=23; Search_DynamicField_XTimeSlotStopMinute=59; Search_DynamicField_XTimeSlotStopSecond=59;\' and or \'Search_DynamicField_XTimePointFormat=week; Search_DynamicField_XTimePointStart=Before; Search_DynamicField_XTimePointValue=7\';.' =>
            '',
        'Defines the default sort criteria for all queues displayed in the queue view.' =>
            '',
        'Defines the default sort order for all queues in the queue view, after priority sort.' =>
            '',
        'Defines the default spell checker dictionary.' => '',
        'Defines the default state of new customer tickets in the customer interface.' =>
            '',
        'Defines the default state of new tickets.' => '',
        'Defines the default subject for phone tickets in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default subject for phone tickets in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default subject of a note in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in a ticket search of the customer interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the escalation view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the locked ticket view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the responsible view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the status view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the watch view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting of the ticket search result of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting of the ticket search result of this operation.' =>
            '',
        'Defines the default ticket bounced notification for customer/sender in the ticket bounce screen of the agent interface.' =>
            '',
        'Defines the default ticket next state after adding a phone note in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default ticket next state after adding a phone note in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default ticket order (after priority sort) in the escalation view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order (after priority sort) in the status view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the responsible view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the ticket locked view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the ticket search result of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the ticket search result of the this operation. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the watch view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order of a search result in the customer interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket priority in the close ticket screen of the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket bulk screen of the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket note screen of the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket responsible screen of the agent interface.' =>
            '',
        'Defines the default ticket type for new customer tickets in the customer interface.' =>
            '',
        'Defines the default type for article in the customer interface.' =>
            '',
        'Defines the default type of forwarded message in the ticket forward screen of the agent interface.' =>
            '',
        'Defines the default type of the article for this operation.' => '',
        'Defines the default type of the note in the close ticket screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket bulk screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket note screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket responsible screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket zoom screen of the customer interface.' =>
            '',
        'Defines the default used Frontend-Module if no Action parameter given in the url on the agent interface.' =>
            '',
        'Defines the default used Frontend-Module if no Action parameter given in the url on the customer interface.' =>
            '',
        'Defines the default value for the action parameter for the public frontend. The action parameter is used in the scripts of the system.' =>
            '',
        'Defines the default viewable sender types of a ticket (default: customer).' =>
            '',
        'Defines the dynamic fields that are used for displaying on calendar events.' =>
            '',
        'Defines the filter that processes the text in the articles, in order to highlight URLs.' =>
            '',
        'Defines the format of responses in the ticket compose screen of the agent interface ($QData{"OrigFrom"} is From 1:1, $QData{"OrigFromName"} is only realname of From).' =>
            '',
        'Defines the fully qualified domain name of the system. This setting is used as a variable, OTRS_CONFIG_FQDN which is found in all forms of messaging used by the application, to build links to the tickets within your system.' =>
            '',
        'Defines the groups every customer user will be in (if CustomerGroupSupport is enabled and you don\'t want to manage every user for these groups).' =>
            '',
        'Defines the height for the rich text editor component for this screen. Enter number (pixels) or percent value (relative).' =>
            '',
        'Defines the height for the rich text editor component. Enter number (pixels) or percent value (relative).' =>
            '',
        'Defines the height of the legend.' => '',
        'Defines the history comment for the close ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the email ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the phone ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket free text screen action, which gets used for ticket history.' =>
            '',
        'Defines the history comment for the ticket note screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket owner screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket pending screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket phone inbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket phone outbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket priority screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket responsible screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket zoom action, which gets used for ticket history in the customer interface.' =>
            '',
        'Defines the history comment for this operation, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the close ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the email ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the phone ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket free text screen action, which gets used for ticket history.' =>
            '',
        'Defines the history type for the ticket note screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket owner screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket pending screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket phone inbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket phone outbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket priority screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket responsible screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket zoom action, which gets used for ticket history in the customer interface.' =>
            '',
        'Defines the history type for this operation, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the hours and week days of the indicated calendar, to count the working time.' =>
            '',
        'Defines the hours and week days to count the working time.' => '',
        'Defines the key to be checked with Kernel::Modules::AgentInfo module. If this user preferences key is true, the message is accepted by the system.' =>
            '',
        'Defines the key to check with CustomerAccept. If this user preferences key is true, then the message is accepted by the system.' =>
            '',
        'Defines the legend font in graphs (place custom fonts in var/fonts).' =>
            '',
        'Defines the link type \'Normal\'. If the source name and the target name contain the same value, the resulting link is a non-directional one; otherwise, the result is a directional link.' =>
            '',
        'Defines the link type \'ParentChild\'. If the source name and the target name contain the same value, the resulting link is a non-directional one; otherwise, the result is a directional link.' =>
            '',
        'Defines the link type groups. The link types of the same group cancel one another. Example: If ticket A is linked per a \'Normal\' link with ticket B, then these tickets could not be additionally linked with link of a \'ParentChild\' relationship.' =>
            '',
        'Defines the list of online repositories. Another installations can be used as repository, for example: Key="http://example.com/otrs/public.pl?Action=PublicRepository;File=" and Content="Some Name".' =>
            '',
        'Defines the list of possible next actions on an error screen.' =>
            '',
        'Defines the list of types for templates.' => '',
        'Defines the location to get online repository list for additional packages. The first available result will be used.' =>
            '',
        'Defines the log module for the system. "File" writes all messages in a given logfile, "SysLog" uses the syslog daemon of the system, e.g. syslogd.' =>
            '',
        'Defines the maximal size (in bytes) for file uploads via the browser. Warning: Setting this option to a value which is too low could cause many masks in your OTRS instance to stop working (probably any mask which takes input from the user).' =>
            '',
        'Defines the maximal valid time (in seconds) for a session id.' =>
            '',
        'Defines the maximum length (in characters) for a scheduler task data. WARNING: Do not modify this setting unless you are sure of the current Database length for \'task_data\' filed from \'scheduler_data_list\' table.' =>
            '',
        'Defines the maximum number of pages per PDF file.' => '',
        'Defines the maximum size (in MB) of the log file.' => '',
        'Defines the module that shows a generic notification in the agent interface. Either "Text" - if configured - or the contents of "File" will be displayed.' =>
            '',
        'Defines the module that shows all the currently loged in customers in the agent interface.' =>
            '',
        'Defines the module that shows all the currently logged in agents in the agent interface.' =>
            '',
        'Defines the module that shows the currently loged in agents in the customer interface.' =>
            '',
        'Defines the module that shows the currently loged in customers in the customer interface.' =>
            '',
        'Defines the module to authenticate customers.' => '',
        'Defines the module to display a notification in the agent interface if the scheduler is not running.' =>
            '',
        'Defines the module to display a notification in the agent interface, if the agent is logged in while having out-of-office active.' =>
            '',
        'Defines the module to display a notification in the agent interface, if the system is used by the admin user (normally you shouldn\'t work as admin).' =>
            '',
        'Defines the module to generate html refresh headers of html sites, in the customer interface.' =>
            '',
        'Defines the module to generate html refresh headers of html sites.' =>
            '',
        'Defines the module to send emails. "Sendmail" directly uses the sendmail binary of your operating system. Any of the "SMTP" mechanisms use a specified (external) mailserver. "DoNotSendEmail" doesn\'t send emails and it is useful for test systems.' =>
            '',
        'Defines the module used to store the session data. With "DB" the frontend server can be splitted from the db server. "FS" is faster.' =>
            '',
        'Defines the name of the application, shown in the web interface, tabs and title bar of the web browser.' =>
            '',
        'Defines the name of the column to store the data in the preferences table.' =>
            '',
        'Defines the name of the column to store the user identifier in the preferences table.' =>
            '',
        'Defines the name of the indicated calendar.' => '',
        'Defines the name of the key for customer sessions.' => '',
        'Defines the name of the session key. E.g. Session, SessionID or OTRS.' =>
            '',
        'Defines the name of the table, where the customer preferences are stored.' =>
            '',
        'Defines the next possible states after composing / answering a ticket in the ticket compose screen of the agent interface.' =>
            '',
        'Defines the next possible states after forwarding a ticket in the ticket forward screen of the agent interface.' =>
            '',
        'Defines the next possible states for customer tickets in the customer interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the close ticket screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket bulk screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket note screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket responsible screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after being bounced, in the ticket bounce screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after being moved to another queue, in the move ticket screen of the agent interface.' =>
            '',
        'Defines the parameters for the customer preferences table.' => '',
        'Defines the parameters for the dashboard backend. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTL" indicates the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the parameters for the dashboard backend. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" defines the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the parameters for the dashboard backend. "Limit" defines the number of entries displayed by default. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTL" indicates the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the parameters for the dashboard backend. "Limit" defines the number of entries displayed by default. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" defines the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the password to access the SOAP handle (bin/cgi-bin/rpc.pl).' =>
            '',
        'Defines the path and TTF-File to handle bold italic monospaced font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle bold italic proportional font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle bold monospaced font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle bold proportional font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle italic monospaced font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle italic proportional font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle monospaced font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle proportional font in PDF documents.' =>
            '',
        'Defines the path for scheduler to store its console output (SchedulerOUT.log and SchedulerERR.log).' =>
            '',
        'Defines the path of the shown info file, that is located under Kernel/Output/HTML/Standard/CustomerAccept.dtl.' =>
            '',
        'Defines the path to PGP binary.' => '',
        'Defines the path to open ssl binary. It may need a HOME env ($ENV{HOME} = \'/var/lib/wwwrun\';).' =>
            '',
        'Defines the placement of the legend. This should be a two letter key of the form: \'B[LCR]|R[TCB]\'. The first letter indicates the placement (Bottom or Right), and the second letter the alignment (Left, Right, Center, Top, or Bottom).' =>
            '',
        'Defines the postmaster default queue.' => '',
        'Defines the receipent target of the phone ticket and the sender of the email ticket ("Queue" shows all queues, "SystemAddress" displays all system addresses) in the agent interface.' =>
            '',
        'Defines the receipent target of the tickets ("Queue" shows all queues, "SystemAddress" displays all system addresses) in the customer interface.' =>
            '',
        'Defines the required permission to show a ticket in the escalation view of the agent interface.' =>
            '',
        'Defines the search limit for the stats.' => '',
        'Defines the sender for rejected emails.' => '',
        'Defines the separator between the agents real name and the given queue email address.' =>
            '',
        'Defines the spacing of the legends.' => '',
        'Defines the standard permissions available for customers within the application. If more permissions are needed, you can enter them here. Permissions must be hard coded to be effective. Please ensure, when adding any of the afore mentioned permissions, that the "rw" permission remains the last entry.' =>
            '',
        'Defines the standard size of PDF pages.' => '',
        'Defines the state of a ticket if it gets a follow-up and the ticket was already closed.' =>
            '',
        'Defines the state of a ticket if it gets a follow-up.' => '',
        'Defines the state type of the reminder for pending tickets.' => '',
        'Defines the subject for notification mails sent to agents, about new password.' =>
            '',
        'Defines the subject for notification mails sent to agents, with token about new requested password.' =>
            '',
        'Defines the subject for notification mails sent to customers, about new account.' =>
            '',
        'Defines the subject for notification mails sent to customers, about new password.' =>
            '',
        'Defines the subject for notification mails sent to customers, with token about new requested password.' =>
            '',
        'Defines the subject for rejected emails.' => '',
        'Defines the system administrator\'s email address. It will be displayed in the error screens of the application.' =>
            '',
        'Defines the system identifier. Every ticket number and http session string contains this ID. This ensures that only tickets which belong to your system will be processed as follow-ups (useful when communicating between two instances of OTRS).' =>
            '',
        'Defines the target attribute in the link to external customer database. E.g. \'AsPopup PopupType_TicketAction\'.' =>
            '',
        'Defines the target attribute in the link to external customer database. E.g. \'target="cdb"\'.' =>
            '',
        'Defines the ticket fields that are going to be displayed calendar events. The "Key" defines the field or ticket attribute and the "Content" defines the display name.' =>
            '',
        'Defines the time in days to keep log backup files.' => '',
        'Defines the time in seconds after which the Scheduler performs an automatic self-restart.' =>
            '',
        'Defines the time zone of the indicated calendar, which can be assigned later to a specific queue.' =>
            '',
        'Defines the title font in graphs (place custom fonts in var/fonts).' =>
            '',
        'Defines the type of protocol, used by the web server, to serve the application. If https protocol will be used instead of plain http, it must be specified here. Since this has no affect on the web server\'s settings or behavior, it will not change the method of access to the application and, if it is wrong, it will not prevent you from logging into the application. This setting is only used as a variable, OTRS_CONFIG_HttpType which is found in all forms of messaging used by the application, to build links to the tickets within your system.' =>
            '',
        'Defines the used character for plaintext email quotes in the ticket compose screen of the agent interface. If this is empty or inactive, original emails will not be quoted but appended to the response.' =>
            '',
        'Defines the user identifier for the customer panel.' => '',
        'Defines the username to access the SOAP handle (bin/cgi-bin/rpc.pl).' =>
            '',
        'Defines the valid state types for a ticket.' => '',
        'Defines the valid states for unlocked tickets. To unlock tickets the script "bin/otrs.UnlockTickets.pl" can be used.' =>
            '',
        'Defines the viewable locks of a ticket. Default: unlock, tmp_lock.' =>
            '',
        'Defines the width for the rich text editor component for this screen. Enter number (pixels) or percent value (relative).' =>
            '',
        'Defines the width for the rich text editor component. Enter number (pixels) or percent value (relative).' =>
            '',
        'Defines the width of the legend.' => '',
        'Defines which article sender types should be shown in the preview of a ticket.' =>
            '',
        'Defines which items are available for \'Action\' in third level of the ACL structure.' =>
            '',
        'Defines which items are available in first level of the ACL structure.' =>
            '',
        'Defines which items are available in second level of the ACL structure.' =>
            '',
        'Defines which states should be set automatically (Content), after the pending time of state (Key) has been reached.' =>
            '',
        'Defines wich article type should be expanded when entering the overview. If nothing defined, latest article will be expanded.' =>
            '',
        'Deletes a session if the session id is used with an invalid remote IP address.' =>
            '',
        'Deletes requested sessions if they have timed out.' => '',
        'Determines if the list of possible queues to move to ticket into should be displayed in a dropdown list or in a new window in the agent interface. If "New Window" is set you can add a move note to the ticket.' =>
            '',
        'Determines if the statistics module may generate ticket lists.' =>
            '',
        'Determines the next possible ticket states, after the creation of a new email ticket in the agent interface.' =>
            '',
        'Determines the next possible ticket states, after the creation of a new phone ticket in the agent interface.' =>
            '',
        'Determines the next possible ticket states, for process tickets in the agent interface.' =>
            '',
        'Determines the next screen after new customer ticket in the customer interface.' =>
            '',
        'Determines the next screen after the follow up screen of a zoomed ticket in the customer interface.' =>
            '',
        'Determines the next screen after the ticket is moved. LastScreenOverview will return the last overview screen (e.g. search results, queueview, dashboard). TicketZoom will return to the TicketZoom.' =>
            '',
        'Determines the possible states for pending tickets that changed state after reaching time limit.' =>
            '',
        'Determines the strings that will be shown as receipent (To:) of the phone ticket and as sender (From:) of the email ticket in the agent interface. For Queue as NewQueueSelectionType "<Queue>" shows the names of the queues and for SystemAddress "<Realname> <<Email>>" shows the name and email of the receipent.' =>
            '',
        'Determines the strings that will be shown as receipent (To:) of the ticket in the customer interface. For Queue as CustomerPanelSelectionType, "<Queue>" shows the names of the queues, and for SystemAddress, "<Realname> <<Email>>" shows the name and email of the receipent.' =>
            '',
        'Determines the way the linked objects are displayed in each zoom mask.' =>
            '',
        'Determines which options will be valid of the recepient (phone ticket) and the sender (email ticket) in the agent interface.' =>
            '',
        'Determines which queues will be valid for ticket\'s recepients in the customer interface.' =>
            '',
        'Disable restricted security for IFrames in IE. May be required for SSO to work in IE8.' =>
            '',
        'Disables sending reminder notifications to the responsible agent of a ticket (Ticket::Responsible needs to be activated).' =>
            '',
        'Disables the web installer (http://yourhost.example.com/otrs/installer.pl), to prevent the system from being hijacked. If set to "No", the system can be reinstalled and the current basic configuration will be used to pre-populate the questions within the installer script. If not active, it also disables the GenericAgent, PackageManager and SQL Box.' =>
            '',
        'Display settings to override defaults for Process Tickets.' => '',
        'Displays the accounted time for an article in the ticket zoom view.' =>
            '',
        'Dropdown' => 'Einfachauswahl',
        'Dynamic Fields Checkbox Backend GUI' => '',
        'Dynamic Fields Date Time Backend GUI' => '',
        'Dynamic Fields Drop-down Backend GUI' => '',
        'Dynamic Fields GUI' => '',
        'Dynamic Fields Multiselect Backend GUI' => '',
        'Dynamic Fields Overview Limit' => '',
        'Dynamic Fields Text Backend GUI' => '',
        'Dynamic Fields used to export the search result in CSV format.' =>
            '',
        'Dynamic fields groups for process widget. The key is the name of the group, the value contains the fields to be shown. Example: \'Key => My Group\', \'Content: Name_X, NameY\'.' =>
            '',
        'Dynamic fields limit per page for Dynamic Fields Overview' => '',
        'Dynamic fields options shown in the ticket message screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required. NOTE. If you want to display these fields also in the ticket zoom of the customer interface, you have to enable them in CustomerTicketZoom###DynamicField.' =>
            '',
        'Dynamic fields options shown in the ticket reply section in the ticket zoom screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the process widget in ticket zoom screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the sidebar of the ticket zoom screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket close screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket compose screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket email screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket forward screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket free text screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket medium format overview screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket move screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket note screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket overview screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket owner screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket pending screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket phone inbound screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket phone outbound screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket phone screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket preview format overview screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket print screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket print screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket priority screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket responsible screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket search overview results screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket search screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and shown by default.' =>
            '',
        'Dynamic fields shown in the ticket search screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket small format overview screen of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.' =>
            '',
        'Dynamic fields shown in the ticket zoom screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'DynamicField backend registration.' => '',
        'DynamicField object registration.' => '',
        'Edit customer company' => 'ערוך חברת הלקוח',
        'Email Addresses' => 'כתובת דוא"ל',
        'Enable keep-alive connection header for SOAP responses.' => '',
        'Enabled filters.' => 'אפשר מסננים',
        'Enables PDF output. The CPAN module PDF::API2 is required, if not installed, PDF output will be disabled.' =>
            '',
        'Enables PGP support. When PGP support is enabled for signing and encrypting mail, it is HIGHLY recommended that the web server runs as the OTRS user. Otherwise, there will be problems with the privileges when accessing .gnupg folder.' =>
            '',
        'Enables S/MIME support.' => '',
        'Enables customers to create their own accounts.' => '',
        'Enables file upload in the package manager frontend.' => '',
        'Enables or disable the debug mode over frontend interface.' => '',
        'Enables or disables the ticket watcher feature, to keep track of tickets without being the owner nor the responsible.' =>
            '',
        'Enables performance log (to log the page response time). It will affect the system performance. Frontend::Module###AdminPerformanceLog must be enabled.' =>
            '',
        'Enables spell checker support.' => '',
        'Enables the minimal ticket counter size (if "Date" was selected as TicketNumberGenerator).' =>
            '',
        'Enables ticket bulk action feature for the agent frontend to work on more than one ticket at a time.' =>
            '',
        'Enables ticket bulk action feature only for the listed groups.' =>
            '',
        'Enables ticket responsible feature, to keep track of a specific ticket.' =>
            '',
        'Enables ticket watcher feature only for the listed groups.' => '',
        'Escalation view' => 'תצוגת אסקלציה',
        'Event module registration. For more performance you can define a trigger event (e. g. Event => TicketCreate).' =>
            '',
        'Event module registration. For more performance you can define a trigger event (e. g. Event => TicketCreate). This is only possible if all Ticket dynamic fields need the same event.' =>
            '',
        'Event module that updates customer user service membership if login changes.' =>
            '',
        'Event module that updates customer users after an update of the Customer Company.' =>
            '',
        'Event module that updates tickets after an update of the Customer Company.' =>
            '',
        'Event module that updates tickets after an update of the Customer User.' =>
            '',
        'Execute SQL statements.' => '',
        'Executes follow up checks on In-Reply-To or References headers for mails that don\'t have a ticket number in the subject.' =>
            '',
        'Executes follow up mail attachments checks in  mails that don\'t have a ticket number in the subject.' =>
            '',
        'Executes follow up mail body checks in mails that don\'t have a ticket number in the subject.' =>
            '',
        'Executes follow up plain/raw mail checks in mails that don\'t have a ticket number in the subject.' =>
            '',
        'Exports the whole article tree in search result (it can affect the system performance).' =>
            '',
        'Fetches packages via proxy. Overwrites "WebUserAgent::Proxy".' =>
            '',
        'File that is displayed in the Kernel::Modules::AgentInfo module, if located under Kernel/Output/HTML/Standard/AgentInfo.dtl.' =>
            '',
        'Filter incoming emails.' => 'סנן דואר נכנס.',
        'FirstLock' => 'נעילה ראשונה',
        'FirstResponse' => 'מענה ראשון',
        'FirstResponseDiffInMin' => 'הפרש מענה ראשון בדקות',
        'FirstResponseInMin' => 'מענה ראשון בדקות',
        'Firstname Lastname' => 'שם פרטי ומשפחה',
        'Firstname Lastname (UserLogin)' => 'שם פרטי ומשפחה (התחברות משתמש)',
        'Forces encoding of outgoing emails (7bit|8bit|quoted-printable|base64).' =>
            '',
        'Forces to choose a different ticket state (from current) after lock action. Define the current state as key, and the next state after lock action as content.' =>
            '',
        'Forces to unlock tickets after being moved to another queue.' =>
            '',
        'Frontend language' => '',
        'Frontend module registration (disable company link if no company feature is used).' =>
            '',
        'Frontend module registration (disable ticket processes screen if no process available) for Customer.' =>
            '',
        'Frontend module registration (disable ticket processes screen if no process available).' =>
            '',
        'Frontend module registration for the agent interface.' => '',
        'Frontend module registration for the customer interface.' => '',
        'Frontend theme' => '',
        'Fulltext index regex filters to remove parts of the text.' => '',
        'General ticket data shown in the ticket overviews (fall-back). Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note that TicketNumber can not be disabled, because it is necessary.' =>
            '',
        'GenericAgent' => '',
        'GenericInterface Debugger GUI' => '',
        'GenericInterface Invoker GUI' => '',
        'GenericInterface Operation GUI' => '',
        'GenericInterface TransportHTTPSOAP GUI' => '',
        'GenericInterface Web Service GUI' => '',
        'GenericInterface Webservice History GUI' => '',
        'GenericInterface Webservice Mapping GUI' => '',
        'GenericInterface module registration for the invoker layer.' => '',
        'GenericInterface module registration for the mapping layer.' => '',
        'GenericInterface module registration for the operation layer.' =>
            '',
        'GenericInterface module registration for the transport layer.' =>
            '',
        'Gives end users the possibility to override the separator character for CSV files, defined in the translation files.' =>
            '',
        'Grants access, if the customer ID of the ticket matches the customer user\'s ID and the customer user has group permissions on the queue the ticket is in.' =>
            '',
        'Helps to extend your articles full-text search (From, To, Cc, Subject and Body search). Runtime will do full-text searches on live data (it works fine for up to 50.000 tickets). StaticDB will strip all articles and will build an index after article creation, increasing fulltext searches about 50%. To create an initial index use "bin/otrs.RebuildFulltextIndex.pl".' =>
            '',
        'If "DB" was selected for Customer::AuthModule, a database driver (normally autodetection is used) can be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, a password to connect to the customer table can be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, a username to connect to the customer table can be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the DSN for the connection to the customer table must be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the column name for the CustomerPassword in the customer table must be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the crypt type of passwords must be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the name of the column for the CustomerKey in the customer table must be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the name of the table where your customer data should be stored must be specified.' =>
            '',
        'If "DB" was selected for SessionModule, a table in database where session data will be stored must be specified.' =>
            '',
        'If "FS" was selected for SessionModule, a directory where the session data will be stored must be specified.' =>
            '',
        'If "HTTPBasicAuth" was selected for Customer::AuthModule, you can specify (by using a RegExp) to strip parts of REMOTE_USER (e. g. for to remove trailing domains). RegExp-Note, $1 will be the new Login.' =>
            '',
        'If "HTTPBasicAuth" was selected for Customer::AuthModule, you can specify to strip leading parts of user names (e. g. for domains like example_domain\user to user).' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule and if you want to add a suffix to every customer login name, specifiy it here, e. g. you just want to write the username user but in your LDAP directory exists user@domain.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule and special paramaters are needed for the Net::LDAP perl module, you can specify them here. See "perldoc Net::LDAP" for more information about the parameters.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule and your users have only anonymous access to the LDAP tree, but you want to search through the data, you can do this with a user who has access to the LDAP directory. Specify the password for this special user here.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule and your users have only anonymous access to the LDAP tree, but you want to search through the data, you can do this with a user who has access to the LDAP directory. Specify the username for this special user here.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, the BaseDN must be specified.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, the LDAP host can be specified.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, the user identifier must be specified.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, user attributes can be specified. For LDAP posixGroups use UID, for non LDAP posixGroups use full user DN.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, you can specify access attributes here.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, you can specify if the applications will stop if e. g. a connection to a server can\'t be established due to network problems.' =>
            '',
        'If "LDAP" was selected for Customer::Authmodule, you can check if the user is allowed to authenticate because he is in a posixGroup, e.g. user needs to be in a group xyz to use OTRS. Specify the group, who may access the system.' =>
            '',
        'If "LDAP" was selected, you can add a filter to each LDAP query, e.g. (mail=*), (objectclass=user) or (!objectclass=computer).' =>
            '',
        'If "Radius" was selected for Customer::AuthModule, the password to authenticate to the radius host must be specified.' =>
            '',
        'If "Radius" was selected for Customer::AuthModule, the radius host must be specified.' =>
            '',
        'If "Radius" was selected for Customer::AuthModule, you can specify if the applications will stop if e. g. a connection to a server can\'t be established due to network problems.' =>
            '',
        'If "Sendmail" was selected as SendmailModule, the location of the sendmail binary and the needed options must be specified.' =>
            '',
        'If "SysLog" was selected for LogModule, a special log facility can be specified.' =>
            '',
        'If "SysLog" was selected for LogModule, a special log sock can be specified (on solaris you may need to use \'stream\').' =>
            '',
        'If "SysLog" was selected for LogModule, the charset that should be used for logging can be specified.' =>
            '',
        'If "file" was selected for LogModule, a logfile must be specified. If the file doesn\'t exist, it will be created by the system.' =>
            '',
        'If a note is added by an agent, sets the state of a ticket in the close ticket screen of the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of a ticket in the ticket bulk screen of the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of a ticket in the ticket free text screen of the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of a ticket in the ticket note screen of the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of a ticket in the ticket responsible screen of the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of the ticket in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of the ticket in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of the ticket in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, and authentication to the mail server is needed, a password must be specified.' =>
            '',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, and authentication to the mail server is needed, an username must be specified.' =>
            '',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, the mailhost that sends out the mails must be specified.' =>
            '',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, the port where your mailserver is listening for incoming connections must be specified.' =>
            '',
        'If enabled, OTRS will deliver all CSS files in minified form. WARNING: If you turn this off, there will likely be problems in IE 7, because it cannot load more than 32 CSS files.' =>
            '',
        'If enabled, OTRS will deliver all JavaScript files in minified form.' =>
            '',
        'If enabled, TicketPhone and TicketEmail will be open in new windows.' =>
            '',
        'If enabled, the OTRS version tag will be removed from the Webinterface, the HTTP headers and the X-Headers of outgoing mails.' =>
            '',
        'If enabled, the different overviews (Dashboard, LockedView, QueueView) will automatically refresh after the specified time.' =>
            '',
        'If enabled, the first level of the main menu opens on mouse hover (instead of click only).' =>
            '',
        'If set, this address is used as envelope sender header in outgoing notifications. If no address is specified, the envelope sender header is empty.' =>
            '',
        'If set, this address is used as envelope sender in outgoing messages (not notifications - see below). If no address is specified, the envelope sender is equal to queue e-mail address.' =>
            '',
        'If this option is enabled, then the decrypted data will be stored in the database if they are displayed in AgentTicketZoom.' =>
            '',
        'If this option is set to \'Yes\', tickets created via the web interface, via Customers or Agents, will receive an autoresponse if configured. If this option is set to \'No\', no autoresponses will be sent.' =>
            '',
        'If this regex matches, no message will be send by the autoresponder.' =>
            '',
        'If you want to use a mirror database for agent ticket fulltext search or to generate stats, specify the DSN to this database.' =>
            '',
        'If you want to use a mirror database for agent ticket fulltext search or to generate stats, the password to authenticate to this database can be specified.' =>
            '',
        'If you want to use a mirror database for agent ticket fulltext search or to generate stats, the user to authenticate to this database can be specified.' =>
            '',
        'Ignore article with system sender type for new article feature (e. g. auto responses or email notifications).' =>
            '',
        'Includes article create times in the ticket search of the agent interface.' =>
            '',
        'IndexAccelerator: to choose your backend TicketViewAccelerator module. "RuntimeDB" generates each queue view on the fly from ticket table (no performance problems up to approx. 60.000 tickets in total and 6.000 open tickets in the system). "StaticDB" is the most powerful module, it uses an extra ticket-index table that works like a view (recommended if more than 80.000 and 6.000 open tickets are stored in the system). Use the script "bin/otrs.RebuildTicketIndex.pl" for initial index update.' =>
            '',
        'Install ispell or aspell on the system, if you want to use a spell checker. Please specify the path to the aspell or ispell binary on your operating system.' =>
            '',
        'Interface language' => 'שפת ממשק',
        'It is possible to configure different skins, for example to distinguish between diferent agents, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid skin on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'It is possible to configure different skins, for example to distinguish between diferent customers, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid skin on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'It is possible to configure different themes, for example to distinguish between agents and customers, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid theme on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'Lastname, Firstname' => 'שם משפחה, שם פרטי',
        'Lastname, Firstname (UserLogin)' => 'שם משפחה, שם פרטי (התחברות משתמש)',
        'Link agents to groups.' => 'קשר סוכנים לקבוצות.',
        'Link agents to roles.' => 'קשר סוכנים לתפקידים.',
        'Link attachments to templates.' => 'קשר קבצים מצורפים לתבניות.',
        'Link customer user to groups.' => 'קשר משתמש לקוח לקבוצות.',
        'Link customer user to services.' => 'קשר לקוחות לשירותים.',
        'Link queues to auto responses.' => 'קשר תורים למענים אוטומטיים.',
        'Link roles to groups.' => 'קשר תפקידים לקבוצות.',
        'Link templates to queues.' => 'קשר תבניות לתורים.',
        'Links 2 tickets with a "Normal" type link.' => '',
        'Links 2 tickets with a "ParentChild" type link.' => '',
        'List of CSS files to always be loaded for the agent interface.' =>
            '',
        'List of CSS files to always be loaded for the customer interface.' =>
            '',
        'List of IE8-specific CSS files to always be loaded for the agent interface.' =>
            '',
        'List of IE8-specific CSS files to always be loaded for the customer interface.' =>
            '',
        'List of JS files to always be loaded for the agent interface.' =>
            '',
        'List of JS files to always be loaded for the customer interface.' =>
            '',
        'List of all CustomerCompany events to be displayed in the GUI.' =>
            '',
        'List of all CustomerUser events to be displayed in the GUI.' => '',
        'List of all Package events to be displayed in the GUI.' => '',
        'List of all article events to be displayed in the GUI.' => '',
        'List of all ticket events to be displayed in the GUI.' => '',
        'List of default Standard Templates which are assigned automatically to new Queues upon creation.' =>
            '',
        'Log file for the ticket counter.' => '',
        'Mail Accounts' => '',
        'Main menu registration.' => '',
        'Makes the application check the MX record of email addresses before sending an email or submitting a telephone or email ticket.' =>
            '',
        'Makes the application check the syntax of email addresses.' => '',
        'Makes the picture transparent.' => '',
        'Makes the session management use html cookies. If html cookies are disabled or if the client browser disabled html cookies, then the system will work as usual and append the session id to the links.' =>
            '',
        'Manage OTRS Group services.' => '',
        'Manage PGP keys for email encryption.' => '',
        'Manage POP3 or IMAP accounts to fetch email from.' => '',
        'Manage S/MIME certificates for email encryption.' => '',
        'Manage existing sessions.' => '',
        'Manage notifications that are sent to agents.' => '',
        'Manage system registration.' => '',
        'Manage tasks triggered by event or time based execution.' => '',
        'Max size (in characters) of the customer information table (phone and email) in the compose screen.' =>
            '',
        'Max size (in rows) of the informed agents box in the agent interface.' =>
            '',
        'Max size (in rows) of the involved agents box in the agent interface.' =>
            '',
        'Max size of the subjects in an email reply.' => '',
        'Maximal auto email responses to own email-address a day (Loop-Protection).' =>
            '',
        'Maximal size in KBytes for mails that can be fetched via POP3/POP3S/IMAP/IMAPS (KBytes).' =>
            '',
        'Maximum length (in characters) of the dynamic field in the article of the ticket zoom view.' =>
            '',
        'Maximum length (in characters) of the dynamic field in the sidebar of the ticket zoom view.' =>
            '',
        'Maximum number of tickets to be displayed in the result of a search in the agent interface.' =>
            '',
        'Maximum number of tickets to be displayed in the result of a search in the customer interface.' =>
            '',
        'Maximum number of tickets to be displayed in the result of this operation.' =>
            '',
        'Maximum size (in characters) of the customer information table in the ticket zoom view.' =>
            '',
        'Module for To-selection in new ticket screen in the customer interface.' =>
            '',
        'Module to check customer permissions.' => '',
        'Module to check if a user is in a special group. Access is granted, if the user is in the specified group and has ro and rw permissions.' =>
            '',
        'Module to check if arrived emails should be marked as email-internal (because of original forwarded internal email). ArticleType and SenderType define the values for the arrived email/article.' =>
            '',
        'Module to check the agent responsible of a ticket.' => '',
        'Module to check the group permissions for the access to customer tickets.' =>
            '',
        'Module to check the owner of a ticket.' => '',
        'Module to check the watcher agents of a ticket.' => '',
        'Module to compose signed messages (PGP or S/MIME).' => '',
        'Module to crypt composed messages (PGP or S/MIME).' => '',
        'Module to filter and manipulate incoming messages. Block/ignore all spam email with From: noreply@ address.' =>
            '',
        'Module to filter and manipulate incoming messages. Get a 4 digit number to ticket free text, use regex in Match e. g. From => \'(.+?)@.+?\', and use () as [***] in Set =>.' =>
            '',
        'Module to generate accounted time ticket statistics.' => '',
        'Module to generate html OpenSearch profile for short ticket search in the agent interface.' =>
            '',
        'Module to generate html OpenSearch profile for short ticket search in the customer interface.' =>
            '',
        'Module to generate ticket solution and response time statistics.' =>
            '',
        'Module to generate ticket statistics.' => '',
        'Module to show notifications and escalations (ShownMax: max. shown escalations, EscalationInMinutes: Show ticket which will escalation in, CacheTime: Cache of calculated escalations in seconds).' =>
            '',
        'Module to use database filter storage.' => '',
        'Multiselect' => 'Mehrfachauswahl',
        'My Tickets' => 'Meine Tickets',
        'Name of custom queue. The custom queue is a queue selection of your preferred queues and can be selected in the preferences settings.' =>
            '',
        'NameX' => '',
        'New email ticket' => 'פניית דוא"ל חדשה',
        'New phone ticket' => 'פניית טלפון חדשה',
        'New process ticket' => 'פניית תהליך חדשה',
        'Next possible ticket states after adding a phone note in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Next possible ticket states after adding a phone note in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Notifications (Event)' => 'התראות (אירוע)',
        'Number of displayed tickets' => 'מספר פניות מוצגות',
        'Number of lines (per ticket) that are shown by the search utility in the agent interface.' =>
            '',
        'Number of tickets to be displayed in each page of a search result in the agent interface.' =>
            '',
        'Number of tickets to be displayed in each page of a search result in the customer interface.' =>
            '',
        'Open tickets of customer' => 'פניות פתוחות של הלקוח',
        'Overloads (redefines) existing functions in Kernel::System::Ticket. Used to easily add customizations.' =>
            '',
        'Overview Escalated Tickets' => 'מבט-על של פניות באסקלציה',
        'Overview Refresh Time' => 'מבט-על של זמן רענון',
        'Overview of all open Tickets.' => 'מבט-על של כל הפניות הפתוחות',
        'PGP Key Management' => 'ניהול מפתח PGP',
        'PGP Key Upload' => 'העלאת מפתח PGP',
        'Package event module file a scheduler task for update registration.' =>
            '',
        'Parameters for .' => '',
        'Parameters for the CreateNextMask object in the preference view of the agent interface.' =>
            '',
        'Parameters for the CustomQueue object in the preference view of the agent interface.' =>
            '',
        'Parameters for the FollowUpNotify object in the preference view of the agent interface.' =>
            '',
        'Parameters for the LockTimeoutNotify object in the preference view of the agent interface.' =>
            '',
        'Parameters for the MoveNotify object in the preference view of the agent interface.' =>
            '',
        'Parameters for the NewTicketNotify object in the preferences view of the agent interface.' =>
            '',
        'Parameters for the RefreshTime object in the preference view of the agent interface.' =>
            '',
        'Parameters for the WatcherNotify object in the preference view of the agent interface.' =>
            '',
        'Parameters for the dashboard backend of the customer company information of the agent interface . "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the customer id status widget of the agent interface . "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the customer user list overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the new tickets overview of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the queue overview widget of the agent interface. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "QueuePermissionGroup" is not mandatory, queues are only listed if they belong to this permission group if you enable it. "States" is a list of states, the key is the sort order of the state in the widget. "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the ticket calendar of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the ticket escalation overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the ticket pending reminder overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the ticket pending reminder overview of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the ticket stats of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the pages (in which the dynamic fields are shown) of the dynamic fields overview.' =>
            '',
        'Parameters for the pages (in which the tickets are shown) of the medium ticket overview.' =>
            '',
        'Parameters for the pages (in which the tickets are shown) of the small ticket overview.' =>
            '',
        'Parameters for the pages (in which the tickets are shown) of the ticket preview overview.' =>
            '',
        'Parameters of the example SLA attribute Comment2.' => '',
        'Parameters of the example queue attribute Comment2.' => '',
        'Parameters of the example service attribute Comment2.' => '',
        'Path for the log file (it only applies if "FS" was selected for LoopProtectionModule and it is mandatory).' =>
            '',
        'Path of the file that stores all the settings for the QueueObject object for the agent interface.' =>
            '',
        'Path of the file that stores all the settings for the QueueObject object for the customer interface.' =>
            '',
        'Path of the file that stores all the settings for the TicketObject for the agent interface.' =>
            '',
        'Path of the file that stores all the settings for the TicketObject for the customer interface.' =>
            '',
        'Performs the configured action for each event (as an Invoker) for each configured Webservice.' =>
            '',
        'Permitted width for compose email windows.' => '',
        'Permitted width for compose note windows.' => '',
        'Picture-Upload' => '',
        'PostMaster Filters' => '',
        'PostMaster Mail Accounts' => '',
        'Process Information' => '',
        'Process Management Activity Dialog GUI' => '',
        'Process Management Activity GUI' => '',
        'Process Management Path GUI' => '',
        'Process Management Transition Action GUI' => '',
        'Process Management Transition GUI' => '',
        'Protection against CSRF (Cross Site Request Forgery) exploits (for more info see http://en.wikipedia.org/wiki/Cross-site_request_forgery).' =>
            '',
        'Provides a matrix overview of the tickets per state per queue.' =>
            '',
        'Queue view' => 'תצוגת תורים',
        'Recognize if a ticket is a follow up to an existing ticket using an external ticket number.' =>
            '',
        'Refresh Overviews after' => 'רענן מבט-על לאחר',
        'Refresh interval' => 'לרענן כל',
        'Removes the ticket watcher information when a ticket is archived.' =>
            '',
        'Replaces the original sender with current customer\'s email address on compose answer in the ticket compose screen of the agent interface.' =>
            '',
        'Required permissions to change the customer of a ticket in the agent interface.' =>
            '',
        'Required permissions to use the close ticket screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket bounce screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket compose screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket forward screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket free text screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket merge screen of a zoomed ticket in the agent interface.' =>
            '',
        'Required permissions to use the ticket note screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Required permissions to use the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Required permissions to use the ticket phone inbound screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket phone outbound screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Required permissions to use the ticket responsible screen in the agent interface.' =>
            '',
        'Resets and unlocks the owner of a ticket if it was moved to another queue.' =>
            '',
        'Restores a ticket from the archive (only if the event is a state change, from closed to any open available state).' =>
            '',
        'Roles <-> Groups' => 'תפקידים <-> קבוצות',
        'Runs an initial wildcard search of the existing customer users when accessing the AdminCustomerUser module.' =>
            '',
        'Runs the system in "Demo" mode. If set to "Yes", agents can change preferences, such as selection of language and theme via the agent web interface. These changes are only valid for the current session. It will not be possible for agents to change their passwords.' =>
            '',
        'S/MIME Certificate Upload' => 'S/MIME Zertifikat hochladen',
        'Saves the attachments of articles. "DB" stores all data in the database (not recommended for storing big attachments). "FS" stores the data on the filesystem; this is faster but the webserver should run under the OTRS user. You can switch between the modules even on a system that is already in production without any loss of data.' =>
            '',
        'Search Customer' => 'חפש לקוח',
        'Search User' => 'חפש משתמש',
        'Search backend default router.' => '',
        'Search backend router.' => '',
        'Select your frontend Theme.' => 'בחרו את ערכת העיצוב שלכם.',
        'Selects the cache backend to use.' => '',
        'Selects the module to handle uploads via the web interface. "DB" stores all uploads in the database, "FS" uses the file system.' =>
            '',
        'Selects the ticket number generator module. "AutoIncrement" increments the ticket number, the SystemID and the counter are used with SystemID.counter format (e.g. 1010138, 1010139). With "Date" the ticket numbers will be generated by the current date, the SystemID and the counter. The format looks like Year.Month.Day.SystemID.counter (e.g. 200206231010138, 200206231010139). With "DateChecksum"  the counter will be appended as checksum to the string of date and SystemID. The checksum will be rotated on a daily basis. The format looks like Year.Month.Day.SystemID.Counter.CheckSum (e.g. 2002070110101520, 2002070110101535). "Random" generates randomized ticket numbers in the format "SystemID.Random" (e.g. 100057866352, 103745394596).' =>
            '',
        'Send me a notification if a customer sends a follow up and I\'m the owner of the ticket or the ticket is unlocked and is in one of my subscribed queues.' =>
            'שלח לי התראות אם לקוח שולח מעקב ואני הבעלים של הפניה או שהפניה לא נעולה ובאחד מהתורים שאני מנוי עליהם.',
        'Send notifications to users.' => 'שלח התראות למשתמשים.',
        'Send ticket follow up notifications' => 'שלח התראות מעקב פניות',
        'Sender type for new tickets from the customer inteface.' => '',
        'Sends agent follow-up notification only to the owner, if a ticket is unlocked (the default is to send the notification to all agents).' =>
            '',
        'Sends all outgoing email via bcc to the specified address. Please use this only for backup reasons.' =>
            '',
        'Sends customer notifications just to the mapped customer. Normally, if no customer is mapped, the latest customer sender gets the notification.' =>
            '',
        'Sends reminder notifications of unlocked ticket after reaching the reminder date (only sent to ticket owner).' =>
            '',
        'Sends the notifications which are configured in the admin interface under "Notfication (Event)".' =>
            '',
        'Set sender email addresses for this system.' => 'קבע כתובת דוא"ל לשולח עבור מערכת זו.',
        'Set the default height (in pixels) of inline HTML articles in AgentTicketZoom.' =>
            '',
        'Set the maximum height (in pixels) of inline HTML articles in AgentTicketZoom.' =>
            '',
        'Set this to yes if you trust in all your public and private pgp keys, even if they are not certified with a trusted signature.' =>
            '',
        'Sets if SLA must be selected by the agent.' => '',
        'Sets if SLA must be selected by the customer.' => '',
        'Sets if note must be filled in by the agent.' => '',
        'Sets if service must be selected by the agent.' => '',
        'Sets if service must be selected by the customer.' => '',
        'Sets if ticket owner must be selected by the agent.' => '',
        'Sets the PendingTime of a ticket to 0 if the state is changed to a non-pending state.' =>
            '',
        'Sets the age in minutes (first level) for highlighting queues that contain untouched tickets.' =>
            '',
        'Sets the age in minutes (second level) for highlighting queues that contain untouched tickets.' =>
            '',
        'Sets the configuration level of the administrator. Depending on the config level, some sysconfig options will be not shown. The config levels are in in ascending order: Expert, Advanced, Beginner. The higher the config level is (e.g. Beginner is the highest), the less likely is it that the user can accidentally configure the system in a way that it is not usable any more.' =>
            '',
        'Sets the count of articles visible in preview mode of ticket overviews.' =>
            '',
        'Sets the default article type for new email tickets in the agent interface.' =>
            '',
        'Sets the default article type for new phone tickets in the agent interface.' =>
            '',
        'Sets the default body text for notes added in the close ticket screen of the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket move screen of the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket note screen of the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket responsible screen of the agent interface.' =>
            '',
        'Sets the default link type of splitted tickets in the agent interface.' =>
            '',
        'Sets the default next state for new phone tickets in the agent interface.' =>
            '',
        'Sets the default next ticket state, after the creation of an email ticket in the agent interface.' =>
            '',
        'Sets the default note text for new telephone tickets. E.g \'New ticket via call\' in the agent interface.' =>
            '',
        'Sets the default priority for new email tickets in the agent interface.' =>
            '',
        'Sets the default priority for new phone tickets in the agent interface.' =>
            '',
        'Sets the default sender type for new email tickets in the agent interface.' =>
            '',
        'Sets the default sender type for new phone ticket in the agent interface.' =>
            '',
        'Sets the default subject for new email tickets (e.g. \'email Outbound\') in the agent interface.' =>
            '',
        'Sets the default subject for new phone tickets (e.g. \'Phone call\') in the agent interface.' =>
            '',
        'Sets the default subject for notes added in the close ticket screen of the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket move screen of the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket note screen of the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket responsible screen of the agent interface.' =>
            '',
        'Sets the default text for new email tickets in the agent interface.' =>
            '',
        'Sets the display order of the different items in the preferences view.' =>
            '',
        'Sets the inactivity time (in seconds) to pass before a session is killed and a user is loged out.' =>
            '',
        'Sets the maximum number of active agents within the timespan defined in SessionActiveTime.' =>
            '',
        'Sets the maximum number of active customers within the timespan defined in SessionActiveTime.' =>
            '',
        'Sets the minimal ticket counter size (if "AutoIncrement" was selected as TicketNumberGenerator). Default is 5, this means the counter starts from 10000.' =>
            '',
        'Sets the number of lines that are displayed in text messages (e.g. ticket lines in the QueueZoom).' =>
            '',
        'Sets the options for PGP binary.' => '',
        'Sets the order of the different items in the customer preferences view.' =>
            '',
        'Sets the password for private PGP key.' => '',
        'Sets the prefered time units (e.g. work units, hours, minutes).' =>
            '',
        'Sets the prefix to the scripts folder on the server, as configured on the web server. This setting is used as a variable, OTRS_CONFIG_ScriptAlias which is found in all forms of messaging used by the application, to build links to the tickets within the system.' =>
            '',
        'Sets the queue in the ticket close screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the queue in the ticket free text screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the queue in the ticket note screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the queue in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the queue in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the queue in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the queue in the ticket responsible screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the close ticket screen of the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket bulk screen of the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket free text screen of the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket note screen of the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket responsible screen of the agent interface.' =>
            '',
        'Sets the service in the close ticket screen of the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket free text screen of the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket note screen of the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket owner screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket pending screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket priority screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket responsible screen of the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the size of the statistic graph.' => '',
        'Sets the stats hook.' => '',
        'Sets the system time zone (required a system with UTC as system time). Otherwise this is a diff time to the local time.' =>
            '',
        'Sets the ticket owner in the close ticket screen of the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket bulk screen of the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket free text screen of the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket note screen of the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket responsible screen of the agent interface.' =>
            '',
        'Sets the ticket type in the close ticket screen of the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket bulk screen of the agent interface.' =>
            '',
        'Sets the ticket type in the ticket free text screen of the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket note screen of the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket owner screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket pending screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket priority screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket responsible screen of the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the time (in seconds) a user is marked as active.' => '',
        'Sets the time type which should be shown.' => '',
        'Sets the timeout (in seconds) for http/ftp downloads.' => '',
        'Sets the timeout (in seconds) for package downloads. Overwrites "WebUserAgent::Timeout".' =>
            '',
        'Sets the user time zone per user (required a system with UTC as system time and UTC under TimeZone). Otherwise this is a diff time to the local time.' =>
            '',
        'Sets the user time zone per user based on java script / browser time zone offset feature at login time.' =>
            '',
        'Show a responsible selection in phone and email tickets in the agent interface.' =>
            '',
        'Show article as rich text even if rich text writing is disabled.' =>
            '',
        'Show the current owner in the customer interface.' => '',
        'Show the current queue in the customer interface.' => '',
        'Shows a count of icons in the ticket zoom, if the article has attachments.' =>
            '',
        'Shows a link in the menu for subscribing / unsubscribing from a ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu that allows linking a ticket with another object in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu that allows merging tickets in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to access the history of a ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to add a free text field in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to add a note in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to add a note to a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to close a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to close a ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to delete a ticket in every ticket overview of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Shows a link in the menu to delete a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Shows a link in the menu to go back in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to lock / unlock a ticket in the ticket overviews of the agent interface.' =>
            '',
        'Shows a link in the menu to lock/unlock tickets in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to move a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to print a ticket or an article in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to see the customer who requested the ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to see the history of a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to see the owner of a ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to see the priority of a ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to see the responsible agent of a ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to set a ticket as pending in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to set a ticket as spam in every ticket overview of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Shows a link in the menu to set the priority of a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to zoom a ticket in the ticket overviews of the agent interface.' =>
            '',
        'Shows a link to access article attachments via a html online viewer in the zoom view of the article in the agent interface.' =>
            '',
        'Shows a link to download article attachments in the zoom view of the article in the agent interface.' =>
            '',
        'Shows a link to see a zoomed email ticket in plain text.' => '',
        'Shows a link to set a ticket as spam in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the close ticket screen of the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket free text screen of the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket note screen of the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket responsible screen of the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the close ticket screen of the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket free text screen of the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket note screen of the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket responsible screen of the agent interface.' =>
            '',
        'Shows a preview of the ticket overview (CustomerInfo => 1 - shows also Customer-Info, CustomerInfoMaxSize max. size in characters of Customer-Info).' =>
            '',
        'Shows a select of ticket attributes to order the queue view ticket list. The possible selections can be configured via \'TicketOverviewMenuSort###SortAttributes\'.' =>
            '',
        'Shows all both ro and rw queues in the queue view.' => '',
        'Shows all open tickets (even if they are locked) in the escalation view of the agent interface.' =>
            '',
        'Shows all open tickets (even if they are locked) in the status view of the agent interface.' =>
            '',
        'Shows all the articles of the ticket (expanded) in the zoom view.' =>
            '',
        'Shows all the customer identifiers in a multi-select field (not useful if you have a lot of customer identifiers).' =>
            '',
        'Shows an owner selection in phone and email tickets in the agent interface.' =>
            '',
        'Shows colors for different article types in the article table.' =>
            '',
        'Shows customer history tickets in AgentTicketPhone, AgentTicketEmail and AgentTicketCustomer.' =>
            '',
        'Shows either the last customer article\'s subject or the ticket title in the small format overview.' =>
            '',
        'Shows existing parent/child queue lists in the system in the form of a tree or a list.' =>
            '',
        'Shows the activated ticket attributes in the customer interface (0 = Disabled and 1 = Enabled).' =>
            '',
        'Shows the articles sorted normally or in reverse, under ticket zoom in the agent interface.' =>
            '',
        'Shows the customer user information (phone and email) in the compose screen.' =>
            '',
        'Shows the customer user\'s info in the ticket zoom view.' => '',
        'Shows the message of the day (MOTD) in the agent dashboard. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually.' =>
            '',
        'Shows the message of the day on login screen of the agent interface.' =>
            '',
        'Shows the ticket history (reverse ordered) in the agent interface.' =>
            '',
        'Shows the ticket priority options in the close ticket screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the move ticket screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket bulk screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket free text screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket note screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket responsible screen of the agent interface.' =>
            '',
        'Shows the title fields in the close ticket screen of the agent interface.' =>
            '',
        'Shows the title fields in the ticket free text screen of the agent interface.' =>
            '',
        'Shows the title fields in the ticket note screen of the agent interface.' =>
            '',
        'Shows the title fields in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the title fields in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the title fields in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the title fields in the ticket responsible screen of the agent interface.' =>
            '',
        'Shows time in long format (days, hours, minutes), if set to "Yes"; or in short format (days, hours), if set to "No".' =>
            '',
        'Shows time use complete description (days, hours, minutes), if set to "Yes"; or just first letter (d, h, m), if set to "No".' =>
            '',
        'Skin' => 'ערכת עיצוב',
        'SolutionDiffInMin' => 'הפרש פתרון בדקות',
        'SolutionInMin' => 'פתרון בדקות',
        'Sorts the tickets (ascendingly or descendingly) when a single queue is selected in the queue view and after the tickets are sorted by priority. Values: 0 = ascending (oldest on top, default), 1 = descending (youngest on top). Use the QueueID for the key and 0 or 1 for value.' =>
            '',
        'Spam Assassin example setup. Ignores emails that are marked with SpamAssassin.' =>
            '',
        'Spam Assassin example setup. Moves marked mails to spam queue.' =>
            '',
        'Specifies if an agent should receive email notification of his own actions.' =>
            '',
        'Specifies the available note types for this ticket mask. If the option is deselected, ArticleTypeDefault is used and the option is removed from the mask.' =>
            '',
        'Specifies the background color of the chart.' => '',
        'Specifies the background color of the picture.' => '',
        'Specifies the border color of the chart.' => '',
        'Specifies the border color of the legend.' => '',
        'Specifies the bottom margin of the chart.' => '',
        'Specifies the different article types that will be used in the system.' =>
            '',
        'Specifies the different note types that will be used in the system.' =>
            '',
        'Specifies the directory to store the data in, if "FS" was selected for TicketStorageModule.' =>
            '',
        'Specifies the directory where SSL certificates are stored.' => '',
        'Specifies the directory where private SSL certificates are stored.' =>
            '',
        'Specifies the email address that should be used by the application when sending notifications. The email address is used to build the complete display name for the notification master (i.e. "OTRS Notification Master" otrs@your.example.com). You can use the OTRS_CONFIG_FQDN variable as set in your configuation, or choose another email address. Notifications are messages such as en::Customer::QueueUpdate or en::Agent::Move.' =>
            '',
        'Specifies the group where the user needs rw permissions so that he can access the "SwitchToCustomer" feature.' =>
            '',
        'Specifies the left margin of the chart.' => '',
        'Specifies the name that should be used by the application when sending notifications. The sender name is used to build the complete display name for the notification master (i.e. "OTRS Notification Master" otrs@your.example.com). Notifications are messages such as en::Customer::QueueUpdate or en::Agent::Move.' =>
            '',
        'Specifies the order in which the firstname and the lastname of agents will be displayed.' =>
            '',
        'Specifies the path of the file for the logo in the page header (gif|jpg|png, 700 x 100 pixel).' =>
            '',
        'Specifies the path of the file for the performance log.' => '',
        'Specifies the path to the converter that allows the view of Microsoft Excel files, in the web interface.' =>
            '',
        'Specifies the path to the converter that allows the view of Microsoft Word files, in the web interface.' =>
            '',
        'Specifies the path to the converter that allows the view of PDF documents, in the web interface.' =>
            '',
        'Specifies the path to the converter that allows the view of XML files, in the web interface.' =>
            '',
        'Specifies the right margin of the chart.' => '',
        'Specifies the text color of the chart (e. g. caption).' => '',
        'Specifies the text color of the legend.' => '',
        'Specifies the text that should appear in the log file to denote a CGI script entry.' =>
            '',
        'Specifies the top margin of the chart.' => '',
        'Specifies user id of the postmaster data base.' => '',
        'Specify how many sub directory levels to use when creating cache files. This should prevent too many cache files being in one directory.' =>
            '',
        'Standard available permissions for agents within the application. If more permissions are needed, they can be entered here. Permissions must be defined to be effective. Some other good permissions have also been provided built-in: note, close, pending, customer, freetext, move, compose, responsible, forward, and bounce. Make sure that "rw" is always the last registered permission.' =>
            '',
        'Start number for statistics counting. Every new stat increments this number.' =>
            '',
        'Starts a wildcard search of the active object after the link object mask is started.' =>
            '',
        'Statistics' => 'סטטיסטיקה',
        'Status view' => 'תצוגת סטטוס',
        'Stop words for fulltext index. These words will be removed.' => '',
        'Stores cookies after the browser has been closed.' => '',
        'Strips empty lines on the ticket preview in the queue view.' => '',
        'Templates <-> Queues' => 'תבניות <-> תורים',
        'Textarea' => '',
        'The "bin/PostMasterMailAccount.pl" will reconnect to POP3/POP3S/IMAP/IMAPS host after the specified count of messages.' =>
            '',
        'The agent skin\'s InternalName which should be used in the agent interface. Please check the available skins in Frontend::Agent::Skins.' =>
            '',
        'The customer skin\'s InternalName which should be used in the customer interface. Please check the available skins in Frontend::Customer::Skins.' =>
            '',
        'The divider between TicketHook and ticket number. E.g \': \'.' =>
            '',
        'The duration in minutes after emitting an event, in which the new escalation notify and start events are suppressed.' =>
            '',
        'The format of the subject. \'Left\' means \'[TicketHook#:12345] Some Subject\', \'Right\' means \'Some Subject [TicketHook#:12345]\', \'None\' means \'Some Subject\' and no ticket number. In the last case you should enable PostmasterFollowupSearchInRaw or PostmasterFollowUpSearchInReferences to recognize followups based on email headers and/or body.' =>
            '',
        'The headline shown in the customer interface.' => '',
        'The identifier for a ticket, e.g. Ticket#, Call#, MyTicket#. The default is Ticket#.' =>
            '',
        'The logo shown in the header of the agent interface. The URL to the image can be a relative URL to the skin image directory, or a full URL to a remote web server.' =>
            '',
        'The logo shown in the header of the customer interface. The URL to the image can be a relative URL to the skin image directory, or a full URL to a remote web server.' =>
            '',
        'The logo shown on top of the login box of the agent interface. The URL to the image must be relative URL to the skin image directory.' =>
            '',
        'The text at the beginning of the subject in an email reply, e.g. RE, AW, or AS.' =>
            '',
        'The text at the beginning of the subject when an email is forwarded, e.g. FW, Fwd, or WG.' =>
            '',
        'This event module stores attributes from CustomerUser as DynamicFields tickets. Please see the setting above for how to configure the mapping.' =>
            '',
        'This module and its PreRun() function will be executed, if defined, for every request. This module is useful to check some user options or to display news about new applications.' =>
            '',
        'This option defines the dynamic field in which a Process Management activity entity id is stored.' =>
            '',
        'This option defines the dynamic field in which a Process Management process entity id is stored.' =>
            '',
        'This option defines the process tickets default lock.' => '',
        'This option defines the process tickets default priority.' => '',
        'This option defines the process tickets default queue.' => '',
        'This option defines the process tickets default state.' => '',
        'This option will deny the access to customer company tickets, which are not created by the customer user.' =>
            '',
        'This setting allows you to override the built-in country list with your own list of countries. This is particularly handy if you just want to use a small select group of countries.' =>
            '',
        'Ticket Queue Overview' => 'מבט-על על תורים של פניות',
        'Ticket event module that triggers the escalation stop events.' =>
            '',
        'Ticket overview' => 'מבט-על בפניות',
        'TicketNumber' => 'מספר פניה',
        'Time in seconds that gets added to the actual time if setting a pending-state (default: 86400 = 1 day).' =>
            '',
        'Toggles display of OTRS FeatureAddons list in PackageManager.' =>
            '',
        'Toolbar Item for a shortcut.' => '',
        'Turns on the animations used in the GUI. If you have problems with these animations (e.g. performance issues), you can turn them off here.' =>
            '',
        'Turns on the remote ip address check. It should be set to "No" if the application is used, for example, via a proxy farm or a dialup connection, because the remote ip address is mostly different for the requests.' =>
            '',
        'Update Ticket "Seen" flag if every article got seen or a new Article got created.' =>
            '',
        'Update and extend your system with software packages.' => '',
        'Updates the ticket escalation index after a ticket attribute got updated.' =>
            '',
        'Updates the ticket index accelerator.' => '',
        'UserFirstname' => 'שם פרטי של משתמש',
        'UserLastname' => 'שם משפחה של משתמש',
        'Uses Cc recipients in reply Cc list on compose an email answer in the ticket compose screen of the agent interface.' =>
            '',
        'Uses richtext for viewing and editing: articles, salutations, signatures, standard templates, auto responses and notifications.' =>
            '',
        'View performance benchmark results.' => '',
        'View system log messages.' => '',
        'Wear this frontend skin' => '',
        'Webservice path separator.' => '',
        'When tickets are merged, a note will be added automatically to the ticket which is no longer active. Here you can define the body of this note (this text cannot be changed by the agent).' =>
            '',
        'When tickets are merged, a note will be added automatically to the ticket which is no longer active. Here you can define the subject of this note (this subject cannot be changed by the agent).' =>
            '',
        'When tickets are merged, the customer can be informed per email by setting the check box "Inform Sender". In this text area, you can define a pre-formatted text which can later be modified by the agents.' =>
            '',
        'Your queue selection of your favorite queues. You also get notified about those queues via email if enabled.' =>
            '',

        #
        # OBSOLETE ENTRIES FOR REFERENCE, DO NOT TRANSLATE!
        #
        ' (work units)' => ' (יחידות עבודה)',
        'Add Response' => 'הוסף מענה',
        'Add response' => 'הוסף מענה',
        'Attachments <-> Responses' => 'קבצים מצורפים <-> מענים',
        'Complete registration and continue' => 'השלם הרשמה והמשך',
        'Create and manage response templates.' => 'נהל וצור תבניות מענה.',
        'Customer Data' => 'פרטי לקוח',
        'Customer history' => 'היסטוריית לקוח',
        'CustomerID Search' => 'חיפוש מזהה לקוח',
        'CustomerUser Search' => 'חיפוש משתמש לקוח',
        'DB host' => 'מארח בסיס נתונים',
        'Database-User' => 'משתמש בסיס נתונים',
        'Edit Response' => 'ערוך מענה',
        'Edit customer' => 'ערוך לקוח',
        'Escalation in' => 'אסקלציה ב',
        'Filter for Responses' => 'מסנן עבור מענים',
        'Filter name' => 'שם המסנן',
        'For more info see:' => 'למידע נוסף ראו:',
        'From customer' => 'מלקוח',
        'Fulltext search' => 'חיפוש טקסט מלא',
        'Historic Time Range' => 'טווח זמן היסטורי',
        'Link attachments to responses templates.' => 'קשר קבצים מצורפים לתבניות מענים.',
        'Link responses to queues.' => 'קשר מענים לתורים',
        'Manage Responses' => 'נהל מענים',
        'New email ticket for %s' => 'פניה חדשה בדוא"ל עבור %s',
        'New phone ticket for %s' => 'פניה חדשה בטלפון עבור %s',
        'Only for ArticleCreate event' => 'רק אירועי יצירת מאמר',
        'Password is required.' => 'נדרשת סיסמא.',
        'Please fill in all fields marked as mandatory.' => 'אנא מלאו את כל השדות המסומנים כשדות חובה.',
        'Please supply a' => 'אנא ספקו',
        'Please supply a first name' => 'אנא ספקו שם פרטי',
        'Please supply a last name' => 'אנא ספקו שם משפחה',
        'Position' => 'תפקיד',
        'Registration' => 'רישום',
        'Responses' => 'מענים',
        'Responses <-> Queues' => 'מענים <-> תורים',
        'Send update now' => 'שלח עדכון כעת',
        'Show  article' => 'הצג מאמר',
        'Template for' => 'תבנית עבור',
        'URL' => 'קישור',
        'Username and password do not match.' => 'שם משתמש וסיסמא לא תואמים.',
        'before' => 'לפני',
        'settings' => 'הגדרות',

    };
    # $$STOP$$
    return;
}

1;
