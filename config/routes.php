<?php
return [
	//Главная страница, страница по-умолчанию
	'' => 'static/main',

	//Инфо
	'about' => 'about/main',
	'about/main' => 'about/main',

	//Материалы
	'posts' => 'posts/main',
	'posts/main' => 'posts/main',
	'posts/single/([0-9]+)' => 'posts/single/$1',

	//Контакты
	'contacts' => 'contacts/main',
	'contacts/main' => 'contacts/main',

	//Авторизация и регистрация
	'account/login' => 'account/login',
	'account/register' => 'account/register',
	'account/exit' => 'account/exit',

	//Панель администратора
	'admin' => 'admin/static/main',
	'admin/posts' => 'admin/posts/main',
	'admin/posts/main' => 'admin/posts/main',
	'admin/posts/edit-post/([a-z]+)/([0-9]+)' => 'admin/posts/edit-post/$1/$2',
	'admin/posts/add-post' => 'admin/posts/add-post',
	'admin/posts/delete/([a-z]+)/([0-9]+)' => 'admin/posts/delete/$1/$2',
	'admin/users' => 'admin/users/main',
	'admin/users/main' => 'admin/users/main',
	'admin/users/edit-user/([a-z]+)/([0-9]+)' => 'admin/users/edit-user/$1/$2',
	'admin/users/delete/([a-z]+)/([0-9]+)' => 'admin/users/delete/$1/$2',

	//Ошибки
	'404' => 'errors/404',
];