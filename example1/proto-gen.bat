:: This script must me at the same directory as `example1proto` to compile proto files
::
:: example1proto here like namespace
:: protoc can not compile in subfolders so do it manually 
:: protoc must see the root package folder `example1proto` to process imports
:: so we push '.' folder here. If this script should be placed in another folder
:: don't forget to change `push .` to `push <path to the root folder of example1proto>`
:: or protoc won't make imports.
pushd .
protoc -I. --go_out=plugins=grpc:. example1proto\users\*.proto
protoc -I. --go_out=plugins=grpc:. example1proto\auth\*.proto
protoc -I. --go_out=plugins=grpc:. example1proto\*.proto
popd

