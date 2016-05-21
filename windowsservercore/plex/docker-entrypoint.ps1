
# If first argument is '-f' or '--some-option'
# or first arg is 'something.conf'
If ( ($args[0] -like '-f') -or ($args[0] -like '--' ) -or ($args[0] -like '*.conf') {
	set 
	}
  
If  ($args[0] -eq 'redis-server') {
	# Disable Redis protected mode [1] as it is unnecessary in context
	# of Docker. Ports are not automatically exposed when running inside
	# Docker, but rather explicitely by specifying -p / -P.
	doProtectedMode=1
	configFile = ""
	If (Test-Path $args[1]) {
		If (Get-Content  -match '^protected-mode')
			doProtectedMode = ""
		}
	}
	If ($doProtectedMode -not -eq "") {
		
	}
	
ElseIf ($args[0] -like '--') {  }
Else 