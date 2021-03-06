<?php
  
   require_once "Controller/AutorController.php";
   require_once "Controller/LibroController.php";
   require_once "Controller/LoginController.php";


    define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' .$_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

    
    //lee la acción
    if(!empty($_GET['action'])){
        $action = $_GET['action'];
    }else {
        $action = 'home'; //acción por defecto si no envía
    }

    //Parsea la accion Ej: suma/1/2 --> ['suma', 1,2]
    //calculadora/route.php?action=pi -->['pi']
    $params = explode('/',$action);

    //instanciar la clase para usar las funciones del CONTROLADOR

    $autorController = new AutorController(); 
    $libroController = new LibroController();
    $loginController = new LoginController();

    //determina que camino seguir según la acción

    
    switch ($params[0]){

       
        case 'home':
            $libroController-> showHome();
            break;
        case 'viewBook':
            $libroController->viewBook($params[1],$params[2],$params[3]);
            break;   
        case 'viewAuthors':
            $autorController->viewAuthors();
            break;  
        case 'viewBooksOfAuthor':
            $libroController->viewBooksOfAuthor($params[1],$params[2],$params[3]);
        break;
        case 'login':
            $loginController->showFormLogin();
            break;
        case 'verify':
            $loginController->verifyLogin();
            break;
        case 'logout':
            $loginController->logout();
            break;
        case 'deleteBook':
            $libroController->deleteBook($params[1]);
            break;
        case 'updateBook':
            $libroController->updateBookForm($params[1]);
            break;
        case 'homeAdmin':
            $libroController->showHomeAdmin();
            break;
        case 'edicionLibro':
            $libroController->updateBook($params[1]);
            break;
        case 'addLibro':
            $libroController->addBook();
            break;
        case 'authorsAdmin':
            $autorController->authorsAdmin();
            break;
        case 'updateAuthor':
            $autorController->updateAuthorForm($params[1]);
            break;
        case 'updateAuthorSave':
            $autorController->updateAuthorSave($params[1]);
            break;
        case 'addAutor':
            $autorController->addAuthor();
            break;
        case 'deleteAuthor':
            $autorController->deleteAuthor($params[1]);
            break;  
        default:
            echo('404 Page not found');
            break;
        
    }

    