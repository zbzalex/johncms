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

define('_IN_JOHNCMS', 1);

$rootpath = '';
require_once ("incfiles/core.php");

// ��������� ������
$auto_pass = isset ($_GET['p']) ? check($_GET['p']) : false;
$form_login = isset ($_POST['n']) ? check($_POST['n']) : false;
$form_pass = isset ($_POST['p']) ? check($_POST['p']) : false;

sleep(6);

if ($form_login && $form_pass) {
    // ���� ����� ����� �����
    $user_ps = md5(md5($form_pass));
    $req = mysql_query("SELECT * FROM `users` WHERE `name_lat`='" . rus_lat(mb_strtolower($form_login)) . "' LIMIT 1");
}
elseif ($id && $auto_pass) {
    $user_ps = md5(md5($auto_pass));
    $req = mysql_query("SELECT * FROM `users` WHERE `id` = '$id' LIMIT 1");
}
else {
    header("Location: in.php?msg=1");
    exit;
}

// �������� ������
if (mysql_num_rows($req) == 0) {
    header("Location: in.php?msg=2");
    exit;
}

$res = mysql_fetch_array($req);

// �������� ������
if ($res['password'] != $user_ps) {
    header("Location: in.php?msg=2");
    exit;
}

// ���� ����������� ��� �� ������������
if ($res['preg'] == "0" && $res['regadm'] == "") {
    header("Location: in.php?msg=3");
    exit;
}

// ���� ����������� ���������
if ($res['preg'] == "0" && $res['regadm'] !== "") {
    $_SESSION['otkl'] = $res['regadm'];
    header("Location: in.php?msg=4");
    exit;
}

$user_id = $res['id'];

// ��������� ������ COOKIE
if ($_POST['mem'] == 1) {
    $cuid = base64_encode($user_id);
    $cups = base64_encode($form_pass);
    setcookie("cuid", $cuid, time() + 3600 * 24 * 365);
    setcookie("cups", $cups, time() + 3600 * 24 * 365);
}

// ��������� ������ ������
$_SESSION['uid'] = $user_id;
$_SESSION['ups'] = $user_ps;
mysql_query("UPDATE `users` SET `sestime` = '$realtime' WHERE `id` = '$user_id'");
header("Location: index.php?act=digest");

?>