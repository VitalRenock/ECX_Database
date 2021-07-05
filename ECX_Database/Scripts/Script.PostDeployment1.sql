-- Création des Rôles
EXEC [ECX_Create_Role]
@name = 'Administrateur',
@color = '#333333',
@description = 'Responsable des Utilisateurs et Notes du site.';

EXEC [ECX_Create_Role]
@name = 'Modérateur',
@color = '#666666',
@description = 'En charge de la modération des Notes du site';

EXEC [ECX_Create_Role]
@name = 'Rédacteur',
@color = '#999999',
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

EXEC [ECX_Register_User] 
@email = 'barnabe@mail.com', 
@password = 'test=1111', 
@nickname = 'Barbos', 
@lastname = 'Dupont', 
@firstname = 'Barnabé';



-- Création des catégories
EXEC [ECX_Create_Category]
@name = 'CSharp',
@color = '#111111',
@short = 'C#',
@description = 'Description du CSharp';

EXEC [ECX_Create_Category]
@name = 'TypeScript',
@color = '#222222',
@short = 'TS',
@description = 'Description du TypeScript';

EXEC [ECX_Create_Category]
@name = 'Html',
@color = '#333333',
@short = 'HTML',
@description = 'Description du HTML';



-- Création des Notes
EXEC [ECX_Create_Note]
@title = 'Ma première Note',
@public = 1,
@parentNote_ID = NULL,
@user_ID = 1,
@category_ID = 1;

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
@title = 'Mon premier Composant',
@type = 'Image',
@content = 'Contenu de test 1',
@description = 'Description de test 1',
@url = 'www.monsite.com',
@public = 1,
@user_ID = 1,
@category_ID = 1;

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
@Component_ID = 1;

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
