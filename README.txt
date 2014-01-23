CAVEATS

Files to be embedded in TDLs cannot have certain special characters within them, because the contents of the file are going to be within an XML tag, e.g.:

<file>FILE CONTENTS HERE</file>

In particular the less than symbol, '<' is problemattic, since it is interpretted as a a new tag. 