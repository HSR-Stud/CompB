# SCons build script
# Build PDF file by typing "scons" in your shell.

# Configuration variables
MODULE_NAME = 'CompB'

# Initialize SCons environment
env = Environment(PDFLATEXFLAGS='--enable-write18')

# Configure PDF building
output = env.PDF(target='%s.pdf' % MODULE_NAME, source='%s.tex' % MODULE_NAME)
env.Precious(output)

# Send SIGHUP signal to mupdf after build to reload PDF
def reload(target, source, env):
    import os
    try:
        os.system('killall -HUP mupdf 2> /dev/null')
    except:
        pass
reload_command = Command('reload_mupdf', [], reload)
Depends(reload_command, '%s.pdf' % MODULE_NAME)
Default(reload_command)
