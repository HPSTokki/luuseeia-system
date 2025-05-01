@echo off
:: Ensure dependencies are installed for FRONTEND
if not exist "FRONTEND\node_modules" (
    echo Installing frontend dependencies...
    cd FRONTEND
    npm install
    cd ..
)

:: Ensure dependencies are installed for BACKEND
@REM if not exist "BACKEND\node_modules" (
@REM     echo Installing backend dependencies...
@REM     cd BACKEND
@REM     npm install
@REM     cd ..
@REM )

:: Run both frontend and backend in parallel, in the same terminal window
echo Starting frontend and backend...

start /b cmd /k "cd FRONTEND && npm run dev"
@REM start /b cmd /k "cd BACKEND && npm run dev"
