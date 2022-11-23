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
	MOV	[0051H],00H	
	MOV	[0052H],0FH	
	MOV	[0053H],0DH	
	MOV	[0054H],0BH	
	MOV	[0055H],09H	
	MOV	[0056H],07H	
        MOV	[0057H],05H
        MOV	[0058H],03H
        MOV	[0059H],00H
	
	MOV	DX,[0050H]
	MOV CX,DX
	ADD DX,004CH	    		
	ADD BX,DX
	MOV BX,DX
	MOV AL,00
			   
ADD_LP:	ADD	AL,[BX+DI]		
		DEC	BX	        
		DEC	CX	       
		JNZ	ADD_LP	 
        
endp
end main
