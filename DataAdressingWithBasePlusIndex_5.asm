.model small

.data

.code

main proc
        MOV AX,1000H
        MOV DS,AX
        MOV AX,0008H
        MOV DI,AX
        MOV AX,0000H      
        
		MOV	[0050H],05H     
		
		MOV	[0104H],05H
		MOV	[0105H],03H	
		MOV	[0106H],02H	
		MOV	[0107H],01H	
		MOV	[0108H],01H	
		
        

		MOV	DX,[0050H]
		MOV CX,DX	    
		ADD DX,00FBH
		MOV BX,DX
		MOV AL,00
			    
ADD_LP:	ADD	AL,[BX+DI]		
		DEC	BX	       
		DEC	CX	       
		JNZ	ADD_LP	    
        
endp
end main