echo off
rem This starts the virtual envirenment to generate the Wiki
rem https://www.sphinx-doc.org/en/master/tutorial/getting-started.html#setting-up-your-project-and-development-environment

rem call ".venv\\scripts\\activate"
cd docs
start cmd.exe /k "..\\.venv\\scripts\\activate"
