<?php
return [
	//Страница по-умолчанию
	'' => 'static/main',

	//Материалы
	'articles' => 'articles/main',
	'articles/main' => 'articles/main',
	'articles/single/([0-9]+)' => 'articles/single/$1',

	//Авторизация и регистрация
	'account/login' => 'account/login',
	'account/register' => 'account/register',
	'account/exit' => 'account/exit',

	//Панель администратора
	'admin' => 'admin/static/main',
	'admin/articles' => 'admin/articles/main',
	'admin/articles/main' => 'admin/articles/main',
	'admin/articles/edit-article/([a-z]+)/([0-9]+)' => 'admin/articles/edit-article/$1/$2',
	'admin/users' => 'admin/users/main',
	'admin/users/main' => 'admin/users/main',
	'admin/users/edit-user/([a-z]+)/([0-9]+)' => 'admin/users/edit-user/$1/$2',

	//Ошибки
	'404' => 'errors/404',
];