%import "../mga-aal.i"

%ignore Accessible(std::unique_ptr<AccessibleWr> accessible);

%{
#include "aal/aalcommon.h"
#include "aal/windows/accessible.h"
%}

%init %{
  aal::Accessible::init();
%}

%include "aal/windows/accessible.h"
