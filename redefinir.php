<?php
    include('config.php');   
?>
<html>
    <head>
        <link rel="stylesheet" href="<?php echo INCLUDE_PATH; ?>css/login.css">
    </head>
    <body>
        
        <?php
            if(isset($_GET['token'])){
                $token = $_GET['token'];
                if($token != $_SESSION['token']){
                    die('<div class="alerta danger"> O token não corresponde. </div>');
                }else{
        ?>
        <div class="form_login">
            <div class="box_esqueci_a_senha">
            <?php
               $sql = $pdo->prepare("SELECT * FROM tb_site_alunos WHERE email_aluno = ?");
               $sql->execute([$_SESSION['email_aluno']]);
               $info = $sql->fetch();
               
               if($sql->rowCount() == 1){    
                   if(isset($_POST['redefinirsenha'])){
                        $senha = $_POST['senha_aluno'];
                        $criptografada = password_hash($senha, PASSWORD_DEFAULT);
                        $sql = $pdo->prepare("UPDATE tb_site_alunos SET senha_aluno = ? WHERE email_aluno = ?");
                        $sql->execute([$criptografada, $_SESSION['email_aluno']]);
                        echo '<div class="alerta sucesso"> A sua senha foi redefinida com sucesso.</div>';                                                
                   }
               }else{
                   echo '<div class="alerta danger"> Não encontramos esse email</div>';
               }  
            ?>
                <h2><i class="fas fa-lock"></i> Redefinir a minha senha</h2>
                <form method="POST">
                    <div class="input_form_login">
                        <label for="senha">Digite a sua nova senha</label>
                        <input type="password" id="senha_aluno" name="senha_aluno">
                    </div>
                    
                    <div class="input_form_login">
                        <input type="submit" name="redefinirsenha" value="Redefinir">
                    </div>
                </form>
                
            </div>
        </div>
        <?php
            }  //Fechando o segundo else.  
        ?>
        <?php
            }else{
                echo '<div class="alerta danger"> Precisa de um token. </div>';  //Caso não tenha passado nenhum token na url então apresentamos uma mensagem de erro.
            }   
        ?>

    </body>
</html>