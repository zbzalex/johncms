<?php

/*
////////////////////////////////////////////////////////////////////////////////
// JohnCMS                             Content Management System              //
// Официальный сайт сайт проекта:      http://johncms.com                     //
// Дополнительный сайт поддержки:      http://gazenwagen.com                  //
////////////////////////////////////////////////////////////////////////////////
// JohnCMS core team:                                                         //
// Евгений Рябинин aka john77          john77@gazenwagen.com                  //
// Олег Касьянов aka AlkatraZ          alkatraz@gazenwagen.com                //
//                                                                            //
// Информацию о версиях смотрите в прилагаемом файле version.txt              //
////////////////////////////////////////////////////////////////////////////////
*/

defined('_IN_JOHNCMS') or die('Error: restricted access');

require_once ("../incfiles/head.php");
if ($rights == 4 || $rights >= 6) {
    if ($_GET['file'] == "") {
        echo "Не выбран файл<br/><a href='?'>К категориям</a><br/>";
        require_once ('../incfiles/end.php');
        exit;
    }
    $file = intval($_GET['file']);
    $file1 = mysql_query("SELECT * FROM `download` WHERE `type` = 'file' AND `id` = '" . $file . "';");
    $file2 = mysql_num_rows($file1);
    $adrfile = mysql_fetch_array($file1);
    if (($file1 == 0) || (!is_file("$adrfile[adres]/$adrfile[name]"))) {
        echo "Ошибка при выборе файла<br/><a href='?'>К категориям</a><br/>";
        require_once ('../incfiles/end.php');
        exit;
    }
    $stt = "$adrfile[text]";
    if (isset ($_POST['submit'])) {
        $newt = check(trim($_POST['newt']));
        mysql_query("update `download` set `text`='" . $newt . "' where `id`='" . $file . "';");
        echo "Описание изменено <br/>";
    }
    else {
        $str = str_replace("<br/>", "\r\n", $adrfile['text']);
        echo "<form action='?act=opis&amp;file=" . $file . "' method='post'>";
        echo 'Описание:<br/><textarea cols="20" rows="4" name="newt">' . $str . '</textarea><br/>';
        echo "<input type='submit' name='submit' value='Изменить'/></form><br/>";
    }
}
else {
    echo "Нет доступа!";
}
echo "&#187;<a href='?act=view&amp;file=" . $file . "'>К файлу</a><br/>";

?>