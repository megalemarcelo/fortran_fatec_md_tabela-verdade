!Objetivo: programa para construcao de tabela verdade com duas variaveis
!Data: 05/04/2021

!nome do programa fonte
      program logp2e1
!desabilita configuracao de variaveis inteiras comecando com i,j,k,l,m,n
      implicit none
!bloco de declaracao de variaveis
      logical :: a, b, s
      integer :: i
!bloco de saida do cabecalho da tabela verdade na tela DOS
      write (*,*)'-------------------------'
      write (*,*)'|S= ~((a ^ b) ^~(a v b))|'
      write (*,*)'-------------------------'
      write (*,*)'|   a   |   b   |   s   |'
      write (*,*)'-------------------------'
!abertura de arquivo
      open (10,file='e1.dat',status='replace')
!bloco de saida do cabecalho da tabela verdade para o arquivo
      write (10,*)'-------------------------'
      write (10,*)'|S= ~((a ^ b) ^~(a v b))|'
      write (10,*)'-------------------------'
      write (10,*)'|   a   |   b   |   s   |'
      write (10,*)'-------------------------'
!inicio do laco de repeticao para tabela verdade com 2 variaveis logica e 4 linhas de calculos
      do i=1,4
!bloco de decisao para inicializacao das variaveis para a primeira linha
         if (i==1) then
            a=.true.
            b=.true.
         endif
!bloco de decisao para inicializacao das variaveis para a segunda linha
         if (i==2) then
            a=.true.
            b=.false.
         endif
!bloco de decisao para inicializacao das variaveis para a terceira linha
         if (i==3) then
            a=.false.
            b=.true.
         endif
!bloco de decisao para inicializacao das variaveis para a quarta linha
         if (i==4) then
            a=.false.
            b=.false.
         endif
!calculo proposicional
         S = .not.((a.and.b).and..not.(a.or.b))
!bloco de saida de dados para tela DOS
         write (*,*)'|  ',a,'  |  ',b,'  |  ',s,'  |'
         write (*,*)'-------------------------'
!bloco de saida de dados para arquivo
         write (10,*)'|  ',a,'  |  ',b,'  |  ',s,'  |'
         write (10,*)'-------------------------'
      enddo
!fechamento de arquivo
      close(10)
!pausa
      pause
!finalizacao do programa
      end program logp2e1
