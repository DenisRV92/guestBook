<?php

class Guest
{

    private $dsn = 'mysql:host=localhost;dbname=guest_book';
    private $username = 'root';
    private $password = '';
    private $dbh;

    public function __construct()
    {
        try {
            $this->dbh = new PDO($this->dsn, $this->username, $this->password);

        } catch (PDOException $e) {
            print "Error!: " . $e->getMessage() . "<br/>";
            die();
        }
    }

    /**
     * Получаем данные из таблицы
     * @return array
     */
    public function getData()
    {
        $sql = "SELECT * FROM `guest`";
        $query = $this->dbh->prepare($sql);
        $query->execute();
        $result = $query->fetchAll();
        return $result;
    }

    /**
     * Записываем данные в таблицу
     * @param $data - данные из формы
     * @return bool
     */
    public function setData($data)
    {
        $date = date("Y-m-d H:i:s");
        $sql = "INSERT INTO `guest`(userName,email,homePage,text,ip,browser,date ) 
                VALUES (:userName,:email,:homePage,:text,:ip,:browser,:date)";
        $result = $this->dbh->prepare($sql)->execute([
            'userName' => $data['userName'],
            'email' => $data['email'],
            'homePage' => $data['homePage'],
            'ip' => $data['ip'],
            'browser' => $data['browser'],
            'text' => $data['text'],
            'date' => $date,
        ]);
        return $result;
    }

    /**
     * Сортируем таблицу
     * @param $get - данные из get-параметра
     * @return array
     */
    public function orderData($get)
    {
        foreach ($get as $key => $val) {
            $sql = "SELECT * FROM `guest` ORDER BY $key $val ";
            $query = $this->dbh->prepare($sql);
            $query->execute();
            $result = $query->fetchAll();
            return $result;
        }
    }
}
