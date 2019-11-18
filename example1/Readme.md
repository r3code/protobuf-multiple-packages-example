# Proto files Example 1

Here we have such structure:
    ¦   clean.bat
    ¦   proto-gen.bat
    ¦   Readme.md
    ¦
    L---example1proto
        ¦   domain_types.proto // contains defenitions of problem domain entites
        ¦   shared_messages.proto // contains messages shared by services, e.g. Error definition
        ¦
        +---auth
        ¦       auth_service.proto // service definition
        ¦
        L---users
                users_service.proto // service definition

Here we have `proto-gen.bat` to compile all *.proto files. 
You MUST change working folder to the folder where `proto-gen.bat` is located
or `protoc` won't compile imports.

To compile proto-files do:
    cd example1
    proto-gen.bat
    
By default I use GO files generation.

See `proto` files for details. 
 


