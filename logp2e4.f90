!Objetivo: programa para construcao de tabela verdade com tres variaveis
!Data: 05/04/2021

!nome do programa fonte
      program logp2e4
!desabilita configuracao de variaveis inteiras comecando com i,j,k,l,m,n
      implicit none
!bloco de declaracao de variaveis
      logical :: a, b, c, s
      integer :: i
!bloco de saida do cabecalho da tabela verdade na tela DOS
      write (*,*)'--------------------------------------'
      write (*,*)'|          S = ~(a ^ b) v c          |'
      write (*,*)'--------------------------------------'
      write (*,*)'|    a   |    b   |    c   |    s    |'
      write (*,*)'--------------------------------------'
!abertura de arquivo
      open (10,file='e4.dat',status='replace')
!bloco de saida do cabecalho da tabela verdade para o arquivo
      write (10,*)'--------------------------------------'
      write (10,*)'|          S = ~(a ^ b) v c          |'
      write (10,*)'--------------------------------------'
      write (10,*)'|    a   |    b   |    c   |    s    |'
      write (10,*)'--------------------------------------'
!inicio do laco de repeticao para tabela verdade com 3 variaveis logica e 8 linhas de calculos
      do i=1,8
!bloco de decisao para inicializacao das variaveis para a primeira linha
         if (i==1) then
            a=.true.
            b=.true.
            c=.true.
         endif
!bloco de decisao para inicializacao das variaveis para a segunda linha
         if (i==2) then
            a=.true.
            b=.true.
            c=.false.
         endif
!bloco de decisao para inicializacao das variaveis para a terceira linha
         if (i==3) then
            a=.true.
            b=.false.
            c=.true.
         endif
!bloco de decisao para inicializacao das variaveis para a quarta linha
         if (i==4) then
            a=.true.
            b=.false.
            c=.false.
         endif
!bloco de decisao para inicializacao das variaveis para a quinta linha
         if (i==5) then
            a=.false.
            b=.true.
            c=.true.
         endif
!bloco de decisao para inicializacao das variaveis para a sexta linha
         if (i==6) then
            a=.false.
            b=.true.
            c=.false.
         endif
!bloco de decisao para inicializacao das variaveis para a setima linha
         if (i==7) then
            a=.false.
            b=.false.
            c=.true.
         endif
!bloco de decisao para inicializacao das variaveis para a oitava linha
         if (i==8) then
            a=.false.
            b=.false.
            c=.false.
         endif
!calculo proposicional
         S =.not.(a.and.b).or.c
!bloco de saida de dados para tela DOS
         write (*,*)'|   ',a,'  |   ',b,'  |   ',c,'  |   ',s,'   |'
         write (*,*)'--------------------------------------'
!bloco de saida de dados para arquivo
         write (10,*)'|   ',a,'  |   ',b,'  |   ',c,'  |   ',s,'   |'
         write (10,*)'--------------------------------------'
      enddo
!fechamento de arquivo
      close(10)
!pausa
      pause
!finalizacao do programa
      end program logp2e4

