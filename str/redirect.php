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
// ��������� ������ �� FlySelf
*/

define('_IN_JOHNCMS', 1);

require_once ("../incfiles/core.php");

$req = mysql_query("SELECT * FROM `cms_ads` WHERE `id` = '$id' LIMIT 1");
if (mysql_num_rows($req)) {
    $res = mysql_fetch_assoc($req);
    $count_link = $res['count'] + 1;
    mysql_query("UPDATE `cms_ads` SET `count` = '" . $count_link . "'  WHERE `id` = '$id'");
    header('Location: ' . $res['link']);
}
else {
    header("Location: http://gazenwagen.com/index.php?act=404");
}

?>
