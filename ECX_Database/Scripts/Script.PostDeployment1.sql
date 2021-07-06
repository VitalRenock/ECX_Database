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
@category_ID = 3;
EXEC [ECX_Add_ComponentToNote]
@note_ID = 1,
@Component_ID = 1;






-- Création des Notes
EXEC [ECX_Create_Note]
@title = 'Ma deuxième Note',
@public = 0,
@parentNote_ID = 1,
@user_ID = 1,
@category_ID = 2;

EXEC [ECX_Create_Note]
@title = 'Ma troisième Note',
@public = 1,
@parentNote_ID = 1,
@user_ID = 1,
@category_ID = 3;

EXEC [ECX_Create_Note]
@title = 'Ma quatrième Note',
@public = 1,
@parentNote_ID = NULL,
@user_ID = 2,
@category_ID = 1;

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



-- Création des Composants


EXECUTE [ECX_Create_Component] 
@title = 'Mon deuxième Composant',
@type = 'Image',
@content = 'Contenu de test 2',
@description = 'Description de test 2',
@url = 'www.monsite.com',
@public = 0,
@user_ID = 1,
@category_ID = 1;

EXECUTE [ECX_Create_Component] 
@title = 'Mon troisième Composant',
@type = 'Image',
@content = 'Contenu de test 3',
@description = 'Description de test 3',
@url = 'www.monsite.com',
@public = 1,
@user_ID = 1,
@category_ID = 1;

EXECUTE [ECX_Create_Component] 
@title = 'Mon quatrième Composant',
@type = 'Image',
@content = 'Contenu de test 4',
@description = 'Description de test 4',
@url = 'www.monsite.com',
@public = 1,
@user_ID = 1,
@category_ID = 1;

EXECUTE [ECX_Create_Component] 
@title = 'Mon cinquième Composant',
@type = 'Image',
@content = 'Contenu de test 4',
@description = 'Description de test 4',
@url = 'www.monsite.com',
@public = 1,
@user_ID = 2,
@category_ID = 1;

EXECUTE [ECX_Create_Component] 
@title = 'Mon sixième Composant',
@type = 'Image',
@content = 'Contenu de test 4',
@description = 'Description de test 4',
@url = 'www.monsite.com',
@public = 0,
@user_ID = 2,
@category_ID = 1;

EXECUTE [ECX_Create_Component] 
@title = 'Mon septième Composant',
@type = 'Image',
@content = 'Contenu de test 4',
@description = 'Description de test 4',
@url = 'www.monsite.com',
@public = 1,
@user_ID = 2,
@category_ID = 1;

EXECUTE [ECX_Create_Component] 
@title = 'Mon huitième Composant',
@type = 'Image',
@content = 'Contenu de test 4',
@description = 'Description de test 4',
@url = 'www.monsite.com',
@public = 1,
@user_ID = 2,
@category_ID = 1;



-- Composition des Notes


EXEC [ECX_Add_ComponentToNote]
@note_ID = 1,
@Component_ID = 2;

EXEC [ECX_Add_ComponentToNote]
@note_ID = 1,
@Component_ID = 3;

EXEC [ECX_Add_ComponentToNote]
@note_ID = 1,
@Component_ID = 4;

EXEC [ECX_Add_ComponentToNote]
@note_ID = 4,
@Component_ID = 5;

EXEC [ECX_Add_ComponentToNote]
@note_ID = 4,
@Component_ID = 6;

EXEC [ECX_Add_ComponentToNote]
@note_ID = 4,
@Component_ID = 7;

EXEC [ECX_Add_ComponentToNote]
@note_ID = 4,
@Component_ID = 8;
