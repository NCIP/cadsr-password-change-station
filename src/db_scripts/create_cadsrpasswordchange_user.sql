/*L
  Copyright SAIC-F Inc.

  Distributed under the OSI-approved BSD 3-Clause License.
  See http://ncip.github.com/cadsr-password-change/LICENSE.txt for details.
L*/

-- run as sys (or any user that can create users and grant alter user)
-- Creates a user for the caDSR Password Change Station that has the ability to change passwords (so that we can support end users with expired passwords)

-- This assumes tablespace names don't vary across tiers (which is true right now)
-- The password for the cadsrpasswordchange user should be changed and controlled by systems for all tiers other than the dev tier

create user cadsrpasswordchange identified by cadsrpasswordchange default tablespace USERS temporary tablespace TEMP account unlock
/
grant create session to cadsrpasswordchange
/
grant alter user to cadsrpasswordchange
/
grant select on sbr.user_accounts_view to cadsrpasswordchange
/
grant select on sbrext.tool_options_view_ext to cadsrpasswordchange
/
