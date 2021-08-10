-- Création des Rôles
EXEC [ECX_Create_Role]
@name = 'Administrateur',
@color = '#F94144',
@description = 'Responsable des Utilisateurs et Notes du site.';

EXEC [ECX_Create_Role]
@name = 'Modérateur',
@color = '#F9844A6',
@description = 'En charge de la modération des Notes du site';

EXEC [ECX_Create_Role]
@name = 'Rédacteur',
@color = '#43AA8B',
@description = 'En charge de la rédaction des Notes du site';




-- Création des Utilisateurs

--EXEC [ECX_Populate_User]
--@iteration = 5;

EXEC [ECX_Register_User] 
@email = 'renaud@mail.com', 
@password = 'test=1111', 
@nickname = 'VitalRenock', 
@lastname = 'Brigode', 
@firstname = 'Renaud';

DECLARE @user_id INT = (SELECT [ID] FROM [User] WHERE [Nickname] = 'VitalRenock');
EXEC [ECX_SetRole_User]
@user_ID = @user_id,
@role_name = 'Administrateur';

EXEC [ECX_Register_User] 
@email = 'mexojer@mail.com', 
@password = 'test=1111', 
@nickname = 'Mexojer', 
@lastname = 'Thunus', 
@firstname = 'Jérôme';

SET @user_id = (SELECT [ID] FROM [User] WHERE [Nickname] = 'Mexojer');
EXEC [ECX_SetRole_User]
@user_ID = @user_id,
@role_name = 'Modérateur';

EXEC [ECX_Register_User] 
@email = 'momo@mail.com', 
@password = 'test=1111', 
@nickname = 'Momo', 
@lastname = 'Lechat', 
@firstname = 'Maurice';

-- Par défaut Rédacteur
EXEC [ECX_Register_User] 
@email = 'barnabe@mail.com', 
@password = 'test=1111', 
@nickname = 'Barbos', 
@lastname = 'Dupont', 
@firstname = 'Barnabé';



-- Création des catégories
EXEC [ECX_Create_Category]
@name = 'CSharp',
@color = '#F94144',
@short = 'C#',
@description = 'Le "C Sharp" est un langage de programmation orientée objet, commercialisé par Microsoft depuis 20023 et destiné à développer sur la plateforme Microsoft .NET. ';

EXEC [ECX_Create_Category]
@name = 'TypeScript',
@color = '#F8961E',
@short = 'TS',
@description = 'TypeScript est un langage de programmation libre et open source développé par Microsoft qui a pour but d''améliorer et de sécuriser la production de code JavaScript.';

EXEC [ECX_Create_Category]
@name = 'Hypertext Markup Language',
@color = '#F9C74F',
@short = 'HTML',
@description = 'Le HyperText Markup Language, généralement abrégé HTML ou dans sa dernière version HTML5, est le langage de balisage conçu pour représenter les pages web.';

EXEC [ECX_Create_Category]
@name = 'Programmation Orienté Objet',
@color = '#43AA8B',
@short = 'POO',
@description = 'La programmation orientée objet est un paradigme de programmation. Elle consiste en la définition et l''interaction de briques logicielles appelées objets. Un objet représente un concept, une idée ou toute entité du monde physique.';

EXEC [ECX_Create_Category]
@name = 'Cuisine',
@color = '#577590',
@short = 'Food',
@description = 'La cuisine est l''ensemble des techniques de préparation des aliments en vue de leur consommation par les êtres humains. La cuisine est diverse à travers le monde.';



--•Les variables
--•Les opérateurs conditionnels
--•Les structures conditionnelles
--•Les structures itératives
--•Les tableaux


-- Note 1
EXEC [ECX_Create_Note]
@title = 'Les variables',
@public = 1,
@parentNote_ID = NULL,
@user_ID = 1,
@category_ID = 4;

EXECUTE [ECX_Create_Component] 
@title = 'Définition d''une variable',
@type = 'Texte',
@content = '',
@description = 'Une variable est un élément de programmation auquel on affecte une valeur particulière pouvant être modifiée au cours d''un algorithme.',
@url = '',
@public = 1,
@user_ID = 1,
@category_ID = 4;
EXEC [ECX_Add_ComponentToNote]
@note_ID = 1,
@Component_ID = 1;

EXECUTE [ECX_Create_Component] 
@title = 'Déclarer une variable',
@type = 'Texte',
@content = 'Variable identificateur: Type',
@description = 'Déclarer une variable consiste à réserver un emplacement en mémoire afin de pouvoir l’utiliser par la suite. Pour déclarer une variable, il nous faut spécifier 2 choses: son nom et son type. Il est important de choisir un nom cohérent qui permet de facilement comprendre l’utilité de la variable.',
@url = '',
@public = 1,
@user_ID = 1,
@category_ID = 4;
EXEC [ECX_Add_ComponentToNote]
@note_ID = 1,
@Component_ID = 2;

EXECUTE [ECX_Create_Component] 
@title = 'Bonnes pratiques',
@type = 'Text',
@content = '',
@description = 'Le choix des noms de variable doit rester cohérent. À la relecture de l’algorithme, il doit être possible de comprendre le sens d’une variable en fonction de son nom. L’alphabet n’est pas une bonne idée. Éviter les accents pour des raisons informatiques. Les langages sont écrits en anglais, et cette langue ne comprend pas les accents. Une bonne pratique est d’utiliser le «lowerCamelCase» ou le «UpperCamelCase». Le choix dépend des conventions que certains langages utilisent. En C#, c’est le «UpperCamelCase» qui est principalement utilisé.',
@url = '',
@public = 1,
@user_ID = 1,
@category_ID = 4;
EXEC [ECX_Add_ComponentToNote]
@note_ID = 1,
@Component_ID = 3;

EXECUTE [ECX_Create_Component] 
@title = 'Pour aller plus loin...',
@type = 'Link',
@content = '',
@description = '',
@url = 'https://fr.wikipedia.org/wiki/Variable_(informatique)',
@public = 1,
@user_ID = 1,
@category_ID = 4;
EXEC [ECX_Add_ComponentToNote]
@note_ID = 1,
@Component_ID = 4;



-- Note 2
EXEC [ECX_Create_Note]
@title = 'Les variables en C#',
@public = 1,
@parentNote_ID = 1,
@user_ID = 2,
@category_ID = 2;

EXECUTE [ECX_Create_Component] 
@title = 'Nommer ses variables',
@type = 'Text',
@content = '',
@description = 'Le nom d''une variable est obligatoirement écrit avec des caractères alphanumériques (de préférence sans accent), ainsi que le underscore (sans les apostrophes)',
@url = '',
@public = 1,
@user_ID = 2,
@category_ID = 1;
EXEC [ECX_Add_ComponentToNote]
@note_ID = 2,
@Component_ID = 5;
EXEC [ECX_Add_ComponentToNote]
@note_ID = 1,
@Component_ID = 5;

EXECUTE [ECX_Create_Component] 
@title = 'Types de variables de base',
@type = 'Code',
@content = 'sbyte (-128 à 127), short (-32 768 à 32 767), int (-2 147 483 648 à 2 147 483 647), long (-9 223 372 036 854 775 808 à -9 223 372 036 854 775 807), float (-3,4028235E+38 à 3,4028234E+38), double (-1,79769313486231570E+308 à 1,7976931348623157E+308), bool (True / False), string (de 0 à 2 147 483 648 caractères)',
@description = '',
@url = '',
@public = 1,
@user_ID = 2,
@category_ID = 1;
EXEC [ECX_Add_ComponentToNote]
@note_ID = 2,
@Component_ID = 6;

EXECUTE [ECX_Create_Component] 
@title = 'Mon septième Composant',
@type = 'Image',
@content = 'Contenu de test 4',
@description = 'Description de test 4',
@url = 'www.monsite.com',
@public = 1,
@user_ID = 2,
@category_ID = 1;
EXEC [ECX_Add_ComponentToNote]
@note_ID = 2,
@Component_ID = 7;

EXECUTE [ECX_Create_Component] 
@title = 'Mon huitième Composant',
@type = 'Image',
@content = 'Contenu de test 4',
@description = 'Description de test 4',
@url = 'www.monsite.com',
@public = 1,
@user_ID = 2,
@category_ID = 1;
EXEC [ECX_Add_ComponentToNote]
@note_ID = 2,
@Component_ID = 8;

EXECUTE [ECX_Create_Component] 
@title = 'Type valeur',
@type = 'Text',
@content = '',
@description = 'Une variable de type valeurcontient directement l''information. Cela signifie que lorsque cette variable est modifiée, la valeur qu''elle contenait est aussi modifiée. Cela ne m''a pas paru indispensable de vous apprendre à créer des structures, par contre il faut que vous connaissiez des structures élémentaires. Les types numériques de base sont des structures, donc se comportent comme des types valeur. Le type string est un peu spécial : c''est une classe, mais elle se comporte comme un type valeur.',
@url = '',
@public = 1,
@user_ID = 2,
@category_ID = 1;
EXEC [ECX_Add_ComponentToNote]
@note_ID = 2,
@Component_ID = 9;

EXECUTE [ECX_Create_Component] 
@title = 'Type référence',
@type = 'Text',
@content = '',
@description = 'Une variable de type référencecontient l''adresse de l''emplacement mémoire où se trouve l''information. Du coup, une variable qui a la même référence qu''une seconde variable peut être automatiquement changée quand la seconde variable est modifiée. Nous verrons tout cela bien plus en détail avec les classes. Je voulais juste introduire cette notion car c''est quelque chose de fondamental et je pense que plus c''est pris tôt, plus vous aurez le temps d''y revenir petit à petit pour bien cerner le concept.',
@url = '',
@public = 1,
@user_ID = 2,
@category_ID = 1;
EXEC [ECX_Add_ComponentToNote]
@note_ID = 2,
@Component_ID = 10;



-- Note 3
EXEC [ECX_Create_Note]
@title = 'Type Valeur ou Reference?',
@public = 1,
@parentNote_ID = 1,
@user_ID = 1,
@category_ID = 3;

EXEC [ECX_Add_ComponentToNote]
@note_ID = 3,
@Component_ID = 9;
EXEC [ECX_Add_ComponentToNote]
@note_ID = 3,
@Component_ID = 10;
EXEC [ECX_Add_ComponentToNote]
@note_ID = 1,
@Component_ID = 9;
EXEC [ECX_Add_ComponentToNote]
@note_ID = 1,
@Component_ID = 10;



-- Note 4
EXEC [ECX_Create_Note]
@title = 'Les énumérations',
@public = 1,
@parentNote_ID = NULL,
@user_ID = 1,
@category_ID = 1;

EXECUTE [ECX_Create_Component] 
@title = 'C''est quoi?',
@type = 'Text',
@content = 'enum Weather { Unknown, Sunny, Cloudy, Rainy }',
@description = 'Une énumération est une liste de valeurs qui a un type unique. Ce type est le nom de l''énumération. Un exemple vaut toujours plus qu''un long discours donc voyez plutôt comment déclarer une énumération désignant les différents temps (dans l''ordre : inconnu, ensoleillé, nuageux, pluvieux)',
@url = '',
@public = 1,
@user_ID = 1,
@category_ID = 1;
EXEC [ECX_Add_ComponentToNote]
@note_ID = 4,
@Component_ID = 11;

EXECUTE [ECX_Create_Component] 
@title = 'Attention!',
@type = 'Text',
@content = '',
@description = 'Vous ne pouvez pas mettre des énumérations où vous voulez. Une énumération se déclare en tant que membre d''une classe (ou en-dehors d''une classe), et non pas dans une méthode.',
@url = '',
@public = 1,
@user_ID = 1,
@category_ID = 1;
EXEC [ECX_Add_ComponentToNote]
@note_ID = 4,
@Component_ID = 12;





-- Création des Notes

EXEC [ECX_Create_Note]
@title = 'Ma cinqième Note',
@public = 1,
@parentNote_ID = NULL,
@user_ID = 2,
@category_ID = 2;

EXEC [ECX_Create_Note]
@title = 'Ma sixième Note',
@public = 1,
@parentNote_ID = NULL,
@user_ID = 2,
@category_ID = 3;

EXEC [ECX_Create_Note]
@title = 'Ma septième Note',
@public = 1,
@parentNote_ID = NULL,
@user_ID = 1,
@category_ID = 1;

EXEC [ECX_Create_Note]
@title = 'Ma huitième Note',
@public = 0,
@parentNote_ID = 1,
@user_ID = 1,
@category_ID = 2;

EXEC [ECX_Create_Note]
@title = 'Ma neuvième Note',
@public = 1,
@parentNote_ID = 1,
@user_ID = 1,
@category_ID = 3;