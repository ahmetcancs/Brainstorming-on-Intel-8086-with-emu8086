.model small

.data

.code

main proc
        MOV AX,1000H
        MOV DS,AX
        MOV AX,0008H
        MOV DI,AX
        MOV AX,0000H
		MOV	[0050H],04H	
		MOV	[0105H],07H	
		MOV	[0106H],08H	
		MOV	[0107H],09H	
		MOV	[0108H],0AH	
		MOV	[0109H],00H	
		
        

		MOV	DX,[0050H]
		MOV CX,DX	    
		ADD DX,00FCH
		MOV BX,DX
		MOV AL,00
			    
ADD_LP:	ADD	AL,[BX+DI]		
		DEC	BX	        
		DEC	CX	       
	    JNZ	ADD_LP	    
        
endp
end main