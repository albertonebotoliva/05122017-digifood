API test

Author: Alberto Nebot
Review: Digifood

Specs:

Create MiniAPI - RESTful API - JSON-API

1 - Access Resources:

  - Get Menu List: {} => {id, name, price}


Proposed Solution:

Micro-framework MVC:

  Controllers: (Specific to the resource)
  
  - BaseController
  - MenuController
  - UsersController
  
  Libs:
  
  - API
  - Auth
  - Database
  - Request
  - Response
  
  Models:
  
  - AuthModel
  - BaseModel
  - ResourcesModel


RESTful specs:

Please NOTE that the base uri is set to /DIGIFOOD/backend/ either in .htaccess (RewriteBase) and index.php (BASE_URI).Update to your project path.


Available Resources:
  
  GET   /DIGIFOOD/backend/menu/ - Fetch menu list.
  
  
