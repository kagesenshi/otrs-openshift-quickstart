# --
# Kernel/Language/sv.pm - Swedish language translation
# Copyright (C) 2004 Mats Eric Olausson <mats at synergy.se>
# Copyright (C) 2009 Mikael Mattsson" <Mikael.Mattsson at konsumvarmland.se>
# Copyright (C) 2013 Andreas Berger" <andreas.berger at hagfors.se>
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::sv;

use strict;
use warnings;

sub Data {
    my $Self = shift;

    # $$START$$
    # possible charsets
    $Self->{Charset} = ['utf-8', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Year;)
    $Self->{DateFormat}          = '%Y-%M-%D %T';
    $Self->{DateFormatLong}      = '%A %D. %B %Y %T';
    $Self->{DateFormatShort}     = '%Y.%M.%D';
    $Self->{DateInputFormat}     = '%Y.%M.%D';
    $Self->{DateInputFormatLong} = '%Y.%M.%D - %T';

    # csv separator
    $Self->{Separator} = ';';

    $Self->{Translation} = {

        # Template: AAABase
        'Yes' => 'Ja',
        'No' => 'Nej',
        'yes' => 'ja',
        'no' => 'inga',
        'Off' => 'Av',
        'off' => 'av',
        'On' => 'På',
        'on' => 'på',
        'top' => 'topp',
        'end' => 'slut',
        'Done' => 'Klar',
        'Cancel' => 'Avbryt',
        'Reset' => 'Nollställ',
        'more than ... ago' => 'mer än ... sedan',
        'in more than ...' => 'i mer än ...',
        'within the last ...' => 'inom de senaste ...',
        'within the next ...' => 'inom de nästa ...',
        'Created within the last' => 'Skapad senaste',
        'Created more than ... ago' => 'Skapades för mer än ... sedan',
        'Today' => 'Idag',
        'Tomorrow' => 'Imorgon',
        'Next week' => 'Nästa vecka',
        'day' => 'dag',
        'days' => 'dagar',
        'day(s)' => 'dag(ar)',
        'd' => 'd',
        'hour' => 'timme',
        'hours' => 'timmar',
        'hour(s)' => 'timm(ar)',
        'Hours' => 'Timmar',
        'h' => 'h',
        'minute' => 'minut',
        'minutes' => 'minuter',
        'minute(s)' => 'minut(er)',
        'Minutes' => 'Minuter',
        'm' => 'm',
        'month' => 'månad',
        'months' => 'månader',
        'month(s)' => 'månad(er)',
        'week' => 'vecka',
        'week(s)' => 'veck(or)',
        'year' => 'år',
        'years' => 'år',
        'year(s)' => 'år',
        'second(s)' => 'sekund(er)',
        'seconds' => 'sekunder',
        'second' => 'sekund',
        's' => 's',
        'Time unit' => 'Tidsenhet',
        'wrote' => 'skrev',
        'Message' => 'Meddelande',
        'Error' => 'Fel',
        'Bug Report' => 'Rapportera fel',
        'Attention' => 'OBS',
        'Warning' => 'Varning',
        'Module' => 'Modul',
        'Modulefile' => 'Modulfil',
        'Subfunction' => 'Underfunktion',
        'Line' => 'Rad',
        'Setting' => 'Inställning',
        'Settings' => 'Inställningar',
        'Example' => 'Exempel',
        'Examples' => 'Exempel',
        'valid' => 'giltig',
        'Valid' => 'Giltigt',
        'invalid' => 'ogiltig',
        'Invalid' => 'Ogiltig',
        '* invalid' => '* ogiltlig',
        'invalid-temporarily' => '* ogiltlig-tillfälligt',
        ' 2 minutes' => ' 2 minuter',
        ' 5 minutes' => ' 5 minuter',
        ' 7 minutes' => ' 7 minuter',
        '10 minutes' => '10 minuter',
        '15 minutes' => '15 minuter',
        'Mr.' => 'Mr.',
        'Mrs.' => 'Mrs.',
        'Next' => 'Nästa',
        'Back' => 'Tillbaka',
        'Next...' => 'Nästa...',
        '...Back' => '...Tillbaka',
        '-none-' => '-inga-',
        'none' => 'inga',
        'none!' => 'inga!',
        'none - answered' => 'inga - besvarat',
        'please do not edit!' => 'var vänlig ändra inte!',
        'Need Action' => 'Behöver åtgärd',
        'AddLink' => 'Lägg till länk',
        'Link' => 'Länk',
        'Unlink' => 'Avlänka',
        'Linked' => 'Länkat',
        'Link (Normal)' => 'Länk (Normal)',
        'Link (Parent)' => 'Länk (Förälder)',
        'Link (Child)' => 'Länk (Barn)',
        'Normal' => 'Normal',
        'Parent' => 'Förälder',
        'Child' => 'Barn',
        'Hit' => 'Träff',
        'Hits' => 'Träffar',
        'Text' => 'Text',
        'Standard' => 'Standard',
        'Lite' => 'Enkel',
        'User' => 'Användare',
        'Username' => 'Användarnamn',
        'Language' => 'Språk',
        'Languages' => 'Språk',
        'Password' => 'Lösenord',
        'Preferences' => 'Inställningar',
        'Salutation' => 'Hälsningsfras',
        'Salutations' => 'Hälsningsfraser',
        'Signature' => 'Signatur',
        'Signatures' => 'Signaturer',
        'Customer' => 'Kund',
        'CustomerID' => 'KundID',
        'CustomerIDs' => 'KundIDn',
        'customer' => 'kund',
        'agent' => 'handläggare',
        'system' => 'System',
        'Customer Info' => 'Kundinfo',
        'Customer Information' => 'Kundinformation',
        'Customer Company' => 'Kundföretag',
        'Customer Companies' => 'Kundföretag',
        'Company' => 'Företag',
        'go!' => 'Starta!',
        'go' => 'Starta',
        'All' => 'Alla',
        'all' => 'alla',
        'Sorry' => 'Beklagar',
        'update!' => 'Uppdatera!',
        'update' => 'uppdatera',
        'Update' => 'Uppdatera',
        'Updated!' => 'Uppdaterad!',
        'submit!' => 'Spara!',
        'submit' => 'Spara',
        'Submit' => 'Spara',
        'change!' => 'ändra!',
        'Change' => 'Ändra',
        'change' => 'ändra',
        'click here' => 'klicka här',
        'Comment' => 'Kommentar',
        'Invalid Option!' => 'Ogiltligt val!',
        'Invalid time!' => 'Ogiltlig tid!',
        'Invalid date!' => 'Ogiltligt datum!',
        'Name' => 'Namn',
        'Group' => 'Grupp',
        'Description' => 'Beskrivning',
        'description' => 'beskrivning',
        'Theme' => 'Tema',
        'Created' => 'Skapat',
        'Created by' => 'Skapat av',
        'Changed' => 'Ändrat',
        'Changed by' => 'Ändrat av',
        'Search' => 'Sök',
        'and' => 'och',
        'between' => 'mellan',
        'before/after' => 'före/efter',
        'Fulltext Search' => 'Fulltextsökning',
        'Data' => 'Data',
        'Options' => 'Tillval',
        'Title' => 'Titel',
        'Item' => 'Enhet',
        'Delete' => 'Radera',
        'Edit' => 'Redigera',
        'View' => 'Bild',
        'Number' => 'Nummer',
        'System' => 'System',
        'Contact' => 'Kontakt',
        'Contacts' => 'Kontakter',
        'Export' => 'Exportera',
        'Up' => 'Upp',
        'Down' => 'Ner',
        'Add' => 'Lägg till',
        'Added!' => 'Tillagd',
        'Category' => 'Kategori',
        'Viewer' => 'Bevakare',
        'Expand' => 'Expandera',
        'Small' => 'Liten',
        'Medium' => 'Mellan',
        'Large' => 'Stor',
        'Date picker' => 'Datumväljare',
        'Show Tree Selection' => 'Visa trädval',
        'The field content is too long!' => 'Fältinnehållet är för långt!',
        'Maximum size is %s characters.' => 'Maxlängd är %s tecken.',
        'This field is required or' => 'Detta fält är obligatoriskt eller',
        'New message' => 'Nytt meddelande',
        'New message!' => 'Nytt meddelande!',
        'Please answer this ticket(s) to get back to the normal queue view!' =>
            'Vänligen besvara denna/dessa ärenden för att komma tillbaka till den normala kö-visningsbilden!',
        'You have %s new message(s)!' => 'Du har %s nya meddelanden!',
        'You have %s reminder ticket(s)!' => 'Du har %s påminnelse-ärende(n)!',
        'The recommended charset for your language is %s!' => 'Den rekommenderade teckenuppsättningen för ditt språk är %s!',
        'Change your password.' => 'Byt ditt lösenord.',
        'Please activate %s first!' => 'Vänligen aktivera %s först!',
        'No suggestions' => 'Inga förslag',
        'Word' => 'Ord',
        'Ignore' => 'Ignorera',
        'replace with' => 'ersätt med',
        'There is no account with that login name.' => 'Det finns inget konto med detta namn.',
        'Login failed! Your user name or password was entered incorrectly.' =>
            'Inloggning misslyckades! Felaktigt användarnamn eller lösenord.',
        'There is no acount with that user name.' => 'Det finns inget konto med det användarnamnet',
        'Please contact your administrator' => 'Vänligen kontakta din administratör',
        'Authentication succeeded, but no customer record is found in the customer backend. Please contact your administrator.' =>
            '',
        'This e-mail address already exists. Please log in or reset your password.' =>
            '',
        'Logout' => 'Logga ut',
        'Logout successful. Thank you for using %s!' => 'Utloggningen lyckades.  Tack för att du använde %s!',
        'Feature not active!' => 'Funktion inte aktiverad!',
        'Agent updated!' => 'Handläggare uppdaterad!',
        'Database Selection' => 'Databasval',
        'Create Database' => 'Skapa databas',
        'System Settings' => 'Systeminställningar',
        'Mail Configuration' => 'Mailkonfiguration',
        'Finished' => 'Klar',
        'Install OTRS' => 'Installera OTRS',
        'Intro' => 'Intro',
        'License' => 'Licens',
        'Database' => 'Databas',
        'Configure Mail' => 'Konfigurera mail',
        'Database deleted.' => 'Databas borttagen.',
        'Enter the password for the administrative database user.' => 'Ange lösenord för administrativ databasanvändare.',
        'Enter the password for the database user.' => 'Ange lösenord för databasanvändaren.',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty.' =>
            'Om du har angett ett rootlösenord för din databas måste du ange det här. Lämna fältet blankt annars.',
        'Database already contains data - it should be empty!' => 'Databasen innehåller redan information - den bör vara tom!',
        'Login is needed!' => 'Inloggning krävs!',
        'Password is needed!' => 'Lösenord krävs!',
        'Take this Customer' => 'Välj denna kund',
        'Take this User' => 'Välj denna användare',
        'possible' => 'möjlig',
        'reject' => 'avvisa',
        'reverse' => 'baklänges',
        'Facility' => 'Innrättning',
        'Time Zone' => 'Tidszon',
        'Pending till' => 'Väntande tills',
        'Don\'t use the Superuser account to work with OTRS! Create new Agents and work with these accounts instead.' =>
            'Använd inte superuserkontot för att arbeta med OTRS! Skapa nya handläggare och arbeta med dom istället.',
        'Dispatching by email To: field.' => 'Skickar iväg enligt e-postmeddelandets till-fält.',
        'Dispatching by selected Queue.' => 'Skickar iväg enligt vald kö.',
        'No entry found!' => 'Ingen inmatning funnen!',
        'Session invalid. Please log in again.' => 'Ogiltig session. Vänligen logga in igen.',
        'Session has timed out. Please log in again.' => 'Sessionstiden har löpt ut.  Vänligen logga in igen.',
        'Session limit reached! Please try again later.' => 'För många samtidiga sessioner! Försök igen senare.',
        'No Permission!' => 'Ej Behörig!',
        '(Click here to add)' => '(Klicka här för att lägga till)',
        'Preview' => 'Förhandsvisning',
        'Package not correctly deployed! Please reinstall the package.' =>
            'Paketet inte korrekt installerat! Försök installera det igen.',
        '%s is not writable!' => 'Kan inte skriva till %s!',
        'Cannot create %s!' => 'Kan inte skapa %s!',
        'Check to activate this date' => 'Kryssa i för att aktivera detta datum',
        'You have Out of Office enabled, would you like to disable it?' =>
            'Du har aktivierat automatiskt svar vid frånvaro. Vill du stänga av det?',
        'News about OTRS releases!' => 'Nyheter om OTRS-releaser!',
        'Customer %s added' => 'Kund %s lades till',
        'Role added!' => 'Roll tillagd!',
        'Role updated!' => 'Roll uppdaterad!',
        'Attachment added!' => 'Bilaga tillagd!',
        'Attachment updated!' => 'Bilaga uppdaterad',
        'Response added!' => 'Svar tillagt!',
        'Response updated!' => 'Svar uppdaterat!',
        'Group updated!' => 'Grupp uppdaterad!',
        'Queue added!' => 'Kö tillagd!',
        'Queue updated!' => 'Kö uppdaterad!',
        'State added!' => '',
        'State updated!' => '',
        'Type added!' => 'Typ tillagd!',
        'Type updated!' => 'Typ uppdaterad!',
        'Customer updated!' => 'Kund uppdaterad!',
        'Customer company added!' => 'Kundorganisation tillagd!',
        'Customer company updated!' => 'Kundorganisation uppdaterad!',
        'Note: Company is invalid!' => 'OBS: Organisationen är ogiltig!',
        'Mail account added!' => 'E-postkonto tillagt!',
        'Mail account updated!' => 'E-postkonto uppdaterat!',
        'System e-mail address added!' => 'E-post för system tillagd!',
        'System e-mail address updated!' => 'E-post för system uppdaterad!',
        'Contract' => 'Kontrakt',
        'Online Customer: %s' => 'Kund online: %s',
        'Online Agent: %s' => 'Handläggare online: %s',
        'Calendar' => 'Kalender',
        'File' => 'Fil',
        'Filename' => 'Filnamn',
        'Type' => 'Typ',
        'Size' => 'Storlek',
        'Upload' => 'Ladda upp',
        'Directory' => 'Katalog',
        'Signed' => 'Signatur',
        'Sign' => 'Signerat',
        'Crypted' => 'Krypterat',
        'Crypt' => 'Kryptering',
        'PGP' => 'PGP',
        'PGP Key' => 'PGP-nyckel',
        'PGP Keys' => 'PGP-nycklar',
        'S/MIME' => 'S/MIME',
        'S/MIME Certificate' => 'S/MIME-certifikat',
        'S/MIME Certificates' => 'S/MIME-certifikat',
        'Office' => 'Kontor',
        'Phone' => 'Telefon',
        'Fax' => 'Fax',
        'Mobile' => 'Mobil',
        'Zip' => 'Postnr',
        'City' => 'Stad',
        'Street' => 'Gata',
        'Country' => 'Land',
        'Location' => 'Plats',
        'installed' => 'installerad',
        'uninstalled' => 'avinstallerad',
        'Security Note: You should activate %s because application is already running!' =>
            'Säkerhetsinfo: Du bör aktivera %s för programmet körs redan!',
        'Unable to parse repository index document.' => 'Kunde inte läsa indexdokument för repot.',
        'No packages for your framework version found in this repository, it only contains packages for other framework versions.' =>
            '',
        'No packages, or no new packages, found in selected repository.' =>
            '',
        'Edit the system configuration settings.' => 'Redigera systemkonfiguration.',
        'ACL information from database is not in sync with the system configuration, please deploy all ACLs.' =>
            '',
        'printed at' => 'utskriven ',
        'Loading...' => 'Laddar...',
        'Dear Mr. %s,' => 'Bäste Herr %s,',
        'Dear Mrs. %s,' => 'Bästa Fru %s,',
        'Dear %s,' => 'Bäste %s,',
        'Hello %s,' => 'Hej %s,',
        'This email address already exists. Please log in or reset your password.' =>
            'Denna e-postadress finns redan. Logga in eller återställ ditt lösenord.',
        'New account created. Sent login information to %s. Please check your email.' =>
            'Nytt konto skapat. Skickade inloggningsuppgifter till %s. Titta i din inkorg.',
        'Please press Back and try again.' => 'Tryck på bakåtknappen och försök igen.',
        'Sent password reset instructions. Please check your email.' => 'Skickade instruktioner för att återställa lösenord. Titta i din inkorg för mer information.',
        'Sent new password to %s. Please check your email.' => 'Skickade nytt lösenord till %s. Titta i din inkorg för mer information.',
        'Upcoming Events' => 'Kommande händelser',
        'Event' => 'Händelse',
        'Events' => 'Händelser',
        'Invalid Token!' => 'Ogiltlig inmatning!',
        'more' => 'mer',
        'Collapse' => 'Kollapsa',
        'Shown' => 'Visade',
        'Shown customer users' => 'Visa kundanvändare.',
        'News' => 'Nyheter',
        'Product News' => 'Produktnyheter',
        'OTRS News' => 'OTRS nyheter',
        '7 Day Stats' => '7-dagars statistik',
        'Process Management information from database is not in sync with the system configuration, please synchronize all processes.' =>
            '',
        'Package not verified by the OTRS Group! It is recommended not to use this package.' =>
            'Paketet är inte kontrollerat av OTRS-gruppen! Du bör inte använda det.',
        '<br>If you continue to install this package, the following issues may occur!<br><br>&nbsp;-Security problems<br>&nbsp;-Stability problems<br>&nbsp;-Performance problems<br><br>Please note that issues that are caused by working with this package are not covered by OTRS service contracts!<br><br>' =>
            '',
        'Mark' => 'Markera',
        'Unmark' => 'Avmarkera',
        'Bold' => 'Fet',
        'Italic' => 'Kursiv',
        'Underline' => 'Understruket',
        'Font Color' => 'Typsnittsfärg',
        'Background Color' => 'Bakgrundsfärg',
        'Remove Formatting' => 'Radera Formatering',
        'Show/Hide Hidden Elements' => 'Visa/Dölj dolda element',
        'Align Left' => 'Vänsterställ',
        'Align Center' => 'Centrera',
        'Align Right' => 'Högerställ',
        'Justify' => 'Justera',
        'Header' => 'Huvud',
        'Indent' => 'indrag',
        'Outdent' => 'utdrag',
        'Create an Unordered List' => 'Skapa en Osorterad Lista',
        'Create an Ordered List' => 'Skapa en Sorterad Lista',
        'HTML Link' => 'HTML-Länk',
        'Insert Image' => 'Infoga Bild',
        'CTRL' => 'CTRL',
        'SHIFT' => 'SHIFT',
        'Undo' => 'Ångra',
        'Redo' => 'Gör om',
        'Scheduler process is registered but might not be running.' => 'Processen för schemaläggaren har registrerats men verkar inte köras.',
        'Scheduler is not running.' => 'Schemaläggaren körs inte.',
        'Can\'t contact registration server. Please try again later.' => 'Kan inte ansluta till registreringsservern. Försök senare.',
        'No content received from registration server. Please try again later.' =>
            'Inget innehåll togs emot från registreringsservern. Försök senare.',
        'Problems processing server result. Please try again later.' => '',
        'Username and password do not match. Please try again.' => 'Användarnamn och lösenord är fel. Försök igen senare.',
        'The selected process is invalid!' => 'Den valda processen är ogiltig!',

        # Template: AAACalendar
        'New Year\'s Day' => 'Nyårsdagen',
        'International Workers\' Day' => 'Första maj',
        'Christmas Eve' => 'Julafton',
        'First Christmas Day' => 'Juldagen',
        'Second Christmas Day' => 'Annandag jul',
        'New Year\'s Eve' => 'Nyårsafton',

        # Template: AAAGenericInterface
        'OTRS as requester' => '',
        'OTRS as provider' => '',
        'Webservice "%s" created!' => 'Webbservice "%s" skapades!',
        'Webservice "%s" updated!' => 'Webbservice "%s" uppdaterad!',

        # Template: AAAMonth
        'Jan' => 'jan',
        'Feb' => 'feb',
        'Mar' => 'mar',
        'Apr' => 'apr',
        'May' => 'maj',
        'Jun' => 'jun',
        'Jul' => 'jul',
        'Aug' => 'aug',
        'Sep' => 'sep',
        'Oct' => 'okt',
        'Nov' => 'nov',
        'Dec' => 'dec',
        'January' => 'Januari',
        'February' => 'Februari',
        'March' => 'Mars',
        'April' => 'April',
        'May_long' => 'Maj',
        'June' => 'Juni',
        'July' => 'Juli',
        'August' => 'Augusti',
        'September' => 'September',
        'October' => 'Oktober',
        'November' => 'November',
        'December' => 'December',

        # Template: AAAPreferences
        'Preferences updated successfully!' => 'Inställningar lagrade!',
        'User Profile' => 'Användarprofil',
        'Email Settings' => 'E-postinställningar',
        'Other Settings' => 'Övriga inställningar',
        'Change Password' => 'Byt lösenord',
        'Current password' => 'Nuvarande lösenord',
        'New password' => 'Nytt lösenord',
        'Verify password' => 'Bekräfta lösenord',
        'Spelling Dictionary' => 'Stavningslexikon',
        'Default spelling dictionary' => 'Default lexikon för stavningskontroll.',
        'Max. shown Tickets a page in Overview.' => 'Max. visade ärenden per sida i Översikt.',
        'The current password is not correct. Please try again!' => 'Lösenordet stämmer inte. Försök igen!',
        'Can\'t update password, your new passwords do not match. Please try again!' =>
            'Kan inte uppdatera lösenord - olika lösenord angivna i de två fälten. Försök igen!',
        'Can\'t update password, it contains invalid characters!' => 'Kan inte uppdatera lösenordet, det innehåller ogiltiga tecjen!',
        'Can\'t update password, it must be at least %s characters long!' =>
            'Kan inte uppdatera lösenordet. Det måste vara minst %s tecken!',
        'Can\'t update password, it must contain at least 2 lowercase and 2 uppercase characters!' =>
            'Kan inte uppdatera lösenordet. Det måste innehålla minst två gemener och två versaler!',
        'Can\'t update password, it must contain at least 1 digit!' => 'Kan inte uppdatera lösenordet. Det måste innehålla minst en siffra!',
        'Can\'t update password, it must contain at least 2 characters!' =>
            'Kan inte uppdatera lösenordet, det måste innehålla minst två tecken!',
        'Can\'t update password, this password has already been used. Please choose a new one!' =>
            'Kan inte uppdatera lösenordet för det har redan använts tidigare. Ange ett nytt lösenord!',
        'Select the separator character used in CSV files (stats and searches). If you don\'t select a separator here, the default separator for your language will be used.' =>
            '',
        'CSV Separator' => '',

        # Template: AAAStats
        'Stat' => 'Statistik',
        'Sum' => 'Summa',
        'Days' => 'Dagar',
        'No (not supported)' => 'Nej (stöds ej)',
        'Please fill out the required fields!' => 'Fyll i de tvingande fälten!',
        'Please select a file!' => 'Välj en fil!',
        'Please select an object!' => 'Välj ett objekt!',
        'Please select a graph size!' => 'Välj en grafstorlek!',
        'Please select one element for the X-axis!' => 'Välj ett av elementen för X-axeln!',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' =>
            'Välj endast ett element, eller stäng av flaggan \'Fast\' där den är markerad!',
        'If you use a checkbox you have to select some attributes of the select field!' =>
            'Om du använder en bockruta måste du välja något av attributen för det valda fältet!',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' =>
            'Infoga ett värde i valt fält, eller bocka ur \'Fast\' -rutan',
        'The selected end time is before the start time!' => 'Vald sluttid är före starttiden!',
        'You have to select one or more attributes from the select field!' =>
            'Du måste välja ett eller flera attribut i valt fält!',
        'The selected Date isn\'t valid!' => 'Valt datum är inte giltligt!',
        'Please select only one or two elements via the checkbox!' => 'Välj bara ett eller två element via bockrutan!',
        'If you use a time scale element you can only select one element!' =>
            'Om du använder en tidsskala kan du bara välja ett element!',
        'You have an error in your time selection!' => 'Du har ett fel i ditt tidsval!',
        'Your reporting time interval is too small, please use a larger time scale!' =>
            'Ditt rapporteringsintervall är för litet, använd en större tidsskala',
        'The selected start time is before the allowed start time!' => 'Vald starttid är innan den tillåtna starttiden!',
        'The selected end time is after the allowed end time!' => 'Vald sluttid är efter den tillåtna sluttiden!',
        'The selected time period is larger than the allowed time period!' =>
            'Vald tidsperiod är större än den tillåtna tidsperioden!',
        'Common Specification' => 'Vanlig Spec.',
        'X-axis' => 'X-axel',
        'Value Series' => 'Värdeserie',
        'Restrictions' => 'Begränsningar',
        'graph-lines' => 'graf-linjer',
        'graph-bars' => 'graf-block',
        'graph-hbars' => 'graf-hblock',
        'graph-points' => 'graf-punkter',
        'graph-lines-points' => 'graf-linjer-punkter',
        'graph-area' => 'graf-area',
        'graph-pie' => 'graf-paj',
        'extended' => 'utökad',
        'Agent/Owner' => 'Handläggare/Ägare',
        'Created by Agent/Owner' => 'Skapad av handläggare/Ägare',
        'Created Priority' => 'Skapad Prioritet',
        'Created State' => 'Skapad Status',
        'Create Time' => 'Skapad Tid',
        'CustomerUserLogin' => 'KundAnvändarLogin',
        'Close Time' => 'StängTid',
        'TicketAccumulation' => 'Ärendeackumulering',
        'Attributes to be printed' => 'Attribut som skall skrivas ut',
        'Sort sequence' => 'Sorteringssekvens',
        'Order by' => 'Sortera efter',
        'Limit' => 'Gräns',
        'Ticketlist' => 'Ärendelista',
        'ascending' => 'stigande',
        'descending' => 'fallande',
        'First Lock' => 'Första Lås',
        'Evaluation by' => 'Utvärdering av',
        'Total Time' => 'Total Tid',
        'Ticket Average' => 'Ärende Medel',
        'Ticket Min Time' => 'Ärende Min Tid',
        'Ticket Max Time' => 'Ärende Max Tid',
        'Number of Tickets' => 'Antal ärenden',
        'Article Average' => 'Artikel Medel',
        'Article Min Time' => 'Artikel Min Tid',
        'Article Max Time' => 'Artikel Max tid',
        'Number of Articles' => 'Antal Artiklar',
        'Accounted time by Agent' => 'Redovisad tid per handläggare',
        'Ticket/Article Accounted Time' => 'Ärende/Artikel Redovisad Tid',
        'TicketAccountedTime' => 'ÄrendeRedovisadTid',
        'Ticket Create Time' => 'Ärende Skapad Tid',
        'Ticket Close Time' => 'Ärende Stängt Tid',

        # Template: AAASupportDataCollector
        'Unknown' => 'Okänd',
        'Information' => 'Information',
        'OK' => 'OK',
        'Problem' => 'Problem',
        'Webserver' => 'Webbserver',
        'Operating System' => 'Operativsystem',
        'OTRS' => 'OTRS',
        'Table Presence' => '',
        'Internal Error: Could not open file.' => 'Internt fel: Kunde inte öppna fil.',
        'Table Check' => '',
        'Internal Error: Could not read file.' => 'Internt fel: Kunde inte läsa fil.',
        'Tables found which are not present in the database.' => '',
        'Database Size' => 'Databasstorlek',
        'Could not determine database size.' => 'Kunde inte beräkna databasstorlek.',
        'Database Version' => 'Databasversion',
        'Could not determine database version.' => 'Kunde inte avgöra databasversion.',
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
        'Date Format' => 'Datumformat',
        'Setting DateStyle needs to be ISO.' => '',
        'PostgreSQL 8.x or higher is required.' => 'PostgreSQL 8.x eller senare krävs.',
        'OTRS Disk Partition' => 'OTRS diskpartition',
        'Disk Partitions Usage' => '',
        'Distribution' => '',
        'Could not determine distribution.' => '',
        'Kernel Version' => 'Kernelversion',
        'Could not determine kernel version.' => '',
        'Load' => '',
        'The load should be at maximum, the number of procesors the system have (e.g. a load of 8 or less on a 8 CPUs system is OK.' =>
            '',
        'Could not determine system load.' => '',
        'Perl Modules' => 'Perlmoduler',
        'Not all required Perl modules are correctly installed.' => '',
        'Perl Version' => 'Perl-version',
        'Free Swap Space (%)' => '',
        'No Swap Enabled.' => '',
        'Used Swap Space (MB)' => '',
        'There should be more than 60% free swap space.' => '',
        'There should be no more than 200 MB swap space used.' => '',
        'Config Settings' => '',
        'Could not determine value.' => '',
        'Database Records' => '',
        'Tickets' => 'Ärenden',
        'Ticket History Entries' => '',
        'Articles' => 'Artiklar',
        'Attachments (DB, Without HTML)' => 'Bilagor (DB, utan HTML)',
        'Customers With At Least One Ticket' => 'Kunder med minst ett ärende',
        'Queues' => 'Köer',
        'Agents' => 'Handläggare',
        'Roles' => 'Roller',
        'Groups' => 'Grupper',
        'Dynamic Fields' => 'Dynamiska fält',
        'Dynamic Field Values' => 'Dynamiska fältvärden',
        'GenericInterface Webservices' => '',
        'Processes' => 'Processer',
        'Months Between First And Last Ticket' => 'Antal månader mellan första och sista ärende',
        'Tickets Per Month (avg)' => 'Ärenden per månad (genomsnitt)',
        'Default SOAP Username and Password' => 'Standardlösen och användarnamn för SOAP',
        'Security risk: you use the default setting for SOAP::User and SOAP::Password. Please change it.' =>
            '',
        'Default Admin Password' => 'Defaultlösenord för admin',
        'Security risk: the agent account root@localhost still has the default password. Please change it or invalidate the account.' =>
            '',
        'Error Log' => 'Errorlogg',
        'There are error reports in your system log.' => 'Det fins felrapporter i systemloggen.',
        'File System Writable' => '',
        'The file system on your OTRS partition is not writable.' => '',
        'Domain Name' => 'Domännamn',
        'Your FQDN setting is invalid.' => 'Inställningen för FQDN är fel.',
        'Package installation status' => '',
        'Some packages are not correctly installed.' => '',
        'Package List' => 'Paketlista',
        'SystemID' => 'SystemID',
        'Your SystemID setting is invalid, it should only contain digits.' =>
            '',
        'OTRS Version' => 'OTRS-version',
        'Ticket Index Module' => '',
        'You have more than 60,000 tickets and should use the StaticDB backend. See admin manual (Performance Tuning) for more information.' =>
            '',
        'Open Tickets' => 'Öppna ärenden',
        'You should not have more than 8,000 open tickets in your system.' =>
            'Du br inte ha fler än 8000 öppna ärenden i systemet.',
        'Ticket Search Index module' => '',
        'You have more than 50,000 articles and should use the StaticDB backend. See admin manual (Performance Tuning) for more information.' =>
            '',
        'Orphaned Records In ticket_lock_index Table' => '',
        'Table ticket_lock_index contains orphaned records. Please run otrs/bin/otrs.CleanTicketIndex.pl to clean the StaticDB index.' =>
            '',
        'Orphaned Records In ticket_index Table' => '',
        'Table ticket_index contains orphaned records. Please run otrs/bin/otrs.CleanTicketIndex.pl to clean the StaticDB index.' =>
            '',
        'Environment Variables' => 'Miljövariabler',
        'Webserver Version' => 'Webbserver, version',
        'Could not determine webserver version.' => 'Kunde inte avgöra webbserverns version.',
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
        'Status View' => 'Statusvy',
        'Bulk' => 'Bulk',
        'Lock' => 'Lås',
        'Unlock' => 'Lås upp',
        'History' => 'Historik',
        'Zoom' => 'Zooma',
        'Age' => 'Ålder',
        'Bounce' => 'Studsa',
        'Forward' => 'Vidarebefordra',
        'From' => 'Från',
        'To' => 'Till',
        'Cc' => 'Kopia',
        'Bcc' => 'Dold kopia',
        'Subject' => 'Ämne',
        'Move' => 'Flytta',
        'Queue' => 'Kö',
        'Priority' => 'Prioritet',
        'Priorities' => 'Prioriteter',
        'Priority Update' => 'Ändra prioritet',
        'Priority added!' => 'Prioritet tillagd!',
        'Priority updated!' => 'Prioritet uppdaterad!',
        'Signature added!' => 'Signatur tillagd!',
        'Signature updated!' => 'Signatur uppdaterad!',
        'SLA' => 'SLA',
        'Service Level Agreement' => 'Servicenivåavtal',
        'Service Level Agreements' => 'Servicenivåavtal',
        'Service' => 'Tjänst',
        'Services' => 'Tjänster',
        'State' => 'Status',
        'States' => 'Statusar',
        'Status' => 'Status',
        'Statuses' => 'Statusar',
        'Ticket Type' => 'Ärendetyp',
        'Ticket Types' => 'Ärendetyper',
        'Compose' => 'Författa',
        'Pending' => 'Väntande',
        'Owner' => 'Ägare',
        'Owner Update' => 'Ändra ägare',
        'Responsible' => 'Ansvarig',
        'Responsible Update' => 'Ändra ansvarig',
        'Sender' => 'Avsändare',
        'Article' => 'Artikel',
        'Ticket' => 'Ärende',
        'Createtime' => 'Tidpunkt för skapande',
        'plain' => 'rå',
        'Email' => 'E-post',
        'email' => 'e-post',
        'Close' => 'Stäng',
        'Action' => 'Åtgärd',
        'Attachment' => 'Bifogat dokument',
        'Attachments' => 'Bifogade dokument',
        'This message was written in a character set other than your own.' =>
            'Detta meddelande är skrivet med en annan teckenuppsättning än den du använder.',
        'If it is not displayed correctly,' => 'Ifall det inte visas korrekt,',
        'This is a' => 'Detta är en',
        'to open it in a new window.' => 'för att öppna i ett nytt fönster',
        'This is a HTML email. Click here to show it.' => 'Detta är ett HTML-email. Klicka här för att visa.',
        'Free Fields' => 'Fria fält',
        'Merge' => 'Sammanfoga',
        'merged' => 'sammanfogat',
        'closed successful' => 'Löst och stängt',
        'closed unsuccessful' => 'Olöst men stängt',
        'Locked Tickets Total' => 'Låsta ärenden totalt',
        'Locked Tickets Reminder Reached' => '',
        'Locked Tickets New' => 'Nya låsta ärenden',
        'Responsible Tickets Total' => '',
        'Responsible Tickets New' => '',
        'Responsible Tickets Reminder Reached' => '',
        'Watched Tickets Total' => '',
        'Watched Tickets New' => '',
        'Watched Tickets Reminder Reached' => '',
        'All tickets' => 'Alla ärenden',
        'Available tickets' => 'Tillgängliga ärenden',
        'Escalation' => 'Eskalering',
        'last-search' => '',
        'QueueView' => 'Köer',
        'Ticket Escalation View' => 'Ärendeeskaleringsvy',
        'Message from' => 'Meddelande från',
        'End message' => 'Meddelandeslut',
        'Forwarded message from' => 'Vidarebefodrat meddelande från',
        'End forwarded message' => '',
        'Bounce Article to a different mail address' => '',
        'new' => 'ny',
        'open' => 'Öppet',
        'Open' => 'Öppna',
        'Open tickets' => 'Öppna ärenden',
        'closed' => 'stängt',
        'Closed' => 'Stängda',
        'Closed tickets' => 'Stängda ärenden',
        'removed' => 'borttagen',
        'pending reminder' => 'väntar på påminnelse',
        'pending auto' => 'väntar på auto',
        'pending auto close+' => 'väntar på att stängas (löst)',
        'pending auto close-' => 'väntar på att stängas (olöst)',
        'email-external' => 'email externt',
        'email-internal' => 'email internt',
        'note-external' => 'notering externt',
        'note-internal' => 'notering internt',
        'note-report' => 'notering till rapport',
        'phone' => 'telefon',
        'sms' => 'sms',
        'webrequest' => 'web-anmodan',
        'lock' => 'låst',
        'unlock' => 'upplåst',
        'very low' => 'mycket låg',
        'low' => 'låg',
        'normal' => 'normal',
        'high' => 'hög',
        'very high' => 'mycket hög',
        '1 very low' => '1 mycket låg',
        '2 low' => '2 låg',
        '3 normal' => '3 normal',
        '4 high' => '4 hög',
        '5 very high' => '5 mycket hög',
        'auto follow up' => 'auto följ upp',
        'auto reject' => 'auto avvisa',
        'auto remove' => 'auto ta bort',
        'auto reply' => 'auto svara',
        'auto reply/new ticket' => 'auto svara/nytt ärende',
        'Create' => 'Skapa',
        'Answer' => 'Svar',
        'Phone call' => 'Telefonsamtal',
        'Ticket "%s" created!' => 'Ärende "%s" skapat!',
        'Ticket Number' => 'Ärendenummer',
        'Ticket Object' => 'Ärendeobjekt',
        'No such Ticket Number "%s"! Can\'t link it!' => 'Ärendenummer "%s" finns inte, kan inte länka det!',
        'You don\'t have write access to this ticket.' => 'Du har inte skrivbehörighet till detta ärende.',
        'Sorry, you need to be the ticket owner to perform this action.' =>
            'Tyvärr, du måste vara ägare av ärendet för att utföra den här åtgärden.',
        'Please change the owner first.' => 'Vänligen ändra ägare först.',
        'Ticket selected.' => 'Ärende valt.',
        'Ticket is locked by another agent.' => 'Ärende låst av annan handläggare.',
        'Ticket locked.' => 'Ärende låst.',
        'Don\'t show closed Tickets' => 'Visa inte stängda ärenden',
        'Show closed Tickets' => 'Visa stängda ärenden',
        'New Article' => 'Ny artikel',
        'Unread article(s) available' => 'Olästa artiklar tillgängliga',
        'Remove from list of watched tickets' => 'Ta bort från lista av bevakade ärenden.',
        'Add to list of watched tickets' => '',
        'Email-Ticket' => 'E-postärende',
        'Create new Email Ticket' => 'Skapa nytt e-postärende',
        'Phone-Ticket' => 'Telefonärende',
        'Search Tickets' => 'Sök ärenden',
        'Edit Customer Users' => 'Redigera Kundanvändare',
        'Edit Customer Company' => 'Redigera Kundföretag',
        'Bulk Action' => 'Massförändring',
        'Bulk Actions on Tickets' => 'Massförändring av Ärenden',
        'Send Email and create a new Ticket' => 'Skicka E-post och skapa nytt Ärende',
        'Create new Email Ticket and send this out (Outbound)' => 'Skapa nytt e-postärende och skicka detta (utgående)',
        'Create new Phone Ticket (Inbound)' => 'Skapa nytt telefonärende (Inkommande)',
        'Address %s replaced with registered customer address.' => '',
        'Customer user automatically added in Cc.' => '',
        'Overview of all open Tickets' => 'Översikt över alla öppna ärenden',
        'Locked Tickets' => 'Låsta ärenden',
        'My Locked Tickets' => 'Mina låsta ärenden',
        'My Watched Tickets' => 'Mina bevakade ärenden',
        'My Responsible Tickets' => 'Mina ärenden',
        'Watched Tickets' => 'Bevakade ärenden',
        'Watched' => 'Bevakade',
        'Watch' => 'Bevaka',
        'Unwatch' => 'Ta bort bevakning',
        'Lock it to work on it' => 'Lås det för att jobba med det',
        'Unlock to give it back to the queue' => 'Lås upp för att lägga tillbaka i kön',
        'Show the ticket history' => 'Visa ärende-historik',
        'Print this ticket' => 'Skriv ut detta ärende',
        'Print this article' => 'Skriv ut den här artikeln',
        'Split' => 'Dela',
        'Split this article' => 'Dela den här artikeln',
        'Forward article via mail' => 'Vidarebefordra artikeln via e-post',
        'Change the ticket priority' => 'Ändra ärendets prioritet',
        'Change the ticket free fields!' => 'Ändra ärendets fria fält!',
        'Link this ticket to other objects' => 'Länka detta ärende till andra objekt',
        'Change the owner for this ticket' => 'Byt ägare av detta ärende',
        'Change the  customer for this ticket' => 'Ändra kund för detta ärende',
        'Add a note to this ticket' => 'Lägg till en notering till detta ärende',
        'Merge into a different ticket' => 'Sammanfoga till ett annat ärende',
        'Set this ticket to pending' => 'Sätt ärendet som väntande',
        'Close this ticket' => 'Stäng detta ärende',
        'Look into a ticket!' => 'Visa ärendet!',
        'Delete this ticket' => 'Ta bort detta ärende',
        'Mark as Spam!' => 'Markera som spam!',
        'My Queues' => 'Mina köer',
        'Shown Tickets' => 'Visade ärenden',
        'Shown Columns' => 'Visa kolumner',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' =>
            'Ditt e-postärende med nummer "<OTRS_TICKET>" har slagits samman med "<OTRS_MERGE_TO_TICKET>".',
        'Ticket %s: first response time is over (%s)!' => 'Ärende %s: första åtgärdstid har passerats (%s)!',
        'Ticket %s: first response time will be over in %s!' => 'Ärende %s: första åtgärdstid har passerats om %s!',
        'Ticket %s: update time is over (%s)!' => 'Ärende %s: uppdateringstid har passerats (%s)!',
        'Ticket %s: update time will be over in %s!' => 'Ärende %s: uppdateringstid har passerats om %s!',
        'Ticket %s: solution time is over (%s)!' => 'Ärende %s: lösningstid har passerats (%s)!',
        'Ticket %s: solution time will be over in %s!' => 'Ärende %s: lösningstid har passerats om %s!',
        'There are more escalated tickets!' => 'Det finns fler eskalerade ärenden!',
        'Plain Format' => 'Enkelt format',
        'Reply All' => 'Svara alla',
        'Direction' => 'Riktning',
        'Agent (All with write permissions)' => 'Handläggare (alla med skrivrättigheter)',
        'Agent (Owner)' => 'Handläggare (ägare)',
        'Agent (Responsible)' => 'Handläggare (ansvarig)',
        'New ticket notification' => 'Meddelande om nytt ärende',
        'Send me a notification if there is a new ticket in "My Queues".' =>
            'Skicka mig ett meddelande om det finns nya ärenden i "Mina köer".',
        'Send new ticket notifications' => 'Skicka notifieringar om nya ärenden',
        'Ticket follow up notification' => '',
        'Ticket lock timeout notification' => 'Meddela mig då tiden gått ut för ett ärende-lås',
        'Send me a notification if a ticket is unlocked by the system.' =>
            'Skicka mig ett meddelande ifall systemet tar bort låset på ett ärende.',
        'Send ticket lock timeout notifications' => '',
        'Ticket move notification' => 'Skica notifiering om flyttade ärenden',
        'Send me a notification if a ticket is moved into one of "My Queues".' =>
            'Skicka mig ett meddelande ifall ett ärende flyttas till en av "Mina köer"',
        'Send ticket move notifications' => 'Skicka notifieringar om flyttade ärenden',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' =>
            '',
        'Custom Queue' => 'Anpassad kö',
        'QueueView refresh time' => 'Automatisk uppdateringsintervall för kövy',
        'If enabled, the QueueView will automatically refresh after the specified time.' =>
            '',
        'Refresh QueueView after' => 'Uppdatera kövy efter',
        'Screen after new ticket' => 'Skärm efter inmatning av nytt ärende',
        'Show this screen after I created a new ticket' => 'Visa denna skärm efter att jag skapat ett nytt ärende',
        'Closed Tickets' => 'Låsta ärenden',
        'Show closed tickets.' => 'Visa låsta ärenden.',
        'Max. shown Tickets a page in QueueView.' => 'Max. antal ärenden per sida i kövy.',
        'Ticket Overview "Small" Limit' => '',
        'Ticket limit per page for Ticket Overview "Small"' => '',
        'Ticket Overview "Medium" Limit' => '',
        'Ticket limit per page for Ticket Overview "Medium"' => '',
        'Ticket Overview "Preview" Limit' => '',
        'Ticket limit per page for Ticket Overview "Preview"' => '',
        'Ticket watch notification' => '',
        'Send me the same notifications for my watched tickets that the ticket owners will get.' =>
            '',
        'Send ticket watch notifications' => '',
        'Out Of Office Time' => '',
        'New Ticket' => 'Nytt ärende',
        'Create new Ticket' => 'Skapa nytt ärende',
        'Customer called' => 'Kund ringde',
        'phone call' => 'telefonsamtal',
        'Phone Call Outbound' => 'Utgående telefonsamtal',
        'Phone Call Inbound' => 'Inkommande telefonsamtal',
        'Reminder Reached' => 'Påminnelse finns',
        'Reminder Tickets' => 'Påminnelse ärenden',
        'Escalated Tickets' => 'Eskalerade ärenden',
        'New Tickets' => 'Nya ärenden',
        'Open Tickets / Need to be answered' => 'Öppna ärenden / Måste besvaras',
        'All open tickets, these tickets have already been worked on, but need a response' =>
            '',
        'All new tickets, these tickets have not been worked on yet' => 'Alla nya ärenden, dessa ärenden har inte arbetats med än',
        'All escalated tickets' => 'Alla eskalerade ärenden',
        'All tickets with a reminder set where the reminder date has been reached' =>
            '',
        'Archived tickets' => 'Arkiverade ärenden',
        'Unarchived tickets' => 'Oarkiverade ärenden',
        'Ticket Information' => 'Ärende-information',
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
        'History::SystemRequest' => '',
        'History::ResponsibleUpdate' => '',
        'History::ArchiveFlagUpdate' => '',
        'History::TicketTitleUpdate' => '',

        # Template: AAAWeekDay
        'Sun' => 'sön',
        'Mon' => 'mån',
        'Tue' => 'tis',
        'Wed' => 'ons',
        'Thu' => 'tor',
        'Fri' => 'fre',
        'Sat' => 'lör',

        # Template: AdminACL
        'ACL Management' => 'Hantera behörigheter',
        'Filter for ACLs' => '',
        'Filter' => 'Filter',
        'ACL Name' => 'Namn på behörighet',
        'Actions' => 'Åtgärder',
        'Create New ACL' => '',
        'Deploy ACLs' => '',
        'Export ACLs' => 'Exportera behörigheter',
        'Configuration import' => 'Importera konfiguration',
        'Here you can upload a configuration file to import ACLs to your system. The file needs to be in .yml format as exported by the ACL editor module.' =>
            '',
        'This field is required.' => 'Detta fält är obligatoriskt',
        'Overwrite existing ACLs?' => 'Skirv över existerande behörigheter?',
        'Upload ACL configuration' => '',
        'Import ACL configuration(s)' => '',
        'To create a new ACL you can either import ACLs which were exported from another system or create a complete new one.' =>
            '',
        'Changes to the ACLs here only affect the behavior of the system, if you deploy the ACL data afterwards. By deploying the ACL data, the newly made changes will be written to the configuration.' =>
            '',
        'ACLs' => '',
        'Please note: This table represents the execution order of the ACLs. If you need to change the order in which ACLs are executed, please change the names of the affected ACLs.' =>
            '',
        'ACL name' => 'Namn på behörighet',
        'Validity' => 'Giltighet',
        'Copy' => 'Kopiera',
        'No data found.' => 'Ingen data hittades.',

        # Template: AdminACLEdit
        'Edit ACL %s' => 'Redigera behörighet',
        'Go to overview' => 'Gå till översikt',
        'Delete ACL' => 'Radera behörighet',
        'Delete Invalid ACL' => 'Radera ogiltig behörighet',
        'Match settings' => 'Matcha inställningar',
        'Set up matching criteria for this ACL. Use \'Properties\' to match the current screen or \'PropertiesDatabase\' to match attributes of the current ticket that are in the database.' =>
            '',
        'Change settings' => 'Ändra inställningar',
        'Set up what you want to change if the criteria match. Keep in mind that \'Possible\' is a white list, \'PossibleNot\' a black list.' =>
            '',
        'Check the official' => '',
        'documentation' => '',
        'Show or hide the content' => 'Visa eller dölj innehållet',
        'Edit ACL information' => 'Redigera behörighetsinformation',
        'Stop after match' => 'Avsluta efter träff',
        'Edit ACL structure' => 'Redigera behörighetsstruktur',
        'Save' => 'Spara',
        'or' => 'eller',
        'Save and finish' => '',
        'Do you really want to delete this ACL?' => '',
        'This item still contains sub items. Are you sure you want to remove this item including its sub items?' =>
            '',
        'An item with this name is already present.' => '',
        'Add all' => '',
        'There was an error reading the ACL data.' => '',

        # Template: AdminACLNew
        'Create a new ACL by submitting the form data. After creating the ACL, you will be able to add configuration items in edit mode.' =>
            '',

        # Template: AdminAttachment
        'Attachment Management' => 'Hantering av bifogade dokument',
        'Add attachment' => 'Bifoga dokument',
        'List' => 'Lista',
        'Download file' => 'Hämta fil',
        'Delete this attachment' => 'Radera bilaga',
        'Add Attachment' => 'Lägg till bilaga',
        'Edit Attachment' => 'Redigera bilaga',

        # Template: AdminAutoResponse
        'Auto Response Management' => 'Autosvar-hantering',
        'Add auto response' => 'Lägg till autosvar',
        'Add Auto Response' => 'Lägg till autosvar',
        'Edit Auto Response' => 'Redigera autosvar',
        'Response' => 'Svar',
        'Auto response from' => 'Autosvar från',
        'Reference' => 'Referens',
        'You can use the following tags' => '',
        'To get the first 20 character of the subject.' => 'För att få dom första 20 tecknen i ärenderaden',
        'To get the first 5 lines of the email.' => 'För att få dom första fem raderna i mejlet',
        'To get the realname of the sender (if given).' => 'För att få avsändarens riktiga namn (om angivet).',
        'To get the article attribute' => '',
        ' e. g.' => ' t.ex.',
        'Options of the current customer user data' => '',
        'Ticket owner options' => '',
        'Ticket responsible options' => '',
        'Options of the current user who requested this action' => '',
        'Options of the ticket data' => '',
        'Options of ticket dynamic fields internal key values' => '',
        'Options of ticket dynamic fields display values, useful for Dropdown and Multiselect fields' =>
            '',
        'Config options' => '',
        'Example response' => 'Exempelsvar',

        # Template: AdminCustomerCompany
        'Customer Management' => 'Hantera kunder',
        'Wildcards like \'*\' are allowed.' => '',
        'Add customer' => 'Lägg till kund',
        'Select' => 'Välj',
        'Please enter a search term to look for customers.' => '',
        'Add Customer' => 'Lägg till kund',
        'Edit Customer' => 'Redigera kund',

        # Template: AdminCustomerUser
        'Customer User Management' => 'Hantera kundanvändare',
        'Back to search results' => 'Tillbaka till sökresultat',
        'Add customer user' => 'Lägg till kundanvändare',
        'Hint' => 'Tips',
        'Customer user are needed to have a customer history and to login via customer panel.' =>
            '',
        'Last Login' => 'Senaste inloggning',
        'Login as' => 'Logga in som',
        'Switch to customer' => 'Växla till kund',
        'Add Customer User' => 'Lägg till kundanvändare',
        'Edit Customer User' => 'Redigera kundanvändare',
        'This field is required and needs to be a valid email address.' =>
            'Detta fält är obligatoriskt och måste vara en giltig e-postadress',
        'This email address is not allowed due to the system configuration.' =>
            'Denna e-postadress är ogiltig enligt systemetinställningarna.',
        'This email address failed MX check.' => 'Denna e-postadress klarade inte MX-kontroll.',
        'DNS problem, please check your configuration and the error log.' =>
            'DNS-problem. Se över inställningarna och felloggen.',
        'The syntax of this email address is incorrect.' => 'Formatet för denna e-postadress är felaktigt.',

        # Template: AdminCustomerUserGroup
        'Manage Customer-Group Relations' => 'Hantera kopplingar mellan kunder och grupper',
        'Notice' => 'OBS',
        'This feature is disabled!' => 'Denna funktion är avaktiverad!',
        'Just use this feature if you want to define group permissions for customers.' =>
            '',
        'Enable it here!' => 'Aktivera den här!',
        'Search for customers.' => 'Sök kunder.',
        'Edit Customer Default Groups' => 'Redigera grupper för kunder',
        'These groups are automatically assigned to all customers.' => 'Dessa grupper kopplas automatiskt till alla kunder.',
        'You can manage these groups via the configuration setting "CustomerGroupAlwaysGroups".' =>
            'Du kan hantera dessa grupper via "CustomerGroupAlwaysGroups".',
        'Filter for Groups' => 'Filtrera grupper',
        'Select the customer:group permissions.' => '',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the customer).' =>
            '',
        'Search Results' => 'Sökresultat',
        'Customers' => 'Kunder',
        'No matches found.' => 'Inga träffar hittades.',
        'Change Group Relations for Customer' => '',
        'Change Customer Relations for Group' => '',
        'Toggle %s Permission for all' => '',
        'Toggle %s permission for %s' => '',
        'Customer Default Groups:' => '',
        'No changes can be made to these groups.' => '',
        'ro' => 'läs',
        'Read only access to the ticket in this group/queue.' => 'Endast läsrättighet till ärenden i denna grupp/kö.',
        'rw' => 'skriv',
        'Full read and write access to the tickets in this group/queue.' =>
            'Fulla läs- och skrivrättigheter till ärenden i denna grupp/kö.',

        # Template: AdminCustomerUserService
        'Manage Customer-Services Relations' => '',
        'Edit default services' => '',
        'Filter for Services' => '',
        'Allocate Services to Customer' => '',
        'Allocate Customers to Service' => '',
        'Toggle active state for all' => '',
        'Active' => 'Aktivera',
        'Toggle active state for %s' => '',

        # Template: AdminDynamicField
        'Dynamic Fields Management' => 'Hantera dynamiska fält',
        'Add new field for object' => 'Lägg till fält för objekt',
        'To add a new field, select the field type form one of the object\'s list, the object defines the boundary of the field and it can\'t be changed after the field creation.' =>
            '',
        'Dynamic Fields List' => 'Lista över dynamiska fält.',
        'Dynamic fields per page' => 'Dynamiska fält per sida',
        'Label' => 'Etikett',
        'Order' => 'Sortering',
        'Object' => 'Objekt',
        'Delete this field' => 'Radera detta fält',
        'Do you really want to delete this dynamic field? ALL associated data will be LOST!' =>
            'Vill du verkligen radera detta dynamiska fält? Alla data inmatade via fältet kommer att försvinna!',
        'Delete field' => 'Radera fält',

        # Template: AdminDynamicFieldCheckbox
        'Field' => 'Fält',
        'Go back to overview' => 'Tillbaka till översikt',
        'General' => '',
        'This field is required, and the value should be alphabetic and numeric characters only.' =>
            '',
        'Must be unique and only accept alphabetic and numeric characters.' =>
            '',
        'Changing this value will require manual changes in the system.' =>
            '',
        'This is the name to be shown on the screens where the field is active.' =>
            '',
        'Field order' => 'Fältordning',
        'This field is required and must be numeric.' => 'Detta fält är obilgatoriskt och måste innehålla siffror.',
        'This is the order in which this field will be shown on the screens where is active.' =>
            '',
        'Field type' => 'Fälttyp',
        'Object type' => 'Objekttyp',
        'Internal field' => '',
        'This field is protected and can\'t be deleted.' => '',
        'Field Settings' => '',
        'Default value' => '',
        'This is the default value for this field.' => '',

        # Template: AdminDynamicFieldDateTime
        'Default date difference' => '',
        'This field must be numeric.' => '',
        'The difference from NOW (in seconds) to calculate the field default value (e.g. 3600 or -60).' =>
            '',
        'Define years period' => '',
        'Activate this feature to define a fixed range of years (in the future and in the past) to be displayed on the year part of the field.' =>
            '',
        'Years in the past' => '',
        'Years in the past to display (default: 5 years).' => '',
        'Years in the future' => '',
        'Years in the future to display (default: 5 years).' => '',
        'Show link' => '',
        'Here you can specify an optional HTTP link for the field value in Overviews and Zoom screens.' =>
            '',

        # Template: AdminDynamicFieldDropdown
        'Possible values' => '',
        'Key' => 'Nyckel',
        'Value' => 'Innehåll',
        'Remove value' => '',
        'Add value' => '',
        'Add Value' => '',
        'Add empty value' => '',
        'Activate this option to create an empty selectable value.' => '',
        'Tree View' => '',
        'Activate this option to display values as a tree.' => '',
        'Translatable values' => '',
        'If you activate this option the values will be translated to the user defined language.' =>
            '',
        'Note' => 'Notering',
        'You need to add the translations manually into the language translation files.' =>
            '',

        # Template: AdminDynamicFieldMultiselect

        # Template: AdminDynamicFieldText
        'Number of rows' => '',
        'Specify the height (in lines) for this field in the edit mode.' =>
            '',
        'Number of cols' => '',
        'Specify the width (in characters) for this field in the edit mode.' =>
            '',

        # Template: AdminEmail
        'Admin Notification' => 'Admin-meddelanden',
        'With this module, administrators can send messages to agents, group or role members.' =>
            'Med denna modul kan administratörer skicka meddelanden till handläggare och medlemmar i grupper och roller.',
        'Create Administrative Message' => '',
        'Your message was sent to' => '',
        'Send message to users' => '',
        'Send message to group members' => '',
        'Group members need to have permission' => '',
        'Send message to role members' => '',
        'Also send to customers in groups' => '',
        'Body' => 'Meddelandetext',
        'Send' => 'Skicka',

        # Template: AdminGenericAgent
        'Generic Agent' => '',
        'Add job' => '',
        'Last run' => 'Senaste körning',
        'Run Now!' => 'Kör Nu!',
        'Delete this task' => '',
        'Run this task' => '',
        'Job Settings' => '',
        'Job name' => '',
        'The name you entered already exists.' => '',
        'Toggle this widget' => '',
        'Automatic execution (multiple tickets)' => '',
        'Execution Schedule' => '',
        'Schedule minutes' => '',
        'Schedule hours' => '',
        'Schedule days' => '',
        'Currently this generic agent job will not run automatically.' =>
            'För närvarande kommer detta jobb inte köras automatiskt.',
        'To enable automatic execution select at least one value from minutes, hours and days!' =>
            'För att aktivera automatisk körning måste du minst välja ett värde från minuter, timmar och dagar!',
        'Event based execution (single ticket)' => '',
        'Event Triggers' => '',
        'List of all configured events' => '',
        'Delete this event' => '',
        'Additionally or alternatively to a periodic execution, you can define ticket events that will trigger this job.' =>
            '',
        'If a ticket event is fired, the ticket filter will be applied to check if the ticket matches. Only then the job is run on that ticket.' =>
            '',
        'Do you really want to delete this event trigger?' => '',
        'Add Event Trigger' => '',
        'To add a new event select the event object and event name and click on the "+" button' =>
            '',
        'Duplicate event.' => '',
        'This event is already attached to the job, Please use a different one.' =>
            '',
        'Delete this Event Trigger' => '',
        'Ticket Filter' => '',
        '(e. g. 10*5155 or 105658*)' => 't.ex. 10*5144 eller 105658*',
        '(e. g. 234321)' => 't.ex. 163736',
        'Customer login' => '',
        '(e. g. U5150)' => 't.ex. INGJAN',
        'Fulltext-search in article (e. g. "Mar*in" or "Baue*").' => '',
        'Agent' => 'Agent',
        'Ticket lock' => '',
        'Create times' => '',
        'No create time settings.' => 'Inga Skapat-Tider.',
        'Ticket created' => 'Ärende skapat',
        'Ticket created between' => 'Ärendet skapat mellan',
        'Change times' => '',
        'No change time settings.' => 'Inga Ändringstider',
        'Ticket changed' => 'Ärende ändrat',
        'Ticket changed between' => 'Ärende ändrat mellan',
        'Close times' => '',
        'No close time settings.' => 'Inga Stängt-Tider',
        'Ticket closed' => 'Ärende stängt',
        'Ticket closed between' => 'Ärende stängt mellan',
        'Pending times' => '',
        'No pending time settings.' => 'Inga Avvaktar-Tider',
        'Ticket pending time reached' => 'Ärende väntetid nådd',
        'Ticket pending time reached between' => 'Ärende väntetid nådd mellan',
        'Escalation times' => '',
        'No escalation time settings.' => 'Inga Eskalerings-Tider',
        'Ticket escalation time reached' => 'Ärende Eskaleringstid nådd',
        'Ticket escalation time reached between' => 'Ärende Eskaleringstid nådd mellan',
        'Escalation - first response time' => '',
        'Ticket first response time reached' => 'Ärende första responstid nådd',
        'Ticket first response time reached between' => 'Ärende första responstid nådd mellan',
        'Escalation - update time' => '',
        'Ticket update time reached' => 'Ärende uppdateringstid nådd',
        'Ticket update time reached between' => 'Ärende uppdaterings tid nådd mellan',
        'Escalation - solution time' => '',
        'Ticket solution time reached' => 'Ärende lösningstid nådd',
        'Ticket solution time reached between' => 'Ärende lösningstid nådd mellan',
        'Archive search option' => '',
        'Ticket Action' => '',
        'Set new service' => '',
        'Set new Service Level Agreement' => 'Ang nytt servicenivåavtal',
        'Set new priority' => 'Ange ny prioritet',
        'Set new queue' => 'Ange ny kö',
        'Set new state' => '',
        'Pending date' => 'Väntande datum',
        'Set new agent' => 'Ange ny handläggare',
        'new owner' => '',
        'new responsible' => '',
        'Set new ticket lock' => '',
        'New customer' => 'Ny kund',
        'New customer ID' => '',
        'New title' => '',
        'New type' => '',
        'New Dynamic Field Values' => '',
        'Archive selected tickets' => '',
        'Add Note' => 'Lägg till anteckning',
        'Time units' => 'Tidsenheter',
        '(work units)' => '',
        'Ticket Commands' => '',
        'Send agent/customer notifications on changes' => 'Meddela handläggare/kund när ändringar sker',
        'CMD' => 'CMD',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' =>
            'Detta kommando kommer utföras. ARG[0] blir dess ärendenummer. ARG[1] dess ärende-id.',
        'Delete tickets' => 'Radera ärenden',
        'Warning: All affected tickets will be removed from the database and cannot be restored!' =>
            '',
        'Execute Custom Module' => '',
        'Param %s key' => '',
        'Param %s value' => '',
        'Save Changes' => '',
        'Results' => 'Resultat',
        '%s Tickets affected! What do you want to do?' => '',
        'Warning: You used the DELETE option. All deleted tickets will be lost!' =>
            '',
        'Edit job' => '',
        'Run job' => '',
        'Affected Tickets' => '',

        # Template: AdminGenericInterfaceDebugger
        'GenericInterface Debugger for Web Service %s' => '',
        'Web Services' => '',
        'Debugger' => '',
        'Go back to web service' => '',
        'Clear' => '',
        'Do you really want to clear the debug log of this web service?' =>
            '',
        'Request List' => '',
        'Time' => 'Tid',
        'Remote IP' => '',
        'Loading' => '',
        'Select a single request to see its details.' => '',
        'Filter by type' => '',
        'Filter from' => '',
        'Filter to' => '',
        'Filter by remote IP' => '',
        'Refresh' => 'Uppdatera',
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
        'Configure' => '',
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
        'Save and continue' => '',
        'Delete this Invoker' => '',

        # Template: AdminGenericInterfaceMappingSimple
        'GenericInterface Mapping Simple for Web Service %s' => '',
        'Go back to' => 'Tillbaka till',
        'Mapping Simple' => '',
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
        'Properties' => '',
        'Endpoint' => '',
        'URI to indicate a specific location for accessing a service.' =>
            '',
        'e.g. http://local.otrs.com:8000/Webservice/Example' => '',
        'Namespace' => '',
        'URI to give SOAP methods a context, reducing ambiguities.' => '',
        'e.g urn:otrs-com:soap:functions or http://www.otrs.com/GenericInterface/actions' =>
            '',
        'Maximum message length' => '',
        'This field should be an integer number.' => '',
        'Here you can specify the maximum size (in bytes) of SOAP messages that OTRS will process.' =>
            '',
        'Encoding' => '',
        'The character encoding for the SOAP message contents.' => '',
        'e.g utf-8, latin1, iso-8859-1, cp1250, Etc.' => '',
        'SOAPAction' => '',
        'Set to "Yes" to send a filled SOAPAction header.' => '',
        'Set to "No" to send an empty SOAPAction header.' => '',
        'SOAPAction separator' => '',
        'Character to use as separator between name space and SOAP method.' =>
            '',
        'Usually .Net web services uses a "/" as separator.' => '',
        'Authentication' => '',
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
        'Proxy Server' => '',
        'URI of a proxy server to be used (if needed).' => '',
        'e.g. http://proxy_hostname:8080' => '',
        'Proxy User' => '',
        'The user name to be used to access the proxy server.' => '',
        'Proxy Password' => '',
        'The password for the proxy user.' => '',

        # Template: AdminGenericInterfaceWebservice
        'GenericInterface Web Service Management' => '',
        'Add web service' => '',
        'Clone web service' => '',
        'The name must be unique.' => '',
        'Clone' => '',
        'Export web service' => '',
        'Import web service' => '',
        'Configuration File' => '',
        'The file must be a valid web service configuration YAML file.' =>
            '',
        'Import' => '',
        'Configuration history' => '',
        'Delete web service' => '',
        'Do you really want to delete this web service?' => '',
        'After you save the configuration you will be redirected again to the edit screen.' =>
            '',
        'If you want to return to overview please click the "Go to overview" button.' =>
            '',
        'Web Service List' => '',
        'Remote system' => '',
        'Provider transport' => '',
        'Requester transport' => '',
        'Details' => '',
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
        'Delete webservice' => '',
        'Delete operation' => '',
        'Delete invoker' => '',
        'Clone webservice' => '',
        'Import webservice' => '',

        # Template: AdminGenericInterfaceWebserviceHistory
        'GenericInterface Configuration History for Web Service %s' => '',
        'Go back to Web Service' => '',
        'Here you can view older versions of the current web service\'s configuration, export or even restore them.' =>
            '',
        'Configuration History List' => '',
        'Version' => 'Version',
        'Create time' => '',
        'Select a single configuration version to see its details.' => '',
        'Export web service configuration' => '',
        'Restore web service configuration' => '',
        'Do you really want to restore this version of the web service configuration?' =>
            '',
        'Your current web service configuration will be overwritten.' => '',
        'Show or hide the content.' => 'Visa eller dölj innehållet',
        'Restore' => '',

        # Template: AdminGroup
        'WARNING: When you change the name of the group \'admin\', before making the appropriate changes in the SysConfig, you will be locked out of the administrations panel! If this happens, please rename the group back to admin per SQL statement.' =>
            'VARNING: När du ändrar namnet på gruppen \'admin\', innan du gör lämpliga ändringar i SysConfig, kommer du låsas ut ur administrationspanelen! Om detta inträffar, döp om grubben tillbaka till admin via SQL. ',
        'Group Management' => 'grupphantering',
        'Add group' => '',
        'The admin group is to get in the admin area and the stats group to get stats area.' =>
            '\'admin\'-gruppen ger tillgång till Admin-arean, \'stats\'-gruppen till Statistik-arean.',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...). ' =>
            '',
        'It\'s useful for ASP solutions. ' => '',
        'Add Group' => 'Lägg till Grupp',
        'Edit Group' => '',

        # Template: AdminLog
        'System Log' => 'Systemlogg',
        'Here you will find log information about your system.' => '',
        'Hide this message' => '',
        'Recent Log Entries' => '',

        # Template: AdminMailAccount
        'Mail Account Management' => 'E-postkontohantering',
        'Add mail account' => 'Lägg till e-postkonto',
        'All incoming emails with one account will be dispatched in the selected queue!' =>
            'Inkommande email från POP3-konton sorteras till vald kö!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' =>
            'om ditt konto är betrott, kommer befinglig X-OTRS-header användas vid ankomst (För prioritering, ...) PostMasterfilter kommer användas ändå.',
        'Host' => 'Värd',
        'Delete account' => 'Radera konto',
        'Fetch mail' => 'Hämta e-post',
        'Add Mail Account' => 'Lägg till e-postkonto',
        'Example: mail.example.com' => 'T.ex. mail.example.com',
        'IMAP Folder' => 'IMAP-katalog',
        'Only modify this if you need to fetch mail from a different folder than INBOX.' =>
            'Ändra bara om du vill hämta e-post från en annan katalog än inkorgen.',
        'Trusted' => 'Betrodd',
        'Dispatching' => 'Fördelning',
        'Edit Mail Account' => 'Redigera e-postkonto',

        # Template: AdminNavigationBar
        'Admin' => 'Administration',
        'Agent Management' => 'Handläggare',
        'Queue Settings' => 'Köer',
        'Ticket Settings' => 'Ärenden',
        'System Administration' => 'Systemadministration',

        # Template: AdminNotification
        'Notification Management' => 'Meddelandehantering',
        'Select a different language' => 'Välj ett annat språk',
        'Filter for Notification' => 'Filter för notifiering',
        'Notifications are sent to an agent or a customer.' => 'Notifieringar skickas till handläggare eller kunder.',
        'Notification' => 'Notifiering',
        'Edit Notification' => 'Redigera notifiering',
        'e. g.' => 't.ex.',
        'Options of the current customer data' => '',

        # Template: AdminNotificationEvent
        'Add notification' => 'Lägg till notifiering',
        'Delete this notification' => 'Radera denna notifiering',
        'Add Notification' => 'Lägg till Meddelande',
        'Article Filter' => 'Artikelfilter',
        'Only for ArticleCreate and ArticleSend event' => 'Enbart för ArticleCreate och ArticleSend event',
        'Article type' => 'Artikeltyp',
        'If ArticleCreate or ArticleSend is used as a trigger event, you need to specify an article filter as well. Please select at least one of the article filter fields.' =>
            '',
        'Article sender type' => '',
        'Subject match' => 'Ärenderad matchar',
        'Body match' => 'Meddelandetext matchar',
        'Include attachments to notification' => '',
        'Recipient' => 'Mottagare',
        'Recipient groups' => 'Mottagare (grupper)',
        'Recipient agents' => 'Mottagare (handläggare)',
        'Recipient roles' => 'Mottagere (roller)',
        'Recipient email addresses' => 'Mottagare (e-postadresser)',
        'Notification article type' => '',
        'Only for notifications to specified email addresses' => '',
        'To get the first 20 character of the subject (of the latest agent article).' =>
            'För att få de första 20 tecknen i ärenderaden (på senaste handläggarartikeln).',
        'To get the first 5 lines of the body (of the latest agent article).' =>
            'För att få de första fem raderna i kroppen (på senaste handläggarartikeln).',
        'To get the first 20 character of the subject (of the latest customer article).' =>
            'För att då de första 20 tecknen i ärenderaden (på senaste kundartikeln).',
        'To get the first 5 lines of the body (of the latest customer article).' =>
            'För att få de fem första raderna i kroppen (på senaste kundartikeln).',

        # Template: AdminPGP
        'PGP Management' => 'PGP-hantering',
        'Use this feature if you want to work with PGP keys.' => 'Använd denna funktion om du vill använda PGP-nycklar.',
        'Add PGP key' => 'Lägg till PGP-nyckel',
        'In this way you can directly edit the keyring configured in SysConfig.' =>
            'På det här sättet kan du direkt redigera nyckelringen som är inställd i SysConfig.',
        'Introduction to PGP' => 'Introduktion till PGP',
        'Result' => 'Resultat',
        'Identifier' => 'Identifierare',
        'Bit' => 'Bit',
        'Fingerprint' => 'Fingeravtryck',
        'Expires' => 'Upphör',
        'Delete this key' => 'Radera denna nyckel',
        'Add PGP Key' => 'Lägg till PGP-nyckel',
        'PGP key' => 'PGP-nyckel',

        # Template: AdminPackageManager
        'Package Manager' => 'Pakethanterare',
        'Uninstall package' => 'Avinstallera paket',
        'Do you really want to uninstall this package?' => 'Vill du verkligen avinstallera detta paket?',
        'Reinstall package' => 'Installera om paket',
        'Do you really want to reinstall this package? Any manual changes will be lost.' =>
            '',
        'Continue' => 'Fortsätt',
        'Please make sure your database accepts packages over %s MB in size (it currently only accepts packages up to %s MB). Please adapt the max_allowed_packet setting of your database in order to avoid errors.' =>
            '',
        'Install' => 'Installera',
        'Install Package' => 'Installera paket',
        'Update repository information' => 'Uppdatera information om repo',
        'Did not find a required feature? OTRS Group provides their service contract customers with exclusive Add-Ons:' =>
            '',
        'Online Repository' => 'Online-repo',
        'Vendor' => 'Leverantör',
        'Module documentation' => 'Moduldokumentation',
        'Upgrade' => 'Uppgradera',
        'Local Repository' => 'Local Repository',
        'This package is verified by OTRSverify (tm)' => '',
        'Uninstall' => 'Avinstallera',
        'Reinstall' => 'Ominstallera',
        'Feature Add-Ons' => '',
        'Download package' => 'Ladda ner paket',
        'Rebuild package' => 'Bygg om paket',
        'Metadata' => 'Metadata',
        'Change Log' => 'Ändringslogg',
        'Date' => 'Datum',
        'List of Files' => 'Fillista',
        'Permission' => 'Rättighet',
        'Download' => 'Nerladdning',
        'Download file from package!' => 'Ladda ner fil från paket!',
        'Required' => 'Krävs',
        'PrimaryKey' => 'Primärnyckel',
        'AutoIncrement' => 'AutoInkrement',
        'SQL' => 'SQL',
        'File differences for file %s' => '',

        # Template: AdminPerformanceLog
        'Performance Log' => 'Prestandalogg',
        'This feature is enabled!' => 'Denna funktion är aktiverad!',
        'Just use this feature if you want to log each request.' => 'Använd endast denna funktion om du vill logga varje request.',
        'Activating this feature might affect your system performance!' =>
            'Att aktivera denna funktion kan påverka din systemprestanda!',
        'Disable it here!' => 'Avaktivera det här!',
        'Logfile too large!' => 'Loggfilen är för stor!',
        'The logfile is too large, you need to reset it' => '',
        'Overview' => 'Översikt',
        'Range' => 'Intervall',
        'last' => 'sista',
        'Interface' => 'Interface',
        'Requests' => 'Requests',
        'Min Response' => 'Min respons',
        'Max Response' => 'Max respons',
        'Average Response' => 'Medel respons',
        'Period' => 'Period',
        'Min' => 'Min',
        'Max' => 'Max',
        'Average' => 'Medel',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => 'PostMaster Filter',
        'Add filter' => 'Lägg till filter',
        'To dispatch or filter incoming emails based on email headers. Matching using Regular Expressions is also possible.' =>
            '',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' =>
            'Om du bara vill hantera e-postadressen, använd EMAILADDRESS:info@example.com i Från, Till eller CC.',
        'If you use Regular Expressions, you also can use the matched value in () as [***] in the \'Set\' action.' =>
            '',
        'Delete this filter' => '',
        'Add PostMaster Filter' => '',
        'Edit PostMaster Filter' => '',
        'The name is required.' => '',
        'Filter Condition' => '',
        'AND Condition' => '',
        'Negate' => '',
        'The field needs to be a valid regular expression or a literal word.' =>
            '',
        'Set Email Headers' => '',
        'The field needs to be a literal word.' => '',

        # Template: AdminPriority
        'Priority Management' => 'Hantera prioriteter',
        'Add priority' => 'Lägg till prioritet',
        'Add Priority' => 'Lägg till Prioritet',
        'Edit Priority' => 'Redigera prioritet',

        # Template: AdminProcessManagement
        'Process Management' => '',
        'Filter for Processes' => '',
        'Process Name' => '',
        'Create New Process' => '',
        'Synchronize All Processes' => '',
        'Here you can upload a configuration file to import a process to your system. The file needs to be in .yml format as exported by process management module.' =>
            '',
        'Upload process configuration' => '',
        'Import process configuration' => '',
        'To create a new Process you can either import a Process that was exported from another system or create a complete new one.' =>
            '',
        'Changes to the Processes here only affect the behavior of the system, if you synchronize the Process data. By synchronizing the Processes, the newly made changes will be written to the Configuration.' =>
            '',
        'Process name' => 'Processnamn',
        'Print' => 'Skriv ut',
        'Export Process Configuration' => 'Exportera processkonfiguration',
        'Copy Process' => 'Kopiera process',

        # Template: AdminProcessManagementActivity
        'Cancel & close window' => 'Ångra och stäng fönster',
        'Go Back' => 'Tillbaka',
        'Please note, that changing this activity will affect the following processes' =>
            '',
        'Activity' => 'Aktivitet',
        'Activity Name' => 'Aktivitetsnamn',
        'Activity Dialogs' => 'Aktivitetsdialoger',
        'You can assign Activity Dialogs to this Activity by dragging the elements with the mouse from the left list to the right list.' =>
            'Du kan koppla aktivitetsdialoger till denna aktivitet genom att flytta dem från den vänstra listan till den högra',
        'Ordering the elements within the list is also possible by drag \'n\' drop.' =>
            '',
        'Filter available Activity Dialogs' => '',
        'Available Activity Dialogs' => 'Tillgängliga aktivitetsdialoger',
        'Create New Activity Dialog' => 'Skapa ny ativitetsdialog',
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
        'Available in' => '',
        'Description (short)' => '',
        'Description (long)' => '',
        'The selected permission does not exist.' => '',
        'Required Lock' => '',
        'The selected required lock does not exist.' => '',
        'Submit Advice Text' => '',
        'Submit Button Text' => '',
        'Fields' => '',
        'You can assign Fields to this Activity Dialog by dragging the elements with the mouse from the left list to the right list.' =>
            '',
        'Filter available fields' => '',
        'Available Fields' => '',
        'Assigned Fields' => '',
        'Edit Details for Field' => '',
        'ArticleType' => '',
        'Display' => '',
        'Edit Field Details' => '',
        'Customer interface does not support internal article types.' => '',

        # Template: AdminProcessManagementPath
        'Path' => '',
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
        'Activities' => '',
        'Filter Activities...' => '',
        'Create New Activity' => '',
        'Filter Activity Dialogs...' => '',
        'Transitions' => '',
        'Filter Transitions...' => '',
        'Create New Transition' => '',
        'Filter Transition Actions...' => '',

        # Template: AdminProcessManagementProcessEdit
        'Edit Process' => '',
        'Print process information' => '',
        'Delete Process' => '',
        'Delete Inactive Process' => '',
        'Available Process Elements' => '',
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
        'Edit Process Information' => '',
        'The selected state does not exist.' => '',
        'Add and Edit Activities, Activity Dialogs and Transitions' => '',
        'Show EntityIDs' => '',
        'Extend the width of the Canvas' => '',
        'Extend the height of the Canvas' => '',
        'Remove the Activity from this Process' => '',
        'Edit this Activity' => '',
        'Save settings' => '',
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
        'Start Activity' => '',
        'Contains %s dialog(s)' => '',
        'Assigned dialogs' => '',
        'Activities are not being used in this process.' => '',
        'Assigned fields' => '',
        'Activity dialogs are not being used in this process.' => '',
        'Condition linking' => '',
        'Conditions' => '',
        'Condition' => '',
        'Transitions are not being used in this process.' => '',
        'Module name' => '',
        'Configuration' => '',
        'Transition actions are not being used in this process.' => '',

        # Template: AdminProcessManagementTransition
        'Please note that changing this transition will affect the following processes' =>
            '',
        'Transition' => '',
        'Transition Name' => '',
        'Type of Linking between Conditions' => '',
        'Remove this Condition' => '',
        'Type of Linking' => '',
        'Remove this Field' => '',
        'Add a new Field' => '',
        'Add New Condition' => '',

        # Template: AdminProcessManagementTransitionAction
        'Please note that changing this transition action will affect the following processes' =>
            '',
        'Transition Action' => '',
        'Transition Action Name' => '',
        'Transition Action Module' => '',
        'Config Parameters' => '',
        'Remove this Parameter' => '',
        'Add a new Parameter' => '',

        # Template: AdminQueue
        'Manage Queues' => '',
        'Add queue' => '',
        'Add Queue' => '',
        'Edit Queue' => '',
        'Sub-queue of' => '',
        'Unlock timeout' => 'Tidsintervall för borttagning av lås',
        '0 = no unlock' => '0 = ingen upplåsning',
        'Only business hours are counted.' => 'Endast kontorstid räknas.',
        'If an agent locks a ticket and does not close it before the unlock timeout has passed, the ticket will unlock and will become available for other agents.' =>
            '',
        'Notify by' => 'Meddela via',
        '0 = no escalation' => '0 = ingen upptrappning',
        'If there is not added a customer contact, either email-external or phone, to a new ticket before the time defined here expires, the ticket is escalated.' =>
            '',
        'If there is an article added, such as a follow-up via email or the customer portal, the escalation update time is reset. If there is no customer contact, either email-external or phone, added to a ticket before the time defined here expires, the ticket is escalated.' =>
            '',
        'If the ticket is not set to closed before the time defined here expires, the ticket is escalated.' =>
            '',
        'Follow up Option' => 'Korrespondens på låst ärende',
        'Specifies if follow up to closed tickets would re-open the ticket, be rejected or lead to a new ticket.' =>
            '',
        'Ticket lock after a follow up' => 'Ärendet låses efter uppföljningsmail',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked to the old owner.' =>
            '',
        'System address' => '',
        'Will be the sender address of this queue for email answers.' => 'Avsändaradress för email i denna Kö.',
        'Default sign key' => '',
        'The salutation for email answers.' => 'Hälsningsfras för email-svar.',
        'The signature for email answers.' => 'Signatur för email-svar.',

        # Template: AdminQueueAutoResponse
        'Manage Queue-Auto Response Relations' => '',
        'Filter for Queues' => '',
        'Filter for Auto Responses' => '',
        'Auto Responses' => 'AutoSvar',
        'Change Auto Response Relations for Queue' => '',

        # Template: AdminQueueTemplates
        'Manage Template-Queue Relations' => '',
        'Filter for Templates' => '',
        'Templates' => '',
        'Change Queue Relations for Template' => '',
        'Change Template Relations for Queue' => '',

        # Template: AdminRegistration
        'System Registration Management' => '',
        'Edit details' => '',
        'Overview of registered systems' => '',
        'Deregister system' => '',
        'System Registration' => '',
        'This system is registered with OTRS Group.' => '',
        'System type' => '',
        'Unique ID' => '',
        'Last communication with registration server' => '',
        'Send support data' => '',
        'OTRS-ID Login' => '',
        'System registration is a service of OTRS Group, which provides a lot of advantages!' =>
            '',
        'Read more' => '',
        'You need to log in with your OTRS-ID to register your system.' =>
            '',
        'Your OTRS-ID is the email address you used to sign up on the OTRS.com webpage.' =>
            '',
        'Data Protection' => '',
        'What are the advantages of system registration?' => '',
        'You will receive updates about relevant security releases.' => '',
        'With your system registration we can improve our services for you, because we have all relevant information available.' =>
            '',
        'This is only the beginning!' => '',
        'We will inform you about our new services and offerings soon.' =>
            '',
        'Can I use OTRS without being registered?' => '',
        'System registration is optional.' => '',
        'You can download and use OTRS without being registered.' => '',
        'Is it possible to deregister?' => '',
        'You can deregister at any time.' => '',
        'Which data is transfered when registering?' => '',
        'A registered system sends the following data to OTRS Group:' => '',
        'Fully Qualified Domain Name (FQDN), OTRS version, Database, Operating System and Perl version.' =>
            '',
        'Why do I have to provide a description for my system?' => '',
        'The description of the system is optional.' => '',
        'The description and system type you specify help you to identify and manage the details of your registered systems.' =>
            '',
        'How often does my OTRS system send updates?' => '',
        'Your system will send updates to the registration server at regular intervals.' =>
            '',
        'Typically this would be around once every three days.' => '',
        'In case you would have further questions we would be glad to answer them.' =>
            '',
        'Please visit our' => '',
        'portal' => '',
        'and file a request.' => '',
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
        'OTRS-ID' => '',
        'You don\'t have an OTRS-ID yet?' => '',
        'Sign up now' => '',
        'Forgot your password?' => '',
        'Retrieve a new one' => '',
        'This data will be frequently transferred to OTRS Group when you register this system.' =>
            '',
        'Attribute' => '',
        'FQDN' => '',
        'Optional description of this system.' => '',
        'This will allow the system to send additional support data information to OTRS Group.' =>
            '',
        'Service Center' => '',
        'Support Data Management' => '',
        'Register' => '',
        'Deregister System' => '',
        'Continuing with this step will deregister the system from OTRS Group.' =>
            '',
        'Deregister' => '',
        'You can modify registration settings here.' => '',

        # Template: AdminRole
        'Role Management' => 'Roller',
        'Add role' => '',
        'Create a role and put groups in it. Then add the role to the users.' =>
            'Skapa en roll och lägg grupper i den. Lägg sedan till rollen till användare.',
        'There are no roles defined. Please use the \'Add\' button to create a new role.' =>
            '',
        'Add Role' => 'Lägg till Roll',
        'Edit Role' => '',

        # Template: AdminRoleGroup
        'Manage Role-Group Relations' => '',
        'Filter for Roles' => '',
        'Select the role:group permissions.' => '',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the role).' =>
            '',
        'Change Role Relations for Group' => '',
        'Change Group Relations for Role' => '',
        'Toggle %s permission for all' => '',
        'move_into' => 'Flytta till',
        'Permissions to move tickets into this group/queue.' => 'Rätt att flytta ärenden i denna grupp/Kö.',
        'create' => 'Skapa',
        'Permissions to create tickets in this group/queue.' => 'Rätt att skapa ärenden i denna grupp/Kö.',
        'priority' => 'prioritet',
        'Permissions to change the ticket priority in this group/queue.' =>
            'Rätt att ändra ärendeprioritet i denna grupp/Kö.',

        # Template: AdminRoleUser
        'Manage Agent-Role Relations' => '',
        'Filter for Agents' => '',
        'Manage Role-Agent Relations' => '',
        'Change Role Relations for Agent' => '',
        'Change Agent Relations for Role' => '',

        # Template: AdminSLA
        'SLA Management' => 'SLA',
        'Add SLA' => 'Lägg till SLA',
        'Edit SLA' => 'Redigera SLA',
        'Please write only numbers!' => 'Skriv bara siffror!',

        # Template: AdminSMIME
        'S/MIME Management' => 'S/MIME',
        'Add certificate' => 'Lägg till certifikat',
        'Add private key' => 'Lägg till privat nyckel',
        'Filter for certificates' => 'Filter för certifikat',
        'Filter for SMIME certs' => '',
        'To show certificate details click on a certificate icon.' => '',
        'To manage private certificate relations click on a private key icon.' =>
            '',
        'Here you can add relations to your private certificate, these will be embedded to the SMIME signature every time you use this certificate to sign an email.' =>
            '',
        'See also' => 'Se också',
        'In this way you can directly edit the certification and private keys in file system.' =>
            'På det här sättet kan du redigera certifikat och nycklar på filsystemet.',
        'Hash' => 'Hash',
        'Handle related certificates' => '',
        'Read certificate' => '',
        'Delete this certificate' => '',
        'Add Certificate' => 'Lägg till Certifikat',
        'Add Private Key' => 'Lägg till Privat Nyckel',
        'Secret' => 'Hemlighet',
        'Related Certificates for' => '',
        'Delete this relation' => '',
        'Available Certificates' => '',
        'Relate this certificate' => '',

        # Template: AdminSMIMECertRead
        'SMIME Certificate' => '',
        'Close window' => 'Stäng fönstret',

        # Template: AdminSalutation
        'Salutation Management' => 'Hantering av Hälsningsfraser',
        'Add salutation' => '',
        'Add Salutation' => 'Lägg till Hälsningsfras',
        'Edit Salutation' => '',
        'Example salutation' => '',

        # Template: AdminScheduler
        'This option will force Scheduler to start even if the process is still registered in the database' =>
            '',
        'Start scheduler' => '',
        'Scheduler could not be started. Check if scheduler is not running and try it again with Force Start option' =>
            '',

        # Template: AdminSecureMode
        'Secure mode needs to be enabled!' => '',
        'Secure mode will (normally) be set after the initial installation is completed.' =>
            'Säkert läge använda (normalt) efter iledande installation är slutförd.',
        'If secure mode is not activated, activate it via SysConfig because your application is already running.' =>
            '',

        # Template: AdminSelectBox
        'SQL Box' => 'SQL Box',
        'Here you can enter SQL to send it directly to the application database.' =>
            '',
        'The syntax of your SQL query has a mistake. Please check it.' =>
            '',
        'There is at least one parameter missing for the binding. Please check it.' =>
            '',
        'Result format' => '',
        'Run Query' => '',

        # Template: AdminService
        'Service Management' => 'Tjänster',
        'Add service' => '',
        'Add Service' => 'Lägg till Tjänst',
        'Edit Service' => '',
        'Sub-service of' => '',

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
        'Generate Support Bundle' => 'Skapa supportpaket',
        'Generating...' => 'Skapar...',
        'It was not possible to generate the Support Bundle.' => 'Det gick inte att skapa supportpaketet.',
        'Generate Result' => 'Skapa resultat',
        'Support Bundle' => 'Supportpaket',
        'The mail could not be sent' => 'E-post kunde inte skickas',
        'The support bundle has been generated.' => '',
        'Please choose one of the following options.' => 'Välj ett av följande alternativ:',
        'Send by Email' => 'Skicka som e-post',
        'The support bundle is too large to send it by email, this option has been disabled.' =>
            '',
        'The email address for this user is invalid, this option has been disabled.' =>
            '',
        'Sending' => 'Skickar',
        'The support bundle will be sent to OTRS Group via email automatically.' =>
            '',
        'Download File' => 'Hämta bilaga',
        'A file containing the support bundle will be downloaded to the local system. Please save the file and send it to the OTRS Group, using an alternate method.' =>
            '',
        'Support Data' => 'Supportdata',
        'Error: Support data could not be collected (%s).' => '',

        # Template: AdminSession
        'Session Management' => 'Sessionshantering',
        'All sessions' => '',
        'Agent sessions' => '',
        'Customer sessions' => '',
        'Unique agents' => '',
        'Unique customers' => '',
        'Kill all sessions' => 'Terminera alla sessioner',
        'Kill this session' => '',
        'Session' => 'Session',
        'Kill' => '',
        'Detail View for SessionID' => '',

        # Template: AdminSignature
        'Signature Management' => 'Signaturer',
        'Add signature' => 'Lägg till signatur',
        'Add Signature' => 'Lägg till signatur',
        'Edit Signature' => 'Redigera signatur',
        'Example signature' => 'Exempelsignatur',

        # Template: AdminState
        'State Management' => 'Status',
        'Add state' => 'Lägg till status',
        'Please also update the states in SysConfig where needed.' => '',
        'Add State' => 'Lägg till Status',
        'Edit State' => 'Redigera status',
        'State type' => 'Statustyp',

        # Template: AdminSysConfig
        'SysConfig' => 'SysConfig',
        'Navigate by searching in %s settings' => '',
        'Navigate by selecting config groups' => '',
        'Download all system config changes' => '',
        'Export settings' => '',
        'Load SysConfig settings from file' => '',
        'Import settings' => '',
        'Import Settings' => '',
        'Please enter a search term to look for settings.' => '',
        'Subgroup' => 'Undergrupp',
        'Elements' => 'Element',

        # Template: AdminSysConfigEdit
        'Edit Config Settings' => 'Redigera inställningar',
        'This config item is only available in a higher config level!' =>
            '',
        'Reset this setting' => '',
        'Error: this file could not be found.' => '',
        'Error: this directory could not be found.' => '',
        'Error: an invalid value was entered.' => '',
        'Content' => 'Innehåll',
        'Remove this entry' => 'Ta bort denna post',
        'Add entry' => 'Lägg till post',
        'Remove entry' => 'Radera post',
        'Add new entry' => 'Lägg till ny post',
        'Delete this entry' => 'Radera denna post',
        'Create new entry' => 'Skapa ny post',
        'New group' => 'Ny grupp',
        'Group ro' => '',
        'Readonly group' => '',
        'New group ro' => '',
        'Loader' => '',
        'File to load for this frontend module' => '',
        'New Loader File' => '',
        'NavBarName' => 'NavigationsRadNamn',
        'NavBar' => 'NavigationsRad',
        'LinkOption' => '',
        'Block' => 'Blockera',
        'AccessKey' => 'ÅtkomstTangent',
        'Add NavBar entry' => '',
        'Year' => 'År',
        'Month' => 'Månad',
        'Day' => 'Dag',
        'Invalid year' => '',
        'Invalid month' => '',
        'Invalid day' => '',
        'Show more' => 'Visa fler',

        # Template: AdminSystemAddress
        'System Email Addresses Management' => 'System-emailadresser',
        'Add system address' => '',
        'All incoming email with this address in To or Cc will be dispatched to the selected queue.' =>
            '',
        'Email address' => '',
        'Display name' => '',
        'Add System Email Address' => '',
        'Edit System Email Address' => '',
        'The display name and email address will be shown on mail you send.' =>
            '',

        # Template: AdminTemplate
        'Manage Templates' => 'Hantera mallar',
        'Add template' => 'Lägg till mall',
        'A template is a default text which helps your agents to write faster tickets, answers or forwards.' =>
            'En mall är en standardtext som hjälper dina handläggare att skriva ärenden, svar eller vidarebefordran snabbare.',
        'Don\'t forget to add new templates to queues.' => 'Glöm inte att lägga till nya mallar till köer.',
        'Add Template' => '',
        'Edit Template' => 'Redigera mall',
        'Template' => 'Mall',
        'Create type templates only supports this smart tags' => '',
        'Example template' => '',
        'The current ticket state is' => 'Nuvarande ärendestatus',
        'Your email address is' => '',

        # Template: AdminTemplateAttachment
        'Manage Templates <-> Attachments Relations' => '',
        'Filter for Attachments' => '',
        'Change Template Relations for Attachment' => '',
        'Change Attachment Relations for Template' => '',
        'Toggle active for all' => '',
        'Link %s to selected %s' => '',

        # Template: AdminType
        'Type Management' => 'Ärendetyp',
        'Add ticket type' => '',
        'Add Type' => 'Lägg till Typ',
        'Edit Type' => '',

        # Template: AdminUser
        'Add agent' => '',
        'Agents will be needed to handle tickets.' => '',
        'Don\'t forget to add a new agent to groups and/or roles!' => '',
        'Please enter a search term to look for agents.' => '',
        'Last login' => '',
        'Switch to agent' => '',
        'Add Agent' => '',
        'Edit Agent' => '',
        'Firstname' => 'Förnamn',
        'Lastname' => 'Efternamn',
        'Will be auto-generated if left empty.' => '',
        'Start' => 'Start',
        'End' => 'Slut',

        # Template: AdminUserGroup
        'Manage Agent-Group Relations' => '',
        'Change Group Relations for Agent' => '',
        'Change Agent Relations for Group' => '',
        'note' => '',
        'Permissions to add notes to tickets in this group/queue.' => '',
        'owner' => 'Ägare',
        'Permissions to change the owner of tickets in this group/queue.' =>
            '',

        # Template: AgentBook
        'Address Book' => 'Adressbok',
        'Search for a customer' => '',
        'Add email address %s to the To field' => '',
        'Add email address %s to the Cc field' => '',
        'Add email address %s to the Bcc field' => '',
        'Apply' => 'Verkställ',

        # Template: AgentCustomerInformationCenter
        'Customer Information Center' => '',

        # Template: AgentCustomerInformationCenterBlank

        # Template: AgentCustomerInformationCenterSearch
        'Customer ID' => 'KundID',
        'Customer User' => 'Kundanvändare',

        # Template: AgentCustomerSearch
        'Duplicated entry' => '',
        'This address already exists on the address list.' => '',
        'It is going to be deleted from the field, please try again.' => '',

        # Template: AgentCustomerTableView
        'Note: Customer is invalid!' => '',

        # Template: AgentDashboard
        'Dashboard' => 'Dashboard',

        # Template: AgentDashboardCalendarOverview
        'in' => 'om',

        # Template: AgentDashboardCommon
        'Available Columns' => '',
        'Visible Columns (order by drag & drop)' => '',

        # Template: AgentDashboardCustomerCompanyInformation

        # Template: AgentDashboardCustomerIDStatus
        'Escalated tickets' => '',

        # Template: AgentDashboardCustomerUserList
        'Customer information' => 'Kundinformation',
        'Phone ticket' => 'Telefonärende',
        'Email ticket' => 'Epost-ärende',
        '%s open ticket(s) of %s' => '',
        '%s closed ticket(s) of %s' => '',
        'New phone ticket from %s' => 'Nytt telefonärende från %s',
        'New email ticket to %s' => 'Nytt e-postärende från %s',

        # Template: AgentDashboardIFrame

        # Template: AgentDashboardImage

        # Template: AgentDashboardProductNotify
        '%s %s is available!' => '%s %s är tillgänlig!',
        'Please update now.' => 'Vänligen uppdatera nu.',
        'Release Note' => 'Release Note',
        'Level' => 'Nivå',

        # Template: AgentDashboardRSSOverview
        'Posted %s ago.' => 'Postad för %s sedan.',

        # Template: AgentDashboardStats
        'The content of this statistic is being prepared for you, please be patient.' =>
            'Denna information förbereds just nu. Vänligen vänta lite...',
        'Grouped' => 'Grupperade',
        'Stacked' => 'Staplade',
        'Expanded' => 'Expanderade',
        'Stream' => 'Stream',
        'CSV' => 'CSV',
        'PDF' => 'PDF',

        # Template: AgentDashboardTicketGeneric
        'My locked tickets' => 'Mina låsta ärenden',
        'My watched tickets' => 'Mina bevakade ärenden',
        'My responsibilities' => 'Mina uppdrag',
        'Tickets in My Queues' => 'Ärenden i mina köer',
        'Service Time' => 'Tjänsttid',
        'Remove active filters for this widget.' => 'Ta bort aktiva filter för denna widget.',

        # Template: AgentDashboardTicketQueueOverview
        'Totals' => 'Totaler',

        # Template: AgentDashboardTicketStats

        # Template: AgentDashboardUserOnline
        'out of office' => '',

        # Template: AgentDashboardUserOutOfOffice
        'until' => '',

        # Template: AgentHTMLReferenceForms

        # Template: AgentHTMLReferenceOverview

        # Template: AgentHTMLReferencePageLayout
        'The ticket has been locked' => 'Ärendet har låsts',
        'Undo & close window' => 'Ångra & stäng fönstret',

        # Template: AgentInfo
        'Info' => 'Info',
        'To accept some news, a license or some changes.' => '',

        # Template: AgentLinkObject
        'Link Object: %s' => 'Länkobjekt: %s',
        'go to link delete screen' => '',
        'Select Target Object' => '',
        'Link Object' => 'Länka objekt',
        'with' => 'med',
        'Unlink Object: %s' => 'Avlänka objekt: %s',
        'go to link add screen' => '',

        # Template: AgentNavigationBar

        # Template: AgentPreferences
        'Edit your preferences' => 'Ändra dina inställningar',

        # Template: AgentSpelling
        'Spell Checker' => 'Stavningskontroll',
        'spelling error(s)' => 'Stavfel',
        'Apply these changes' => 'Verkställ ändringar',

        # Template: AgentStatsDelete
        'Delete stat' => '',
        'Stat#' => 'Stat#',
        'Do you really want to delete this stat?' => '',

        # Template: AgentStatsEditRestrictions
        'Step %s' => '',
        'General Specifications' => '',
        'Select the element that will be used at the X-axis' => '',
        'Select the elements for the value series' => '',
        'Select the restrictions to characterize the stat' => '',
        'Here you can make restrictions to your stat.' => 'Här kan du sätta restriktioner på din statistik.',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' =>
            'Om du raderar innehållet i "Fast" bockrutan, kan agenten som genererar statistiken ändra attributen på motsvarande element.',
        'Fixed' => 'Fast',
        'Please select only one element or turn off the button \'Fixed\'.' =>
            'Välj endast ett värde, eller slå av knappen \'Fast\'.',
        'Absolute Period' => '',
        'Between' => 'Mellan',
        'Relative Period' => 'Relativ period',
        'The last' => 'De senaste',
        'Finish' => 'Slut',

        # Template: AgentStatsEditSpecification
        'Permissions' => 'Behörigheter',
        'You can select one or more groups to define access for different agents.' =>
            '',
        'Some result formats are disabled because at least one needed package is not installed.' =>
            '',
        'Please contact your administrator.' => '',
        'Graph size' => '',
        'If you use a graph as output format you have to select at least one graph size.' =>
            '',
        'Sum rows' => '',
        'Sum columns' => '',
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
        'IE8 doesn\'t support statistics dashboard widgets.' => '',
        'If set to invalid end users can not generate the stat.' => '',

        # Template: AgentStatsEditValueSeries
        'Here you can define the value series.' => '',
        'You have the possibility to select one or two elements.' => '',
        'Then you can select the attributes of elements.' => '',
        'Each attribute will be shown as single value series.' => '',
        'If you don\'t select any attribute all attributes of the element will be used if you generate a stat, as well as new attributes which were added since the last configuration.' =>
            '',
        'Scale' => '',
        'minimal' => '',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' =>
            '',

        # Template: AgentStatsEditXaxis
        'Here you can define the x-axis. You can select one element via the radio button.' =>
            '',
        'maximal period' => '',
        'minimal scale' => '',

        # Template: AgentStatsImport
        'Import Stat' => '',
        'File is not a Stats config' => '',
        'No File selected' => '',

        # Template: AgentStatsOverview
        'Stats' => 'Statistik',

        # Template: AgentStatsPrint
        'No Element selected.' => '',

        # Template: AgentStatsView
        'Export config' => '',
        'With the input and select fields you can influence the format and contents of the statistic.' =>
            '',
        'Exactly what fields and formats you can influence is defined by the statistic administrator.' =>
            '',
        'Stat Details' => '',
        'Format' => '',
        'Graphsize' => '',
        'Cache' => '',
        'Exchange Axis' => '',

        # Template: AgentStatsViewSettings
        'Configurable params of static stat' => '',
        'No element selected.' => '',
        'maximal period from' => '',
        'to' => '',
        'not changable for dashboard statistics' => '',
        'Select Chart Type' => '',
        'Chart Type' => '',
        'Multi Bar Chart' => '',
        'Multi Line Chart' => '',
        'Stacked Area Chart' => '',

        # Template: AgentTicketActionCommon
        'Change Free Text of Ticket' => '',
        'Change Owner of Ticket' => 'Ändra ägare av ärendet',
        'Close Ticket' => 'Stäng ärendet',
        'Add Note to Ticket' => 'Lägg till notering till ärendet',
        'Set Pending' => 'Markera som väntande',
        'Change Priority of Ticket' => '',
        'Change Responsible of Ticket' => '',
        'All fields marked with an asterisk (*) are mandatory.' => 'Alla fält markerade med en asterisk (*) är obligatoriska.',
        'Service invalid.' => '',
        'New Owner' => 'Ny Ägare',
        'Please set a new owner!' => 'Vänligen sätt en ny ägare!',
        'Previous Owner' => 'Tidigare ägare',
        'Inform Agent' => 'Meddela Agent',
        'Optional' => 'Valfri',
        'Inform involved Agents' => 'Meddela inblandade handläggare',
        'Spell check' => 'Stavningskontroll',
        'Note type' => 'Anteckningstyp',
        'Next state' => 'Nästa tillstånd',
        'Date invalid!' => 'Ogiltigt datum!',

        # Template: AgentTicketActionPopupClose

        # Template: AgentTicketBounce
        'Bounce Ticket' => '',
        'Bounce to' => 'Skicka över till',
        'You need a email address.' => 'Du behöver en e-postadress.',
        'Need a valid email address or don\'t use a local email address.' =>
            '',
        'Next ticket state' => 'Nästa ärendestatus',
        'Inform sender' => 'Informera avsändare',
        'Send mail' => 'Skicka e-post!',

        # Template: AgentTicketBulk
        'Ticket Bulk Action' => 'Ärendemassförändring',
        'Send Email' => 'Skicka e-post',
        'Merge to' => 'Slå samman med',
        'Invalid ticket identifier!' => '',
        'Merge to oldest' => 'Slå samman till äldsta',
        'Link together' => 'Länka',
        'Link to parent' => '',
        'Unlock tickets' => '',

        # Template: AgentTicketClose

        # Template: AgentTicketCompose
        'Compose answer for ticket' => 'Författa svar till ärende',
        'Please include at least one recipient' => '',
        'Remove Ticket Customer' => '',
        'Please remove this entry and enter a new one with the correct value.' =>
            '',
        'Remove Cc' => '',
        'Remove Bcc' => '',
        'Address book' => 'Adressbok',
        'Pending Date' => 'Väntar till',
        'for pending* states' => 'för väntetillstånd',
        'Date Invalid!' => '',

        # Template: AgentTicketCustomer
        'Change customer of ticket' => 'Ändra kund för ärende',
        'Customer user' => 'Användare',

        # Template: AgentTicketEmail
        'Create New Email Ticket' => 'Skapa nytt e-postärende',
        'From queue' => 'Från kö',
        'To customer user' => 'Till kundanvändare',
        'Please include at least one customer user for the ticket.' => '',
        'Select this customer as the main customer.' => 'Sätt den här användaren som den primära användaren',
        'Remove Ticket Customer User' => '',
        'Get all' => 'Hämta alla',
        'Text Template' => 'Textmall',

        # Template: AgentTicketEscalation

        # Template: AgentTicketForward
        'Forward ticket: %s - %s' => '',

        # Template: AgentTicketFreeText

        # Template: AgentTicketHistory
        'History of' => 'Historik för',
        'History Content' => '',
        'Zoom view' => '',

        # Template: AgentTicketMerge
        'Ticket Merge' => 'Slå samman',
        'You need to use a ticket number!' => 'Du måste ange ett ärendenummer!',
        'A valid ticket number is required.' => 'Att giltigt ärendenummer krävs.',
        'Need a valid email address.' => 'Behöver en giltig e-postadress.',

        # Template: AgentTicketMove
        'Move Ticket' => 'Flytta ärende',
        'New Queue' => 'Ny Kö',

        # Template: AgentTicketNote

        # Template: AgentTicketOverviewMedium
        'Select all' => 'Välj alla',
        'No ticket data found.' => 'Ingen ärendeinformation hittad.',
        'First Response Time' => 'Första Responstid',
        'Update Time' => 'Uppdateringstid',
        'Solution Time' => 'Lösningstid',
        'Move ticket to a different queue' => 'Flytta ärende till en annan kö',
        'Change queue' => 'Ändra kö',

        # Template: AgentTicketOverviewNavBar
        'Change search options' => 'Ändra sökinställningar',
        'Remove active filters for this screen.' => '',
        'Tickets per page' => 'Ärenden per sida',

        # Template: AgentTicketOverviewPreview

        # Template: AgentTicketOverviewSmall
        'Reset overview' => 'Återställ översikt',
        'Column Filters Form' => '',

        # Template: AgentTicketOwner

        # Template: AgentTicketPending

        # Template: AgentTicketPhone
        'Create New Phone Ticket' => 'Skapa nytt telefonärende',
        'Please include at least one customer for the ticket.' => '',
        'To queue' => 'Till kö',

        # Template: AgentTicketPhoneCommon

        # Template: AgentTicketPlain
        'Email Text Plain View' => '',
        'Plain' => 'Enkel',
        'Download this email' => 'Ladda ner denna e-post',

        # Template: AgentTicketPrint
        'Ticket-Info' => 'Ärendeinfo',
        'Accounted time' => 'Redovisad tid',
        'Linked-Object' => 'Länkat objekt',
        'by' => 'av',

        # Template: AgentTicketPriority

        # Template: AgentTicketProcess
        'Create New Process Ticket' => 'Skapa nytt processärende',
        'Process' => 'Process',

        # Template: AgentTicketProcessNavigationBar

        # Template: AgentTicketQueue

        # Template: AgentTicketResponsible

        # Template: AgentTicketSearch
        'Search template' => 'Sökmall',
        'Create Template' => 'Skapa mall',
        'Create New' => 'Skapa ny',
        'Profile link' => '',
        'Save changes in template' => '',
        'Filters in use' => 'Använda filter',
        'Additional filters' => 'Ytterligare filter',
        'Add another attribute' => 'Lägg till ett annat attribut',
        'Output' => 'Resultatbild',
        'Fulltext' => 'Fritext',
        'Remove' => 'Ta bort',
        'Searches in the attributes From, To, Cc, Subject and the article body, overriding other attributes with the same name.' =>
            'Sökningar i attributen Från, Till, CC, Ärende och meddelandetext åsidosätter andra attribut med samma namn.',
        'Customer User Login' => 'kundanvändare loginnamn',
        'Created in Queue' => 'Skapad i Kö',
        'Lock state' => '',
        'Watcher' => 'Bevakare',
        'Article Create Time (before/after)' => '',
        'Article Create Time (between)' => '',
        'Ticket Create Time (before/after)' => '',
        'Ticket Create Time (between)' => '',
        'Ticket Change Time (before/after)' => '',
        'Ticket Change Time (between)' => '',
        'Ticket Close Time (before/after)' => '',
        'Ticket Close Time (between)' => '',
        'Ticket Escalation Time (before/after)' => '',
        'Ticket Escalation Time (between)' => '',
        'Archive Search' => '',
        'Run search' => 'Kör sökning',

        # Template: AgentTicketSearchOpenSearchDescriptionFulltext

        # Template: AgentTicketSearchOpenSearchDescriptionTicketNumber

        # Template: AgentTicketSearchResultPrint

        # Template: AgentTicketZoom
        'Article filter' => '',
        'Article Type' => 'Artikeltyp',
        'Sender Type' => '',
        'Save filter settings as default' => 'Spara filterinställningar som standard',
        'Archive' => '',
        'This ticket is archived.' => '',
        'Locked' => 'Låst',
        'Linked Objects' => '',
        'Article(s)' => '',
        'Change Queue' => '',
        'There are no dialogs available at this point in the process.' =>
            '',
        'This item has no articles yet.' => '',
        'Add Filter' => '',
        'Set' => 'Använd',
        'Reset Filter' => '',
        'Show one article' => 'Visa en artikel',
        'Show all articles' => 'Visa alla artiklar',
        'Unread articles' => 'Olästa artiklar',
        'No.' => '',
        'Important' => 'Viktigt',
        'Unread Article!' => 'Oläst artikel!',
        'Incoming message' => 'Inkommande meddelande',
        'Outgoing message' => 'Utgående meddelande',
        'Internal message' => 'Internt meddelande',
        'Resize' => '',

        # Template: AttachmentBlocker
        'To protect your privacy, remote content was blocked.' => '',
        'Load blocked content.' => '',

        # Template: Copyright

        # Template: CustomerAccept

        # Template: CustomerError
        'Traceback' => 'Återspårning',

        # Template: CustomerFooter
        'Powered by' => 'Drivs av',
        'One or more errors occurred!' => 'Ett eller fler fel inträffade!',
        'Close this dialog' => 'Stäng dialog',
        'Could not open popup window. Please disable any popup blockers for this application.' =>
            'Kund einte öppnapopupfönster. Avaktivera popupblockerare för denna applikation.',
        'There are currently no elements available to select from.' => 'Det finns inga poster att välja just nu.',

        # Template: CustomerFooterSmall

        # Template: CustomerHeader

        # Template: CustomerHeaderSmall

        # Template: CustomerLogin
        'JavaScript Not Available' => 'Javaskript är avstängt',
        'In order to experience OTRS, you\'ll need to enable JavaScript in your browser.' =>
            'För att OTRS ska fungera behöver javaskript vara påslaget i din webbläsare.',
        'Browser Warning' => 'Browservarning',
        'The browser you are using is too old.' => 'Din webbläsare är för gammal.',
        'OTRS runs with a huge lists of browsers, please upgrade to one of these.' =>
            'OTRS fungerar i många webbläsare. Uppdatera till en av dessa.',
        'Please see the documentation or ask your admin for further information.' =>
            'Läs dokumentationen eller kontakta en administratör för mer information.',
        'Login' => 'Inloggning',
        'User name' => 'Användarnamn',
        'Your user name' => 'Ditt användarnamn',
        'Your password' => 'Ditt lösenord',
        'Forgot password?' => 'Glömt lösenord?',
        'Log In' => 'Logga in',
        'Not yet registered?' => '',
        'Request new password' => 'Be om nytt lösenord',
        'Your User Name' => 'Ditt användarnamn',
        'A new password will be sent to your email address.' => 'Ett nytt lösenord kommer skickas till din e-postadress.',
        'Create Account' => 'Skapa konto',
        'Please fill out this form to receive login credentials.' => 'Fyll i detta formulär för att få dina inloggningsuppgifter.',
        'How we should address you' => '',
        'Your First Name' => 'Ditt förnamn',
        'Your Last Name' => 'Ditt efternamn',
        'Your email address (this will become your username)' => 'Din e-postadress (som blir ditt användarnamn)',

        # Template: CustomerNavigationBar
        'Edit personal preferences' => 'Ändra personliga inställningar',
        'Logout %s' => 'Logga ut %s',

        # Template: CustomerPreferences

        # Template: CustomerRichTextEditor
        'Split Quote' => '',

        # Template: CustomerTicketMessage
        'Service level agreement' => '',

        # Template: CustomerTicketOverview
        'Welcome!' => 'Välkommen!',
        'Please click the button below to create your first ticket.' => 'Vänligen klicka på knappen nedan för att skapa ditt första ärende',
        'Create your first ticket' => 'Skapa ditt första ärende',

        # Template: CustomerTicketPrint
        'Ticket Print' => '',
        'Ticket Dynamic Fields' => '',

        # Template: CustomerTicketProcess

        # Template: CustomerTicketProcessNavigationBar

        # Template: CustomerTicketSearch
        'Profile' => 'Profil',
        'e. g. 10*5155 or 105658*' => '',
        'Fulltext search in tickets (e. g. "John*n" or "Will*")' => '',
        'Carbon Copy' => 'Kopia',
        'Types' => 'Typer',
        'Time restrictions' => 'Tidsrestriktioner',
        'No time settings' => 'Inga tidsinställningar',
        'Only tickets created' => 'Bara ärenden skapade',
        'Only tickets created between' => 'Bara ärenden skapade mellan',
        'Ticket archive system' => '',
        'Save search as template?' => 'Spara sökning som mall?',
        'Save as Template?' => 'Spara som mall?',
        'Save as Template' => 'Spara som mall',
        'Template Name' => 'Mallnamn',
        'Pick a profile name' => 'Välj ett profilnamn',
        'Output to' => 'Utdata till',

        # Template: CustomerTicketSearchOpenSearchDescription

        # Template: CustomerTicketSearchResultPrint

        # Template: CustomerTicketSearchResultShort
        'of' => 'av',
        'Page' => 'Sida',
        'Search Results for' => '',

        # Template: CustomerTicketZoom
        'Expand article' => '',
        'Next Steps' => '',
        'Reply' => 'Svara',

        # Template: CustomerWarning

        # Template: DashboardEventsTicketCalendar
        'All-day' => '',
        'Sunday' => 'Söndag',
        'Monday' => 'Måndag',
        'Tuesday' => 'Tisdag',
        'Wednesday' => 'Onsdag',
        'Thursday' => 'Torsdag',
        'Friday' => 'Fredag',
        'Saturday' => 'Lördag',
        'Su' => 'Sö',
        'Mo' => 'Må',
        'Tu' => 'Ti',
        'We' => 'On',
        'Th' => 'To',
        'Fr' => 'Fr',
        'Sa' => 'Lö',
        'Event Information' => '',
        'Ticket fields' => '',
        'Dynamic fields' => '',

        # Template: Datepicker
        'Invalid date (need a future date)!' => '',
        'Previous' => '',
        'Open date selection' => '',

        # Template: Error
        'Oops! An Error occurred.' => '',
        'Error Message' => '',
        'You can' => '',
        'Send a bugreport' => '',
        'go back to the previous page' => 'gå tillbaka till föregående sida',
        'Error Details' => '',

        # Template: Footer
        'Top of page' => 'Överst på sidan',

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
        'You are logged in as' => 'Du är inloggad som',

        # Template: HeaderSmall

        # Template: Installer
        'JavaScript not available' => '',
        'Database Settings' => '',
        'General Specifications and Mail Settings' => '',
        'Welcome to %s' => 'Välkommen till %s',
        'Web site' => '',
        'Mail check successful.' => '',
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
        'Configure Inbound Mail' => '',
        'Inbound mail type' => '',
        'Select inbound mail type.' => '',
        'Inbound mail host' => '',
        'Inbound mail host.' => '',
        'Inbound mail user' => '',
        'User for inbound mail.' => '',
        'Inbound mail password' => '',
        'Password for inbound mail.' => '',
        'Result of mail configuration check' => '',
        'Check mail configuration' => '',
        'Skip this step' => '',

        # Template: InstallerDBResult
        'Database setup successful!' => '',

        # Template: InstallerDBStart
        'Install Type' => '',
        'Create a new database for OTRS' => '',
        'Use an existing database for OTRS' => '',

        # Template: InstallerDBmssql
        'Database name' => '',
        'Check database settings' => '',
        'Result of database check' => '',
        'Database check successful.' => '',
        'Database User' => '',
        'New' => 'Nytt',
        'A new database user with limited permissions will be created for this OTRS system.' =>
            '',
        'Repeat Password' => '',
        'Generated password' => '',

        # Template: InstallerDBmysql
        'Passwords do not match' => '',

        # Template: InstallerDBoracle
        'SID' => '',
        'Port' => '',

        # Template: InstallerDBpostgresql

        # Template: InstallerFinish
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' =>
            'För att kunna använda OTRS, måste följende rad skrivas på kommandoraden som root.',
        'Restart your webserver' => 'Starta om din webbserver',
        'After doing so your OTRS is up and running.' => 'Efter detta är OTRS igång.',
        'Start page' => 'Startsida',
        'Your OTRS Team' => 'Ditt OTRS-Team',

        # Template: InstallerLicense
        'Accept license' => 'Acceptera licens',
        'Don\'t accept license' => 'Acceptera inte licens',

        # Template: InstallerLicenseText

        # Template: InstallerSystem
        'The identifier of the system. Each ticket number and each HTTP session ID contain this number.' =>
            '',
        'System FQDN' => 'System FQDN',
        'Fully qualified domain name of your system.' => '',
        'AdminEmail' => 'Admin-email',
        'Email address of the system administrator.' => '',
        'Organization' => 'Organisation',
        'Log' => 'Logg',
        'LogModule' => 'LoggningsModul',
        'Log backend to use.' => '',
        'LogFile' => '',
        'Webfrontend' => 'Webb-gränssnitt',
        'Default language' => '',
        'Default language.' => '',
        'CheckMXRecord' => 'KontrolleraMXFält',
        'Email addresses that are manually entered are checked against the MX records found in DNS. Don\'t use this option if your DNS is slow or does not resolve public addresses.' =>
            '',

        # Template: LinkObject
        'Object#' => '',
        'Add links' => '',
        'Delete links' => '',

        # Template: Login
        'Lost your password?' => 'Glömt lösenordet?',
        'Request New Password' => '',
        'Back to login' => '',

        # Template: Motd
        'Message of the Day' => '',

        # Template: NoPermission
        'Insufficient Rights' => '',
        'Back to the previous page' => '',

        # Template: Notify

        # Template: Pagination
        'Show first page' => '',
        'Show previous pages' => '',
        'Show page %s' => '',
        'Show next pages' => '',
        'Show last page' => '',

        # Template: PictureUpload
        'Need FormID!' => '',
        'No file found!' => '',
        'The file is not an image that can be shown inline!' => '',

        # Template: PrintFooter

        # Template: PrintHeader
        'printed by' => 'utskrivet av',

        # Template: PublicDefault

        # Template: Redirect

        # Template: RichTextEditor

        # Template: SpellingInline

        # Template: Test
        'OTRS Test Page' => 'OTRS Test-sida',
        'Welcome %s' => 'Välkommen %s',
        'Counter' => 'Räknare',

        # Template: Warning
        'Go back to the previous page' => 'Gå tillbaka till föregående sida',

        # SysConfig
        '(UserLogin) Firstname Lastname' => '',
        '(UserLogin) Lastname, Firstname' => '',
        'ACL module that allows closing parent tickets only if all its children are already closed ("State" shows which states are not available for the parent ticket until all child tickets are closed).' =>
            '',
        'Access Control Lists (ACL)' => '',
        'AccountedTime' => '',
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
        'Agent Notifications' => 'Notifiering till handläggare',
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
        'Agents <-> Groups' => 'Handläggare <-> Grupper',
        'Agents <-> Roles' => 'Handläggare <-> Roller',
        'All customer users of a CustomerID' => '',
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
        'ArticleTree' => '',
        'Attachments <-> Templates' => '',
        'Auto Responses <-> Queues' => '',
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
        'Change password' => '',
        'Change queue!' => '',
        'Change the customer for this ticket' => 'Byt kund för detta ärende',
        'Change the free fields for this ticket' => 'Redigera anpassade fält för detta ärende',
        'Change the priority for this ticket' => 'Ändra prioritet för detta ärende',
        'Change the responsible person for this ticket' => 'Ändra ansvarig handläggare för detta ärende',
        'Changes the owner of tickets to everyone (useful for ASP). Normally only agent with rw permissions in the queue of the ticket will be shown.' =>
            '',
        'Checkbox' => 'Kryssruta',
        'Checks the SystemID in ticket number detection for follow-ups (use "No" if SystemID has been changed after using the system).' =>
            '',
        'Closed tickets of customer' => '',
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
        'Company Status' => '',
        'Company Tickets' => 'Företagets ärenden',
        'Company name which will be included in outgoing emails as an X-Header.' =>
            '',
        'Configure Processes.' => '',
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
        'Converts HTML mails into text messages.' => '',
        'Create New process ticket' => '',
        'Create and manage Service Level Agreements (SLAs).' => '',
        'Create and manage agents.' => 'Skapa och hantera handläggare.',
        'Create and manage attachments.' => 'Skapa och hantera bilagor.',
        'Create and manage customer users.' => 'Skapa och hantera kundanvändare.',
        'Create and manage customers.' => 'Skapa och hantera kunder.',
        'Create and manage dynamic fields.' => '',
        'Create and manage event based notifications.' => '',
        'Create and manage groups.' => 'Skapa och hantera grupper.',
        'Create and manage queues.' => 'Skapa och hantera köer.',
        'Create and manage responses that are automatically sent.' => '',
        'Create and manage roles.' => 'Skapa och hantera roller.',
        'Create and manage salutations.' => 'Skapa och hantera hälsningsfraser.',
        'Create and manage services.' => 'Skapa och hantera tjänster.',
        'Create and manage signatures.' => 'Skapa och hantera signaturer.',
        'Create and manage templates.' => 'Skapa och hantera mallar.',
        'Create and manage ticket priorities.' => 'Skapa och hantera ärendeprioriteter.',
        'Create and manage ticket states.' => 'Skapa och hantera ärendestatusar.',
        'Create and manage ticket types.' => 'Skapa och hantera ärendetyper.',
        'Create and manage web services.' => 'Skapa och hantera webbtjänster.',
        'Create new email ticket and send this out (outbound)' => 'Skapa nytt e-postärende och skicka detta (utgående)',
        'Create new phone ticket (inbound)' => 'Skapa nytt telefonärende (inkommande)',
        'Create new process ticket' => '',
        'Custom text for the page shown to customers that have no tickets yet.' =>
            '',
        'Customer Company Administration' => '',
        'Customer Company Administration.' => '',
        'Customer Company Information' => '',
        'Customer Information Center.' => '',
        'Customer User <-> Groups' => '',
        'Customer User <-> Services' => '',
        'Customer User Administration' => 'Hantera kundanvändare',
        'Customer User Administration.' => '',
        'Customer Users' => 'Kundanvändare',
        'Customer item (icon) which shows the closed tickets of this customer as info block. Setting CustomerUserLogin to 1 searches for tickets based on login name rather than CustomerID.' =>
            '',
        'Customer item (icon) which shows the open tickets of this customer as info block. Setting CustomerUserLogin to 1 searches for tickets based on login name rather than CustomerID.' =>
            '',
        'CustomerName' => '',
        'Customers <-> Groups' => '',
        'Data used to export the search result in CSV format.' => '',
        'Date / Time' => 'Datum/tid',
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
        'Dropdown' => '',
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
        'Edit customer company' => '',
        'Email Addresses' => 'E-postadresser',
        'Enable keep-alive connection header for SOAP responses.' => '',
        'Enabled filters.' => '',
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
        'Escalation view' => 'Eskalerings-vy',
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
        'Filter incoming emails.' => '',
        'FirstLock' => '',
        'FirstResponse' => '',
        'FirstResponseDiffInMin' => '',
        'FirstResponseInMin' => '',
        'Firstname Lastname' => '',
        'Firstname Lastname (UserLogin)' => '',
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
        'GenericAgent' => 'GenerellAgent',
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
        'Interface language' => 'Gränssnittsspråk',
        'It is possible to configure different skins, for example to distinguish between diferent agents, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid skin on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'It is possible to configure different skins, for example to distinguish between diferent customers, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid skin on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'It is possible to configure different themes, for example to distinguish between agents and customers, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid theme on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'Lastname, Firstname' => 'Efternamn, förnamn',
        'Lastname, Firstname (UserLogin)' => '',
        'Link agents to groups.' => 'Koppla handläggare till grupper.',
        'Link agents to roles.' => 'Koppla handläggare till roller.',
        'Link attachments to templates.' => 'Koppla bilagor till mallar.',
        'Link customer user to groups.' => 'Koppla kundanvändare till grupper.',
        'Link customer user to services.' => 'Koppla kundanvändare till tjänster.',
        'Link queues to auto responses.' => 'Koppla köer till autosvar.',
        'Link roles to groups.' => 'Koppla roller till grupper',
        'Link templates to queues.' => 'Koppla mallar till köer.',
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
        'Manage notifications that are sent to agents.' => 'Hantera notifieringar som skickas till handläggare.',
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
        'Multiselect' => '',
        'My Tickets' => 'Mina ärenden',
        'Name of custom queue. The custom queue is a queue selection of your preferred queues and can be selected in the preferences settings.' =>
            '',
        'NameX' => '',
        'New email ticket' => 'Nytt e-postärende',
        'New phone ticket' => 'Nytt telefonärende',
        'New process ticket' => '',
        'Next possible ticket states after adding a phone note in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Next possible ticket states after adding a phone note in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Notifications (Event)' => 'Meddelande (Aktivitet)',
        'Number of displayed tickets' => 'Antal visade ärenden',
        'Number of lines (per ticket) that are shown by the search utility in the agent interface.' =>
            '',
        'Number of tickets to be displayed in each page of a search result in the agent interface.' =>
            '',
        'Number of tickets to be displayed in each page of a search result in the customer interface.' =>
            '',
        'Open tickets of customer' => '',
        'Overloads (redefines) existing functions in Kernel::System::Ticket. Used to easily add customizations.' =>
            '',
        'Overview Escalated Tickets' => 'Översikt av eskalerade ärenden',
        'Overview Refresh Time' => '',
        'Overview of all open Tickets.' => 'Översikt över alla öppna ärenden',
        'PGP Key Management' => '',
        'PGP Key Upload' => '',
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
        'Queue view' => 'Kö-vy',
        'Recognize if a ticket is a follow up to an existing ticket using an external ticket number.' =>
            '',
        'Refresh Overviews after' => '',
        'Refresh interval' => 'Uppdateringsintervall',
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
        'Roles <-> Groups' => 'Roller <-> Grupper',
        'Runs an initial wildcard search of the existing customer users when accessing the AdminCustomerUser module.' =>
            '',
        'Runs the system in "Demo" mode. If set to "Yes", agents can change preferences, such as selection of language and theme via the agent web interface. These changes are only valid for the current session. It will not be possible for agents to change their passwords.' =>
            '',
        'S/MIME Certificate Upload' => '',
        'Saves the attachments of articles. "DB" stores all data in the database (not recommended for storing big attachments). "FS" stores the data on the filesystem; this is faster but the webserver should run under the OTRS user. You can switch between the modules even on a system that is already in production without any loss of data.' =>
            '',
        'Search Customer' => 'Sök kund',
        'Search User' => '',
        'Search backend default router.' => '',
        'Search backend router.' => '',
        'Select your frontend Theme.' => 'Välj stil-tema.',
        'Selects the cache backend to use.' => '',
        'Selects the module to handle uploads via the web interface. "DB" stores all uploads in the database, "FS" uses the file system.' =>
            '',
        'Selects the ticket number generator module. "AutoIncrement" increments the ticket number, the SystemID and the counter are used with SystemID.counter format (e.g. 1010138, 1010139). With "Date" the ticket numbers will be generated by the current date, the SystemID and the counter. The format looks like Year.Month.Day.SystemID.counter (e.g. 200206231010138, 200206231010139). With "DateChecksum"  the counter will be appended as checksum to the string of date and SystemID. The checksum will be rotated on a daily basis. The format looks like Year.Month.Day.SystemID.Counter.CheckSum (e.g. 2002070110101520, 2002070110101535). "Random" generates randomized ticket numbers in the format "SystemID.Random" (e.g. 100057866352, 103745394596).' =>
            '',
        'Send me a notification if a customer sends a follow up and I\'m the owner of the ticket or the ticket is unlocked and is in one of my subscribed queues.' =>
            '',
        'Send notifications to users.' => '',
        'Send ticket follow up notifications' => '',
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
        'Set sender email addresses for this system.' => '',
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
        'Skin' => '',
        'SolutionDiffInMin' => '',
        'SolutionInMin' => '',
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
        'Statistics' => 'Statistik',
        'Status view' => 'Status-vy',
        'Stop words for fulltext index. These words will be removed.' => '',
        'Stores cookies after the browser has been closed.' => '',
        'Strips empty lines on the ticket preview in the queue view.' => '',
        'Templates <-> Queues' => '',
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
        'Ticket Queue Overview' => '',
        'Ticket event module that triggers the escalation stop events.' =>
            '',
        'Ticket overview' => 'Ärendeöversikt',
        'TicketNumber' => 'Ärendenummer',
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
        'UserFirstname' => '',
        'UserLastname' => '',
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
            'Ditt urval av favoritköer. Du blir också meddelad om dessa köer via e-post om det aktiverats.',

        #
        # OBSOLETE ENTRIES FOR REFERENCE, DO NOT TRANSLATE!
        #
        ' (work units)' => ' (arbetsenheter)',
        'Add Customer Company' => 'Lägg till Kundföretag',
        'Add a decision!' => 'Lägg till ett beslut!',
        'Attachments <-> Responses' => '<Bifogade filer <-> Svar',
        'Customer Company Management' => 'Kundföretagshantering',
        'Customer Data' => 'Kunddata',
        'Database-User' => 'Databas-Användare',
        'Decision' => 'Beslut',
        'Due Date' => 'Slutdatum',
        'Escalation in' => 'Eskalering om',
        'For more info see:' => 'För mer info:',
        'From customer' => 'Från kund',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty. For security reasons we do recommend setting a root password. For more information please refer to your database documentation.' =>
            'Om du har ett root-lösenord för databasen måste det anges här. Annars lämnar du fältet tomt. Av säkerhetssjäl rekommenderar vi dig att du har ett rootlösenord. För mer information hänvisas du till databasdokumentationen.',
        'Logout successful. Thank you for using OTRS!' => 'Utloggningen lyckades.  Tack för att du använde OTRS!',
        'New email ticket for %s' => 'Nytt e-postärende för %s',
        'New phone ticket for %s' => 'Nytt telefonärende för %s',
        'Package verification failed!' => 'Paketverifiering misslyckades!',
        'Responses' => 'Svar',
        'Responses <-> Queues' => 'Svar <-> Kö',
        'Review Required' => 'Översyn krävs',
        'Search Result' => 'Sökresultat',
        'Secure mode must be disabled in order to reinstall using the web-installer.' =>
            'Säkert läge måste slås av för att kunna ominstallera via webb-installeraren.',
        'To customer' => 'Till kund',
        'URL' => 'URL',
        'before' => 'före',
        'default \'hot\'' => 'default \'hot\'',
        'settings' => 'inställningar',

    };
    # $$STOP$$
    return;
}

1;
