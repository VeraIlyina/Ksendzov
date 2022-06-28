## Linux terminal (GitBash) commands

1) Посмотреть где я

		pwd

2) Создать папку
	
		mkdir userTest

3) Зайти в папку

		cd userTest

4) Создать 3 папки

		mkdir user_1 user_2 user_3

5) Зайти в любоую папку

		cd user_1

6) Создать 5 файлов (3 txt, 2 json)

		touch txtFfile_1.txt txtFile_2.txt txtFile_3.txt jsonFile_1.json jsonFile_2.json

7) Создать 3 папки

		mkdir folder_1 folder_2 folder_3

8. Вывести список содержимого папки

		ls -la

9) Открыть любой txt файл

		vim txtFile_1.txt

10) Написать туда что-нибудь, любой текст.

		{
			"Name":"Vera",
			
			"Age":35
		 }

11) Сохранить и выйти.

		esc
		
		:wq (записать файл и выйти)

12) Выйти из папки на уровень выше

		cd ..

13) Переместить любые 2 файла, которые вы создали, в любую другую папку.

		mv txtFile_3.txt jsonFile_1.json folder_1

14) Скопировать любые 2 файла, которые вы создали, в любую другую папку.

		cp txtFile_1.txt txtFile_2.txt folder_2

15) Найти файл по имени

		find name "txtFile_3.txt"

16) Просмотреть содержимое в реальном времени (команда grep) изучите как она работает.

		tail -f FileScript.txt	

17) Вывести несколько первых строк из текстового файла

		head txtFfile_1.txt

18) Вывести несколько последних строк из текстового файла

		tail txtFfile_1.txt

19) Просмотреть содержимое длинного файла (команда less) изучите как она работает.

		txtFfile_1.txt

20) Вывести дату и время
	
		date
		

 #Задание *

1) Отправить http запрос на сервер.

		curl "http://162.55.220.72:5005/object_info_3?name=Vadim&age=32&salary=1000"	

2) Написать скрипт который выполнит автоматически пункты 3, 4, 5, 6, 7, 8, 13

		#!/bin/bash

		cd userTest

		mkdir user_1 user_2 user_3

		cd user_1

		touch txtFile_1.txt txtFile_2.txt txtFile_3.txt jsonFile_1.json jsonFile_2.json

		mkdir folder_1 folder_2 folder_3

		ls -la

		mv txtFile_3.txt folder_1/txtFile_3.txt

		mv jsonFile_1.json folder_1/jsonFile_1.json
