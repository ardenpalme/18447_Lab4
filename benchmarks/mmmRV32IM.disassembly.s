
benchmarks/mmmRV32IM.elf:     file format elf32-littleriscv


Disassembly of section .text:

00400000 <_start>:
  400000:	144000ef          	jal	x1,400144 <main>
  400004:	00050113          	addi	x2,x10,0
  400008:	00058193          	addi	x3,x11,0
  40000c:	00a00513          	addi	x10,x0,10
  400010:	00000073          	ecall

00400014 <init>:
  400014:	00000893          	addi	x17,x0,0
  400018:	00010337          	lui	x6,0x10
  40001c:	00000793          	addi	x15,x0,0
  400020:	10000f37          	lui	x30,0x10000
  400024:	000f0f13          	addi	x30,x30,0 # 10000000 <A>
  400028:	10000eb7          	lui	x29,0x10000
  40002c:	400e8e93          	addi	x29,x29,1024 # 10000400 <B>
  400030:	10001e37          	lui	x28,0x10001
  400034:	800e0e13          	addi	x28,x28,-2048 # 10000800 <C>
  400038:	00010fb7          	lui	x31,0x10
  40003c:	ff0f8f93          	addi	x31,x31,-16 # fff0 <_start-0x3f0010>
  400040:	10000293          	addi	x5,x0,256
  400044:	01e88633          	add	x12,x17,x30
  400048:	01d886b3          	add	x13,x17,x29
  40004c:	01c88733          	add	x14,x17,x28
  400050:	01078813          	addi	x16,x15,16
  400054:	00130513          	addi	x10,x6,1 # 10001 <_start-0x3effff>
  400058:	00f62023          	sw	x15,0(x12)
  40005c:	00f505b3          	add	x11,x10,x15
  400060:	00b6a023          	sw	x11,0(x13)
  400064:	00072023          	sw	x0,0(x14)
  400068:	00178793          	addi	x15,x15,1
  40006c:	00460613          	addi	x12,x12,4
  400070:	00468693          	addi	x13,x13,4
  400074:	00470713          	addi	x14,x14,4
  400078:	ff0790e3          	bne	x15,x16,400058 <init+0x44>
  40007c:	01f30333          	add	x6,x6,x31
  400080:	04088893          	addi	x17,x17,64
  400084:	fc5790e3          	bne	x15,x5,400044 <init+0x30>
  400088:	00008067          	jalr	x0,0(x1)

0040008c <mmm>:
  40008c:	04050893          	addi	x17,x10,64
  400090:	44050f93          	addi	x31,x10,1088
  400094:	00050e13          	addi	x28,x10,0
  400098:	40a60633          	sub	x12,x12,x10
  40009c:	fc060f13          	addi	x30,x12,-64
  4000a0:	00058313          	addi	x6,x11,0
  4000a4:	011f0833          	add	x16,x30,x17
  4000a8:	00c88eb3          	add	x29,x17,x12
  4000ac:	00030513          	addi	x10,x6,0
  4000b0:	000e0793          	addi	x15,x28,0
  4000b4:	0007a703          	lw	x14,0(x15)
  4000b8:	00052683          	lw	x13,0(x10)
  4000bc:	02d706b3          	mul	x13,x14,x13
  4000c0:	00082703          	lw	x14,0(x16)
  4000c4:	00d70733          	add	x14,x14,x13
  4000c8:	00e82023          	sw	x14,0(x16)
  4000cc:	00478793          	addi	x15,x15,4
  4000d0:	04050513          	addi	x10,x10,64
  4000d4:	ff1790e3          	bne	x15,x17,4000b4 <mmm+0x28>
  4000d8:	00430313          	addi	x6,x6,4
  4000dc:	00480813          	addi	x16,x16,4
  4000e0:	fdd816e3          	bne	x16,x29,4000ac <mmm+0x20>
  4000e4:	040e0e13          	addi	x28,x28,64
  4000e8:	04088893          	addi	x17,x17,64
  4000ec:	fbf89ae3          	bne	x17,x31,4000a0 <mmm+0x14>
  4000f0:	00008067          	jalr	x0,0(x1)

004000f4 <matrix_add_reduce>:
  4000f4:	04a05263          	bge	x0,x10,400138 <matrix_add_reduce+0x44>
  4000f8:	00259313          	slli	x6,x11,0x2
  4000fc:	00000693          	addi	x13,x0,0
  400100:	00000893          	addi	x17,x0,0
  400104:	0240006f          	jal	x0,400128 <matrix_add_reduce+0x34>
  400108:	00072803          	lw	x16,0(x14)
  40010c:	010686b3          	add	x13,x13,x16
  400110:	00178793          	addi	x15,x15,1
  400114:	00470713          	addi	x14,x14,4
  400118:	fef598e3          	bne	x11,x15,400108 <matrix_add_reduce+0x14>
  40011c:	00188893          	addi	x17,x17,1
  400120:	00660633          	add	x12,x12,x6
  400124:	01150c63          	beq	x10,x17,40013c <matrix_add_reduce+0x48>
  400128:	00060713          	addi	x14,x12,0
  40012c:	00000793          	addi	x15,x0,0
  400130:	fcb04ce3          	blt	x0,x11,400108 <matrix_add_reduce+0x14>
  400134:	fe9ff06f          	jal	x0,40011c <matrix_add_reduce+0x28>
  400138:	00000693          	addi	x13,x0,0
  40013c:	00068513          	addi	x10,x13,0
  400140:	00008067          	jalr	x0,0(x1)

00400144 <main>:
  400144:	ff010113          	addi	x2,x2,-16
  400148:	00112623          	sw	x1,12(x2)
  40014c:	00812423          	sw	x8,8(x2)
  400150:	00000097          	auipc	x1,0x0
  400154:	ec4080e7          	jalr	x1,-316(x1) # 400014 <init>
  400158:	10001437          	lui	x8,0x10001
  40015c:	80040613          	addi	x12,x8,-2048 # 10000800 <C>
  400160:	100005b7          	lui	x11,0x10000
  400164:	40058593          	addi	x11,x11,1024 # 10000400 <B>
  400168:	10000537          	lui	x10,0x10000
  40016c:	00050513          	addi	x10,x10,0 # 10000000 <A>
  400170:	f1dff0ef          	jal	x1,40008c <mmm>
  400174:	80040613          	addi	x12,x8,-2048
  400178:	01000593          	addi	x11,x0,16
  40017c:	01000513          	addi	x10,x0,16
  400180:	00000097          	auipc	x1,0x0
  400184:	f74080e7          	jalr	x1,-140(x1) # 4000f4 <matrix_add_reduce>
  400188:	00c12083          	lw	x1,12(x2)
  40018c:	00812403          	lw	x8,8(x2)
  400190:	01010113          	addi	x2,x2,16
  400194:	00008067          	jalr	x0,0(x1)

Disassembly of section .bss:

10000000 <A>:
	...

10000400 <B>:
	...

10000800 <C>:
	...
