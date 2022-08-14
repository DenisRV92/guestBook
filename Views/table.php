<table class="table" width="100%" border="1" cellspacing="0" cellpadding="2">
    <tr>
        <th width="50%">Сообщения</th>
        <th width="10%"><a href="/?userName=<? echo empty($_GET) || $_GET['userName'] == 'ASC' ? 'DESC' : 'ASC'; ?>">
                Имя
                <? echo empty($_GET) || $_GET['userName'] == 'ASC' ? "&#x25B2" : "&#x25BC"; ?></a></th>
        <th width="10%"><a href="/?email=<? echo empty($_GET) || $_GET['email'] == 'ASC' ? 'DESC' : 'ASC'; ?>">Email
                <? echo empty($_GET) || $_GET['email'] == 'ASC' ? "&#x25B2" : "&#x25BC"; ?></a></th>
        <th width="10%"><a href="/?date=<? echo empty($_GET) || $_GET['date'] == 'ASC' ? 'DESC' : 'ASC'; ?>">Дата
                <? echo empty($_GET) || $_GET['date'] == 'ASC' ? "&#x25B2" : "&#x25BC"; ?></a></th>
        <th width="10%">ip</th>
        <th width="10%">Домашняя страница</th>
    </tr>
    <? for ($i = $pagination['page'] * $pagination['count']; $i < ($pagination['page'] + 1) * $pagination['count']; $i++) {
        if (!empty($data[$i])) {
            ?>
            <tr width="50%">
                <div>
                    <td style="word-break:break-all;"><? echo $data[$i]['text'] ?></td>
                </div>
                <td style="word-break:break-all" width="10%"><? echo $data[$i]['userName'] ?></td>
                <td style="word-break:break-all" width="10%"><? echo $data[$i]['email'] ?></td>
                <td style="word-break:break-all" width="10%"><? echo $data[$i]['date'] ?></td>
                <td style="word-break:break-all" width="10%"><? echo $data[$i]['ip'] ?></td>
                <td style="word-break:break-all" width="10%"><? echo $data[$i]['homePage'] ?></td>
            </tr>
        <? }
    } ?>
</table>
<? if (!empty($data)) { ?>
    <div class="pagination">
        <? for ($p = 0; $p < $pagination['pageCount']; $p++) { ?>
            <a class="pagination_button <? echo $_GET['page'] == $p ? 'active_button' : '' ?>" href="<?
            if ($_GET['userName'] || $_GET['email'] || $_GET['date']) {
                echo '?' . key($_GET) . '=' . $_GET[key($_GET)] . '&' . 'page=' . $p;
            } else {
                echo '/?page=' . $p;
            }
            ?>"><? echo $p + 1 ?></a>
        <? } ?>
    </div>
<? } ?>
<script type="text/javascript">
    setTimeout(function () {
        document.querySelector(".alert").remove();
    }, 1500)
</script>
