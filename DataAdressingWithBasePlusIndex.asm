.model small

.data

.code

main proc
        MOV AX,1000H
        MOV DS,AX
        MOV AX,0002H
        MOV DI,AX
        MOV AX,0000H
	MOV	[0050H],03H	
	MOV	[0051H],00H	
	MOV	[0052H],0FBH	
	MOV	[0053H],00H	
	MOV	[0054H],04H	
	MOV	[0100H],01H	
	MOV	[0101H],03H	
        MOV	[0102H],05H
        MOV	[0103H],07H
        MOV	[0104H],09H
        

	MOV	DX,[0050H]	    
	MOV	CX,[0052H]	
	ADD DX,CX
	MOV BX,DX
	MOV AL,00
			    
ADD_LP:	ADD	AL,[BX+DI]		
		INC	BX	        
		INC	CL	        
		JNZ	ADD_LP	    
        
endp
end main
