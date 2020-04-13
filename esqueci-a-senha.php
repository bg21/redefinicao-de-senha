<?php
    include('config.php');
?>
<!DOCTYPE html>
<html lang="BR">
<head>
    <link rel="stylesheet" href="<?php echo INCLUDE_PATH; ?>css/login.css">
</head>
<body>
                
    
    <div class="form_login">
    <h2>Esqueci a senha</h2>
        <form method="post" action="recuperar.php">
            <div class="input_form_login">
                <label for="email_aluno">Insira o seu e-mail e redefina a sua senha.</label>
                <input type="email" id="email_aluno" name="email_aluno" placeholder="Seu email">
            </div> 
            <div class="input_form_login">
                <input type="submit" name="esqueciasenha" value="Redefinir">
            </div>
        </form>
    </div>
                
</body>
</html>