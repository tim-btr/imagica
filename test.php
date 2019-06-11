<?php

$par = [
	1,
	2,
	3
];

echo '<pre>'.print_r($par, 1).'</pre>';

unset($par[0]);

echo '<pre>'.print_r($par, 1).'</pre>';
