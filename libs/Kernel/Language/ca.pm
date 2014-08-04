# --
# Kernel/Language/ca.pm - provides Catalan language translation
# Copyright (C) 2012 Sistemes OTIC (ibsalut) - Antonio Linde
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::ca;

use strict;
use warnings;

sub Data {
    my $Self = shift;

    # $$START$$
    # possible charsets
    $Self->{Charset} = ['utf-8', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Year;)
    $Self->{DateFormat}          = '%D.%M.%Y %T';
    $Self->{DateFormatLong}      = '%A %D %B %T %Y';
    $Self->{DateFormatShort}     = '%D.%M.%Y';
    $Self->{DateInputFormat}     = '%D.%M.%Y';
    $Self->{DateInputFormatLong} = '%D.%M.%Y - %T';

    # csv separator
    $Self->{Separator} = '';

    $Self->{Translation} = {

        # Template: AAABase
        'Yes' => 'Si',
        'No' => 'No',
        'yes' => 'si',
        'no' => 'no',
        'Off' => 'Off',
        'off' => 'off',
        'On' => 'On',
        'on' => 'on',
        'top' => 'inici',
        'end' => 'fi',
        'Done' => 'Fet',
        'Cancel' => 'Cancel·lar',
        'Reset' => 'Reiniciar',
        'more than ... ago' => '',
        'in more than ...' => '',
        'within the last ...' => '',
        'within the next ...' => '',
        'Created within the last' => '',
        'Created more than ... ago' => '',
        'Today' => 'Avui',
        'Tomorrow' => 'Demà',
        'Next week' => 'Pròxima setmana',
        'day' => 'dia',
        'days' => 'dias',
        'day(s)' => 'dia(s)',
        'd' => 'd',
        'hour' => 'hora',
        'hours' => 'hores',
        'hour(s)' => 'hora(es)',
        'Hours' => 'Hores',
        'h' => 'h',
        'minute' => 'minut',
        'minutes' => 'minuts',
        'minute(s)' => 'minut(s)',
        'Minutes' => 'Minuts',
        'm' => 'm',
        'month' => 'mes',
        'months' => 'mesos',
        'month(s)' => 'mes(os)',
        'week' => 'setmana',
        'week(s)' => 'setmana(es)',
        'year' => 'any',
        'years' => 'anys',
        'year(s)' => 'any(s)',
        'second(s)' => 'segon(s)',
        'seconds' => 'segons',
        'second' => 'segon',
        's' => 's',
        'Time unit' => '',
        'wrote' => 'va escriure',
        'Message' => 'Missatje',
        'Error' => 'Error',
        'Bug Report' => 'Informe d\'errors',
        'Attention' => 'Atenció',
        'Warning' => 'Atenció',
        'Module' => 'Mòdul',
        'Modulefile' => 'Arxiu de mòdul',
        'Subfunction' => 'Subfuncions',
        'Line' => 'Línia',
        'Setting' => 'Configuració',
        'Settings' => 'Configuracións',
        'Example' => 'Exemple',
        'Examples' => 'Exemples',
        'valid' => 'vàlid',
        'Valid' => 'Vàlid',
        'invalid' => 'invàlid',
        'Invalid' => 'Invàlid',
        '* invalid' => '* invàlid',
        'invalid-temporarily' => 'invàlid-temporalment',
        ' 2 minutes' => ' 2 minuts',
        ' 5 minutes' => ' 5 minuts',
        ' 7 minutes' => ' 7 minuts',
        '10 minutes' => '10 minuts',
        '15 minutes' => '15 minuts',
        'Mr.' => 'Sr.',
        'Mrs.' => 'Sra.',
        'Next' => 'Següent',
        'Back' => 'Tornar',
        'Next...' => 'Següent...',
        '...Back' => '..Tornar',
        '-none-' => '-no res-',
        'none' => 'no res',
        'none!' => 'no res!',
        'none - answered' => 'no res  - respost',
        'please do not edit!' => 'Per favor no ho editi!',
        'Need Action' => 'Necessita acció',
        'AddLink' => 'Afegir enllaç',
        'Link' => 'Enllaç',
        'Unlink' => 'Llevar enllaç',
        'Linked' => 'Enllaçat',
        'Link (Normal)' => 'Enllaç (Normal)',
        'Link (Parent)' => 'Enllaç (Pare)',
        'Link (Child)' => 'Enllaç (Fill)',
        'Normal' => 'Normal',
        'Parent' => 'Pare',
        'Child' => 'Fill',
        'Hit' => 'Resultat',
        'Hits' => 'Resultats',
        'Text' => 'Text',
        'Standard' => 'Estàndard',
        'Lite' => 'Petit',
        'User' => 'Usuari',
        'Username' => 'Nom d\'Usuari',
        'Language' => 'Idioma',
        'Languages' => 'Idiomes',
        'Password' => 'Contrasenya',
        'Preferences' => 'Preferències',
        'Salutation' => 'Salutació',
        'Salutations' => 'Salutacions',
        'Signature' => 'Signaturas',
        'Signatures' => 'Signatures',
        'Customer' => 'Client',
        'CustomerID' => 'Nombre de client',
        'CustomerIDs' => 'Nombres de client',
        'customer' => 'client',
        'agent' => 'agent',
        'system' => 'Sistema',
        'Customer Info' => 'Informació del client',
        'Customer Information' => 'Informació del client',
        'Customer Company' => 'Empresa del client',
        'Customer Companies' => 'Empreses del client',
        'Company' => 'Empresa',
        'go!' => 'anar!',
        'go' => 'anar',
        'All' => 'Tot',
        'all' => 'tot',
        'Sorry' => 'Disculpi',
        'update!' => 'Actualitzar!',
        'update' => 'actualitzar',
        'Update' => 'Actualitzar',
        'Updated!' => 'Actualizat!',
        'submit!' => 'enviar!',
        'submit' => 'enviar',
        'Submit' => 'Enviar',
        'change!' => 'camviar!',
        'Change' => 'Camviar',
        'change' => 'camviar',
        'click here' => 'faci clic aquí',
        'Comment' => 'Comentari',
        'Invalid Option!' => 'Opció no valida',
        'Invalid time!' => 'Hora no valida',
        'Invalid date!' => 'Data no valida',
        'Name' => 'Nom',
        'Group' => 'Grup',
        'Description' => 'Descripció',
        'description' => 'descripció',
        'Theme' => 'Tema',
        'Created' => 'Creat',
        'Created by' => 'Creat per',
        'Changed' => 'Modificat',
        'Changed by' => 'Modificat per',
        'Search' => 'Cercar',
        'and' => 'i',
        'between' => 'entre',
        'before/after' => '',
        'Fulltext Search' => 'Recerca de text complet',
        'Data' => 'Dades',
        'Options' => 'Opcions',
        'Title' => 'Títol',
        'Item' => 'Article',
        'Delete' => 'Esborrar',
        'Edit' => 'Editar',
        'View' => 'Veure',
        'Number' => 'Nombre',
        'System' => 'Sistema',
        'Contact' => 'Contacte',
        'Contacts' => 'Contactes',
        'Export' => 'Exportar',
        'Up' => 'Amunt',
        'Down' => 'Avall',
        'Add' => 'Afegir',
        'Added!' => 'Afegit!',
        'Category' => 'Categoria',
        'Viewer' => 'Visualitzador',
        'Expand' => 'Expandir',
        'Small' => 'Petit',
        'Medium' => 'Mitjà',
        'Large' => 'Gran',
        'Date picker' => 'Seleccionador de data',
        'Show Tree Selection' => '',
        'The field content is too long!' => '',
        'Maximum size is %s characters.' => '',
        'This field is required or' => '',
        'New message' => 'Nou missatge',
        'New message!' => 'Nou missatge!',
        'Please answer this ticket(s) to get back to the normal queue view!' =>
            'Per favor respongui al tiquet per a regressar a la vista normal de la cua.',
        'You have %s new message(s)!' => 'Vostè té %s un nou(s) missatge(s)!',
        'You have %s reminder ticket(s)!' => 'Vostè té %s tiquets recordatoris',
        'The recommended charset for your language is %s!' => 'El joc de caràcters recomanat per al seu idioma és %s!',
        'Change your password.' => 'Canviï la seva contrasenya',
        'Please activate %s first!' => 'Per favor, en primer lloc, activi %s!',
        'No suggestions' => 'Sense suggeriments',
        'Word' => 'Paraula',
        'Ignore' => 'Ignorar',
        'replace with' => 'reemplaçar amb',
        'There is no account with that login name.' => 'No existeix un compte amb aquest login',
        'Login failed! Your user name or password was entered incorrectly.' =>
            'Connexió fallida! El seu nom d\'usuari o contrasenya van ser entrats incorrectament.',
        'There is no acount with that user name.' => 'No hi ha cap compta amb aquest nom d\'usuari.',
        'Please contact your administrator' => 'Per favor contacti amb el seu administrador',
        'Authentication succeeded, but no customer record is found in the customer backend. Please contact your administrator.' =>
            '',
        'This e-mail address already exists. Please log in or reset your password.' =>
            '',
        'Logout' => 'Desconnectar-se',
        'Logout successful. Thank you for using %s!' => '',
        'Feature not active!' => 'Característica no activa',
        'Agent updated!' => 'Agent actualitzat!',
        'Database Selection' => '',
        'Create Database' => 'Crear Base de dades',
        'System Settings' => 'Configuració del sistema',
        'Mail Configuration' => 'Configuració de correu.',
        'Finished' => 'Finalitzat',
        'Install OTRS' => 'Instal·lar OTRS',
        'Intro' => 'Intro',
        'License' => 'Llicència',
        'Database' => 'Base de dades',
        'Configure Mail' => 'Configurar el correu',
        'Database deleted.' => 'Base de dades esborrada.',
        'Enter the password for the administrative database user.' => '',
        'Enter the password for the database user.' => '',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty.' =>
            '',
        'Database already contains data - it should be empty!' => '',
        'Login is needed!' => 'Es requereix login',
        'Password is needed!' => 'Falta la contrasenya!',
        'Take this Customer' => 'Utilitzar aquest client',
        'Take this User' => 'Utilitzar aquest usuari',
        'possible' => 'possible',
        'reject' => 'rebutjar',
        'reverse' => 'capgirar',
        'Facility' => 'Facilitat',
        'Time Zone' => 'Zona horària',
        'Pending till' => 'Pendent fins a',
        'Don\'t use the Superuser account to work with OTRS! Create new Agents and work with these accounts instead.' =>
            'No utilitzi el compte de superusuari per treballar amb OTRS! Crear nous agents i treballar amb aquests comptes en el seu lloc.',
        'Dispatching by email To: field.' => 'Despatxar pel camp To: del correu',
        'Dispatching by selected Queue.' => 'Despatxar per la cua seleccionada',
        'No entry found!' => 'No es va trobar!',
        'Session invalid. Please log in again.' => '',
        'Session has timed out. Please log in again.' => 'La sessió ha expirat. Per favor iniciï una sessió novament.',
        'Session limit reached! Please try again later.' => '',
        'No Permission!' => 'No té Permís!',
        '(Click here to add)' => '(Faci clic aqui per a afegir)',
        'Preview' => 'Vista Prèvia',
        'Package not correctly deployed! Please reinstall the package.' =>
            'El paquet no s\'ha desplegat correctament! Per favor, torni a instal·lar el paquet.',
        '%s is not writable!' => '%s no té permisos d\'escriptura!',
        'Cannot create %s!' => 'No pot crear %s!',
        'Check to activate this date' => 'Marcar per activar aquesta data',
        'You have Out of Office enabled, would you like to disable it?' =>
            'Vostè té Fora de l\'Oficina habilitat, vol desactivar-ho?',
        'News about OTRS releases!' => '',
        'Customer %s added' => 'Client %s afegit',
        'Role added!' => 'Rol afegit!',
        'Role updated!' => 'Rol actualitzat',
        'Attachment added!' => 'Adjunt afegit!',
        'Attachment updated!' => 'Adjunt actualitzat!',
        'Response added!' => 'Resposta afegida!',
        'Response updated!' => 'Resposta actualitzada!',
        'Group updated!' => 'Grup afegit!',
        'Queue added!' => 'Cua afegida!',
        'Queue updated!' => 'Cua actualitzada!',
        'State added!' => 'Estat afegit!',
        'State updated!' => 'Estat actualitzat!',
        'Type added!' => 'Tipus afegit!',
        'Type updated!' => 'Tipus actualitzat!',
        'Customer updated!' => 'Client actualitzat!',
        'Customer company added!' => 'Empresa del client afegida!',
        'Customer company updated!' => 'Empresa del client actualitzada!',
        'Note: Company is invalid!' => '',
        'Mail account added!' => 'Compte de correu afegida!',
        'Mail account updated!' => 'Compte de correu actualitzada!',
        'System e-mail address added!' => 'Adreça de correu electrònic de sistema afegida!',
        'System e-mail address updated!' => 'Adreça de correu electrònic de sistema actualitzada!',
        'Contract' => 'Contracte',
        'Online Customer: %s' => 'Client connectat: %s',
        'Online Agent: %s' => 'Agent connectat: %s',
        'Calendar' => 'Calendari',
        'File' => 'Arxiu',
        'Filename' => 'Nom de l\'arxiu',
        'Type' => 'Tipus',
        'Size' => 'Tamany',
        'Upload' => 'Penjar',
        'Directory' => 'Directori',
        'Signed' => 'Signat',
        'Sign' => 'Signatura',
        'Crypted' => 'Encriptat',
        'Crypt' => 'Encriptar',
        'PGP' => 'PGP',
        'PGP Key' => 'Clau PGP',
        'PGP Keys' => 'Claus PGP',
        'S/MIME' => 'S/MIME',
        'S/MIME Certificate' => 'Certificat S/MIME',
        'S/MIME Certificates' => 'Certificats S/MIME',
        'Office' => 'Oficina',
        'Phone' => 'Telèfono',
        'Fax' => 'Fax',
        'Mobile' => 'Mòbil',
        'Zip' => 'CP',
        'City' => 'Ciutat',
        'Street' => 'Carrer',
        'Country' => 'Pais',
        'Location' => 'Localitat',
        'installed' => 'instal·lat',
        'uninstalled' => 'desinstal·lat',
        'Security Note: You should activate %s because application is already running!' =>
            'Nota de seguretat: Vostè ha d\'activar %s perquè l\'aplicació ja està corrent!',
        'Unable to parse repository index document.' => 'No es pot analitzar el repositori de documents de l\'índex.',
        'No packages for your framework version found in this repository, it only contains packages for other framework versions.' =>
            'No hi ha paquets per a la seva versió de Framework en aquest repositori, aquest només conté els paquets per a altres versions de Framework.',
        'No packages, or no new packages, found in selected repository.' =>
            'Cap paquet, o cap nou paquet, trobat en el repositori seleccionat.',
        'Edit the system configuration settings.' => 'Editar els paràmetres de configuració del sistema.',
        'ACL information from database is not in sync with the system configuration, please deploy all ACLs.' =>
            '',
        'printed at' => 'imprès en',
        'Loading...' => 'Carregant...',
        'Dear Mr. %s,' => 'Benvolgut Sr. %s',
        'Dear Mrs. %s,' => 'Benvolguda Sra. %s',
        'Dear %s,' => 'Benvolgut %s',
        'Hello %s,' => 'Hola %s,',
        'This email address already exists. Please log in or reset your password.' =>
            'Aquesta adreça de correu electrònic ja existeix. Per favor iniciï sessió o restableixi la seva contrasenya.',
        'New account created. Sent login information to %s. Please check your email.' =>
            'Nou compte creat. Enviada la informació d\'accés a %s. Per favor, consulti el seu correu electrònic.',
        'Please press Back and try again.' => 'Per favor premi Tornar i provi de nou.',
        'Sent password reset instructions. Please check your email.' => 'Enviades les instruccions per restablir la contrasenya. Per favor, consulti el seu correu electrònic.',
        'Sent new password to %s. Please check your email.' => 'Enviada nova contrasenya per a %s. Per favor, consulti el seu correu electrònic.',
        'Upcoming Events' => 'Propers esdeveniments',
        'Event' => 'Esdeveniment',
        'Events' => 'Esdeveniments',
        'Invalid Token!' => '\'Token\' invàlid!',
        'more' => 'més',
        'Collapse' => 'Contreure',
        'Shown' => 'Mostra',
        'Shown customer users' => '',
        'News' => 'Notícies',
        'Product News' => 'Notícies de productes',
        'OTRS News' => 'Novetats de OTRS',
        '7 Day Stats' => 'Estadístiques Setmanals',
        'Process Management information from database is not in sync with the system configuration, please synchronize all processes.' =>
            '',
        'Package not verified by the OTRS Group! It is recommended not to use this package.' =>
            '',
        '<br>If you continue to install this package, the following issues may occur!<br><br>&nbsp;-Security problems<br>&nbsp;-Stability problems<br>&nbsp;-Performance problems<br><br>Please note that issues that are caused by working with this package are not covered by OTRS service contracts!<br><br>' =>
            '',
        'Mark' => '',
        'Unmark' => '',
        'Bold' => 'Negreta',
        'Italic' => 'Cursiva',
        'Underline' => 'Subratllat',
        'Font Color' => 'Color de la lletra',
        'Background Color' => 'Color de fons',
        'Remove Formatting' => 'Suprimir format',
        'Show/Hide Hidden Elements' => 'Mostrar/Ocultar elements ocults',
        'Align Left' => 'Alinea a l\'esquerra',
        'Align Center' => 'Alinea al centre',
        'Align Right' => 'Alinea a la dreta',
        'Justify' => 'Justificat',
        'Header' => 'Capçalera',
        'Indent' => 'Augmenta el sagnat',
        'Outdent' => 'Redueix el sagnat',
        'Create an Unordered List' => 'Crear una llista desordenada',
        'Create an Ordered List' => 'Crear una llista ordenada',
        'HTML Link' => 'Enllaç HTML',
        'Insert Image' => 'Insereix imatge',
        'CTRL' => 'CRTL',
        'SHIFT' => 'SHIFT',
        'Undo' => 'Desfer',
        'Redo' => 'Tornar a fer',
        'Scheduler process is registered but might not be running.' => 'El planificador de processos s\'ha registrat però no pot estar en funcionament.',
        'Scheduler is not running.' => 'El planificador no està funcionant.',
        'Can\'t contact registration server. Please try again later.' => '',
        'No content received from registration server. Please try again later.' =>
            '',
        'Problems processing server result. Please try again later.' => '',
        'Username and password do not match. Please try again.' => '',
        'The selected process is invalid!' => '',

        # Template: AAACalendar
        'New Year\'s Day' => 'Dia d\'Any Nou',
        'International Workers\' Day' => 'Dia Internacional dels treballadors',
        'Christmas Eve' => 'Nit de Nadal',
        'First Christmas Day' => 'Nadal',
        'Second Christmas Day' => 'Segona festa de Nadal',
        'New Year\'s Eve' => 'Cap d\'any',

        # Template: AAAGenericInterface
        'OTRS as requester' => '',
        'OTRS as provider' => '',
        'Webservice "%s" created!' => '',
        'Webservice "%s" updated!' => '',

        # Template: AAAMonth
        'Jan' => 'Gen',
        'Feb' => 'Feb',
        'Mar' => 'Mar',
        'Apr' => 'Abr',
        'May' => 'Mai',
        'Jun' => 'Jun',
        'Jul' => 'Jul',
        'Aug' => 'Ago',
        'Sep' => 'Set',
        'Oct' => 'Oct',
        'Nov' => 'Nov',
        'Dec' => 'Des',
        'January' => 'Gener',
        'February' => 'Febrer',
        'March' => 'Març',
        'April' => 'Abril',
        'May_long' => 'Maig',
        'June' => 'Juny',
        'July' => 'Juliol',
        'August' => 'Agost',
        'September' => 'Setembre',
        'October' => 'Octubre',
        'November' => 'Novembre',
        'December' => 'Desembre',

        # Template: AAAPreferences
        'Preferences updated successfully!' => 'Les preferències van ser actualitzades!',
        'User Profile' => 'Perfil d\'usuari',
        'Email Settings' => 'Configuració del correu electrònic',
        'Other Settings' => 'Altres configuracions',
        'Change Password' => 'Canviar contrasenya',
        'Current password' => 'Contrasenya actual',
        'New password' => 'Nova contrasenya',
        'Verify password' => 'Verificar la contrasenya',
        'Spelling Dictionary' => 'Diccionari Ortogràfic',
        'Default spelling dictionary' => 'Diccionari ortogràfic predeterminat',
        'Max. shown Tickets a page in Overview.' => 'Quantitat de Tiquets a mostrar en Resum',
        'The current password is not correct. Please try again!' => 'La contrasenya actual no és correcta. Per favor, intenti-ho de nou!',
        'Can\'t update password, your new passwords do not match. Please try again!' =>
            'No es pot actualitzar la contrasenya, les contrasenyes noves no coincideixen. Per favor, intenti-ho de nou!',
        'Can\'t update password, it contains invalid characters!' => 'No es pot actualitzar la contrasenya, conté caràcters no vàlids!',
        'Can\'t update password, it must be at least %s characters long!' =>
            'No es pot actualitzar la contrasenya, ha de tenir almenys %s caràcters!',
        'Can\'t update password, it must contain at least 2 lowercase and 2 uppercase characters!' =>
            'No es pot actualitzar la contrasenya, ha de contenir almenys 2 lletres minúscules i 2 majúscules!',
        'Can\'t update password, it must contain at least 1 digit!' => 'No es pot actualitzar la contrasenya, ha de contenir almenys un dígit 1!',
        'Can\'t update password, it must contain at least 2 characters!' =>
            'No es pot actualitzar la contrasenya, ha de contenir almenys dues lletres!',
        'Can\'t update password, this password has already been used. Please choose a new one!' =>
            'No es pot actualitzar la contrasenya, aquesta contrasenya ja s\'ha utilitzat. Per favor, triï una nova!',
        'Select the separator character used in CSV files (stats and searches). If you don\'t select a separator here, the default separator for your language will be used.' =>
            'Seleccioni el caràcter de separació utilitzat en els arxius CSV (estadístiques i recerques). Si vostè no selecciona un separador aquí, s\'utilitzarà el predeterminat per al seu idioma.',
        'CSV Separator' => 'Separador CSV',

        # Template: AAAStats
        'Stat' => 'Estadístiques',
        'Sum' => 'Suma',
        'Days' => '',
        'No (not supported)' => '',
        'Please fill out the required fields!' => 'Per favor empleni els camps requerits',
        'Please select a file!' => 'Per favor seleccioni un arxiu',
        'Please select an object!' => 'Per favor seleccioni un objecte',
        'Please select a graph size!' => 'Per favor, seleccioni una grandària de gràfic',
        'Please select one element for the X-axis!' => 'Per favor, seleccioni un element per a l\'eix X',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' =>
            'Per favor, seleccioni un sol element o desactivi el botó \'Fixat\' on el camp seleccionat està marcat!',
        'If you use a checkbox you have to select some attributes of the select field!' =>
            'Si usa una casella de selecció, ha de seleccionar alguns atributs del camp seleccionat',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' =>
            'Per favor introdueixi un valor en el camp d\'entrada o desactivi la selecció \'Fixat\'',
        'The selected end time is before the start time!' => 'La data de final és prèvia a la inicial!',
        'You have to select one or more attributes from the select field!' =>
            'Ha de seleccionar un o més atributs del camp seleccionat!',
        'The selected Date isn\'t valid!' => 'La data seleccionada no és vàlida',
        'Please select only one or two elements via the checkbox!' => 'Per favor seleccioni només un o dos elements usant la casella de selecció!',
        'If you use a time scale element you can only select one element!' =>
            'Si utilitza l\'escala de temps només pot seleccionar un element!',
        'You have an error in your time selection!' => 'Té un error en la selecció de temps!',
        'Your reporting time interval is too small, please use a larger time scale!' =>
            'L\'interval de temps per a informes és massa petit, per favor utilitzi una escala de temps major!',
        'The selected start time is before the allowed start time!' => 'El període de temps inicial és anterior al permès!',
        'The selected end time is after the allowed end time!' => 'El període de temps final és posterior al permès!',
        'The selected time period is larger than the allowed time period!' =>
            'El període de temps és major que el permès!',
        'Common Specification' => 'Especificació comuna',
        'X-axis' => 'EixX',
        'Value Series' => 'Sèrie de Valors',
        'Restrictions' => 'Restriccions',
        'graph-lines' => 'gràfica-de-línies',
        'graph-bars' => 'gràfica-de-barres',
        'graph-hbars' => 'gràfica-de-barreshor',
        'graph-points' => 'gràfica-de-punts',
        'graph-lines-points' => 'gràfica-de-línies-punts',
        'graph-area' => 'gráfica-de-àrea',
        'graph-pie' => 'gráfica-de-pastís',
        'extended' => 'estès',
        'Agent/Owner' => 'Agent/Propietari',
        'Created by Agent/Owner' => 'Creat per Agent/Propietari',
        'Created Priority' => 'Prioritat de Creació',
        'Created State' => 'Estat al Crear-se',
        'Create Time' => 'Data de Creació',
        'CustomerUserLogin' => 'Login de Client',
        'Close Time' => 'Data de Tancament',
        'TicketAccumulation' => 'AcumulacioDeTiquets',
        'Attributes to be printed' => 'Atributs a imprimir',
        'Sort sequence' => 'Ordenar seqüència',
        'Order by' => 'Ordenar per',
        'Limit' => 'Límit',
        'Ticketlist' => 'Llista de tiquets',
        'ascending' => 'ascendent',
        'descending' => 'descendent',
        'First Lock' => 'Primer bloqueig',
        'Evaluation by' => 'Avaluació per',
        'Total Time' => 'Temps total',
        'Ticket Average' => 'Tiquet-Mitjana',
        'Ticket Min Time' => 'Tiquet-Temps Mín',
        'Ticket Max Time' => 'Tiquet-Temps Màx',
        'Number of Tickets' => 'Nombre de tiquets',
        'Article Average' => 'Article-Mitjana',
        'Article Min Time' => 'Article-Temps Mín',
        'Article Max Time' => 'Article-Temps Màx',
        'Number of Articles' => 'Nombre d\'articles',
        'Accounted time by Agent' => 'Temps utilitzat per l\'agent',
        'Ticket/Article Accounted Time' => 'Temps utilitzat pel tiquet/article',
        'TicketAccountedTime' => 'TempsUtilitzatTiquet',
        'Ticket Create Time' => 'Creació del tiquet',
        'Ticket Close Time' => 'Finalització del tiquet',

        # Template: AAASupportDataCollector
        'Unknown' => '',
        'Information' => '',
        'OK' => '',
        'Problem' => '',
        'Webserver' => '',
        'Operating System' => '',
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
        'Perl Version' => '',
        'Free Swap Space (%)' => '',
        'No Swap Enabled.' => '',
        'Used Swap Space (MB)' => '',
        'There should be more than 60% free swap space.' => '',
        'There should be no more than 200 MB swap space used.' => '',
        'Config Settings' => '',
        'Could not determine value.' => '',
        'Database Records' => '',
        'Tickets' => 'Tiquets',
        'Ticket History Entries' => '',
        'Articles' => '',
        'Attachments (DB, Without HTML)' => '',
        'Customers With At Least One Ticket' => '',
        'Queues' => 'Cues',
        'Agents' => 'Agents',
        'Roles' => 'Rols',
        'Groups' => 'Grups',
        'Dynamic Fields' => 'Camps dinàmics',
        'Dynamic Field Values' => '',
        'GenericInterface Webservices' => '',
        'Processes' => '',
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
        'SystemID' => 'ID de sistema',
        'Your SystemID setting is invalid, it should only contain digits.' =>
            '',
        'OTRS Version' => '',
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
        'Status View' => 'Vista d\'estat',
        'Bulk' => 'Volum',
        'Lock' => 'Bloquejar',
        'Unlock' => 'Desbloquejar',
        'History' => 'Història',
        'Zoom' => 'Detall',
        'Age' => 'Antiguitat',
        'Bounce' => 'Retornar',
        'Forward' => 'Reexpedir',
        'From' => 'De',
        'To' => 'A',
        'Cc' => 'Còpia ',
        'Bcc' => 'Còpia Invisible',
        'Subject' => 'Assumpte',
        'Move' => 'Moure',
        'Queue' => 'Cues',
        'Priority' => 'Prioritat',
        'Priorities' => 'Prioritats',
        'Priority Update' => 'Actualitzar la prioritat',
        'Priority added!' => 'Prioritat afegida!',
        'Priority updated!' => 'Prioritat actualitzada!',
        'Signature added!' => 'Signatura afegida!',
        'Signature updated!' => 'Signatura actualitzada!',
        'SLA' => 'SLA',
        'Service Level Agreement' => 'Acord de Nivell de Servei',
        'Service Level Agreements' => 'Acords de Nivell de Servei',
        'Service' => 'Servei',
        'Services' => 'Serveis',
        'State' => 'Estat',
        'States' => 'Estats',
        'Status' => 'Estat',
        'Statuses' => 'Estats',
        'Ticket Type' => 'Tipus de tiquet',
        'Ticket Types' => 'Tipus de tiquets',
        'Compose' => 'Redactar',
        'Pending' => 'Pendent',
        'Owner' => 'Propietari',
        'Owner Update' => 'Actualitzar Propietari',
        'Responsible' => 'Responsable',
        'Responsible Update' => 'Actualitzar Responsable',
        'Sender' => 'Remitent',
        'Article' => 'Article',
        'Ticket' => 'Tiquet',
        'Createtime' => 'Data de creació',
        'plain' => 'text',
        'Email' => 'Correu',
        'email' => 'correu',
        'Close' => 'Tancar',
        'Action' => 'Acció',
        'Attachment' => 'Adjunt',
        'Attachments' => 'Adjunts',
        'This message was written in a character set other than your own.' =>
            'Aquest missatge va ser escrit usant un joc de caràcters distint al seu',
        'If it is not displayed correctly,' => 'Si no es mostra correctament',
        'This is a' => 'Aquest és un',
        'to open it in a new window.' => 'Per a obrir en una nova finestra',
        'This is a HTML email. Click here to show it.' => 'Aquest és un missatge HTML. Faci clic aquí per a mostrar-lo.',
        'Free Fields' => 'Camps lliures',
        'Merge' => 'Fusionar',
        'merged' => 'fusionat',
        'closed successful' => 'tancat amb èxit',
        'closed unsuccessful' => 'tancat sense èxit ',
        'Locked Tickets Total' => 'Tiquets bloquejats-Total',
        'Locked Tickets Reminder Reached' => 'Tiquets bloquejats-Recordatori aconseguit',
        'Locked Tickets New' => 'Tiquets bloquejats-Nou',
        'Responsible Tickets Total' => 'Tiquets responsables-Total',
        'Responsible Tickets New' => 'Tiquets responsables-Nou',
        'Responsible Tickets Reminder Reached' => 'Tiquets responsables-Recordatori aconseguit',
        'Watched Tickets Total' => 'Tiquets vistos-Total',
        'Watched Tickets New' => 'Tiquets vistos-Nou',
        'Watched Tickets Reminder Reached' => 'Tiquets vistos-Recordatori aconseguit',
        'All tickets' => 'Tots els tiquets',
        'Available tickets' => 'Tiquets disponibles',
        'Escalation' => 'Escalat',
        'last-search' => 'última recerca',
        'QueueView' => 'Veure la cua',
        'Ticket Escalation View' => 'Vista escalat de tiquet',
        'Message from' => 'Missatge de',
        'End message' => 'Final del missatge',
        'Forwarded message from' => 'Missatge reexpedit de',
        'End forwarded message' => 'Final del missatge reexpedit',
        'Bounce Article to a different mail address' => '',
        'new' => 'nou',
        'open' => 'obert',
        'Open' => 'Obert',
        'Open tickets' => 'Tiquets oberts',
        'closed' => 'tancat',
        'Closed' => 'Tancat',
        'Closed tickets' => 'Tiquets tancats',
        'removed' => 'eliminat',
        'pending reminder' => 'recordatori pendent',
        'pending auto' => 'pendent auto',
        'pending auto close+' => 'pendent auto close+',
        'pending auto close-' => 'pendent auto close-',
        'email-external' => 'correu-extern',
        'email-internal' => 'correu-intern',
        'note-external' => 'nota-externa',
        'note-internal' => 'nota-interna',
        'note-report' => 'nota-informe',
        'phone' => 'telèfon',
        'sms' => 'sms',
        'webrequest' => 'Sol·licitud via web',
        'lock' => 'bloquejat',
        'unlock' => 'desbloquejat',
        'very low' => 'molt baix',
        'low' => 'baix',
        'normal' => 'normal',
        'high' => 'alt',
        'very high' => 'molt alt',
        '1 very low' => '1 molt baix',
        '2 low' => '2 baix',
        '3 normal' => '3 normal',
        '4 high' => '4 alt',
        '5 very high' => '5 molt alt',
        'auto follow up' => 'auto seguiment',
        'auto reject' => 'auto rebuig',
        'auto remove' => 'auto eliminar',
        'auto reply' => 'auto respondre',
        'auto reply/new ticket' => 'auto respondre/nou tiquet',
        'Create' => 'Crear',
        'Answer' => '',
        'Phone call' => 'Cridada telefònica',
        'Ticket "%s" created!' => 'Tiquet "%s" creat!',
        'Ticket Number' => 'Nombre tiquet',
        'Ticket Object' => 'Objecte tiquet',
        'No such Ticket Number "%s"! Can\'t link it!' => 'No existeix el tiquet Nombre "%s"! No pot vincular-lo!',
        'You don\'t have write access to this ticket.' => 'No té accés d\'escriptura a aquest tiquet.',
        'Sorry, you need to be the ticket owner to perform this action.' =>
            'Ho sentim, necessita ser el propietari del tiquet per realitzar aquesta acció.',
        'Please change the owner first.' => '',
        'Ticket selected.' => 'Tiquet seleccionat.',
        'Ticket is locked by another agent.' => 'Tiquet bloquejat per un altre agent.',
        'Ticket locked.' => 'Tiquet bloquejat',
        'Don\'t show closed Tickets' => 'No mostrar els tiquets tancats',
        'Show closed Tickets' => 'Mostrar Tiquets tancats',
        'New Article' => 'Nou article',
        'Unread article(s) available' => 'Article(s) no llegit(s) disponible(s)',
        'Remove from list of watched tickets' => 'Eliminar de la llista de tiquets vists',
        'Add to list of watched tickets' => 'Afegir a la llista de tiquets vists',
        'Email-Ticket' => 'Tiquet-Correu',
        'Create new Email Ticket' => 'Crea nou tiquet de correu',
        'Phone-Ticket' => 'Tiquet-Telefònic',
        'Search Tickets' => 'Cercar tiquets',
        'Edit Customer Users' => 'Editar els usuaris del client',
        'Edit Customer Company' => 'Editar empresa del client',
        'Bulk Action' => 'Acció múltiple',
        'Bulk Actions on Tickets' => 'Acció múltiple en tiquets',
        'Send Email and create a new Ticket' => 'Enviar un correu i crear un nou tiquet',
        'Create new Email Ticket and send this out (Outbound)' => 'Crea nou tiquet de correu i ho envia (sortida)',
        'Create new Phone Ticket (Inbound)' => 'Crea nou tiquet telefònic (entrada)',
        'Address %s replaced with registered customer address.' => '',
        'Customer user automatically added in Cc.' => '',
        'Overview of all open Tickets' => 'Resum de tots els tiquets oberts',
        'Locked Tickets' => 'Tiquets bloquejats',
        'My Locked Tickets' => 'Els meus tiquets bloquejats',
        'My Watched Tickets' => 'Els meus tiquets vists',
        'My Responsible Tickets' => 'Els meus tiquets responsables',
        'Watched Tickets' => 'Tiquets observats',
        'Watched' => 'Observat',
        'Watch' => 'Veure',
        'Unwatch' => 'No veure',
        'Lock it to work on it' => 'Bloquejar-lo per a treballar en ell',
        'Unlock to give it back to the queue' => '',
        'Show the ticket history' => 'Mostrar la història del tiquet',
        'Print this ticket' => 'Imprimir aquest tiquet',
        'Print this article' => '',
        'Split' => '',
        'Split this article' => '',
        'Forward article via mail' => '',
        'Change the ticket priority' => 'Canviar la prioritat del tiquet',
        'Change the ticket free fields!' => 'Canviar els camps lliures del tiquet!',
        'Link this ticket to other objects' => 'Enllaçar aquest tiquet a altres objectes',
        'Change the owner for this ticket' => 'Canviar el propietari de aquest tiquet',
        'Change the  customer for this ticket' => '',
        'Add a note to this ticket' => 'Afegir una nota a aquest tiquet',
        'Merge into a different ticket' => 'Unir amb un tiquet diferent',
        'Set this ticket to pending' => 'Col·locar aquest tiquet com pendent',
        'Close this ticket' => 'Tancar aquest tiquet',
        'Look into a ticket!' => 'Revisar un tiquet',
        'Delete this ticket' => 'Eliminar aquest tiquet',
        'Mark as Spam!' => 'Marcar com correu no desitjat!',
        'My Queues' => 'Les meves Cues',
        'Shown Tickets' => 'Mostrar tiquets',
        'Shown Columns' => '',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' =>
            'El seu correu amb nombre de tiquet "<OTRS_TICKET>" es va unir a "<OTRS_MERGE_TO_TICKET>".',
        'Ticket %s: first response time is over (%s)!' => 'Tiquet %s: Temps per a primera resposta ha vençut (%s)!',
        'Ticket %s: first response time will be over in %s!' => 'Tiquet %s: Temps per a primera resposta està per vèncer en %s!',
        'Ticket %s: update time is over (%s)!' => 'Tiquet %s: Temps per a actualització ha vençut (%s)!',
        'Ticket %s: update time will be over in %s!' => 'Tiquet %s: Temps per a actualització està per vèncer en %s!',
        'Ticket %s: solution time is over (%s)!' => 'Tiquet %s: Temps per a solució ha vençut (%s)!',
        'Ticket %s: solution time will be over in %s!' => 'Tiquet %s: Temps per a solució està per vèncer en %s!',
        'There are more escalated tickets!' => 'No hi ha més tiquets escalats',
        'Plain Format' => 'Sense format',
        'Reply All' => 'Respondre a tots',
        'Direction' => 'Direcció',
        'Agent (All with write permissions)' => 'Agent (tots amb permisos d\'escriptura)',
        'Agent (Owner)' => 'Agent (Propietari)',
        'Agent (Responsible)' => 'Agent (Responsable)',
        'New ticket notification' => 'Notificació de nous tiquets',
        'Send me a notification if there is a new ticket in "My Queues".' =>
            'Notifiqui\'m si hi ha un nou tiquet en "Les meves Cues".',
        'Send new ticket notifications' => 'Enviar notificacions de nous tiquets',
        'Ticket follow up notification' => 'Notificació de seguiment de tiquet',
        'Ticket lock timeout notification' => 'Notificació de bloqueig de tiquets per temps',
        'Send me a notification if a ticket is unlocked by the system.' =>
            'Notifiqui\'m si un tiquet és desbloquejat pel sistema',
        'Send ticket lock timeout notifications' => 'Enviar notificacions de temps d\'espera de tiquets bloquejats',
        'Ticket move notification' => 'Notificació de tiquets moguts',
        'Send me a notification if a ticket is moved into one of "My Queues".' =>
            'Notifiqui\'m si un tiquet és mogut en una de "Les meves Cues". ',
        'Send ticket move notifications' => 'Enviar notificacions de tiquets moguts',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' =>
            'Cua de selecció de cues favorites. Vostè també pot ser notificat d\'aquestes cues per correu si està habilitat',
        'Custom Queue' => 'Cua personal',
        'QueueView refresh time' => 'Temps d\'actualització de la vista de cues',
        'If enabled, the QueueView will automatically refresh after the specified time.' =>
            'Si s\'activa, la vista de cues s\'actualitzarà automàticament després del temps especificat.',
        'Refresh QueueView after' => 'Actualitzar la vista de cues després',
        'Screen after new ticket' => 'Pantalla posterior a nou tiquet',
        'Show this screen after I created a new ticket' => 'Mostrar aquesta pantalla després d\'haver creat un nou tiquet',
        'Closed Tickets' => 'Tiquets tancats',
        'Show closed tickets.' => 'Mostrar tiquets tancats',
        'Max. shown Tickets a page in QueueView.' => 'Quantitat de Tiquets a mostrar en la Vista de Cua',
        'Ticket Overview "Small" Limit' => 'Límit descripció "Petita" de tiquet',
        'Ticket limit per page for Ticket Overview "Small"' => 'Límit de tiquets per pàgina per a descripció "Petita" de tiquet',
        'Ticket Overview "Medium" Limit' => 'Límit descripció "Mitjana" de tiquet',
        'Ticket limit per page for Ticket Overview "Medium"' => 'Límit de tiquets per pàgina per a descripció "Mitjana" de tiquet',
        'Ticket Overview "Preview" Limit' => 'Límit descripció "Vista prèvia" de tiquet',
        'Ticket limit per page for Ticket Overview "Preview"' => 'Límit de tiquets per pàgina per a descripció "Vista prèvia" de tiquet',
        'Ticket watch notification' => 'Notificació de rellotge de tiquet',
        'Send me the same notifications for my watched tickets that the ticket owners will get.' =>
            'Enviï\'m les mateixes notificacions que rebran els propietaris dels tiquets que veig.',
        'Send ticket watch notifications' => 'Enviar notificacions de tiquets vists',
        'Out Of Office Time' => 'Fora de l\'oficina',
        'New Ticket' => 'NouTiquet',
        'Create new Ticket' => 'Crear un nou tiquet',
        'Customer called' => 'Client cridat ',
        'phone call' => 'Cridada telefònica',
        'Phone Call Outbound' => 'Telèfon de trucades sortints',
        'Phone Call Inbound' => 'Telèfon de trucades entrants',
        'Reminder Reached' => 'Recordatori aconseguit',
        'Reminder Tickets' => 'Tiquets de recordatoris',
        'Escalated Tickets' => 'Tiquets escalats',
        'New Tickets' => 'Nous tiquets',
        'Open Tickets / Need to be answered' => 'Tiquets Oberts / Que necessiten d\'una resposta',
        'All open tickets, these tickets have already been worked on, but need a response' =>
            'Tots els tiquets oberts, ja s\'ha treballat en aquests tiquets, però necessiten una resposta',
        'All new tickets, these tickets have not been worked on yet' => 'Totes els tiquets nous, en aquests tiquets encara no s\'ha treballat',
        'All escalated tickets' => 'Tots els tiquets escalats',
        'All tickets with a reminder set where the reminder date has been reached' =>
            'Totes els tiquet amb un conjunt de recordatoris on s\'ha arribat a la data de recordatori',
        'Archived tickets' => 'Tiquets arxivats',
        'Unarchived tickets' => 'Tiquets sense arxivar',
        'Ticket Information' => '',
        'History::Move' => 'Tiquet mogut a la cua "%s" (%s) de la cua "%s" (%s).',
        'History::TypeUpdate' => 'Tipus actualitzat a %s (ANEU=%s).',
        'History::ServiceUpdate' => 'Servei actualitzat a %s (ANEU=%s).',
        'History::SLAUpdate' => 'SLA actualitzada a %s (ANEU=%s).',
        'History::NewTicket' => 'Nou tiquet [s] creat (Q=%s;P=%s;S=%s).',
        'History::FollowUp' => 'Seguiment per a [s]. %s',
        'History::SendAutoReject' => 'Rebuig automàtic enviat a "%s".',
        'History::SendAutoReply' => 'Resposta automàtica enviada a "%s".',
        'History::SendAutoFollowUp' => 'Seguiment automàtic enviat a "%s".',
        'History::Forward' => 'Reexpedit a "%s".',
        'History::Bounce' => 'Retornar a "%s".',
        'History::SendAnswer' => 'Correu enviat a "%s".',
        'History::SendAgentNotification' => '"%s"-notificació enviada a "%s".',
        'History::SendCustomerNotification' => 'Notificació; enviada a "%s".',
        'History::EmailAgent' => 'Correu enviat al agent.',
        'History::EmailCustomer' => 'Afegit correu. %s',
        'History::PhoneCallAgent' => 'El agent va cridar al client.',
        'History::PhoneCallCustomer' => 'El client va cridar.',
        'History::AddNote' => 'Anota afegida (%s)',
        'History::Lock' => 'Tiquet bloquejat.',
        'History::Unlock' => 'Tiquet desbloquejat.',
        'History::TimeAccounting' => '%s unitat(s) de temps comptabilitzades. Nou total : %s unitat(s) de temps.',
        'History::Remove' => '%s',
        'History::CustomerUpdate' => 'Actualitzat: %s',
        'History::PriorityUpdate' => 'Canviar prioritat de "%s" (%s) a "%s" (%s).',
        'History::OwnerUpdate' => 'El nou propietari és "%s" (ID=%s).',
        'History::LoopProtection' => 'Protecció de llaç! NO es va enviar auto-resposta a "%s".',
        'History::Misc' => '%s',
        'History::SetPendingTime' => 'Actualitzat: %s',
        'History::StateUpdate' => 'Antic: "%s" Nou: "%s"',
        'History::TicketDynamicFieldUpdate' => 'Actualitzat: %s=%s;%s=%s;',
        'History::WebRequestCustomer' => 'Sol·licitud de client per web.',
        'History::TicketLinkAdd' => 'Afegit enllaç al tiquet "%s".',
        'History::TicketLinkDelete' => 'Eliminat enllaç al tiquet "%s".',
        'History::Subscribe' => 'Subscriure\'s',
        'History::Unsubscribe' => 'Cancel·lar subscripció',
        'History::SystemRequest' => 'Petició de sistema',
        'History::ResponsibleUpdate' => 'Actualització del responsable',
        'History::ArchiveFlagUpdate' => 'Actualització de l\'opció d\'arxiu',
        'History::TicketTitleUpdate' => '',

        # Template: AAAWeekDay
        'Sun' => 'Diu',
        'Mon' => 'Dil',
        'Tue' => 'Dim',
        'Wed' => 'DiM',
        'Thu' => 'Dij',
        'Fri' => 'Div',
        'Sat' => 'Dis',

        # Template: AdminACL
        'ACL Management' => '',
        'Filter for ACLs' => '',
        'Filter' => 'Filtre',
        'ACL Name' => '',
        'Actions' => 'Accions',
        'Create New ACL' => '',
        'Deploy ACLs' => '',
        'Export ACLs' => '',
        'Configuration import' => '',
        'Here you can upload a configuration file to import ACLs to your system. The file needs to be in .yml format as exported by the ACL editor module.' =>
            '',
        'This field is required.' => 'Aquest camp és obligatori.',
        'Overwrite existing ACLs?' => '',
        'Upload ACL configuration' => '',
        'Import ACL configuration(s)' => '',
        'To create a new ACL you can either import ACLs which were exported from another system or create a complete new one.' =>
            '',
        'Changes to the ACLs here only affect the behavior of the system, if you deploy the ACL data afterwards. By deploying the ACL data, the newly made changes will be written to the configuration.' =>
            '',
        'ACLs' => '',
        'Please note: This table represents the execution order of the ACLs. If you need to change the order in which ACLs are executed, please change the names of the affected ACLs.' =>
            '',
        'ACL name' => '',
        'Validity' => 'Validesa',
        'Copy' => '',
        'No data found.' => 'No es van trobar dades.',

        # Template: AdminACLEdit
        'Edit ACL %s' => '',
        'Go to overview' => 'Anar a la descripció',
        'Delete ACL' => '',
        'Delete Invalid ACL' => '',
        'Match settings' => '',
        'Set up matching criteria for this ACL. Use \'Properties\' to match the current screen or \'PropertiesDatabase\' to match attributes of the current ticket that are in the database.' =>
            '',
        'Change settings' => '',
        'Set up what you want to change if the criteria match. Keep in mind that \'Possible\' is a white list, \'PossibleNot\' a black list.' =>
            '',
        'Check the official' => '',
        'documentation' => '',
        'Show or hide the content' => 'Mostrar o ocultar el contingut',
        'Edit ACL information' => '',
        'Stop after match' => 'Parar després de coincidència',
        'Edit ACL structure' => '',
        'Save' => 'Guardar',
        'or' => 'o',
        'Save and finish' => 'Guardar i finalitzar',
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
        'Attachment Management' => 'gestió d\'adjunts',
        'Add attachment' => 'Afegir arxiu adjunt',
        'List' => 'Llista',
        'Download file' => 'Descarregar fitxer',
        'Delete this attachment' => 'Esborrar aquest arxiu adjunt',
        'Add Attachment' => 'Afegir arxiu adjunt',
        'Edit Attachment' => 'Editar arxiu adjunt',

        # Template: AdminAutoResponse
        'Auto Response Management' => 'Gestió de respostes automàtiques',
        'Add auto response' => 'Afegir resposta automàtica',
        'Add Auto Response' => 'Afegir resposta automàtica',
        'Edit Auto Response' => 'Editar resposta automàtica',
        'Response' => 'Resposta',
        'Auto response from' => 'Resposta automática de',
        'Reference' => 'Referència',
        'You can use the following tags' => 'Pot utilitzar les següents etiquetes',
        'To get the first 20 character of the subject.' => 'Per a obtenir els primers 20 caràcters de l\'assumpte.',
        'To get the first 5 lines of the email.' => 'Per a obtenir les primeres 5 línies del correu.',
        'To get the realname of the sender (if given).' => 'Per a obtenir el nom real del remitent (si existeix).',
        'To get the article attribute' => 'Per obtenir l\'atribut article',
        ' e. g.' => ' p. ex.',
        'Options of the current customer user data' => 'Opcions de les dades dels usuaris actuals dels clients',
        'Ticket owner options' => 'Opcions de propietari del tiquet',
        'Ticket responsible options' => 'Opcions de responsable del tiquet',
        'Options of the current user who requested this action' => 'Opcions de l\'usuari actual que va sol·licitar aquesta acció',
        'Options of the ticket data' => 'Opcions de les dades del tiquet',
        'Options of ticket dynamic fields internal key values' => '',
        'Options of ticket dynamic fields display values, useful for Dropdown and Multiselect fields' =>
            '',
        'Config options' => 'Opcions de configuració',
        'Example response' => 'Resposta d\'exemple',

        # Template: AdminCustomerCompany
        'Customer Management' => 'Gestió de Clients',
        'Wildcards like \'*\' are allowed.' => 'Es permeten comodins com \'*\'.',
        'Add customer' => 'Afegir al client',
        'Select' => 'Seleccionar',
        'Please enter a search term to look for customers.' => 'Per favor, introdueixi un terme de recerca per buscar clients.',
        'Add Customer' => 'Afegir client',
        'Edit Customer' => 'Editar client',

        # Template: AdminCustomerUser
        'Customer User Management' => '',
        'Back to search results' => '',
        'Add customer user' => '',
        'Hint' => 'Indici',
        'Customer user are needed to have a customer history and to login via customer panel.' =>
            '',
        'Last Login' => 'Darrera conexió',
        'Login as' => 'Connectar-se com',
        'Switch to customer' => '',
        'Add Customer User' => '',
        'Edit Customer User' => '',
        'This field is required and needs to be a valid email address.' =>
            'Aquest camp és obligatori i ha de ser una adreça vàlida de correu electrònic.',
        'This email address is not allowed due to the system configuration.' =>
            'Aquesta adreça de correu electrònic no està permesa, a causa de la configuració del sistema.',
        'This email address failed MX check.' => 'Aquesta adreça de correu electrònic va fallar la comprovació de MX.',
        'DNS problem, please check your configuration and the error log.' =>
            'Problema de DNS, per favor revisi la seva configuració i el registre d\'errors.',
        'The syntax of this email address is incorrect.' => 'La sintaxi d\'aquesta adreça de correu electrònic és incorrecta.',

        # Template: AdminCustomerUserGroup
        'Manage Customer-Group Relations' => 'Gestionar relacions Grup-Client',
        'Notice' => 'Notícia',
        'This feature is disabled!' => 'Aquesta característica està desactivada!',
        'Just use this feature if you want to define group permissions for customers.' =>
            'Només utilitzar aquesta funció si desitja definir permisos de grup per als clients.',
        'Enable it here!' => 'Activar aquí',
        'Search for customers.' => 'Recerca de clients.',
        'Edit Customer Default Groups' => 'Edición de grupos predeterminados del cliente',
        'These groups are automatically assigned to all customers.' => 'Aquests grups s\'assignen automàticament a tots els clients.',
        'You can manage these groups via the configuration setting "CustomerGroupAlwaysGroups".' =>
            'Pot administrar aquests grups a través del paràmetre "CustomerGroupAlwaysGroups".',
        'Filter for Groups' => 'Filtre per als grups',
        'Select the customer:group permissions.' => 'Seleccioni el client: permisos de grup.',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the customer).' =>
            'Si no se selecciona gens, llavors no hi ha permisos en aquest grup (els tiquets no estaran disponibles per al client).',
        'Search Results' => 'Resultats de la recerca',
        'Customers' => 'Clients',
        'No matches found.' => 'No es va trobar resultat.',
        'Change Group Relations for Customer' => 'Canviar les relacions de grup per al client',
        'Change Customer Relations for Group' => 'Canviar les relacions de client per al grup',
        'Toggle %s Permission for all' => 'Canviar %s permisos per a tots',
        'Toggle %s permission for %s' => 'Canviar %s permisos per a %s',
        'Customer Default Groups:' => 'Grups per defecte del client',
        'No changes can be made to these groups.' => 'No es poden fer canvis a aquests grups.',
        'ro' => 'ro',
        'Read only access to the ticket in this group/queue.' => 'Accés de només lectura als tiquets en aquest grup/cua.',
        'rw' => 'rw',
        'Full read and write access to the tickets in this group/queue.' =>
            'Accés complet de lectura i escriptura als tiquets en aquest grup/cua.',

        # Template: AdminCustomerUserService
        'Manage Customer-Services Relations' => 'Gestionar relacions Client-Serveis',
        'Edit default services' => 'Editar serveis predeterminats',
        'Filter for Services' => 'Filtre per al serveis',
        'Allocate Services to Customer' => 'Assignar serveis al client',
        'Allocate Customers to Service' => 'Assignar clients al servei',
        'Toggle active state for all' => 'Canviar estat actiu per a tots',
        'Active' => 'Actiu',
        'Toggle active state for %s' => 'Canviar estat actiu per a %s',

        # Template: AdminDynamicField
        'Dynamic Fields Management' => 'Gestió de camps dinàmics',
        'Add new field for object' => '',
        'To add a new field, select the field type form one of the object\'s list, the object defines the boundary of the field and it can\'t be changed after the field creation.' =>
            'Per agregar un camp nou, seleccioni el tipus de camp d\'una de les llistes de l\'objecte. L\'objecte defineix el límit del camp i no pot ser canviat després de la creació de camp.',
        'Dynamic Fields List' => 'Llista de camps dinàmics',
        'Dynamic fields per page' => 'Camps dinàmics per pàgina',
        'Label' => 'Etiqueta',
        'Order' => 'Ordenar',
        'Object' => 'Objecte',
        'Delete this field' => '',
        'Do you really want to delete this dynamic field? ALL associated data will be LOST!' =>
            '',
        'Delete field' => '',

        # Template: AdminDynamicFieldCheckbox
        'Field' => 'Camp',
        'Go back to overview' => 'Tornar a la pàgina principal',
        'General' => 'General',
        'This field is required, and the value should be alphabetic and numeric characters only.' =>
            'Aquest camp és obligatori, i el valor han de ser caràcters alfabètics i numèrics.',
        'Must be unique and only accept alphabetic and numeric characters.' =>
            'Ha de ser únic i només s\'accepten caràcters alfabètics i numèrics.',
        'Changing this value will require manual changes in the system.' =>
            'El canvi d\'aquest valor requerirà canvis manuals del sistema.',
        'This is the name to be shown on the screens where the field is active.' =>
            'Aquest és el nom que es mostrarà en les pantalles on el camp estigui actiu.',
        'Field order' => 'Ordre dels camps',
        'This field is required and must be numeric.' => 'Aquest camp és obligatori i ha de ser numèric.',
        'This is the order in which this field will be shown on the screens where is active.' =>
            'Aquest és l\'ordre en què aquest camp es mostrarà en les pantalles on estigui actiu.',
        'Field type' => 'Tipus de camp',
        'Object type' => 'Tipus d\'objecte',
        'Internal field' => '',
        'This field is protected and can\'t be deleted.' => '',
        'Field Settings' => ' Configuració de camp',
        'Default value' => 'Valor predeterminat',
        'This is the default value for this field.' => 'Aquest és el valor predeterminat per a aquest camp.',

        # Template: AdminDynamicFieldDateTime
        'Default date difference' => 'Diferència de data per defecte',
        'This field must be numeric.' => 'Aquest camp ha de ser numèric.',
        'The difference from NOW (in seconds) to calculate the field default value (e.g. 3600 or -60).' =>
            'La diferència a partir d\'ara (en segons) per calcular el valor predeterminat del camp (per exemple 3600 o -60).',
        'Define years period' => 'Defineixi Període d\'Anys',
        'Activate this feature to define a fixed range of years (in the future and in the past) to be displayed on the year part of the field.' =>
            '',
        'Years in the past' => 'Anys en el passat',
        'Years in the past to display (default: 5 years).' => 'Anys en el passat per mostrar (per defecte: 5 anys).',
        'Years in the future' => 'Anys en el futur',
        'Years in the future to display (default: 5 years).' => 'Anys en el futur per mostrar (per defecte: 5 anys).',
        'Show link' => 'Mostrar enllaç',
        'Here you can specify an optional HTTP link for the field value in Overviews and Zoom screens.' =>
            'Aquí pot especificar un enllaç HTTP opcional per al valor del camp en les pantalles de Detall i Resum.',

        # Template: AdminDynamicFieldDropdown
        'Possible values' => 'Valors possibles',
        'Key' => 'Clau',
        'Value' => 'Valor',
        'Remove value' => 'Treure valor',
        'Add value' => 'Afegir valor',
        'Add Value' => 'Afegir valor',
        'Add empty value' => 'Afegir valor buit',
        'Activate this option to create an empty selectable value.' => 'Activar aquesta opció per crear un valor seleccionable buit.',
        'Tree View' => '',
        'Activate this option to display values as a tree.' => '',
        'Translatable values' => 'Valors traduïbles',
        'If you activate this option the values will be translated to the user defined language.' =>
            'Si s\'activa aquesta opció, els valors seran traduïts al llenguatge definit per l\'usuari.',
        'Note' => 'Nota',
        'You need to add the translations manually into the language translation files.' =>
            'És necessari afegir les traduccions de forma manual en els arxius de traducció d\'idiomes.',

        # Template: AdminDynamicFieldMultiselect

        # Template: AdminDynamicFieldText
        'Number of rows' => 'Nombre de files',
        'Specify the height (in lines) for this field in the edit mode.' =>
            'Especificar l\'altura (en línies) per a aquest camp en el mode d\'edició.',
        'Number of cols' => 'Nombre de columnes',
        'Specify the width (in characters) for this field in the edit mode.' =>
            'Especificar l\'ample (en caràcters) per a aquest camp en el mode d\'edició.',

        # Template: AdminEmail
        'Admin Notification' => 'Notificació a l\'administrador',
        'With this module, administrators can send messages to agents, group or role members.' =>
            'Amb aquest mòdul, els administradors poden enviar missatges als agents, grups o rols.',
        'Create Administrative Message' => 'Crear missatge administratiu',
        'Your message was sent to' => 'El seu missatge ha estat enviat a',
        'Send message to users' => 'Enviar un missatge als usuaris',
        'Send message to group members' => 'Enviar un missatge als membres del grup',
        'Group members need to have permission' => 'Els membres del grup han de tenir permís',
        'Send message to role members' => 'Enviar un missatge a membres del rol',
        'Also send to customers in groups' => 'També enviar als clients en grups',
        'Body' => 'Cos',
        'Send' => 'Enviar',

        # Template: AdminGenericAgent
        'Generic Agent' => 'Agent genèric',
        'Add job' => 'Afegir tasca',
        'Last run' => 'Última execució',
        'Run Now!' => 'Executar ara',
        'Delete this task' => 'Eliminar aquesta tasca',
        'Run this task' => 'Executar aquesta tasca',
        'Job Settings' => 'Configuració de tasques',
        'Job name' => 'Nom de tasca',
        'The name you entered already exists.' => 'El nom introduït ja existeix.',
        'Toggle this widget' => 'Canviar aquest widget',
        'Automatic execution (multiple tickets)' => '',
        'Execution Schedule' => '',
        'Schedule minutes' => 'Horari minuts',
        'Schedule hours' => 'Horari hores',
        'Schedule days' => 'Horari dies',
        'Currently this generic agent job will not run automatically.' =>
            'Actualment aquesta tasca d\'agent genèric no s\'executarà automàticament.',
        'To enable automatic execution select at least one value from minutes, hours and days!' =>
            'Per habilitar l\'execució automàtica seleccionar almenys un valor de minuts, hores i dies!',
        'Event based execution (single ticket)' => '',
        'Event Triggers' => 'Gallets d\'esdeveniment',
        'List of all configured events' => '',
        'Delete this event' => 'Eliminar aquest esdeveniment',
        'Additionally or alternatively to a periodic execution, you can define ticket events that will trigger this job.' =>
            '',
        'If a ticket event is fired, the ticket filter will be applied to check if the ticket matches. Only then the job is run on that ticket.' =>
            '',
        'Do you really want to delete this event trigger?' => 'Realment desitja eliminar aquest gallet d\'esdeveniments?',
        'Add Event Trigger' => 'Afegir gallet d\'esdeveniment',
        'To add a new event select the event object and event name and click on the "+" button' =>
            'Per agregar un nou esdeveniment seleccioni l\'objecte d\'esdeveniment i el nom de l\'esdeveniment i faci clic en el botó "+"',
        'Duplicate event.' => '',
        'This event is already attached to the job, Please use a different one.' =>
            '',
        'Delete this Event Trigger' => 'Esborrar aquest gallet d\'esdeveniment',
        'Ticket Filter' => 'Filtre de tiquet',
        '(e. g. 10*5155 or 105658*)' => '(ex: 10*5155 o 105658*)',
        '(e. g. 234321)' => '(ex: 234321)',
        'Customer login' => 'Connexió de client',
        '(e. g. U5150)' => '(ex: U5150)',
        'Fulltext-search in article (e. g. "Mar*in" or "Baue*").' => 'Recerca de text completa en article (p. ex. "Mar*in" " o "Baue*").',
        'Agent' => 'Agent',
        'Ticket lock' => 'Bloqueig de tiquet',
        'Create times' => 'Temps de creació',
        'No create time settings.' => 'No hi ha valors per a temps de creació',
        'Ticket created' => 'Tiquet creat',
        'Ticket created between' => 'Tiquet creat entre',
        'Change times' => 'Temps de canvi',
        'No change time settings.' => 'No hi ha ajustos de temps de canvi.',
        'Ticket changed' => 'Tiquet canviat',
        'Ticket changed between' => 'Tiquet canviat entre',
        'Close times' => 'Temps de tancat',
        'No close time settings.' => 'Sense configuració de temps tancat',
        'Ticket closed' => 'Tiquet tancat',
        'Ticket closed between' => 'Tiquet tancat entre',
        'Pending times' => 'Temps de pendent',
        'No pending time settings.' => 'No hi ha valors per a temps de pendent',
        'Ticket pending time reached' => 'Temps de Pendent del Tiquet arribat',
        'Ticket pending time reached between' => 'Temps de Pendent del Tiquet arribat entre',
        'Escalation times' => 'Temps d\'escalat',
        'No escalation time settings.' => 'No hi ha valors de temps d\'escalat.',
        'Ticket escalation time reached' => 'Es va aconseguir el temps d\'escalat del tiquet',
        'Ticket escalation time reached between' => 'Es va aconseguir el temps d\'escalat del tiquet entre',
        'Escalation - first response time' => 'Escalat - temps de primera resposta',
        'Ticket first response time reached' => 'Es va aconseguir el temps de primera resposta del tiquet',
        'Ticket first response time reached between' => 'Es va aconseguir el temps de primera resposta del tiquet entre',
        'Escalation - update time' => 'Escalat - temps d\'actualització',
        'Ticket update time reached' => 'Es va aconseguir el temps d\'actualització del tiquet',
        'Ticket update time reached between' => 'Es va aconseguir el temps d\'actualització del tiquet entre',
        'Escalation - solution time' => 'Escalat - temps de solució',
        'Ticket solution time reached' => 'Es va aconseguir el temps de solució del tiquet',
        'Ticket solution time reached between' => 'Es va aconseguir el temps de solució del tiquet entre',
        'Archive search option' => 'Opció de recerca d\'arxiu',
        'Ticket Action' => 'Acció de tiquet',
        'Set new service' => 'Establir un nou servei',
        'Set new Service Level Agreement' => 'Establir un nou Acord de Nivell de Serveis',
        'Set new priority' => 'Establir una nova prioritat',
        'Set new queue' => 'Establir una nova cua',
        'Set new state' => 'Establir un nou estat',
        'Pending date' => 'Data pendent',
        'Set new agent' => 'Establir un nou agent',
        'new owner' => 'now propietari',
        'new responsible' => 'nou responsable',
        'Set new ticket lock' => 'Establir un nou bloqueig de ticket',
        'New customer' => 'Nou client',
        'New customer ID' => 'Nou ID de client',
        'New title' => 'Nou títol',
        'New type' => 'Nou tipus',
        'New Dynamic Field Values' => 'Nous valors de camp dinàmic',
        'Archive selected tickets' => 'Guardar tiquets seleccionats',
        'Add Note' => 'Afegir Nota',
        'Time units' => 'Unitats de temps',
        '(work units)' => '',
        'Ticket Commands' => 'Ordres de tiquet',
        'Send agent/customer notifications on changes' => 'Enviar a l\'agent/client notificacions sobre els canvis',
        'CMD' => 'CMD',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' =>
            'S\'executarà el comandament. ARG%[0] el nombre del tiquet. ARG%[0] l\'id del tiquet.',
        'Delete tickets' => 'Eliminar tiquets',
        'Warning: All affected tickets will be removed from the database and cannot be restored!' =>
            'Advertiment: Tots els tiquets afectats seran eliminats de la base de dades i no es podran recuperar!',
        'Execute Custom Module' => 'Executar el mòdul personalitzat',
        'Param %s key' => 'Paràm %s clau',
        'Param %s value' => 'Paràm %s valor',
        'Save Changes' => 'Guardar canvis',
        'Results' => 'Resultats',
        '%s Tickets affected! What do you want to do?' => '%s Tiquets afectats! Què vol fer?',
        'Warning: You used the DELETE option. All deleted tickets will be lost!' =>
            'Advertiment: Vostè va usar l\'opció ESBORRAR. Tots els tiquets eliminats es perdran!',
        'Edit job' => 'Editar tasca',
        'Run job' => 'Executar tasca',
        'Affected Tickets' => 'Tiquets afectats',

        # Template: AdminGenericInterfaceDebugger
        'GenericInterface Debugger for Web Service %s' => 'Depurador d\'interfície genèrica per al servei web %s',
        'Web Services' => 'Serveis Web',
        'Debugger' => 'Depurador',
        'Go back to web service' => 'Tornar a serveis web',
        'Clear' => 'Esborrar',
        'Do you really want to clear the debug log of this web service?' =>
            'Realment desitja esborrar el registre de depuració d\'aquest servei web?',
        'Request List' => 'Llista de sol·licituds',
        'Time' => 'Temps',
        'Remote IP' => 'IP remota',
        'Loading' => 'Carregant',
        'Select a single request to see its details.' => 'Seleccioni una única sol·licitud per veure els seus detalls.',
        'Filter by type' => 'Filtrar per tipus',
        'Filter from' => 'Filtrar de',
        'Filter to' => 'para',
        'Filter by remote IP' => 'Filtrar per IP remota',
        'Refresh' => 'Actualitzar',
        'Request Details' => 'Detalls de la sol·licitud',
        'An error occurred during communication.' => 'Es va produir un error durant la comunicació.',
        'Clear debug log' => 'Esborrar registre de depuració',

        # Template: AdminGenericInterfaceInvokerDefault
        'Add new Invoker to Web Service %s' => 'Afegir nou invocador al servei web %s',
        'Change Invoker %s of Web Service %s' => 'Canviar invocador %s del servei web %s',
        'Add new invoker' => 'Afegir nou invocador',
        'Change invoker %s' => 'Canviar invocador %s',
        'Do you really want to delete this invoker?' => 'Realment desitja eliminar aquest invocador?',
        'All configuration data will be lost.' => 'Totes les dades de configuració es perdran.',
        'Invoker Details' => 'Detalls de l\'invocador',
        'The name is typically used to call up an operation of a remote web service.' =>
            'El nom se sol utilitzar per cridar a una operació d\'un servei web remot.',
        'Please provide a unique name for this web service invoker.' => 'Per favor, proporcioni un nom únic per aquest invocador de serveis web.',
        'Invoker backend' => 'Motor de l\'invocador',
        'This OTRS invoker backend module will be called to prepare the data to be sent to the remote system, and to process its response data.' =>
            'Aquest mòdul del motor de l\'invocador de OTRS es dirà per preparar les dades per ser enviats al sistema remot, i per processar les seves dades de resposta.',
        'Mapping for outgoing request data' => 'Assignació per a les dades de petició sortints',
        'Configure' => 'Configurar',
        'The data from the invoker of OTRS will be processed by this mapping, to transform it to the kind of data the remote system expects.' =>
            'Les dades de l\'invocador de OTRS seran processats ​​per aquesta assignació, per transformar-la en el tipus de dades que el sistema remot espera.',
        'Mapping for incoming response data' => 'Assignació per a les dades de petició entrants',
        'The response data will be processed by this mapping, to transform it to the kind of data the invoker of OTRS expects.' =>
            'Les dades de resposta seran processats per aquesta assignació, per transformar-los en el tipus de dades que l\'invocador de OTRS espera.',
        'Asynchronous' => 'Asíncron',
        'This invoker will be triggered by the configured events.' => 'Aquest invocador s\'activarà pels esdeveniments configurats.',
        'Asynchronous event triggers are handled by the OTRS Scheduler in background (recommended).' =>
            'Els gallets d\'esdeveniments asíncrons són gestionats pel programador de OTRS en segon pla (recomanat).',
        'Synchronous event triggers would be processed directly during the web request.' =>
            'Els gallets d\'esdeveniments síncrons es processen directament en les peticions web.',
        'Save and continue' => 'Guardar i continuar',
        'Delete this Invoker' => 'Esborrar aquest invocador',

        # Template: AdminGenericInterfaceMappingSimple
        'GenericInterface Mapping Simple for Web Service %s' => '',
        'Go back to' => '',
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
        'Import' => 'Importar',
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
        'Show or hide the content.' => '',
        'Restore' => '',

        # Template: AdminGroup
        'WARNING: When you change the name of the group \'admin\', before making the appropriate changes in the SysConfig, you will be locked out of the administrations panel! If this happens, please rename the group back to admin per SQL statement.' =>
            'ADVERTIMENT: Quan es canvia el nom del grup \'admin\', abans de fer els canvis apropiats en SysConfig, se li bloqueja l\'accés al panell d\'administració! Si això ocorre, per favor, canviï el nom del grup de nou a admin amb una sentència SQL.',
        'Group Management' => 'Administració de grups',
        'Add group' => 'Afegir grup',
        'The admin group is to get in the admin area and the stats group to get stats area.' =>
            'El grup admin és per a usar l\'àrea d\'administració i el grup stats per a usar l\'àrea estadisticas.',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...). ' =>
            'Crear nous grups per gestionar permisos d\'accés per als diferents grups d\'agents (per exemple, el departament de compres, departament de suport, el departament de vendes, ...).',
        'It\'s useful for ASP solutions. ' => 'És útil per a les solucions ASP.',
        'Add Group' => 'Afegir grup',
        'Edit Group' => 'Editar grup',

        # Template: AdminLog
        'System Log' => 'Traces del Sistema',
        'Here you will find log information about your system.' => 'Aquí trobarà informació de registre sobre el seu sistema.',
        'Hide this message' => '',
        'Recent Log Entries' => '',

        # Template: AdminMailAccount
        'Mail Account Management' => 'Gestió de comptes de correu',
        'Add mail account' => 'Afegir compte de correu',
        'All incoming emails with one account will be dispatched in the selected queue!' =>
            'Tots els correus d\'entrada seran enviats a la cua seleccionada',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' =>
            'Si es pot confiar en el seu compte, els camps X-OTRS ja existents en la capçalera en el moment de l\'arribada (per a prioritat, ...) s\'utilitzaran! El filtre PostMaster s\'utilitzarà de totes maneres.',
        'Host' => 'Amfitrió',
        'Delete account' => 'Eliminar compte',
        'Fetch mail' => 'Recuperar el correu',
        'Add Mail Account' => 'Afegir compte de correu',
        'Example: mail.example.com' => 'Exemple: mail.example.com',
        'IMAP Folder' => '',
        'Only modify this if you need to fetch mail from a different folder than INBOX.' =>
            '',
        'Trusted' => 'Es pot confiar',
        'Dispatching' => 'Remetent',
        'Edit Mail Account' => 'Editar compte de correu',

        # Template: AdminNavigationBar
        'Admin' => 'Admin',
        'Agent Management' => 'Administració d\'agent',
        'Queue Settings' => 'Configuració de les cues',
        'Ticket Settings' => 'Configuració dels tiquets',
        'System Administration' => 'Administració del sistema',

        # Template: AdminNotification
        'Notification Management' => 'Gestió de Notificacions',
        'Select a different language' => '',
        'Filter for Notification' => 'Filtre per a la notificació',
        'Notifications are sent to an agent or a customer.' => 'Les notificacions se li envian a un agent o client',
        'Notification' => 'Notificacions',
        'Edit Notification' => 'Editar notificació',
        'e. g.' => 'p. ex.',
        'Options of the current customer data' => 'Opcions de les dades dels clients actuals',

        # Template: AdminNotificationEvent
        'Add notification' => 'Afegir notificació',
        'Delete this notification' => 'Eliminar aquesta notificació',
        'Add Notification' => 'Afegir notificació',
        'Article Filter' => 'Filtre d\'article',
        'Only for ArticleCreate and ArticleSend event' => '',
        'Article type' => 'Tipus d\'article',
        'If ArticleCreate or ArticleSend is used as a trigger event, you need to specify an article filter as well. Please select at least one of the article filter fields.' =>
            '',
        'Article sender type' => '',
        'Subject match' => 'L\'assumpte coincideix',
        'Body match' => 'El cos coincideix',
        'Include attachments to notification' => 'Incloure els arxius adjunts en la notificació',
        'Recipient' => 'Destinatari',
        'Recipient groups' => 'Grups de destinataris',
        'Recipient agents' => 'Agents de destinataris',
        'Recipient roles' => 'Rols de destinataris',
        'Recipient email addresses' => 'Correu electrònic del destinatari',
        'Notification article type' => 'Notificació tipus d\'article',
        'Only for notifications to specified email addresses' => 'Només per a les notificacions a les adreces de correu electrònic especificades',
        'To get the first 20 character of the subject (of the latest agent article).' =>
            'Per obtenir els primers 20 caràcters de l\'assumpte (de l\'article més recent de l\'agent).',
        'To get the first 5 lines of the body (of the latest agent article).' =>
            'Per obtenir les primeres 5 línies del cos (de l\'article més recent de l\'agent).',
        'To get the first 20 character of the subject (of the latest customer article).' =>
            'Per obtenir els primers 20 caràcters de l\'assumpte (de l\'article més recent del client).',
        'To get the first 5 lines of the body (of the latest customer article).' =>
            'Per obtenir les primeres 5 línies del cos (de l\'article més recent del client).',

        # Template: AdminPGP
        'PGP Management' => 'Administració PGP',
        'Use this feature if you want to work with PGP keys.' => 'Faci servir aquesta funció si desitja treballar amb claus *PGP.',
        'Add PGP key' => 'Afegir clau de PGP',
        'In this way you can directly edit the keyring configured in SysConfig.' =>
            'D\'aquesta forma pot editar directament l\'anell de Claus configurat en SysConfig',
        'Introduction to PGP' => 'Introducció a PGP',
        'Result' => 'Resultat',
        'Identifier' => 'Identificador',
        'Bit' => 'Bit',
        'Fingerprint' => 'Empremta digital',
        'Expires' => 'Expira',
        'Delete this key' => 'Eliminar aquesta clau',
        'Add PGP Key' => 'Afegir Clau de PGP',
        'PGP key' => 'Clau de PGP',

        # Template: AdminPackageManager
        'Package Manager' => 'Gestor de paquets',
        'Uninstall package' => 'Desinstal·lar paquet',
        'Do you really want to uninstall this package?' => 'Segur que desitja desinstal·lar aquest paquet?',
        'Reinstall package' => 'Tornar a instal·lar paquet',
        'Do you really want to reinstall this package? Any manual changes will be lost.' =>
            'De debò vol tornar a instal·lar aquest paquet? Qualsevol canvi manual es perdrà.',
        'Continue' => 'Continua',
        'Please make sure your database accepts packages over %s MB in size (it currently only accepts packages up to %s MB). Please adapt the max_allowed_packet setting of your database in order to avoid errors.' =>
            '',
        'Install' => 'Instal·lar',
        'Install Package' => 'Instal·lar paquet',
        'Update repository information' => 'Actualització de la informació del repositori',
        'Did not find a required feature? OTRS Group provides their service contract customers with exclusive Add-Ons:' =>
            '',
        'Online Repository' => 'Repositori en línia',
        'Vendor' => 'Venedor',
        'Module documentation' => 'Documentació de mòdul',
        'Upgrade' => 'Actualitzer',
        'Local Repository' => 'Repositori Local',
        'This package is verified by OTRSverify (tm)' => '',
        'Uninstall' => 'Desinstal·lar',
        'Reinstall' => 'Reinstal·lar',
        'Feature Add-Ons' => '',
        'Download package' => 'Descarregar paquet',
        'Rebuild package' => 'Reconstruir paquet',
        'Metadata' => 'Metadata',
        'Change Log' => 'Registre de canvis',
        'Date' => 'Data',
        'List of Files' => 'Llista d\'Arxius',
        'Permission' => 'Permisos',
        'Download' => 'Descarregar',
        'Download file from package!' => 'Descarregar arxiu del paquet!',
        'Required' => 'Requerit',
        'PrimaryKey' => 'ClauPrimària',
        'AutoIncrement' => 'AutoIncrementar',
        'SQL' => 'SQL',
        'File differences for file %s' => 'Diferències d\'arxiu per %s',

        # Template: AdminPerformanceLog
        'Performance Log' => 'Registre de rendiment',
        'This feature is enabled!' => 'Aquesta característica està habilitada',
        'Just use this feature if you want to log each request.' => 'Usi aquesta característica només si desitja registrar cada petició.',
        'Activating this feature might affect your system performance!' =>
            'L\'activació d\'aquesta característica pot afectar el rendiment del sistema!',
        'Disable it here!' => 'Desactivar aquí!',
        'Logfile too large!' => 'Registre molt gran',
        'The logfile is too large, you need to reset it' => 'L\'arxiu de registre és massa gran, vostè ha de reiniciar-ho',
        'Overview' => 'Resum',
        'Range' => 'Rang',
        'last' => 'darrer',
        'Interface' => 'Interfície',
        'Requests' => 'Sol·licituds',
        'Min Response' => 'Resposta Mínima',
        'Max Response' => 'Resposta Màxima',
        'Average Response' => 'Resposta Promig',
        'Period' => 'Període',
        'Min' => 'Mín',
        'Max' => 'Màx',
        'Average' => 'Promig',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => 'Gestió del filtre PostMaster',
        'Add filter' => 'Afegir filtre',
        'To dispatch or filter incoming emails based on email headers. Matching using Regular Expressions is also possible.' =>
            'Per enviar o filtrar els missatges entrants basant-se en els encapçalats de correu electrònic. També és possible utilitzar expressions regulars.',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' =>
            'Si vol fer coincidir només l\'adreça de correu, usi EMAILADDRESS:info@example.com en el camp From, To o Cc.',
        'If you use Regular Expressions, you also can use the matched value in () as [***] in the \'Set\' action.' =>
            'Si s\'utilitza expressions regulars, també pot utilitzar el valor coincident en () com [***] en l\'acció \'Conjunt\'.',
        'Delete this filter' => 'Eliminar aquest filtre',
        'Add PostMaster Filter' => 'Afegir filtre PostMaster',
        'Edit PostMaster Filter' => 'Editar filtre PostMaster',
        'The name is required.' => '',
        'Filter Condition' => 'Condició de filtre',
        'AND Condition' => '',
        'Negate' => '',
        'The field needs to be a valid regular expression or a literal word.' =>
            '',
        'Set Email Headers' => 'Establir encapçalats de correu electrònic',
        'The field needs to be a literal word.' => '',

        # Template: AdminPriority
        'Priority Management' => 'Gestió de prioritat',
        'Add priority' => 'Afegir prioritat',
        'Add Priority' => 'Afegir prioritat',
        'Edit Priority' => 'Editar prioritat',

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
        'Process name' => '',
        'Print' => 'Imprimir',
        'Export Process Configuration' => '',
        'Copy Process' => '',

        # Template: AdminProcessManagementActivity
        'Cancel & close window' => 'Cancel·lar i tancar la finestra',
        'Go Back' => '',
        'Please note, that changing this activity will affect the following processes' =>
            '',
        'Activity' => '',
        'Activity Name' => '',
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
        'Manage Queues' => 'Gestionar cues',
        'Add queue' => 'Afegir cua',
        'Add Queue' => 'Afegir cua',
        'Edit Queue' => 'Editar cua',
        'Sub-queue of' => 'Sub-cua de',
        'Unlock timeout' => 'Temps per a desbloqueig automàtic',
        '0 = no unlock' => '0 = sense bloqueig',
        'Only business hours are counted.' => 'Només es conta l\'horari laboral',
        'If an agent locks a ticket and does not close it before the unlock timeout has passed, the ticket will unlock and will become available for other agents.' =>
            'Si un agent bloqueja un tiquet i no ho tanca abans que hagi passat el temps d\'espera de desbloquejo, el tiquet s\'obrirà i estarà disponible per a altres agents.',
        'Notify by' => 'Notificat per',
        '0 = no escalation' => '0 = sense escalat',
        'If there is not added a customer contact, either email-external or phone, to a new ticket before the time defined here expires, the ticket is escalated.' =>
            'Si no s\'agrega un contacte del client, ja sigui correu electrònic extern o telèfon, a un nou tiquet abans que expiri el temps definit aquí, el tiquet és escalat.',
        'If there is an article added, such as a follow-up via email or the customer portal, the escalation update time is reset. If there is no customer contact, either email-external or phone, added to a ticket before the time defined here expires, the ticket is escalated.' =>
            'Si un article és afegit, com un seguiment via correu electrònic o portal del client, el temps d\'actualització d\'escalat es restableix. Si no hi ha contacte del client, ja sigui correu electrònic extern o telèfon, afegit a un tiquet abans que expiri el temps definit aquí, el tiquet és escalat.',
        'If the ticket is not set to closed before the time defined here expires, the ticket is escalated.' =>
            'Si el tiquet no és posat a tancat abans que expiri el temps aquí definit, el tiquet és escalat.',
        'Follow up Option' => 'Opció de seguiment',
        'Specifies if follow up to closed tickets would re-open the ticket, be rejected or lead to a new ticket.' =>
            'Especifica si el seguiment de tiquets tancats tornaria a obrir el tiquet, ho rebutjaria o donaria lloc a un nou tiquet.',
        'Ticket lock after a follow up' => 'Bloquejar un tiquet després del seguiment',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked to the old owner.' =>
            'Si un tiquet està tancat i el client envia un seguiment el tiquet serà bloquejat per a l\'antic propietari.',
        'System address' => 'Adreça de sistema',
        'Will be the sender address of this queue for email answers.' => 'Serà l\'adreça de l\'emissor en aquesta cua per a respostes per correu.',
        'Default sign key' => 'Clau de signatura predeterminada',
        'The salutation for email answers.' => 'Salutació per a les respostes per correu.',
        'The signature for email answers.' => 'Signatura per a respostes per correu.',

        # Template: AdminQueueAutoResponse
        'Manage Queue-Auto Response Relations' => 'Gestionar relacions Cua-Resposta automàtica',
        'Filter for Queues' => 'Filtre per cues',
        'Filter for Auto Responses' => 'Filter per respostes automàtiques',
        'Auto Responses' => 'Respostes Automàtiques',
        'Change Auto Response Relations for Queue' => 'Canviar les relacions de resposta automàtica per a la cua',

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
        'Sign up now' => 'Registri\'s ara',
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
        'Role Management' => 'Gestió de Rols',
        'Add role' => 'Afegir rol',
        'Create a role and put groups in it. Then add the role to the users.' =>
            'Crea un rol i col·loca grups en el mateix. Després afegix el rol als usuaris.',
        'There are no roles defined. Please use the \'Add\' button to create a new role.' =>
            'No hi ha rols definits. Per favor, utilitzi el botó \'Agregar\' per crear un nou rol.',
        'Add Role' => 'Afegir rol',
        'Edit Role' => 'Editar rol',

        # Template: AdminRoleGroup
        'Manage Role-Group Relations' => 'Gestionar relacions Rol-Grup',
        'Filter for Roles' => 'Filtrar per rols',
        'Select the role:group permissions.' => 'Seleccioni els permisos rol:grup.',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the role).' =>
            'Si no se selecciona gens, llavors no hi ha permisos en aquest grup (els tiquets no estaran disponibles per al rol).',
        'Change Role Relations for Group' => 'Canviar les relacions de rol per al grup',
        'Change Group Relations for Role' => 'Canviar les relacions de grup per a la cua',
        'Toggle %s permission for all' => 'Caviar %s permisos per a tots',
        'move_into' => 'moure_a',
        'Permissions to move tickets into this group/queue.' => 'Permís per a moure tiquets a aquest grup/cua',
        'create' => 'crear',
        'Permissions to create tickets in this group/queue.' => 'Permís per a crear tiquets en aquest grup/cua',
        'priority' => 'prioritat',
        'Permissions to change the ticket priority in this group/queue.' =>
            'Permís per a canviar la prioritat del tiquet en aquest grup/cua',

        # Template: AdminRoleUser
        'Manage Agent-Role Relations' => 'Gestionar relacions Agent-Rol',
        'Filter for Agents' => 'Filtar per agents',
        'Manage Role-Agent Relations' => 'Gestionar relacions Rol-Agent',
        'Change Role Relations for Agent' => 'Canviar les relacions de rol per a l\'agent',
        'Change Agent Relations for Role' => 'Canviar les relacions de agent per al rol',

        # Template: AdminSLA
        'SLA Management' => 'Gestió de SLA',
        'Add SLA' => 'Afegir SLA',
        'Edit SLA' => 'Editar SLA',
        'Please write only numbers!' => 'Per favor escrigui només nombres!',

        # Template: AdminSMIME
        'S/MIME Management' => 'Gestió S/MIME',
        'Add certificate' => 'Afegir certificat',
        'Add private key' => 'Afegir clau privada',
        'Filter for certificates' => '',
        'Filter for SMIME certs' => '',
        'To show certificate details click on a certificate icon.' => '',
        'To manage private certificate relations click on a private key icon.' =>
            '',
        'Here you can add relations to your private certificate, these will be embedded to the SMIME signature every time you use this certificate to sign an email.' =>
            '',
        'See also' => 'Vegi també',
        'In this way you can directly edit the certification and private keys in file system.' =>
            'D\'aquesta forma pot editar directament la certificació i claus privades en el sistema de fitxers.',
        'Hash' => 'Hash',
        'Handle related certificates' => '',
        'Read certificate' => '',
        'Delete this certificate' => 'Eliminar aquest certificat',
        'Add Certificate' => 'Afegir certificat',
        'Add Private Key' => 'Afegir clau privada',
        'Secret' => 'Secret',
        'Related Certificates for' => '',
        'Delete this relation' => '',
        'Available Certificates' => '',
        'Relate this certificate' => '',

        # Template: AdminSMIMECertRead
        'SMIME Certificate' => '',
        'Close window' => 'Tancar la finestra',

        # Template: AdminSalutation
        'Salutation Management' => 'Gestió de salutacions',
        'Add salutation' => 'Afegir salutació',
        'Add Salutation' => 'Afegir salutació',
        'Edit Salutation' => 'Editar salutació',
        'Example salutation' => 'Exemple salutació',

        # Template: AdminScheduler
        'This option will force Scheduler to start even if the process is still registered in the database' =>
            '',
        'Start scheduler' => '',
        'Scheduler could not be started. Check if scheduler is not running and try it again with Force Start option' =>
            '',

        # Template: AdminSecureMode
        'Secure mode needs to be enabled!' => 'El mode segur ha d\'estar habilitat!',
        'Secure mode will (normally) be set after the initial installation is completed.' =>
            'El mode segur que (normalment) es fixarà després de la instal·lació inicial s\'ha completat.',
        'If secure mode is not activated, activate it via SysConfig because your application is already running.' =>
            'Si la manera segur no s\'activa, activi-ho a través de SysConfig perquè la seva aplicació ja s\'està executant.',

        # Template: AdminSelectBox
        'SQL Box' => 'SQL',
        'Here you can enter SQL to send it directly to the application database.' =>
            'Aquí pot introduir SQL per enviar-ho directament a la base de dades d\'aplicació.',
        'The syntax of your SQL query has a mistake. Please check it.' =>
            'La sintaxi de la consulta *SQL conté un error. Per favor revisi-la.',
        'There is at least one parameter missing for the binding. Please check it.' =>
            'Hi ha almenys un paràmetre que falta per a l\'enllaç. Per favor revisi-ho.',
        'Result format' => 'Format de resultat',
        'Run Query' => 'Executar consulta',

        # Template: AdminService
        'Service Management' => 'Gestió de serveis',
        'Add service' => 'Afegir servei',
        'Add Service' => 'Afegir servei',
        'Edit Service' => 'Editar servei',
        'Sub-service of' => 'Sub-servei de',

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
        'Session Management' => 'Gestió de sessions',
        'All sessions' => 'Totes les sessions',
        'Agent sessions' => 'Sessions d\'agent',
        'Customer sessions' => 'Sessions de client',
        'Unique agents' => 'Agents únics',
        'Unique customers' => 'Clients únics',
        'Kill all sessions' => 'Finalitzar totes les sessions',
        'Kill this session' => 'Matar aquesta sessió',
        'Session' => 'Sessió',
        'Kill' => 'Matar',
        'Detail View for SessionID' => 'Vista detallada per SessionID',

        # Template: AdminSignature
        'Signature Management' => 'Gestió de signatures',
        'Add signature' => 'Afegir signatura',
        'Add Signature' => 'Afegir signatura',
        'Edit Signature' => 'Editar signatura',
        'Example signature' => 'Exemple signatura',

        # Template: AdminState
        'State Management' => 'Gestió d\'estat',
        'Add state' => 'Afegir Estat',
        'Please also update the states in SysConfig where needed.' => '',
        'Add State' => 'Afegir estat',
        'Edit State' => 'Editar estat',
        'State type' => 'Tipus d\'estat',

        # Template: AdminSysConfig
        'SysConfig' => 'Configuració del sistema',
        'Navigate by searching in %s settings' => 'Navegui per buscar en %s configuracions',
        'Navigate by selecting config groups' => '',
        'Download all system config changes' => 'Descarregar tots els canvis en la configuració del sistema',
        'Export settings' => 'Exportar configuració',
        'Load SysConfig settings from file' => 'Carregar configuració del sistema des d\'arxiu',
        'Import settings' => 'Importar configuració',
        'Import Settings' => 'Importar configuració',
        'Please enter a search term to look for settings.' => 'Per favor, introdueixi un terme de recerca per buscar valors.',
        'Subgroup' => 'Subgrup',
        'Elements' => 'Elements',

        # Template: AdminSysConfigEdit
        'Edit Config Settings' => 'Editar opcions de configuració',
        'This config item is only available in a higher config level!' =>
            'Aquest element de configuració només està disponible en una configuració de nivell més alt!',
        'Reset this setting' => 'Restablir aquesta configuració',
        'Error: this file could not be found.' => 'Error: aquest arxiu no es va poder trobar.',
        'Error: this directory could not be found.' => 'Error: aquest directori no es va poder trobar.',
        'Error: an invalid value was entered.' => 'Error: un valor no vàlid va ser introduït.',
        'Content' => 'Contingut',
        'Remove this entry' => 'Llevar aquesta entrada',
        'Add entry' => 'Afegir entrada',
        'Remove entry' => 'Llevar entrada',
        'Add new entry' => 'Afegir nova entrada',
        'Delete this entry' => 'Eliminar aquesta entrada',
        'Create new entry' => 'Crear nova entrada',
        'New group' => 'Nou grup',
        'Group ro' => 'Grup ro',
        'Readonly group' => 'Grup de només lectura',
        'New group ro' => 'Nou grup ro',
        'Loader' => 'Carregador',
        'File to load for this frontend module' => 'xiu per a la càrrega d\'aquest mòdul d\'interfície',
        'New Loader File' => 'Nou arxiu de carregador',
        'NavBarName' => 'NomBarNav',
        'NavBar' => 'BarNav',
        'LinkOption' => 'OpcióEnllaç',
        'Block' => 'Bloquejar',
        'AccessKey' => 'ClauAccés',
        'Add NavBar entry' => 'Afegir entrada BarNav',
        'Year' => 'Any',
        'Month' => 'Mes',
        'Day' => 'Dia',
        'Invalid year' => 'Any invàlid',
        'Invalid month' => 'Mes invàlid',
        'Invalid day' => 'Dia invàlid',
        'Show more' => '',

        # Template: AdminSystemAddress
        'System Email Addresses Management' => 'Gestió d\'adreces de correu del sistema',
        'Add system address' => 'Afegir adreça de sistema',
        'All incoming email with this address in To or Cc will be dispatched to the selected queue.' =>
            'Tot el correu entrant amb aquesta adreça en el Para o CC, s\'enviarà a la cua seleccionada.',
        'Email address' => 'Adreça de correu electrònic',
        'Display name' => 'Nom de pantalla',
        'Add System Email Address' => 'Afegir adreça de correu electrònic del sistema',
        'Edit System Email Address' => 'Editar adreça de correu electrònic del sistema',
        'The display name and email address will be shown on mail you send.' =>
            'El nom de la pantalla i l\'adreça de correu electrònic seran mostrats en els correus que enviï.',

        # Template: AdminTemplate
        'Manage Templates' => '',
        'Add template' => '',
        'A template is a default text which helps your agents to write faster tickets, answers or forwards.' =>
            '',
        'Don\'t forget to add new templates to queues.' => '',
        'Add Template' => '',
        'Edit Template' => '',
        'Template' => '',
        'Create type templates only supports this smart tags' => '',
        'Example template' => '',
        'The current ticket state is' => 'L\'estat actual del tiquet és',
        'Your email address is' => 'La vostra adreça de correu electrònic és',

        # Template: AdminTemplateAttachment
        'Manage Templates <-> Attachments Relations' => '',
        'Filter for Attachments' => 'Filtrar per arxius adjunts',
        'Change Template Relations for Attachment' => '',
        'Change Attachment Relations for Template' => '',
        'Toggle active for all' => 'Canviar actiu per a tots',
        'Link %s to selected %s' => 'Enllaçar %s a el %s seleccionat',

        # Template: AdminType
        'Type Management' => 'Gestió de tipus',
        'Add ticket type' => 'Afegir tipus de tiquet',
        'Add Type' => 'Afegir tipus',
        'Edit Type' => 'Editar tipus',

        # Template: AdminUser
        'Add agent' => 'Afegir agent',
        'Agents will be needed to handle tickets.' => 'Els agents es necessiten per manejar tiquets.',
        'Don\'t forget to add a new agent to groups and/or roles!' => 'No s\'oblidi d\'afegir un nou agent a grups i/o rols!',
        'Please enter a search term to look for agents.' => 'Per favor, introdueixi un terme de recerca per buscar agents.',
        'Last login' => 'Últim accés',
        'Switch to agent' => 'Canviar a agent',
        'Add Agent' => 'Afegir agent',
        'Edit Agent' => 'Editar agent',
        'Firstname' => 'Nom',
        'Lastname' => 'Cognom',
        'Will be auto-generated if left empty.' => '',
        'Start' => 'Començar',
        'End' => 'Fi',

        # Template: AdminUserGroup
        'Manage Agent-Group Relations' => 'Gestionar relacions Agent-Grup',
        'Change Group Relations for Agent' => 'Canviar les relacions de grup per a l\'agent',
        'Change Agent Relations for Group' => 'Canviar les relacions de agent per al grup',
        'note' => 'nota',
        'Permissions to add notes to tickets in this group/queue.' => 'Permisos per afegir notes als tiquets d\'aquest grup/cua.',
        'owner' => 'propietari',
        'Permissions to change the owner of tickets in this group/queue.' =>
            'Permisos per canviar el propietari dels tiquets en aquest grup/cua.',

        # Template: AgentBook
        'Address Book' => 'Llibreta d\'Adreces',
        'Search for a customer' => 'Recerca d\'un client',
        'Add email address %s to the To field' => 'Afegir adreça de correu %s en el camp Para',
        'Add email address %s to the Cc field' => 'Afegir adreça de correu %s en el camp Cc',
        'Add email address %s to the Bcc field' => 'Afegir adreça de correu %s en el camp Bcc',
        'Apply' => 'Aplicar',

        # Template: AgentCustomerInformationCenter
        'Customer Information Center' => '',

        # Template: AgentCustomerInformationCenterBlank

        # Template: AgentCustomerInformationCenterSearch
        'Customer ID' => 'ID de client',
        'Customer User' => 'Client',

        # Template: AgentCustomerSearch
        'Duplicated entry' => '',
        'This address already exists on the address list.' => '',
        'It is going to be deleted from the field, please try again.' => '',

        # Template: AgentCustomerTableView
        'Note: Customer is invalid!' => '',

        # Template: AgentDashboard
        'Dashboard' => 'Panell principal',

        # Template: AgentDashboardCalendarOverview
        'in' => 'en',

        # Template: AgentDashboardCommon
        'Available Columns' => '',
        'Visible Columns (order by drag & drop)' => '',

        # Template: AgentDashboardCustomerCompanyInformation

        # Template: AgentDashboardCustomerIDStatus
        'Escalated tickets' => '',

        # Template: AgentDashboardCustomerUserList
        'Customer information' => '',
        'Phone ticket' => '',
        'Email ticket' => '',
        '%s open ticket(s) of %s' => '',
        '%s closed ticket(s) of %s' => '',
        'New phone ticket from %s' => '',
        'New email ticket to %s' => '',

        # Template: AgentDashboardIFrame

        # Template: AgentDashboardImage

        # Template: AgentDashboardProductNotify
        '%s %s is available!' => '%s %s està disponible!',
        'Please update now.' => 'Per favor, actualitzi ara.',
        'Release Note' => 'Nota de la versió',
        'Level' => 'Nivell',

        # Template: AgentDashboardRSSOverview
        'Posted %s ago.' => 'Publicat %s fa.',

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
        'My locked tickets' => '',
        'My watched tickets' => '',
        'My responsibilities' => '',
        'Tickets in My Queues' => '',
        'Service Time' => 'Temps de servei',
        'Remove active filters for this widget.' => '',

        # Template: AgentDashboardTicketQueueOverview
        'Totals' => '',

        # Template: AgentDashboardTicketStats

        # Template: AgentDashboardUserOnline
        'out of office' => '',

        # Template: AgentDashboardUserOutOfOffice
        'until' => '',

        # Template: AgentHTMLReferenceForms

        # Template: AgentHTMLReferenceOverview

        # Template: AgentHTMLReferencePageLayout
        'The ticket has been locked' => 'Aquest tiquet ha estat bloquejat',
        'Undo & close window' => 'Desfer i tancar la finestra',

        # Template: AgentInfo
        'Info' => 'Informació',
        'To accept some news, a license or some changes.' => 'Per acceptar una notícia, una llicència o alguns canvis.',

        # Template: AgentLinkObject
        'Link Object: %s' => 'Enllaçar l\'objecte: %s',
        'go to link delete screen' => 'anar a l\'enllaç esborrar la pantalla',
        'Select Target Object' => 'Seleccioni Objecte Objectiu',
        'Link Object' => 'Enllaçar Objecte',
        'with' => 'amb',
        'Unlink Object: %s' => 'Llevar enllaç de l\'objecte: %s',
        'go to link add screen' => 'anar a l\'enllaç afegir pantalla',

        # Template: AgentNavigationBar

        # Template: AgentPreferences
        'Edit your preferences' => 'Editar les seves preferències',

        # Template: AgentSpelling
        'Spell Checker' => 'Verificació Ortogràfica',
        'spelling error(s)' => 'errors gramaticals',
        'Apply these changes' => 'Aplicar aquests canvis',

        # Template: AgentStatsDelete
        'Delete stat' => 'Eliminar estadístiques',
        'Stat#' => 'Estat#',
        'Do you really want to delete this stat?' => 'De debò vol eliminar aquesta estadística?',

        # Template: AgentStatsEditRestrictions
        'Step %s' => 'Pas %s',
        'General Specifications' => 'Especificacions generals',
        'Select the element that will be used at the X-axis' => 'Seleccioni l\'element que s\'utilitzarà en l\'eix X',
        'Select the elements for the value series' => 'Seleccioni els elements per als valors de la sèrie',
        'Select the restrictions to characterize the stat' => 'Seleccioni les restriccions per caracteritzar l\'estadística',
        'Here you can make restrictions to your stat.' => 'Aquí pot declarar restriccions a les seves estadístiques.',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' =>
            'Si elimina la marca en la casella "Fix", l\'agent que genera l\'estadística pot canviar els atributs de l\'element corresponent',
        'Fixed' => 'Fixat',
        'Please select only one element or turn off the button \'Fixed\'.' =>
            'Per favor seleccioni un element de desactivi el botó \'Fixat\'',
        'Absolute Period' => 'Període absolut',
        'Between' => 'Entre',
        'Relative Period' => 'Període Relatiu',
        'The last' => 'L\'últim',
        'Finish' => 'Finalitzar',

        # Template: AgentStatsEditSpecification
        'Permissions' => 'Permisos',
        'You can select one or more groups to define access for different agents.' =>
            'Vostè pot seleccionar un o més grups per definir l\'accés als diferents agents.',
        'Some result formats are disabled because at least one needed package is not installed.' =>
            'Alguns formats de resultat estan desactivats perquè almenys un paquet necessari no està instal·lat.',
        'Please contact your administrator.' => 'Per favor, contacti amb el seu administrador.',
        'Graph size' => 'Grandària del gràfic',
        'If you use a graph as output format you have to select at least one graph size.' =>
            'Si utilitza un gràfic com format de sortida ha de seleccionar almenys una tamany de gràfic.',
        'Sum rows' => 'Sumar files',
        'Sum columns' => 'Sumar columnes',
        'Use cache' => 'Usar caché',
        'Most of the stats can be cached. This will speed up the presentation of this stat.' =>
            'La majoria de les estadístiques poden ser conservades en memòria cau. Això accelera la presentació d\'aquesta estadística.',
        'Show as dashboard widget' => '',
        'Provide the statistic as a widget that agents can activate in their dashboard.' =>
            '',
        'Please note' => '',
        'Enabling the dashboard widget will activate caching for this statistic in the dashboard.' =>
            '',
        'Agents will not be able to change absolute time settings for statistics dashboard widgets.' =>
            '',
        'IE8 doesn\'t support statistics dashboard widgets.' => '',
        'If set to invalid end users can not generate the stat.' => 'Si s\'estableix per a usuaris finals invàlids no es poden generar estadístiques.',

        # Template: AgentStatsEditValueSeries
        'Here you can define the value series.' => 'Aquí pot definir la sèrie de valors.',
        'You have the possibility to select one or two elements.' => 'Vostè té la possibilitat de seleccionar un o dos elements.',
        'Then you can select the attributes of elements.' => 'A continuació, pot seleccionar els atributs dels elements.',
        'Each attribute will be shown as single value series.' => 'Cada atribut es mostra com una sèrie de valor únic.',
        'If you don\'t select any attribute all attributes of the element will be used if you generate a stat, as well as new attributes which were added since the last configuration.' =>
            'Si vostè no selecciona cap atribut tots els atributs de l\'element seran usats si vostè genera una estadística, així com els nous atributs que van ser afegits des de l\'última configuració.',
        'Scale' => 'Escala',
        'minimal' => 'mínim',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' =>
            'Recordi, que l\'escala per als valors de la sèrie necessita ser major que l\'escala per a l\'eix-X (ej: eix-X => Mes, ValorSeries => Any).',

        # Template: AgentStatsEditXaxis
        'Here you can define the x-axis. You can select one element via the radio button.' =>
            'Aquí pot definir l\'eix x. Vostè pot seleccionar un element a través del botó d\'opció.',
        'maximal period' => 'període màxim',
        'minimal scale' => 'escala mínima',

        # Template: AgentStatsImport
        'Import Stat' => 'Importar estadístiques',
        'File is not a Stats config' => 'L\'arxiu no és una configuració d\'estadístiques',
        'No File selected' => 'No hi ha arxiu seleccionat',

        # Template: AgentStatsOverview
        'Stats' => 'Estadístiques',

        # Template: AgentStatsPrint
        'No Element selected.' => 'No hi ha element seleccionat',

        # Template: AgentStatsView
        'Export config' => 'Exportar configuració',
        'With the input and select fields you can influence the format and contents of the statistic.' =>
            'Amb l\'entrada i camps seleccionats vostè pot influir en el format i el contingut de l\'estadística.',
        'Exactly what fields and formats you can influence is defined by the statistic administrator.' =>
            'Exactament que camps i formats pot influir estan definits per l\'administrador de l\'estadística.',
        'Stat Details' => 'Detalls d\'estadístiques',
        'Format' => 'Format',
        'Graphsize' => 'TamanyGràfic',
        'Cache' => 'Memòria cau',
        'Exchange Axis' => 'Intercanviar Eixos',

        # Template: AgentStatsViewSettings
        'Configurable params of static stat' => 'Paràmetre configurable d\'estadística estàtica',
        'No element selected.' => 'No hi ha element seleccionat',
        'maximal period from' => 'període màxim de',
        'to' => 'a',
        'not changable for dashboard statistics' => '',
        'Select Chart Type' => '',
        'Chart Type' => '',
        'Multi Bar Chart' => '',
        'Multi Line Chart' => '',
        'Stacked Area Chart' => '',

        # Template: AgentTicketActionCommon
        'Change Free Text of Ticket' => 'Canviar el text lliure del tiquet',
        'Change Owner of Ticket' => 'Canviar el propietari del tiquet',
        'Close Ticket' => 'Tancar tiquet',
        'Add Note to Ticket' => 'Afegir nota al tiquet',
        'Set Pending' => 'Establir com a pendent',
        'Change Priority of Ticket' => 'Canviar la prioritat del tiquet',
        'Change Responsible of Ticket' => 'Canviar el responsable del tiquet',
        'All fields marked with an asterisk (*) are mandatory.' => '',
        'Service invalid.' => 'Servei no vàlid.',
        'New Owner' => 'Nou Propietari',
        'Please set a new owner!' => 'Per favor, estableixi un nou propietari!',
        'Previous Owner' => 'Propietari Anterior',
        'Inform Agent' => 'Notificar Agent',
        'Optional' => 'Opcional',
        'Inform involved Agents' => 'Notificar Agents involucrats',
        'Spell check' => 'Correcció ortogràfica',
        'Note type' => 'Tipus de nota',
        'Next state' => 'Següent estat',
        'Date invalid!' => 'Data no vàlida!',

        # Template: AgentTicketActionPopupClose

        # Template: AgentTicketBounce
        'Bounce Ticket' => 'Retornar tiquet',
        'Bounce to' => 'Retornar a',
        'You need a email address.' => 'Es necessita una adreça de correu electrònic.',
        'Need a valid email address or don\'t use a local email address.' =>
            'Necessita una adreça de correu electrònic vàlida o no utilitzi una adreça de correu electrònic local.',
        'Next ticket state' => 'Nou estat del tiquet',
        'Inform sender' => 'Informar a l\'emissor',
        'Send mail' => 'Enviar correu!',

        # Template: AgentTicketBulk
        'Ticket Bulk Action' => 'Acció múltiple amb Tiquets',
        'Send Email' => '',
        'Merge to' => 'Fusionar amb',
        'Invalid ticket identifier!' => 'Identificador de tiquet no vàlid!',
        'Merge to oldest' => 'Combinar amb el més antic',
        'Link together' => 'Vincular',
        'Link to parent' => 'Vincular al pare',
        'Unlock tickets' => 'Desbloquejar tiquets',

        # Template: AgentTicketClose

        # Template: AgentTicketCompose
        'Compose answer for ticket' => 'Redacti una resposta al tiquet',
        'Please include at least one recipient' => '',
        'Remove Ticket Customer' => '',
        'Please remove this entry and enter a new one with the correct value.' =>
            '',
        'Remove Cc' => '',
        'Remove Bcc' => '',
        'Address book' => 'Adreces',
        'Pending Date' => 'Data pendent',
        'for pending* states' => 'per a estats pendents*',
        'Date Invalid!' => 'Data no vàlida!',

        # Template: AgentTicketCustomer
        'Change customer of ticket' => 'Canviar client del tiquet',
        'Customer user' => 'Usuari del client',

        # Template: AgentTicketEmail
        'Create New Email Ticket' => 'Crear nou tiquet correu electrònic',
        'From queue' => 'De la cua',
        'To customer user' => '',
        'Please include at least one customer user for the ticket.' => '',
        'Select this customer as the main customer.' => '',
        'Remove Ticket Customer User' => '',
        'Get all' => 'Obtenir tots',
        'Text Template' => '',

        # Template: AgentTicketEscalation

        # Template: AgentTicketForward
        'Forward ticket: %s - %s' => 'Reexpedir tiquet: %s - %s',

        # Template: AgentTicketFreeText

        # Template: AgentTicketHistory
        'History of' => 'Historial de',
        'History Content' => 'Contingut de l\'historial',
        'Zoom view' => 'Vista de zoom',

        # Template: AgentTicketMerge
        'Ticket Merge' => 'Fusionar tiquet',
        'You need to use a ticket number!' => 'Necessita usar un nombre de tiquet! ',
        'A valid ticket number is required.' => 'És necessari un nombre de tiquet vàlid',
        'Need a valid email address.' => '',

        # Template: AgentTicketMove
        'Move Ticket' => 'Moure tiquet',
        'New Queue' => 'Nova cua',

        # Template: AgentTicketNote

        # Template: AgentTicketOverviewMedium
        'Select all' => 'Seleccionar tot',
        'No ticket data found.' => 'No s\'han trobat dades del tiquet',
        'First Response Time' => 'Temps de resposta',
        'Update Time' => 'Temps d\'actualització',
        'Solution Time' => 'Temps de resolució',
        'Move ticket to a different queue' => 'Moure tiquet a una altra cua',
        'Change queue' => 'Canviar cua',

        # Template: AgentTicketOverviewNavBar
        'Change search options' => 'Canviar opcions de recerca',
        'Remove active filters for this screen.' => '',
        'Tickets per page' => 'Tiquets per pàgina',

        # Template: AgentTicketOverviewPreview

        # Template: AgentTicketOverviewSmall
        'Reset overview' => '',
        'Column Filters Form' => '',

        # Template: AgentTicketOwner

        # Template: AgentTicketPending

        # Template: AgentTicketPhone
        'Create New Phone Ticket' => 'Crear nou tiquet telefònic',
        'Please include at least one customer for the ticket.' => '',
        'To queue' => 'A la cua',

        # Template: AgentTicketPhoneCommon

        # Template: AgentTicketPlain
        'Email Text Plain View' => 'Veure text sense format de correu electrònic',
        'Plain' => 'Text pla',
        'Download this email' => 'Descarregar aquest e-mail',

        # Template: AgentTicketPrint
        'Ticket-Info' => 'Informació-Tiquet',
        'Accounted time' => 'Temps comptabilitzat',
        'Linked-Object' => 'Objecte-enllaçat',
        'by' => 'per',

        # Template: AgentTicketPriority

        # Template: AgentTicketProcess
        'Create New Process Ticket' => '',
        'Process' => '',

        # Template: AgentTicketProcessNavigationBar

        # Template: AgentTicketQueue

        # Template: AgentTicketResponsible

        # Template: AgentTicketSearch
        'Search template' => 'Buscar-Plantilla',
        'Create Template' => 'Crear plantilla',
        'Create New' => 'Crear nou',
        'Profile link' => '',
        'Save changes in template' => 'Guardar els canvis en la plantilla',
        'Filters in use' => '',
        'Additional filters' => '',
        'Add another attribute' => 'Afegir un altre atribut',
        'Output' => 'Formulari de resultats',
        'Fulltext' => 'Text Complet',
        'Remove' => 'Eliminar',
        'Searches in the attributes From, To, Cc, Subject and the article body, overriding other attributes with the same name.' =>
            '',
        'Customer User Login' => 'Identificador del client',
        'Created in Queue' => 'Creat en Cua',
        'Lock state' => 'Estat de bloqueig',
        'Watcher' => 'Observador',
        'Article Create Time (before/after)' => 'Temps de creació de l\'article (abans/després)',
        'Article Create Time (between)' => 'Temps de creació de l\'article (entre)',
        'Ticket Create Time (before/after)' => 'Temps de creació del tiquet (abans/després)',
        'Ticket Create Time (between)' => 'Temps de creació del tiquet (entre)',
        'Ticket Change Time (before/after)' => 'Temps de modificació del tiquet (abans/després)',
        'Ticket Change Time (between)' => 'Temps de modificació del tiquet (entre)',
        'Ticket Close Time (before/after)' => 'Temps de tancament del tiquet (abans/després)',
        'Ticket Close Time (between)' => 'Temps de tancament del tiquet (entre)',
        'Ticket Escalation Time (before/after)' => '',
        'Ticket Escalation Time (between)' => '',
        'Archive Search' => 'Recerca d\'arxius',
        'Run search' => 'Executar recerca',

        # Template: AgentTicketSearchOpenSearchDescriptionFulltext

        # Template: AgentTicketSearchOpenSearchDescriptionTicketNumber

        # Template: AgentTicketSearchResultPrint

        # Template: AgentTicketZoom
        'Article filter' => 'Filtre d\'article',
        'Article Type' => '',
        'Sender Type' => '',
        'Save filter settings as default' => 'Guardar la configuració del filtre com a predeterminat',
        'Archive' => '',
        'This ticket is archived.' => '',
        'Locked' => 'Bloquejat',
        'Linked Objects' => 'Objectes vinculats',
        'Article(s)' => 'Article(s)',
        'Change Queue' => 'Caviar cua',
        'There are no dialogs available at this point in the process.' =>
            '',
        'This item has no articles yet.' => '',
        'Add Filter' => 'Afegir filtre',
        'Set' => 'Ajustar',
        'Reset Filter' => 'Restablir filtre',
        'Show one article' => 'Mostrar un article',
        'Show all articles' => 'Mostrar tots els articles',
        'Unread articles' => 'Articles no llegits',
        'No.' => 'No.',
        'Important' => '',
        'Unread Article!' => 'Article sense llegir!',
        'Incoming message' => 'Missatge entrant',
        'Outgoing message' => 'Missatge sortint',
        'Internal message' => 'Missatge intern',
        'Resize' => 'Canviar la grandària',

        # Template: AttachmentBlocker
        'To protect your privacy, remote content was blocked.' => '',
        'Load blocked content.' => 'Carregar el contingut bloquejat.',

        # Template: Copyright

        # Template: CustomerAccept

        # Template: CustomerError
        'Traceback' => 'Rastrejar',

        # Template: CustomerFooter
        'Powered by' => 'Funciona con',
        'One or more errors occurred!' => 'Han ocorregut un o més errors!',
        'Close this dialog' => 'Tancar aquest quadre de diàleg',
        'Could not open popup window. Please disable any popup blockers for this application.' =>
            'No es va poder obrir una finestra emergent. Per favor, deshabiliti qualsevol bloqueig de finestres emergents per a aquesta aplicació.',
        'There are currently no elements available to select from.' => '',

        # Template: CustomerFooterSmall

        # Template: CustomerHeader

        # Template: CustomerHeaderSmall

        # Template: CustomerLogin
        'JavaScript Not Available' => 'Javascript no està disponible',
        'In order to experience OTRS, you\'ll need to enable JavaScript in your browser.' =>
            'Amb la finalitat de millorar la seva experiència amb OTRS, haurà d\'habilitar Javascript en el seu navegador.',
        'Browser Warning' => 'Avís de navegador',
        'The browser you are using is too old.' => 'El navegador que està utilitzant és massa vell.',
        'OTRS runs with a huge lists of browsers, please upgrade to one of these.' =>
            'OTRS s\'executa amb una llista enorme de navegadors, per favor, actualitzi a una d\'aquestes.',
        'Please see the documentation or ask your admin for further information.' =>
            'Per favor, consulti la documentació o consulti amb el seu administrador per obtenir més informació.',
        'Login' => 'Identificador',
        'User name' => 'Nom d\'usuari',
        'Your user name' => 'El seu nom d\'usuari',
        'Your password' => 'La seva contrasenya',
        'Forgot password?' => 'Va oblidar la seva contrasenya?',
        'Log In' => 'Entrar',
        'Not yet registered?' => 'Encara no s\'ha registrat?',
        'Request new password' => 'Sol·licitar una nova contrasenya',
        'Your User Name' => 'El seu nom d\'usuari',
        'A new password will be sent to your email address.' => 'Una nova contrasenya li serà enviada a la seva adreça de correu electrònic.',
        'Create Account' => 'Crear Compte',
        'Please fill out this form to receive login credentials.' => 'Per favor, empleni aquest formulari per rebre les credencials d\'accés.',
        'How we should address you' => 'Com li hauríem d\'adreçar',
        'Your First Name' => 'El seu nom',
        'Your Last Name' => 'El seu cognom',
        'Your email address (this will become your username)' => '',

        # Template: CustomerNavigationBar
        'Edit personal preferences' => 'Editar les preferències personals',
        'Logout %s' => '',

        # Template: CustomerPreferences

        # Template: CustomerRichTextEditor
        'Split Quote' => '',

        # Template: CustomerTicketMessage
        'Service level agreement' => 'Acord de nivell de servei',

        # Template: CustomerTicketOverview
        'Welcome!' => '',
        'Please click the button below to create your first ticket.' => '',
        'Create your first ticket' => '',

        # Template: CustomerTicketPrint
        'Ticket Print' => '',
        'Ticket Dynamic Fields' => '',

        # Template: CustomerTicketProcess

        # Template: CustomerTicketProcessNavigationBar

        # Template: CustomerTicketSearch
        'Profile' => 'Perfil',
        'e. g. 10*5155 or 105658*' => 'p. ex. 10*5155 o 10558*',
        'Fulltext search in tickets (e. g. "John*n" or "Will*")' => 'Recerca de text complet en tiquets (p. ex. "John*n" o "Will*")',
        'Carbon Copy' => 'Còpia',
        'Types' => '',
        'Time restrictions' => 'Restriccions de temps',
        'No time settings' => '',
        'Only tickets created' => 'Només tiquets creats',
        'Only tickets created between' => 'Només tiquets creats entre',
        'Ticket archive system' => '',
        'Save search as template?' => 'Guardar recerca com a Plantilla?',
        'Save as Template?' => 'Guardar com a plantilla?',
        'Save as Template' => 'Guardar com a plantilla',
        'Template Name' => 'Nom de la plantilla',
        'Pick a profile name' => '',
        'Output to' => 'Sortida a',

        # Template: CustomerTicketSearchOpenSearchDescription

        # Template: CustomerTicketSearchResultPrint

        # Template: CustomerTicketSearchResultShort
        'of' => 'de',
        'Page' => 'Pàgina',
        'Search Results for' => 'Resultats de la recerca para',

        # Template: CustomerTicketZoom
        'Expand article' => '',
        'Next Steps' => '',
        'Reply' => 'Resposta',

        # Template: CustomerWarning

        # Template: DashboardEventsTicketCalendar
        'All-day' => '',
        'Sunday' => 'Diumenge',
        'Monday' => 'Dilluns',
        'Tuesday' => 'Dimarts',
        'Wednesday' => 'Dimecres',
        'Thursday' => 'Dijous',
        'Friday' => 'Divendres',
        'Saturday' => 'Dissabte',
        'Su' => 'Dm',
        'Mo' => 'Dl',
        'Tu' => 'Dm',
        'We' => 'Dx',
        'Th' => 'Dj',
        'Fr' => 'Dv',
        'Sa' => 'Ds',
        'Event Information' => '',
        'Ticket fields' => '',
        'Dynamic fields' => '',

        # Template: Datepicker
        'Invalid date (need a future date)!' => 'Data incorrecta (es necessita una data futura)!',
        'Previous' => 'Anterior',
        'Open date selection' => 'Selecció de data d\'obertura',

        # Template: Error
        'Oops! An Error occurred.' => 'Oops! Es va produir un error.',
        'Error Message' => 'Missatge d\'error',
        'You can' => 'Vostè pot',
        'Send a bugreport' => 'Enviar un informe d\'error',
        'go back to the previous page' => 'tornar a la pàgina anterior',
        'Error Details' => 'Detalls de l\'error',

        # Template: Footer
        'Top of page' => 'A dalt de la pàgina',

        # Template: FooterJS
        'If you now leave this page, all open popup windows will be closed, too!' =>
            'Si ara surt d\'aquesta pàgina, totes les finestres emergents obertes es tancaran, també!',
        'A popup of this screen is already open. Do you want to close it and load this one instead?' =>
            'Una finestra d\'aquesta pantalla ja està oberta. Vol tancar-la i carregar aquesta?',
        'Please enter at least one search value or * to find anything.' =>
            '',
        'Please check the fields marked as red for valid inputs.' => '',

        # Template: FooterSmall

        # Template: HTMLHead

        # Template: HTMLHeadBlockEvents

        # Template: Header
        'You are logged in as' => 'Està connectat com',

        # Template: HeaderSmall

        # Template: Installer
        'JavaScript not available' => 'Javascript no està disponible',
        'Database Settings' => 'Configuració de la base de dades',
        'General Specifications and Mail Settings' => 'Especificacions generals i de correu',
        'Welcome to %s' => 'Benvingut a %s',
        'Web site' => 'Web',
        'Mail check successful.' => 'Comprovació de correu finalitzada amb èxit.',
        'Error in the mail settings. Please correct and try again.' => 'Error en la configuració de correu. Per favor, corregeixi i torni a intentar-ho.',

        # Template: InstallerConfigureMail
        'Configure Outbound Mail' => 'Configurar el correu sortint',
        'Outbound mail type' => 'Tipus de correu sortint',
        'Select outbound mail type.' => 'Seleccioni el tipus de correu sortint.',
        'Outbound mail port' => 'Port de correu sortint',
        'Select outbound mail port.' => 'Seleccionar el port de correu sortint.',
        'SMTP host' => 'Servidor SMTP',
        'SMTP host.' => 'Servidor SMTP.',
        'SMTP authentication' => 'Autenticació SMTP',
        'Does your SMTP host need authentication?' => 'Requereix autenticació el seu servidor SMTP?',
        'SMTP auth user' => 'Usuari autenticació SMTP',
        'Username for SMTP auth.' => 'Nom d\'usuari per a autenticació SMTP.',
        'SMTP auth password' => 'Contrasenya autenticació SMTP',
        'Password for SMTP auth.' => 'Contrasenya per a autenticació SMTP.',
        'Configure Inbound Mail' => 'Configurar el correu entrant',
        'Inbound mail type' => 'Tipus de correu entrant',
        'Select inbound mail type.' => 'Seleccioni el tipus de correu entrant.',
        'Inbound mail host' => 'Servidor de correu entrant',
        'Inbound mail host.' => 'Servidor de correu entrant',
        'Inbound mail user' => 'Usuari de correu entrant',
        'User for inbound mail.' => 'Usuari per al correu entrant.',
        'Inbound mail password' => 'Contrasenya de correu entrant',
        'Password for inbound mail.' => 'Contrasenya per al correu entrant.',
        'Result of mail configuration check' => 'Resultat de comprovar la configuració de correu',
        'Check mail configuration' => 'Comprovar la configuració de correu',
        'Skip this step' => 'Saltar aquest pas',

        # Template: InstallerDBResult
        'Database setup successful!' => 'Base de dades de configurada amb èxit!',

        # Template: InstallerDBStart
        'Install Type' => '',
        'Create a new database for OTRS' => '',
        'Use an existing database for OTRS' => '',

        # Template: InstallerDBmssql
        'Database name' => '',
        'Check database settings' => 'Comprovar la configuració de la base de dades',
        'Result of database check' => 'Resultat de la verificació de bases de dades',
        'Database check successful.' => 'Comprovació de base de dades finalitzada amb èxit.',
        'Database User' => '',
        'New' => 'Nou',
        'A new database user with limited permissions will be created for this OTRS system.' =>
            'Un nou usuari de base de dades amb drets limitats serà creat per a aquest sistema OTRS.',
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
            'Per a poder utilitzar OTRS ha d\'escriure la següent linea de comandos (Terminal/Shell) com root',
        'Restart your webserver' => 'Reiniciï el seu servidor web',
        'After doing so your OTRS is up and running.' => 'Després de fer això el seu OTRS estarà actiu i executant-se',
        'Start page' => 'Pàgina d\'inici',
        'Your OTRS Team' => 'El seu equip OTRS',

        # Template: InstallerLicense
        'Accept license' => 'Acceptar llicència',
        'Don\'t accept license' => 'No acceptar llicència',

        # Template: InstallerLicenseText

        # Template: InstallerSystem
        'The identifier of the system. Each ticket number and each HTTP session ID contain this number.' =>
            'L\'identificador del sistema. Cada nombre de tiquet i cada identificador de sessió HTTP contenen aquest nombre.',
        'System FQDN' => 'FQDN del sistema',
        'Fully qualified domain name of your system.' => 'Nom complet de domini del seu sistema.',
        'AdminEmail' => 'Correu de l\'administrador',
        'Email address of the system administrator.' => 'Adreça de correu electrònic de l\'administrador del sistema.',
        'Organization' => 'Organizació',
        'Log' => 'Traça',
        'LogModule' => 'Mòdul de traces',
        'Log backend to use.' => 'Registre de servidor per usar.',
        'LogFile' => 'Arxiu de registre',
        'Webfrontend' => 'Interfície web',
        'Default language' => 'Llengua per defecte',
        'Default language.' => 'Llengua per defecte.',
        'CheckMXRecord' => 'Revisar registre MX',
        'Email addresses that are manually entered are checked against the MX records found in DNS. Don\'t use this option if your DNS is slow or does not resolve public addresses.' =>
            'Les adreces de correu electrònic que s\'introdueixen manualment es comparen amb els registres MX en DNS. No utilitzi aquesta opció si la seva DNS és lent i no es resol adreces públiques.',

        # Template: LinkObject
        'Object#' => 'Objecte#',
        'Add links' => 'Afegir enllaços',
        'Delete links' => 'Eliminar enllaços',

        # Template: Login
        'Lost your password?' => 'Va oblidar la seva contrasenya?',
        'Request New Password' => 'Sol·licitar una nova contrasenya',
        'Back to login' => 'Tornar a identificar-se',

        # Template: Motd
        'Message of the Day' => 'Missatge del dia',

        # Template: NoPermission
        'Insufficient Rights' => 'Permisos insuficients',
        'Back to the previous page' => 'Tornar a la pàgina anterior',

        # Template: Notify

        # Template: Pagination
        'Show first page' => 'Mostrar la primera pàgina',
        'Show previous pages' => 'Mostrar les pàgines anteriors',
        'Show page %s' => 'Mostrar pàgina %s',
        'Show next pages' => 'Mostrar pàgines següents',
        'Show last page' => 'Mostrar l\'última pàgina',

        # Template: PictureUpload
        'Need FormID!' => 'Necessita ID de formulari!',
        'No file found!' => 'No es troba l\'arxiu!',
        'The file is not an image that can be shown inline!' => 'L\'arxiu no és una imatge que pugui mostrar-se íntegrament!',

        # Template: PrintFooter

        # Template: PrintHeader
        'printed by' => 'imprès per',

        # Template: PublicDefault

        # Template: Redirect

        # Template: RichTextEditor

        # Template: SpellingInline

        # Template: Test
        'OTRS Test Page' => 'Pàgina de prova de OTRS ',
        'Welcome %s' => 'Benvingut %s',
        'Counter' => 'Comptador',

        # Template: Warning
        'Go back to the previous page' => 'Tornar a la pàgina anterior',

        # SysConfig
        '(UserLogin) Firstname Lastname' => '',
        '(UserLogin) Lastname, Firstname' => '',
        'ACL module that allows closing parent tickets only if all its children are already closed ("State" shows which states are not available for the parent ticket until all child tickets are closed).' =>
            'Mòdul de ACL que permet tancar els tiquets pare només si tots els seus fills ja estan tancats ("Estat" mostra que estats no estan disponibles per al tiquet pare fins que tots els tiquets fill estiguin tancats).',
        'Access Control Lists (ACL)' => '',
        'AccountedTime' => '',
        'Activates a blinking mechanism of the queue that contains the oldest ticket.' =>
            'Activa un mecanisme de parpalleig de la cua que conté els tiquets més antics.',
        'Activates lost password feature for agents, in the agent interface.' =>
            'Activa la funció de contrasenya perduda per als agents, en la interfície de l\'agent.',
        'Activates lost password feature for customers.' => 'Activa la funció de contrasenya perduda per als clients.',
        'Activates support for customer groups.' => 'Activa el suport per a grups de clients.',
        'Activates the article filter in the zoom view to specify which articles should be shown.' =>
            'Activa el filtre d\'article en la vista de zoom per especificar què articles s\'han de mostrar.',
        'Activates the available themes on the system. Value 1 means active, 0 means inactive.' =>
            'Activa els temes disponibles en el sistema. 1 significa actiu, 0 significa inactiu.',
        'Activates the ticket archive system search in the customer interface.' =>
            '',
        'Activates the ticket archive system to have a faster system by moving some tickets out of the daily scope. To search for these tickets, the archive flag has to be enabled in the ticket search.' =>
            'Activa el sistema d\'arxiu de tiquet per tenir un sistema més ràpid, movent alguns tiquets fora dels objectius diaris. Per realitzar una recerca d\'aquests tiquets, l\'opció d\'arxiu ha d\'estar habilitada en la recerca de tiquets.',
        'Activates time accounting.' => 'Activa la comptabilitat de temps.',
        'Adds a suffix with the actual year and month to the OTRS log file. A logfile for every month will be created.' =>
            'Afegeix un sufix amb l\'any actual i el mes en el fitxer de registre de OTRS. Es crearà un arxiu per cada mes.',
        'Adds customers email addresses to recipients in the ticket compose screen of the agent interface. The customers email address won\'t be added if the article type is email-internal.' =>
            '',
        'Adds the one time vacation days for the indicated calendar. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Afegeix un dia lliure per al calendari indicat. Per favor usi el model d\'un sol dígit per als nombres d\'1 a 9 (en comptes de 01 - 09).',
        'Adds the one time vacation days. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Afegeix un dia lliure. Per favor usi el model d\'un sol dígit per als nombres d\'1 a 9 (en comptes de 01 - 09).',
        'Adds the permanent vacation days for the indicated calendar. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Afegeix els dies lliures permanents per al calendari indicat. Per favor usi el model d\'un sol dígit per als nombres d\'1 a 9 (en comptes de 01 - 09).',
        'Adds the permanent vacation days. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Afegeix els dies lliures permanents. Per favor usi el model d\'un sol dígit per als nombres d\'1 a 9 (en comptes de 01 - 09).',
        'Agent Notifications' => 'Notificacions agent',
        'Agent interface article notification module to check PGP.' => 'Mòdul de notificació d\'article d\'interfície d\'agent per comprovar PGP.',
        'Agent interface article notification module to check S/MIME.' =>
            'Mòdul de notificació d\'article d\'interfície d\'agent per comprovar S/MIME.',
        'Agent interface module to access CIC search via nav bar.' => '',
        'Agent interface module to access fulltext search via nav bar.' =>
            'Mòdul d\'interfície d\'agent per tenir accés a la recerca de text completa via la barra de navegació.',
        'Agent interface module to access search profiles via nav bar.' =>
            'Mòdul d\'interfície d\'agent per tenir accés a la recerca de perfils via la barra de navegació.',
        'Agent interface module to check incoming emails in the Ticket-Zoom-View if the S/MIME-key is available and true.' =>
            'Mòdul d\'interfície d\'agent per comprovar els emails entrants en Vista-Zoom-Tiquet si la clau S/ACARONI està disponible i veritable.',
        'Agent interface notification module to check the used charset.' =>
            'Mòdul de notificació d\'interfície d\'agent per comprovar el mapa de caràcters usat.',
        'Agent interface notification module to see the number of tickets an agent is responsible for.' =>
            'Mòdul de notificació d\'interfície d\'agent per veure el nombre de tiquet del que és responsable un agent.',
        'Agent interface notification module to see the number of watched tickets.' =>
            'Mòdul de notificació d\'interfície d\'agent per veure el nombre de tiquets vist.',
        'Agents <-> Groups' => 'Agents <-> Grups',
        'Agents <-> Roles' => 'Agents <-> Rols',
        'All customer users of a CustomerID' => '',
        'Allows adding notes in the close ticket screen of the agent interface.' =>
            'Permet afegir notes en la pantalla de tancament del tiquet de la interfície de l\'agent.',
        'Allows adding notes in the ticket free text screen of the agent interface.' =>
            'Permet afegir notes en la pantalla de text lliure del tiquet de la interfície de l\'agent.',
        'Allows adding notes in the ticket note screen of the agent interface.' =>
            'Permet afegir notes en la pantalla de notes del tiquet de la interfície de l\'agent.',
        'Allows adding notes in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            'Permet afegir notes en la pantalla del propietari del tiquet d\'una vista ampliada del tiquet de la interfície de l\'agent.',
        'Allows adding notes in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            'Permet afegir notes en la pantalla de tiquet pendiente d\'una vista ampliada del tiquet de la interfície de l\'agent.',
        'Allows adding notes in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            'Permet afegir notes en la pantalla de prioritat del tiquet d\'una vista ampliada del tiquet de la interfície de l\'agent.',
        'Allows adding notes in the ticket responsible screen of the agent interface.' =>
            'Permet afegir notes en la pantalla del responsable del tiquet d\'una vista ampliada del tiquet de la interfície de l\'agent.',
        'Allows agents to exchange the axis of a stat if they generate one.' =>
            'Permet als agents intercanviar els eixos d\'una estadística, si generen una.',
        'Allows agents to generate individual-related stats.' => 'Permet als agents generar estadístiques individualitzades.',
        'Allows choosing between showing the attachments of a ticket in the browser (inline) or just make them downloadable (attachment).' =>
            'Permet triar entre mostrar els arxius adjunts d\'un tiquet en el navegador (en línia) o simplement fer-los descarregable (adjunt).',
        'Allows choosing the next compose state for customer tickets in the customer interface.' =>
            'Permet triar el següent estat de compondre per als tiquets del client en la interfície de client.',
        'Allows customers to change the ticket priority in the customer interface.' =>
            'Permet als clients canviar la prioritat d\'entrada en la interfície del client.',
        'Allows customers to set the ticket SLA in the customer interface.' =>
            'Permet als clients establir el SLA del tiquet en la interfície del client.',
        'Allows customers to set the ticket priority in the customer interface.' =>
            'Permet als clients establir la prioritat del tiquet en la interfície del client.',
        'Allows customers to set the ticket queue in the customer interface. If this is set to \'No\', QueueDefault should be configured.' =>
            'Permet als clients establir la cua del tiquet en la interfície del client. Si això s\'estableix en \'No\', QueueDefault ha de ser configurat.',
        'Allows customers to set the ticket service in the customer interface.' =>
            'Permet als clients establir el servei del tiquet en la interfície del client.',
        'Allows customers to set the ticket type in the customer interface. If this is set to \'No\', TicketTypeDefault should be configured.' =>
            '',
        'Allows default services to be selected also for non existing customers.' =>
            '',
        'Allows defining new types for ticket (if ticket type feature is enabled).' =>
            'Permet la definició de nous tipus de tiquet (si la funció tipus de tiquet està activada).',
        'Allows defining services and SLAs for tickets (e. g. email, desktop, network, ...), and escalation attributes for SLAs (if ticket service/SLA feature is enabled).' =>
            'Permet la definició de serveis i SLAs de tiquets (per exemple, correu electrònic, escriptori, xarxa, ...), i atributs d\'escalat dels SLA (si la funció servei/SLA de tiquet està activada)',
        'Allows extended search conditions in ticket search of the agent interface. With this feature you can search e. g. with this kind of conditions like "(key1&&key2)" or "(key1||key2)".' =>
            '',
        'Allows extended search conditions in ticket search of the customer interface. With this feature you can search w. g. with this kind of conditions like "(key1&&key2)" or "(key1||key2)".' =>
            'Permet condicions de recerca ampliades en la recerca de tiquets de la interfície del client. Amb aquesta funció pot buscar amb condicions com "(clau1&&clau2)" o "(clau1||clau2)".',
        'Allows having a medium format ticket overview (CustomerInfo => 1 - shows also the customer information).' =>
            'Permet tenir una visió de format mitjà del tiquet (CustomerInfo => 1 - mostra també la informació del client).',
        'Allows having a small format ticket overview (CustomerInfo => 1 - shows also the customer information).' =>
            'Permet tenir una visió de format petit del tiquet (CustomerInfo => 1 - mostra també la informació del client).',
        'Allows invalid agents to generate individual-related stats.' => '',
        'Allows the administrators to login as other customers, via the customer user administration panel.' =>
            '',
        'Allows the administrators to login as other users, via the users administration panel.' =>
            'Permet als administradors iniciar una sessió com un altre usuari, a través del panell d\'administració d\'usuaris.',
        'Allows to set a new ticket state in the move ticket screen of the agent interface.' =>
            'Permet posar un nou estat de tiquet en la pantalla de moviment de tiquet en l\'interfície d\'agent.',
        'ArticleTree' => '',
        'Attachments <-> Templates' => '',
        'Auto Responses <-> Queues' => 'Auto Respostes <-> Cues',
        'Automated line break in text messages after x number of chars.' =>
            'Salt de línia automàtic en missatges de text després de x nombre de caràcters.',
        'Automatically lock and set owner to current Agent after selecting for an Bulk Action.' =>
            'Bloquejar automàticament i establir el propietari a l\'Agent actual després de la selecció d\'una acció massiva.',
        'Automatically sets the owner of a ticket as the responsible for it (if ticket responsible feature is enabled).' =>
            'Estableix automàticament el propietari d\'un tiquet com el responsable del mateix (si la característica responsable del tiquet està habilitada).',
        'Automatically sets the responsible of a ticket (if it is not set yet) after the first owner update.' =>
            'Estableix automàticament el responsable d\'un tiquet (si encara no ho està) després de l\'actualització de primer propietari.',
        'Balanced white skin by Felix Niklas (slim version).' => '',
        'Balanced white skin by Felix Niklas.' => 'Apariencia blanco balanceado por Felix Niklas.',
        'Basic fulltext index settings. Execute "bin/otrs.RebuildFulltextIndex.pl" in order to generate a new index.' =>
            '',
        'Blocks all the incoming emails that do not have a valid ticket number in subject with From: @example.com address.' =>
            'Bloqueja tots els missatges de correu electrònic entrants que no tenen un nombre de tiquet vàlid en l\'assumpte amb adreça De: @example.com.',
        'Builds an article index right after the article\'s creation.' =>
            'Construeix un índex d\'articles immediatament després de la creació de l\'article.',
        'CMD example setup. Ignores emails where external CMD returns some output on STDOUT (email will be piped into STDIN of some.bin).' =>
            'Configuració d\'exemple de CMD. Fa cas omís de correus electrònics on els comandos externs retornen alguna cosa en la sortida estàndard (el correu electrònic serà enviat a l\'entrada estàndard de some.bin).',
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
        'Change password' => 'Canviar la contrasenya',
        'Change queue!' => 'Canviar la cua!',
        'Change the customer for this ticket' => '',
        'Change the free fields for this ticket' => '',
        'Change the priority for this ticket' => '',
        'Change the responsible person for this ticket' => '',
        'Changes the owner of tickets to everyone (useful for ASP). Normally only agent with rw permissions in the queue of the ticket will be shown.' =>
            'Canvia el propietari del tiquet a Tots (útil per a ASP). Normalment, només l\'agent amb permisos rw en la cua del tiquet serà mostrat.',
        'Checkbox' => 'Casella de verificació',
        'Checks the SystemID in ticket number detection for follow-ups (use "No" if SystemID has been changed after using the system).' =>
            'Comprova l\'ID del sistema en la detecció del nombre de tiquet per a seguiment (Usi "No" si l\'ID del sistema ha canviat després d\'usar el sistema).',
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
        'Comment for new history entries in the customer interface.' => 'Comentari per a noves entrades d\'històric en l\'interfície de client.',
        'Company Status' => '',
        'Company Tickets' => 'Tiquets d\'empresa',
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
        'Create and manage agents.' => '',
        'Create and manage attachments.' => '',
        'Create and manage customer users.' => '',
        'Create and manage customers.' => '',
        'Create and manage dynamic fields.' => '',
        'Create and manage event based notifications.' => '',
        'Create and manage groups.' => '',
        'Create and manage queues.' => '',
        'Create and manage responses that are automatically sent.' => '',
        'Create and manage roles.' => '',
        'Create and manage salutations.' => '',
        'Create and manage services.' => '',
        'Create and manage signatures.' => '',
        'Create and manage templates.' => '',
        'Create and manage ticket priorities.' => '',
        'Create and manage ticket states.' => '',
        'Create and manage ticket types.' => '',
        'Create and manage web services.' => '',
        'Create new email ticket and send this out (outbound)' => '',
        'Create new phone ticket (inbound)' => '',
        'Create new process ticket' => '',
        'Custom text for the page shown to customers that have no tickets yet.' =>
            '',
        'Customer Company Administration' => '',
        'Customer Company Administration.' => '',
        'Customer Company Information' => '',
        'Customer Information Center.' => '',
        'Customer User <-> Groups' => '',
        'Customer User <-> Services' => '',
        'Customer User Administration' => '',
        'Customer User Administration.' => '',
        'Customer Users' => 'Clients',
        'Customer item (icon) which shows the closed tickets of this customer as info block. Setting CustomerUserLogin to 1 searches for tickets based on login name rather than CustomerID.' =>
            '',
        'Customer item (icon) which shows the open tickets of this customer as info block. Setting CustomerUserLogin to 1 searches for tickets based on login name rather than CustomerID.' =>
            '',
        'CustomerName' => '',
        'Customers <-> Groups' => '',
        'Data used to export the search result in CSV format.' => '',
        'Date / Time' => 'Data / Hora',
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
        'Email Addresses' => 'Adreces de Correu',
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
        'Escalation view' => '',
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
        'GenericAgent' => 'AgentGenèric',
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
        'Interface language' => '',
        'It is possible to configure different skins, for example to distinguish between diferent agents, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid skin on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'It is possible to configure different skins, for example to distinguish between diferent customers, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid skin on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'It is possible to configure different themes, for example to distinguish between agents and customers, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid theme on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'Lastname, Firstname' => '',
        'Lastname, Firstname (UserLogin)' => '',
        'Link agents to groups.' => '',
        'Link agents to roles.' => '',
        'Link attachments to templates.' => '',
        'Link customer user to groups.' => '',
        'Link customer user to services.' => '',
        'Link queues to auto responses.' => '',
        'Link roles to groups.' => '',
        'Link templates to queues.' => '',
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
        'Multiselect' => '',
        'My Tickets' => '',
        'Name of custom queue. The custom queue is a queue selection of your preferred queues and can be selected in the preferences settings.' =>
            '',
        'NameX' => '',
        'New email ticket' => '',
        'New phone ticket' => '',
        'New process ticket' => '',
        'Next possible ticket states after adding a phone note in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Next possible ticket states after adding a phone note in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Notifications (Event)' => '',
        'Number of displayed tickets' => '',
        'Number of lines (per ticket) that are shown by the search utility in the agent interface.' =>
            '',
        'Number of tickets to be displayed in each page of a search result in the agent interface.' =>
            '',
        'Number of tickets to be displayed in each page of a search result in the customer interface.' =>
            '',
        'Open tickets of customer' => '',
        'Overloads (redefines) existing functions in Kernel::System::Ticket. Used to easily add customizations.' =>
            '',
        'Overview Escalated Tickets' => '',
        'Overview Refresh Time' => '',
        'Overview of all open Tickets.' => '',
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
        'Queue view' => '',
        'Recognize if a ticket is a follow up to an existing ticket using an external ticket number.' =>
            '',
        'Refresh Overviews after' => '',
        'Refresh interval' => '',
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
        'Roles <-> Groups' => 'Rols <-> Grups',
        'Runs an initial wildcard search of the existing customer users when accessing the AdminCustomerUser module.' =>
            '',
        'Runs the system in "Demo" mode. If set to "Yes", agents can change preferences, such as selection of language and theme via the agent web interface. These changes are only valid for the current session. It will not be possible for agents to change their passwords.' =>
            '',
        'S/MIME Certificate Upload' => '',
        'Saves the attachments of articles. "DB" stores all data in the database (not recommended for storing big attachments). "FS" stores the data on the filesystem; this is faster but the webserver should run under the OTRS user. You can switch between the modules even on a system that is already in production without any loss of data.' =>
            '',
        'Search Customer' => 'Recerques del client',
        'Search User' => '',
        'Search backend default router.' => '',
        'Search backend router.' => '',
        'Select your frontend Theme.' => 'Seleccioni el seu tema',
        'Selects the cache backend to use.' => '',
        'Selects the module to handle uploads via the web interface. "DB" stores all uploads in the database, "FS" uses the file system.' =>
            '',
        'Selects the ticket number generator module. "AutoIncrement" increments the ticket number, the SystemID and the counter are used with SystemID.counter format (e.g. 1010138, 1010139). With "Date" the ticket numbers will be generated by the current date, the SystemID and the counter. The format looks like Year.Month.Day.SystemID.counter (e.g. 200206231010138, 200206231010139). With "DateChecksum"  the counter will be appended as checksum to the string of date and SystemID. The checksum will be rotated on a daily basis. The format looks like Year.Month.Day.SystemID.Counter.CheckSum (e.g. 2002070110101520, 2002070110101535). "Random" generates randomized ticket numbers in the format "SystemID.Random" (e.g. 100057866352, 103745394596).' =>
            '',
        'Send me a notification if a customer sends a follow up and I\'m the owner of the ticket or the ticket is unlocked and is in one of my subscribed queues.' =>
            'Notifiqui\'m si un client envia un seguiment i jo sóc el propietari del tiquet.',
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
        'Statistics' => '',
        'Status view' => '',
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
        'Ticket overview' => '',
        'TicketNumber' => '',
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
            'Cua de selecció de cues favorites. Vostè també pot ser notificat d\'aquestes cues per correu si està habilitat',

        #
        # OBSOLETE ENTRIES FOR REFERENCE, DO NOT TRANSLATE!
        #
        ' (work units)' => ' (unitats de treball)',
        'A response is a default text which helps your agents to write faster answers to customers.' =>
            'Una resposta és un text predeterminat que ajuda als seus agents a escriure respostes més ràpides als clients.',
        'Add Customer Company' => 'Afegir empresa del client',
        'Add Response' => 'Afegir resposta',
        'Add customer company' => 'Afegir empresa del client',
        'Add response' => 'Afegir resposta',
        'Adds customers email addresses to recipients in the ticket compose screen of the agent interface.' =>
            'Afegeix les adreces de correu electrònic dels clients als destinataris en la pantalla de creació de tiquet de la interfície de l\'agent.',
        'Allows extended search conditions in ticket search of the agent interface. With this feature you can search w. g. with this kind of conditions like "(key1&&key2)" or "(key1||key2)".' =>
            'Permet condicions de recerca ampliades en la recerca de tiquets de la interfície de l\'agent. Amb aquesta funció pot buscar amb condicions com "(clau1&&clau2)" o "(clau1||clau2)".',
        'Attachments <-> Responses' => 'Adjunts <-> Respostes',
        'Change Attachment Relations for Response' => 'Canviar les relacions de arxiu adjunt per a la resposta',
        'Change Queue Relations for Response' => 'Canviar les relacions de cua per a la resposta',
        'Change Response Relations for Attachment' => 'Canviar les relacions de resposta per a l\'arxiu adjunt',
        'Change Response Relations for Queue' => 'Canviar les relacions de resposta per a la cua',
        'Configures a default TicketDynmicField setting. "Name" defines the dynamic field which should be used, "Value" is the data that will be set, and "Event" defines the trigger event. Please check the developer manual (http://doc.otrs.org/), chapter "Ticket Event Module".' =>
            'Configura un valor CampDinamicDeTiquet per defecte. "Nom", defineix el camp dinàmic que s\'ha d\'utilitzar, "Valor" són les dades que es crearà, i "Esdeveniment" defineix l\'esdeveniment de gallet. Per favor, consulti el manual del desenvolupador (http://doc.otrs.org/), en el capítol "Mòdul d\'esdeveniments de tiquet".',
        'Currently only MySQL is supported in the web installer.' => 'Actualment només se suporta MySQL en l\'instal·lador web.',
        'Customer Company Management' => 'Administració de empresa del client',
        'Customer Data' => 'Informació del client',
        'Customer will be needed to have a customer history and to login via customer panel.' =>
            'El client haurà de comptar amb un historial de client i accedir a través del panell de clients.',
        'DB host' => 'BD--- servidor',
        'Database-User' => 'Usuari-Base de dades',
        'Don\'t forget to add new responses to queues.' => 'No oblidi afegir noves respostes a les cues.',
        'Edit Response' => 'Editar resposta',
        'Escalation in' => 'Escalat en',
        'False' => 'Fals',
        'Filter for Responses' => 'Filtre per respostes',
        'Filter name' => 'Nom de filtre',
        'For more info see:' => 'Para més informació vegi:',
        'From customer' => 'Del client',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty. For security reasons we do recommend setting a root password. For more information please refer to your database documentation.' =>
            'Si la seva base de dades té una contrasenya per a root, ha d\'introduir-la aquí. Si no, deixi aquest camp en blanc. Per raons de seguretat és recomanable posar una contrasenya a l\'usuari root. Per a més informació per favor refereixi\'s a la documentació de la seva base de dades.',
        'If you want to install OTRS on another database type, please refer to the file README.database.' =>
            'Si desitja instal·lar *OTRS en un altre tipus de bases de dades, per favor consulti l\'arxiu README.database.',
        'Log file location is only needed for File-LogModule!' => 'La ubicació de l\'arxiu de registre només és necessària per a Arxiu-LogModule!',
        'Logout successful. Thank you for using OTRS!' => 'Desconnexió reeixida. Gràcies per utilitzar OTRS!',
        'Manage Response-Queue Relations' => 'Gestionar relacions Resposta-Cua',
        'Manage Responses' => 'Gestionar respostes',
        'Manage Responses <-> Attachments Relations' => 'Gestionar relacions respostes <-> arxius adjunts',
        'Only for ArticleCreate event' => 'Només per a l\'esdeveniment ArticleCreate',
        'Package verification failed!' => 'Verificació del paquet ha fallat!',
        'Please enter a search term to look for customer companies.' => 'Per favor, introdueixi un terme de recerca per buscar empreses clients.',
        'Please supply a' => 'Per favor, faciliti una',
        'Please supply a first name' => 'Si us plau introdueixi un nom de pila',
        'Please supply a last name' => 'Si us plau introdueixi un cognom',
        'Responses' => 'Respostes',
        'Secure mode must be disabled in order to reinstall using the web-installer.' =>
            'El mode segur ha d\'estar desactivat per tornar a instal·lar mitjançant la pàgina d\'instal·lació.',
        'URL' => 'URL',
        'before' => 'abans',
        'default \'hot\'' => 'per defecte \'hot\'',
        'settings' => 'configuració',

    };
    # $$STOP$$
    return;
}

1;
