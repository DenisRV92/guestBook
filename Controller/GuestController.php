<?php

require "Model/Guest.php";

class GuestController
{
    public static $err = [];

    /**
     * Определением и подключаем нужно изображение
     * @param $data - данные из таблицы
     */
    public static function show($data = [])
    {
        $conn = new Guest();

        /**
         * Для сортировки таблицы
         */
        if (!empty($_GET['userName']) || !empty($_GET['email']) || !empty($_GET['date'])) {
            $pagination = self::pagination($data);
            require "Views/form.php";
            die();
        } /**
         * Первое подключение, либо неуспешное прохождение валидации
         */
        elseif
        (!empty(self::$err) || empty($data)) {
            $err = self::$err;
            $data = $conn->getData();
            $pagination = self::pagination($data);
            require "Views/form.php";
            die();
        } else {
            $result = $conn->setData($data);
            if ($result) {
                $data = $conn->getData();
                $pagination = self::pagination($data);
                require "Views/form.php";
                echo "<div class='alert'>Сообщение успешно отправлено</div>";
                die();
            }
        }
    }

    /**
     * Проверяем данные и формы на наличие пробелов,тегов и экраннированных символов
     * @param $data - данные из формы
     */
    public static function clearData($data)
    {
        foreach ($data as $key => $val) {
            if ($key != 'ip' && $key != 'browser') {
                $val = stripslashes(trim($val));
                $val = htmlspecialchars(strip_tags($val));
                $data[$key] = $val;
            }
        }
        self::validation($data);
    }

    /**
     * Проверяем данные полученные при заполнении формы
     * @param $data - данные из формы
     */
    public static function validation($data)
    {
        $err = [];

        if (empty($data['captcha'])) {
            $err['captcha'] = '<small>Поле обязательное для заполнения</small>';
        }
        if ($data['captcha'] != 'W68HP') {
            $err['captcha'] = '<small>Невреный код</small>';
        }
        if (!empty($data['userName'])) {
            if (!preg_match('/^[a-zа-яё0-9]+$/iu', $data['userName'])) {
                $err['userName'] = '<small>Некорректное имя</small>';
            }
        }
        if (empty($data['userName'])) {
            $err['userName'] = '<small>Поле обязательное для заполнения</small>';
        }
        if (empty($data['email'])) {
            $err['email'] = '<small>Поле обязательное для заполнения</small>';
        }
        if (!empty($data['email'])) {
            $pattern = '/^([a-zA-Z0-9])+([a-zA-Z0-9_-]+\.)*[a-zA-Z0-9_-]+@[a-zA-Z0-9]+(\.[a-z0-9]+)*\.[a-z]{2,6}$/';
            if (!preg_match($pattern, $data['email'])) {
                $err['email'] = '<small>Некорректное имя</small>';
            }
        }
        if (!empty($data['homePage'])) {
            if (!filter_var($data['homePage'] . '/', FILTER_VALIDATE_URL)) {
                $err['homePage'] = '<small>Неверный url</small>';
            }
        }

        self::$err = $err;
        self::show($data);
    }

    /**
     * Проверяем get-парметр для сортировки данных из таблицы
     * @param $get - get-параметр
     */
    public static function examinationGetRequest($get)
    {
        foreach ($get as $key => $val) {
            if ($val === 'ASC' || $val === 'DESC') {
                $conn = new Guest();
                $data = $conn->orderData($get);
                self::show($data);
            }
        }
    }

    /**
     * Определяем тип лендинга
     * @param $data - данные из таблицы
     * @return array
     */
    public static function pagination($data)
    {
        $page = $_GET['page'];
        $count = 25;
        $pageCount = count($data) / $count;
        is_int($pageCount) ? $pageCount : floor($pageCount);
        return ['page' => $page, 'count' => $count, 'pageCount' => $pageCount];
    }

}
