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
  
  GET   /test/DIGIFOOD/backend/menu/ - Fetch menu list.
  
    - User comes from token to validate access to the platform
  


NOTE: To add a new resource:

  Insert in the table resources a new row
  
  - name. Name of the resource.
  - method. Available method
  - action. Action dispatched by this method
  - format. Accepted format
  - query_field. In case that you want to filter by any field.

  Create a controller with the name of the resource. Or just add the required action to the Basecontroller.
