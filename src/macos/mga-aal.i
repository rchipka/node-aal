%import "../mga-aal.i"

%ignore sql::Connection;
%ignore sql::Driver;
%ignore sql::Statement;
%ignore sql::Savepoint;
%ignore sql::DatabaseMetaData;
%ignore sql::SSL_MODE_VERIFY_IDENTITY;
%ignore sql::SSL_MODE_VERIFY_CA;
%ignore sql::SSL_MODE_REQUIRED;
%ignore sql::SSL_MODE_PREFERRED;
%ignore sql::SSL_MODE_DISABLED;
%ignore sql::TRANSACTION_SERIALIZABLE;
%ignore sql::TRANSACTION_REPEATABLE_READ;
%ignore sql::TRANSACTION_READ_UNCOMMITTED;
%ignore sql::TRANSACTION_READ_COMMITTED;
%ignore sql::TRANSACTION_NONE;

%{
#include "aal/macos/accessible.cpp"
%}

%include "aal/macos/accessible.cpp"
