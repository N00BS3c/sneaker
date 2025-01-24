This Bash script scans common Linux service file locations to identify potential credentials left in comments. It searches for keywords such as root, password, passwd, secret, and key within .service and other relevant files.

Features

Scans the following directories:

/etc/systemd/system/

/usr/lib/systemd/system/

/lib/systemd/system/

/etc/init.d/

Identifies comments containing possible sensitive information.

Outputs the exact file path where potential credentials are found.
