/*L
  Copyright SAIC-F Inc.

  Distributed under the OSI-approved BSD 3-Clause License.
  See http://ncip.github.com/cadsr-password-change/LICENSE.txt for details.
L*/

--run as sbrext

update sbrext.tool_options_view_ext set value = 1000 where tool_name = 'caDSR' and property = 'LOCKOUT.THRESHOLD'
/
commit
/
