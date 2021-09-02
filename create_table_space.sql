-- criando tablespace
create tablespace teste
 datafile
   'C:\app\gabri\product\18.0.0\oradata\XE\teste.dbf' 
		size 100m autoextend on next 50m maxsize 500m
   online
   permanent
   extent management local autoallocate
   segment space management auto;
   
   -- criando usuario 

   create user estudante
          identified by estudante
          default tablespace teste
          temporary tablespace TEMP;
          
  -- permissao para aluno        
  grant create session, connect, resource to estudante;
  
  alter user aluno quota unlimited on teste;
  
  
  --deletar user
  drop user aluno;
  --deletar tablespace
DROP TABLESPACE curso
  INCLUDING CONTENTS and  DATAFILES
    CASCADE CONSTRAINTS;