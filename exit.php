<?php

/*
////////////////////////////////////////////////////////////////////////////////
// JohnCMS                             Content Management System              //
// ����������� ���� ���� �������:      http://johncms.com                     //
// �������������� ���� ���������:      http://gazenwagen.com                  //
////////////////////////////////////////////////////////////////////////////////
// JohnCMS core team:                                                         //
// ������� ������� aka john77          john77@gazenwagen.com                  //
// ���� �������� aka AlkatraZ          alkatraz@gazenwagen.com                //
//                                                                            //
// ���������� � ������� �������� � ����������� ����� version.txt              //
////////////////////////////////////////////////////////////////////////////////
*/

session_name("SESID");
session_start();
setcookie('cuid', '');
setcookie('cups', '');
session_destroy();
header("Location: index.php");

?>