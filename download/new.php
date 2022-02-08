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
echo '<div class="phdr">Новые файлы</div>';

$old = $realtime - (3 * 24 * 3600);
$req = mysql_query("SELECT COUNT(*) FROM `download` WHERE `time` > '" . $old . "' AND `type` = 'file'");
$total = mysql_result($req, 0);
if ($total > 0) {
    ////////////////////////////////////////////////////////////
    // Выводим список новых файлов                            //
    ////////////////////////////////////////////////////////////
    $req = mysql_query("SELECT * FROM `download` WHERE `time` > '" . $old . "' AND `type` = 'file' ORDER BY `time` DESC LIMIT " . $start . "," . $kmess);
    while ($newf = mysql_fetch_array($req)) {
        echo is_integer($i / 2) ? '<div class="list1">' : '<div class="list2">';
        $fsz = filesize("$newf[adres]/$newf[name]");
        $fsz = round($fsz / 1024, 2);
        $ft = format("$newf[adres]/$newf[name]");
        switch ($ft) {
            case "mp3" :
                $imt = "mp3.png";
                break;
            case "zip" :
                $imt = "rar.png";
                break;
            case "jar" :
                $imt = "jar.png";
                break;
            case "gif" :
                $imt = "gif.png";
                break;
            case "jpg" :
                $imt = "jpg.png";
                break;
            case "png" :
                $imt = "png.png";
                break;
            default :
                $imt = "file.gif";
                break;
        }
        if ($newf['text'] != "") {
            $tx = $newf['text'];
            if (mb_strlen($tx) > 100) {
                $tx = mb_substr($tx, 0, 90);

                $tx = "<br/>$tx...";
            }
            else {
                $tx = "<br/>$tx";
            }
        }
        else {
            $tx = "";
        }
        echo '<img src="' . $filesroot . '/img/' . $imt . '" alt=""/><a href="?act=view&amp;file=' . $newf['id'] . '">' . htmlentities($newf['name'], ENT_QUOTES, 'UTF-8') . '</a> (' . $fsz . ' кб)' . $tx . '<br/>';
        $nadir = $newf['refid'];
        $pat = "";
        while ($nadir != "") {
            $dnew = mysql_query("select * from `download` where type = 'cat' and id = '" . $nadir . "'");
            $dnew1 = mysql_fetch_array($dnew);
            $pat = "$dnew1[text]/$pat";
            $nadir = $dnew1['refid'];
        }
        $l = mb_strlen($pat);
        $pat1 = mb_substr($pat, 0, $l - 1);
        echo "[$pat1]</div>";
        ++$i;
    }
    echo '<div class="phdr">Всего: ' . $total . '</div>';
    if ($total > 10) {
        echo '<p>' . pagenav('index.php?act=new&amp;', $start, $total, $kmess) . '</p>';
        echo '<p><form action="index.php" method="get"><input type="hidden" value="new" name="act" /><input type="text" name="page" size="2"/><input type="submit" value="К странице &gt;&gt;"/></form></p>';
    }
}
else {
    echo "За три дня новых файлов не было<br/>";
}
echo "<p><a href='index.php?'>К категориям</a></p>";

?>