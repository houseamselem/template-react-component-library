


:: Special characters =, (, :, ), /, < and > must be escaped with the ^ prefix.

@echo off

:: Variables
set src="./src-template"
set sp=" "

:: Folders
mkdir %src%
mkdir %src%\components
mkdir %src%\components\Button
mkdir %src%\components\Label

:: Indexes
echo export { default } from "./Button"; > %src%\components\Button\index.ts
echo export { default } from "./Label"; > %src%\components\Label\index.ts
echo export { default as Button } from "./Button"; > %src%\components\index.ts
echo export { default as Label } from "./Label"; >> %src%\components\index.ts
echo export * from './components'; > %src%\index.ts

:: Empty
cd. > %src%\components\Button\Button.css
cd. > %src%\components\Button\Button.stories.tsx
cd. > %src%\components\Button\Button.test.tsx
cd. > %src%\components\Label\Label.css
cd. > %src%\components\Label\Label.stories.tsx
cd. > %src%\components\Label\Label.test.tsx

:: Button
(
echo import React from 'react';
echo.
echo const Button ^= ^(props^) ^=^> {
echo.    return ^<button^>{props.label}^<^/button^>;
echo };
echo.
echo export default Button;
) > %src%\components\Button\Button.jsx

:: Button (TypeScript)
(
echo import React from 'react';
echo.
echo export interface ButtonProps {
echo.    label: string;
echo }
echo.
echo const Button ^= ^(props^: ButtonProps^) ^=^> {
echo.    return ^<button^>{props.label}^<^/button^>;
echo };
echo.
echo export default Button;
) > %src%\components\Button\Button.tsx

:: Label
(
echo import React from 'react';
echo.
echo const Label ^= ^(props^) ^=^> {
echo.    return ^<div^>{props.caption}^<^/div^>;
echo };
echo.
echo export default Label;
) > %src%\components\Label\Label.jsx

:: Label (TypeScript)
(
echo import React from 'react';
echo.
echo export interface LabelProps {
echo.    caption: string;
echo }
echo.
echo const Label ^= ^(props^: LabelProps^) ^=^> {
echo.    return ^<div^>{props.caption}^<^/div^>;
echo };
echo.
echo export default Label;
) > %src%\components\Label\Label.tsx
