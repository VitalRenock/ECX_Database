DECLARE @response NVARCHAR(250);

-- Création des Rôles
EXEC [ECX_Create_Role]
@name = 'Administrateur',
@color = '#333333',
@description = 'Responsable des Utilisateurs et Notes du site.',
@responseMessage = @response OUTPUT;

EXEC [ECX_Create_Role]
@name = 'Modérateur',
@color = '#666666',
@description = 'En charge de la modération des Notes du site',
@responseMessage = @response OUTPUT;

EXEC [ECX_Create_Role]
@name = 'Rédacteur',
@color = '#999999',
@description = 'En charge de la rédaction des Notes du site',
@responseMessage = @response OUTPUT;



-- Création des Utilisateurs
EXEC [ECX_Create_User] 
@email = 'renaud@mail.com', 
@password = 'test=1111', 
@nickName = 'VitalRenock', 
@lastName = 'Brigode', 
@firstName = 'Renaud', 
@role_ID = 1;

EXEC [ECX_Create_User] 
@email = 'mexojer@mail.com', 
@password = 'test=2222', 
@nickName = 'Mexojer', 
@lastName = 'Thunus', 
@firstName = 'Jérôme', 
@role_ID = 2;

EXEC [ECX_Create_User] 
@email = 'momo@mail.com', 
@password = 'test=3333', 
@nickName = 'Momo', 
@lastName = 'Lechat', 
@firstName = 'Maurice', 
@role_ID = 3;



-- Création des Notes
EXEC [ECX_Create_Note]
@title = 'Ma première Note',
@public = 1,
@parentNote_ID = NULL,
@user_ID = 1,
@responseMessage = @response OUTPUT;

EXEC [ECX_Create_Note]
@title = 'Ma deuxième Note',
@public = 0,
@parentNote_ID = 1,
@user_ID = 1,
@responseMessage = @response OUTPUT;

EXEC [ECX_Create_Note]
@title = 'Ma troisième Note',
@public = 1,
@parentNote_ID = 1,
@user_ID = 1,
@responseMessage = @response OUTPUT;



-- Création des Composants
EXECUTE [ECX_Create_Component] 
@title = 'Mon premier Composant',
@content = 'Contenu de test 1',
@short = 'C#',
@description = 'Description de test 1',
@url = 'www.monsite.com',
@public = 1,
@user_ID = 1,
@responseMessage = @response OUTPUT;

EXECUTE [ECX_Create_Component] 
@title = 'Mon deuxième Composant',
@content = 'Contenu de test 2',
@short = 'C#',
@description = 'Description de test 2',
@url = 'www.monsite.com',
@public = 1,
@user_ID = 1,
@responseMessage = @response OUTPUT;

EXECUTE [ECX_Create_Component] 
@title = 'Mon troisième Composant',
@content = 'Contenu de test 3',
@short = 'C#',
@description = 'Description de test 3',
@url = 'www.monsite.com',
@public = 1,
@user_ID = 1,
@responseMessage = @response OUTPUT;



-- Composition des Notes
EXEC [ECX_Create_NoteComposition]
@note_ID = 1,
@Component_ID = 1,
@responseMessage = @response OUTPUT;

EXEC [ECX_Create_NoteComposition]
@note_ID = 1,
@Component_ID = 2,
@responseMessage = @response OUTPUT;

EXEC [ECX_Create_NoteComposition]
@note_ID = 1,
@Component_ID = 3,
@responseMessage = @response OUTPUT;