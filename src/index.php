<?php
$url = getenv('WM_ENDPOINT_URL');

$critical = [];
$attempt = 0;

$result = false;

do {
  if ($attempt >= 3) {
    echo sprintf("URL not responding: %s", $url);
    exit(2);
  }

  ++$attempt;

  $ch = curl_init();
  $timeout = 3;

  curl_setopt($ch, CURLOPT_URL, $url);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
  curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
  curl_setopt($ch, CURLOPT_TIMEOUT, $timeout);

  $headers = [
    'User-Agent: whoopsmonitor-plugin-url-alive/0.0'
  ];

  curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

  $result = curl_exec($ch);
  curl_close($ch);
} while ($result === false);

echo sprintf("URL is up: %s", $url);
exit(0);
