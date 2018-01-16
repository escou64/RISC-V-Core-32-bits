
simu:     file format elf32-littleriscv


Disassembly of section .text:

00010074 <_start>:
   10074:	00013197          	auipc	gp,0x13
   10078:	13418193          	addi	gp,gp,308 # 231a8 <__global_pointer$>
   1007c:	82c18513          	addi	a0,gp,-2004 # 229d4 <_edata>
   10080:	88818613          	addi	a2,gp,-1912 # 22a30 <_end>
   10084:	40a60633          	sub	a2,a2,a0
   10088:	00000593          	li	a1,0
   1008c:	304000ef          	jal	ra,10390 <memset>
   10090:	00000517          	auipc	a0,0x0
   10094:	1ec50513          	addi	a0,a0,492 # 1027c <__libc_fini_array>
   10098:	1a0000ef          	jal	ra,10238 <atexit>
   1009c:	254000ef          	jal	ra,102f0 <__libc_init_array>
   100a0:	00012503          	lw	a0,0(sp)
   100a4:	00410593          	addi	a1,sp,4
   100a8:	00000613          	li	a2,0
   100ac:	120000ef          	jal	ra,101cc <main>
   100b0:	19c0006f          	j	1024c <exit>

000100b4 <_fini>:
   100b4:	00008067          	ret

000100b8 <deregister_tm_clones>:
   100b8:	00023537          	lui	a0,0x23
   100bc:	000237b7          	lui	a5,0x23
   100c0:	9a450713          	addi	a4,a0,-1628 # 229a4 <__TMC_END__>
   100c4:	9a478793          	addi	a5,a5,-1628 # 229a4 <__TMC_END__>
   100c8:	00e78c63          	beq	a5,a4,100e0 <deregister_tm_clones+0x28>
   100cc:	00000337          	lui	t1,0x0
   100d0:	00030313          	mv	t1,t1
   100d4:	00030663          	beqz	t1,100e0 <deregister_tm_clones+0x28>
   100d8:	9a450513          	addi	a0,a0,-1628
   100dc:	00030067          	jr	t1
   100e0:	00008067          	ret

000100e4 <register_tm_clones>:
   100e4:	000237b7          	lui	a5,0x23
   100e8:	00023537          	lui	a0,0x23
   100ec:	9a478593          	addi	a1,a5,-1628 # 229a4 <__TMC_END__>
   100f0:	9a450793          	addi	a5,a0,-1628 # 229a4 <__TMC_END__>
   100f4:	40f585b3          	sub	a1,a1,a5
   100f8:	4025d593          	srai	a1,a1,0x2
   100fc:	00200793          	li	a5,2
   10100:	02f5c5b3          	div	a1,a1,a5
   10104:	00058c63          	beqz	a1,1011c <register_tm_clones+0x38>
   10108:	00000337          	lui	t1,0x0
   1010c:	00030313          	mv	t1,t1
   10110:	00030663          	beqz	t1,1011c <register_tm_clones+0x38>
   10114:	9a450513          	addi	a0,a0,-1628
   10118:	00030067          	jr	t1
   1011c:	00008067          	ret

00010120 <__do_global_dtors_aux>:
   10120:	8401c703          	lbu	a4,-1984(gp) # 229e8 <completed.5176>
   10124:	04071663          	bnez	a4,10170 <__do_global_dtors_aux+0x50>
   10128:	ff010113          	addi	sp,sp,-16
   1012c:	00812423          	sw	s0,8(sp)
   10130:	00112623          	sw	ra,12(sp)
   10134:	00078413          	mv	s0,a5
   10138:	f81ff0ef          	jal	ra,100b8 <deregister_tm_clones>
   1013c:	000007b7          	lui	a5,0x0
   10140:	00078793          	mv	a5,a5
   10144:	00078a63          	beqz	a5,10158 <__do_global_dtors_aux+0x38>
   10148:	00021537          	lui	a0,0x21
   1014c:	59450513          	addi	a0,a0,1428 # 21594 <__EH_FRAME_BEGIN__>
   10150:	ffff0097          	auipc	ra,0xffff0
   10154:	eb0080e7          	jalr	-336(ra) # 0 <_start-0x10074>
   10158:	00100793          	li	a5,1
   1015c:	84f18023          	sb	a5,-1984(gp) # 229e8 <completed.5176>
   10160:	00c12083          	lw	ra,12(sp)
   10164:	00812403          	lw	s0,8(sp)
   10168:	01010113          	addi	sp,sp,16
   1016c:	00008067          	ret
   10170:	00008067          	ret

00010174 <frame_dummy>:
   10174:	000007b7          	lui	a5,0x0
   10178:	00078793          	mv	a5,a5
   1017c:	02078463          	beqz	a5,101a4 <frame_dummy+0x30>
   10180:	00021537          	lui	a0,0x21
   10184:	ff010113          	addi	sp,sp,-16
   10188:	84418593          	addi	a1,gp,-1980 # 229ec <object.5181>
   1018c:	59450513          	addi	a0,a0,1428 # 21594 <__EH_FRAME_BEGIN__>
   10190:	00112623          	sw	ra,12(sp)
   10194:	ffff0097          	auipc	ra,0xffff0
   10198:	e6c080e7          	jalr	-404(ra) # 0 <_start-0x10074>
   1019c:	00c12083          	lw	ra,12(sp)
   101a0:	01010113          	addi	sp,sp,16
   101a4:	f41ff06f          	j	100e4 <register_tm_clones>

000101a8 <addition>:
   101a8:	fe010113          	addi	sp,sp,-32
   101ac:	00812e23          	sw	s0,28(sp)
   101b0:	02010413          	addi	s0,sp,32
   101b4:	fea42623          	sw	a0,-20(s0)
   101b8:	fec42783          	lw	a5,-20(s0)
   101bc:	00078513          	mv	a0,a5
   101c0:	01c12403          	lw	s0,28(sp)
   101c4:	02010113          	addi	sp,sp,32
   101c8:	00008067          	ret

000101cc <main>:
   101cc:	fe010113          	addi	sp,sp,-32
   101d0:	00112e23          	sw	ra,28(sp)
   101d4:	00812c23          	sw	s0,24(sp)
   101d8:	02010413          	addi	s0,sp,32
   101dc:	000217b7          	lui	a5,0x21
   101e0:	87078513          	addi	a0,a5,-1936 # 20870 <__clzsi2+0x50>
   101e4:	3dc000ef          	jal	ra,105c0 <puts>
   101e8:	00a00793          	li	a5,10
   101ec:	fef42623          	sw	a5,-20(s0)
   101f0:	fe042423          	sw	zero,-24(s0)
   101f4:	fe042223          	sw	zero,-28(s0)
   101f8:	fec42503          	lw	a0,-20(s0)
   101fc:	fadff0ef          	jal	ra,101a8 <addition>
   10200:	fea42223          	sw	a0,-28(s0)
   10204:	fe442583          	lw	a1,-28(s0)
   10208:	000217b7          	lui	a5,0x21
   1020c:	89078513          	addi	a0,a5,-1904 # 20890 <__clzsi2+0x70>
   10210:	29c000ef          	jal	ra,104ac <printf>
   10214:	000217b7          	lui	a5,0x21
   10218:	8a078513          	addi	a0,a5,-1888 # 208a0 <__clzsi2+0x80>
   1021c:	3a4000ef          	jal	ra,105c0 <puts>
   10220:	00000793          	li	a5,0
   10224:	00078513          	mv	a0,a5
   10228:	01c12083          	lw	ra,28(sp)
   1022c:	01812403          	lw	s0,24(sp)
   10230:	02010113          	addi	sp,sp,32
   10234:	00008067          	ret

00010238 <atexit>:
   10238:	00050593          	mv	a1,a0
   1023c:	00000693          	li	a3,0
   10240:	00000613          	li	a2,0
   10244:	00000513          	li	a0,0
   10248:	53c0206f          	j	12784 <__register_exitproc>

0001024c <exit>:
   1024c:	ff010113          	addi	sp,sp,-16
   10250:	00000593          	li	a1,0
   10254:	00812423          	sw	s0,8(sp)
   10258:	00112623          	sw	ra,12(sp)
   1025c:	00050413          	mv	s0,a0
   10260:	5a0020ef          	jal	ra,12800 <__call_exitprocs>
   10264:	81c1a503          	lw	a0,-2020(gp) # 229c4 <_global_impure_ptr>
   10268:	03c52783          	lw	a5,60(a0)
   1026c:	00078463          	beqz	a5,10274 <exit+0x28>
   10270:	000780e7          	jalr	a5
   10274:	00040513          	mv	a0,s0
   10278:	4c90b0ef          	jal	ra,1bf40 <_exit>

0001027c <__libc_fini_array>:
   1027c:	fe010113          	addi	sp,sp,-32
   10280:	000227b7          	lui	a5,0x22
   10284:	00022737          	lui	a4,0x22
   10288:	00812c23          	sw	s0,24(sp)
   1028c:	00470713          	addi	a4,a4,4 # 22004 <__init_array_end>
   10290:	00878413          	addi	s0,a5,8 # 22008 <__fini_array_end>
   10294:	40e40433          	sub	s0,s0,a4
   10298:	00912a23          	sw	s1,20(sp)
   1029c:	01212823          	sw	s2,16(sp)
   102a0:	01312623          	sw	s3,12(sp)
   102a4:	00112e23          	sw	ra,28(sp)
   102a8:	40245413          	srai	s0,s0,0x2
   102ac:	00000493          	li	s1,0
   102b0:	00878913          	addi	s2,a5,8
   102b4:	ffc00993          	li	s3,-4
   102b8:	02941063          	bne	s0,s1,102d8 <__libc_fini_array+0x5c>
   102bc:	01812403          	lw	s0,24(sp)
   102c0:	01c12083          	lw	ra,28(sp)
   102c4:	01412483          	lw	s1,20(sp)
   102c8:	01012903          	lw	s2,16(sp)
   102cc:	00c12983          	lw	s3,12(sp)
   102d0:	02010113          	addi	sp,sp,32
   102d4:	de1ff06f          	j	100b4 <_fini>
   102d8:	033487b3          	mul	a5,s1,s3
   102dc:	00148493          	addi	s1,s1,1
   102e0:	00f907b3          	add	a5,s2,a5
   102e4:	ffc7a783          	lw	a5,-4(a5)
   102e8:	000780e7          	jalr	a5
   102ec:	fcdff06f          	j	102b8 <__libc_fini_array+0x3c>

000102f0 <__libc_init_array>:
   102f0:	ff010113          	addi	sp,sp,-16
   102f4:	00812423          	sw	s0,8(sp)
   102f8:	00912223          	sw	s1,4(sp)
   102fc:	00022437          	lui	s0,0x22
   10300:	000224b7          	lui	s1,0x22
   10304:	00048793          	mv	a5,s1
   10308:	00040413          	mv	s0,s0
   1030c:	40f40433          	sub	s0,s0,a5
   10310:	01212023          	sw	s2,0(sp)
   10314:	00112623          	sw	ra,12(sp)
   10318:	40245413          	srai	s0,s0,0x2
   1031c:	00048493          	mv	s1,s1
   10320:	00000913          	li	s2,0
   10324:	04891263          	bne	s2,s0,10368 <__libc_init_array+0x78>
   10328:	000224b7          	lui	s1,0x22
   1032c:	d89ff0ef          	jal	ra,100b4 <_fini>
   10330:	00022437          	lui	s0,0x22
   10334:	00048793          	mv	a5,s1
   10338:	00440413          	addi	s0,s0,4 # 22004 <__init_array_end>
   1033c:	40f40433          	sub	s0,s0,a5
   10340:	40245413          	srai	s0,s0,0x2
   10344:	00048493          	mv	s1,s1
   10348:	00000913          	li	s2,0
   1034c:	02891863          	bne	s2,s0,1037c <__libc_init_array+0x8c>
   10350:	00c12083          	lw	ra,12(sp)
   10354:	00812403          	lw	s0,8(sp)
   10358:	00412483          	lw	s1,4(sp)
   1035c:	00012903          	lw	s2,0(sp)
   10360:	01010113          	addi	sp,sp,16
   10364:	00008067          	ret
   10368:	0004a783          	lw	a5,0(s1) # 22000 <__frame_dummy_init_array_entry>
   1036c:	00190913          	addi	s2,s2,1
   10370:	00448493          	addi	s1,s1,4
   10374:	000780e7          	jalr	a5
   10378:	fadff06f          	j	10324 <__libc_init_array+0x34>
   1037c:	0004a783          	lw	a5,0(s1)
   10380:	00190913          	addi	s2,s2,1
   10384:	00448493          	addi	s1,s1,4
   10388:	000780e7          	jalr	a5
   1038c:	fc1ff06f          	j	1034c <__libc_init_array+0x5c>

00010390 <memset>:
   10390:	00f00313          	li	t1,15
   10394:	00050713          	mv	a4,a0
   10398:	02c37e63          	bleu	a2,t1,103d4 <memset+0x44>
   1039c:	00f77793          	andi	a5,a4,15
   103a0:	0a079063          	bnez	a5,10440 <memset+0xb0>
   103a4:	08059263          	bnez	a1,10428 <memset+0x98>
   103a8:	ff067693          	andi	a3,a2,-16
   103ac:	00f67613          	andi	a2,a2,15
   103b0:	00e686b3          	add	a3,a3,a4
   103b4:	00b72023          	sw	a1,0(a4)
   103b8:	00b72223          	sw	a1,4(a4)
   103bc:	00b72423          	sw	a1,8(a4)
   103c0:	00b72623          	sw	a1,12(a4)
   103c4:	01070713          	addi	a4,a4,16
   103c8:	fed766e3          	bltu	a4,a3,103b4 <memset+0x24>
   103cc:	00061463          	bnez	a2,103d4 <memset+0x44>
   103d0:	00008067          	ret
   103d4:	40c306b3          	sub	a3,t1,a2
   103d8:	00269693          	slli	a3,a3,0x2
   103dc:	00000297          	auipc	t0,0x0
   103e0:	005686b3          	add	a3,a3,t0
   103e4:	00c68067          	jr	12(a3)
   103e8:	00b70723          	sb	a1,14(a4)
   103ec:	00b706a3          	sb	a1,13(a4)
   103f0:	00b70623          	sb	a1,12(a4)
   103f4:	00b705a3          	sb	a1,11(a4)
   103f8:	00b70523          	sb	a1,10(a4)
   103fc:	00b704a3          	sb	a1,9(a4)
   10400:	00b70423          	sb	a1,8(a4)
   10404:	00b703a3          	sb	a1,7(a4)
   10408:	00b70323          	sb	a1,6(a4)
   1040c:	00b702a3          	sb	a1,5(a4)
   10410:	00b70223          	sb	a1,4(a4)
   10414:	00b701a3          	sb	a1,3(a4)
   10418:	00b70123          	sb	a1,2(a4)
   1041c:	00b700a3          	sb	a1,1(a4)
   10420:	00b70023          	sb	a1,0(a4)
   10424:	00008067          	ret
   10428:	0ff5f593          	andi	a1,a1,255
   1042c:	00859693          	slli	a3,a1,0x8
   10430:	00d5e5b3          	or	a1,a1,a3
   10434:	01059693          	slli	a3,a1,0x10
   10438:	00d5e5b3          	or	a1,a1,a3
   1043c:	f6dff06f          	j	103a8 <memset+0x18>
   10440:	00279693          	slli	a3,a5,0x2
   10444:	00000297          	auipc	t0,0x0
   10448:	005686b3          	add	a3,a3,t0
   1044c:	00008293          	mv	t0,ra
   10450:	fa0680e7          	jalr	-96(a3)
   10454:	00028093          	mv	ra,t0
   10458:	ff078793          	addi	a5,a5,-16
   1045c:	40f70733          	sub	a4,a4,a5
   10460:	00f60633          	add	a2,a2,a5
   10464:	f6c378e3          	bleu	a2,t1,103d4 <memset+0x44>
   10468:	f3dff06f          	j	103a4 <memset+0x14>

0001046c <_printf_r>:
   1046c:	fc010113          	addi	sp,sp,-64
   10470:	02c12423          	sw	a2,40(sp)
   10474:	02d12623          	sw	a3,44(sp)
   10478:	02e12823          	sw	a4,48(sp)
   1047c:	02f12a23          	sw	a5,52(sp)
   10480:	03012c23          	sw	a6,56(sp)
   10484:	03112e23          	sw	a7,60(sp)
   10488:	00058613          	mv	a2,a1
   1048c:	00852583          	lw	a1,8(a0)
   10490:	02810693          	addi	a3,sp,40
   10494:	00112e23          	sw	ra,28(sp)
   10498:	00d12623          	sw	a3,12(sp)
   1049c:	14c000ef          	jal	ra,105e8 <_vfprintf_r>
   104a0:	01c12083          	lw	ra,28(sp)
   104a4:	04010113          	addi	sp,sp,64
   104a8:	00008067          	ret

000104ac <printf>:
   104ac:	fc010113          	addi	sp,sp,-64
   104b0:	02f12a23          	sw	a5,52(sp)
   104b4:	8201a783          	lw	a5,-2016(gp) # 229c8 <_impure_ptr>
   104b8:	02c12423          	sw	a2,40(sp)
   104bc:	02d12623          	sw	a3,44(sp)
   104c0:	02b12223          	sw	a1,36(sp)
   104c4:	02e12823          	sw	a4,48(sp)
   104c8:	03012c23          	sw	a6,56(sp)
   104cc:	03112e23          	sw	a7,60(sp)
   104d0:	0087a583          	lw	a1,8(a5)
   104d4:	02410693          	addi	a3,sp,36
   104d8:	00050613          	mv	a2,a0
   104dc:	00078513          	mv	a0,a5
   104e0:	00112e23          	sw	ra,28(sp)
   104e4:	00d12623          	sw	a3,12(sp)
   104e8:	100000ef          	jal	ra,105e8 <_vfprintf_r>
   104ec:	01c12083          	lw	ra,28(sp)
   104f0:	04010113          	addi	sp,sp,64
   104f4:	00008067          	ret

000104f8 <_puts_r>:
   104f8:	fc010113          	addi	sp,sp,-64
   104fc:	02812c23          	sw	s0,56(sp)
   10500:	00050413          	mv	s0,a0
   10504:	00058513          	mv	a0,a1
   10508:	00b12623          	sw	a1,12(sp)
   1050c:	02112e23          	sw	ra,60(sp)
   10510:	0bc000ef          	jal	ra,105cc <strlen>
   10514:	000217b7          	lui	a5,0x21
   10518:	8b878793          	addi	a5,a5,-1864 # 208b8 <__clzsi2+0x98>
   1051c:	02f12423          	sw	a5,40(sp)
   10520:	00100793          	li	a5,1
   10524:	02f12623          	sw	a5,44(sp)
   10528:	02010793          	addi	a5,sp,32
   1052c:	00c12583          	lw	a1,12(sp)
   10530:	00f12a23          	sw	a5,20(sp)
   10534:	00200793          	li	a5,2
   10538:	00f12c23          	sw	a5,24(sp)
   1053c:	03842783          	lw	a5,56(s0)
   10540:	02a12223          	sw	a0,36(sp)
   10544:	00150513          	addi	a0,a0,1
   10548:	02b12023          	sw	a1,32(sp)
   1054c:	00a12e23          	sw	a0,28(sp)
   10550:	00842583          	lw	a1,8(s0)
   10554:	00079a63          	bnez	a5,10568 <_puts_r+0x70>
   10558:	00040513          	mv	a0,s0
   1055c:	00b12623          	sw	a1,12(sp)
   10560:	744020ef          	jal	ra,12ca4 <__sinit>
   10564:	00c12583          	lw	a1,12(sp)
   10568:	00c59783          	lh	a5,12(a1)
   1056c:	01279713          	slli	a4,a5,0x12
   10570:	02074263          	bltz	a4,10594 <_puts_r+0x9c>
   10574:	000026b7          	lui	a3,0x2
   10578:	0645a703          	lw	a4,100(a1)
   1057c:	00d7e7b3          	or	a5,a5,a3
   10580:	00f59623          	sh	a5,12(a1)
   10584:	ffffe7b7          	lui	a5,0xffffe
   10588:	fff78793          	addi	a5,a5,-1 # ffffdfff <__global_pointer$+0xfffdae57>
   1058c:	00f777b3          	and	a5,a4,a5
   10590:	06f5a223          	sw	a5,100(a1)
   10594:	01410613          	addi	a2,sp,20
   10598:	00040513          	mv	a0,s0
   1059c:	411020ef          	jal	ra,131ac <__sfvwrite_r>
   105a0:	fff00793          	li	a5,-1
   105a4:	00051463          	bnez	a0,105ac <_puts_r+0xb4>
   105a8:	00a00793          	li	a5,10
   105ac:	03c12083          	lw	ra,60(sp)
   105b0:	03812403          	lw	s0,56(sp)
   105b4:	00078513          	mv	a0,a5
   105b8:	04010113          	addi	sp,sp,64
   105bc:	00008067          	ret

000105c0 <puts>:
   105c0:	00050593          	mv	a1,a0
   105c4:	8201a503          	lw	a0,-2016(gp) # 229c8 <_impure_ptr>
   105c8:	f31ff06f          	j	104f8 <_puts_r>

000105cc <strlen>:
   105cc:	00050793          	mv	a5,a0
   105d0:	00178793          	addi	a5,a5,1
   105d4:	fff7c703          	lbu	a4,-1(a5)
   105d8:	fe071ce3          	bnez	a4,105d0 <strlen+0x4>
   105dc:	40a78533          	sub	a0,a5,a0
   105e0:	fff50513          	addi	a0,a0,-1
   105e4:	00008067          	ret

000105e8 <_vfprintf_r>:
   105e8:	e2010113          	addi	sp,sp,-480
   105ec:	1c112e23          	sw	ra,476(sp)
   105f0:	1c912a23          	sw	s1,468(sp)
   105f4:	1d212823          	sw	s2,464(sp)
   105f8:	1d312623          	sw	s3,460(sp)
   105fc:	1d512223          	sw	s5,452(sp)
   10600:	00058913          	mv	s2,a1
   10604:	00060493          	mv	s1,a2
   10608:	00068a93          	mv	s5,a3
   1060c:	1c812c23          	sw	s0,472(sp)
   10610:	1d412423          	sw	s4,456(sp)
   10614:	1d612023          	sw	s6,448(sp)
   10618:	1b712e23          	sw	s7,444(sp)
   1061c:	1b812c23          	sw	s8,440(sp)
   10620:	1b912a23          	sw	s9,436(sp)
   10624:	1ba12823          	sw	s10,432(sp)
   10628:	1bb12623          	sw	s11,428(sp)
   1062c:	00050993          	mv	s3,a0
   10630:	158050ef          	jal	ra,15788 <_localeconv_r>
   10634:	00052783          	lw	a5,0(a0)
   10638:	00078513          	mv	a0,a5
   1063c:	02f12a23          	sw	a5,52(sp)
   10640:	f8dff0ef          	jal	ra,105cc <strlen>
   10644:	02a12023          	sw	a0,32(sp)
   10648:	0e012023          	sw	zero,224(sp)
   1064c:	0e012223          	sw	zero,228(sp)
   10650:	0e012423          	sw	zero,232(sp)
   10654:	0e012623          	sw	zero,236(sp)
   10658:	00098a63          	beqz	s3,1066c <_vfprintf_r+0x84>
   1065c:	0389a783          	lw	a5,56(s3)
   10660:	00079663          	bnez	a5,1066c <_vfprintf_r+0x84>
   10664:	00098513          	mv	a0,s3
   10668:	63c020ef          	jal	ra,12ca4 <__sinit>
   1066c:	00c91783          	lh	a5,12(s2)
   10670:	01279713          	slli	a4,a5,0x12
   10674:	02074263          	bltz	a4,10698 <_vfprintf_r+0xb0>
   10678:	000026b7          	lui	a3,0x2
   1067c:	06492703          	lw	a4,100(s2)
   10680:	00d7e7b3          	or	a5,a5,a3
   10684:	00f91623          	sh	a5,12(s2)
   10688:	ffffe7b7          	lui	a5,0xffffe
   1068c:	fff78793          	addi	a5,a5,-1 # ffffdfff <__global_pointer$+0xfffdae57>
   10690:	00f777b3          	and	a5,a4,a5
   10694:	06f92223          	sw	a5,100(s2)
   10698:	00c95783          	lhu	a5,12(s2)
   1069c:	0087f793          	andi	a5,a5,8
   106a0:	06078e63          	beqz	a5,1071c <_vfprintf_r+0x134>
   106a4:	01092783          	lw	a5,16(s2)
   106a8:	06078a63          	beqz	a5,1071c <_vfprintf_r+0x134>
   106ac:	00c95783          	lhu	a5,12(s2)
   106b0:	00a00713          	li	a4,10
   106b4:	01a7f793          	andi	a5,a5,26
   106b8:	08e79063          	bne	a5,a4,10738 <_vfprintf_r+0x150>
   106bc:	00e91783          	lh	a5,14(s2)
   106c0:	0607cc63          	bltz	a5,10738 <_vfprintf_r+0x150>
   106c4:	000a8693          	mv	a3,s5
   106c8:	00048613          	mv	a2,s1
   106cc:	00090593          	mv	a1,s2
   106d0:	00098513          	mv	a0,s3
   106d4:	6c1010ef          	jal	ra,12594 <__sbprintf>
   106d8:	02a12223          	sw	a0,36(sp)
   106dc:	1dc12083          	lw	ra,476(sp)
   106e0:	1d812403          	lw	s0,472(sp)
   106e4:	02412503          	lw	a0,36(sp)
   106e8:	1d412483          	lw	s1,468(sp)
   106ec:	1d012903          	lw	s2,464(sp)
   106f0:	1cc12983          	lw	s3,460(sp)
   106f4:	1c812a03          	lw	s4,456(sp)
   106f8:	1c412a83          	lw	s5,452(sp)
   106fc:	1c012b03          	lw	s6,448(sp)
   10700:	1bc12b83          	lw	s7,444(sp)
   10704:	1b812c03          	lw	s8,440(sp)
   10708:	1b412c83          	lw	s9,436(sp)
   1070c:	1b012d03          	lw	s10,432(sp)
   10710:	1ac12d83          	lw	s11,428(sp)
   10714:	1e010113          	addi	sp,sp,480
   10718:	00008067          	ret
   1071c:	00090593          	mv	a1,s2
   10720:	00098513          	mv	a0,s3
   10724:	72d010ef          	jal	ra,12650 <__swsetup_r>
   10728:	f80502e3          	beqz	a0,106ac <_vfprintf_r+0xc4>
   1072c:	fff00793          	li	a5,-1
   10730:	02f12223          	sw	a5,36(sp)
   10734:	fa9ff06f          	j	106dc <_vfprintf_r+0xf4>
   10738:	000217b7          	lui	a5,0x21
   1073c:	8bc78793          	addi	a5,a5,-1860 # 208bc <__clzsi2+0x9c>
   10740:	04f12623          	sw	a5,76(sp)
   10744:	000217b7          	lui	a5,0x21
   10748:	0fc10893          	addi	a7,sp,252
   1074c:	a3878793          	addi	a5,a5,-1480 # 20a38 <zeroes.4405>
   10750:	0d112a23          	sw	a7,212(sp)
   10754:	0c012e23          	sw	zero,220(sp)
   10758:	0c012c23          	sw	zero,216(sp)
   1075c:	00000a13          	li	s4,0
   10760:	04012023          	sw	zero,64(sp)
   10764:	02012e23          	sw	zero,60(sp)
   10768:	00012823          	sw	zero,16(sp)
   1076c:	02012823          	sw	zero,48(sp)
   10770:	02012c23          	sw	zero,56(sp)
   10774:	02012223          	sw	zero,36(sp)
   10778:	00f12a23          	sw	a5,20(sp)
   1077c:	00048413          	mv	s0,s1
   10780:	02500713          	li	a4,37
   10784:	00044783          	lbu	a5,0(s0)
   10788:	00078463          	beqz	a5,10790 <_vfprintf_r+0x1a8>
   1078c:	0ce79063          	bne	a5,a4,1084c <_vfprintf_r+0x264>
   10790:	40940b33          	sub	s6,s0,s1
   10794:	040b0a63          	beqz	s6,107e8 <_vfprintf_r+0x200>
   10798:	0dc12783          	lw	a5,220(sp)
   1079c:	0098a023          	sw	s1,0(a7)
   107a0:	0168a223          	sw	s6,4(a7)
   107a4:	016787b3          	add	a5,a5,s6
   107a8:	0cf12e23          	sw	a5,220(sp)
   107ac:	0d812783          	lw	a5,216(sp)
   107b0:	00700713          	li	a4,7
   107b4:	00888893          	addi	a7,a7,8
   107b8:	00178793          	addi	a5,a5,1
   107bc:	0cf12c23          	sw	a5,216(sp)
   107c0:	00f75e63          	ble	a5,a4,107dc <_vfprintf_r+0x1f4>
   107c4:	0d410613          	addi	a2,sp,212
   107c8:	00090593          	mv	a1,s2
   107cc:	00098513          	mv	a0,s3
   107d0:	270090ef          	jal	ra,19a40 <__sprint_r>
   107d4:	4e051663          	bnez	a0,10cc0 <_vfprintf_r+0x6d8>
   107d8:	0fc10893          	addi	a7,sp,252
   107dc:	02412783          	lw	a5,36(sp)
   107e0:	016787b3          	add	a5,a5,s6
   107e4:	02f12223          	sw	a5,36(sp)
   107e8:	00044783          	lbu	a5,0(s0)
   107ec:	00079463          	bnez	a5,107f4 <_vfprintf_r+0x20c>
   107f0:	5710106f          	j	12560 <_vfprintf_r+0x1f78>
   107f4:	00140793          	addi	a5,s0,1
   107f8:	00f12e23          	sw	a5,28(sp)
   107fc:	0a010ba3          	sb	zero,183(sp)
   10800:	fff00b13          	li	s6,-1
   10804:	02012423          	sw	zero,40(sp)
   10808:	00000413          	li	s0,0
   1080c:	00a00c13          	li	s8,10
   10810:	02a00b93          	li	s7,42
   10814:	05a00613          	li	a2,90
   10818:	00900713          	li	a4,9
   1081c:	01c12783          	lw	a5,28(sp)
   10820:	0007cd03          	lbu	s10,0(a5)
   10824:	00178793          	addi	a5,a5,1
   10828:	00f12e23          	sw	a5,28(sp)
   1082c:	fe0d0793          	addi	a5,s10,-32
   10830:	00f67463          	bleu	a5,a2,10838 <_vfprintf_r+0x250>
   10834:	2600106f          	j	11a94 <_vfprintf_r+0x14ac>
   10838:	04c12683          	lw	a3,76(sp)
   1083c:	00279793          	slli	a5,a5,0x2
   10840:	00d787b3          	add	a5,a5,a3
   10844:	0007a783          	lw	a5,0(a5)
   10848:	00078067          	jr	a5
   1084c:	00140413          	addi	s0,s0,1
   10850:	f35ff06f          	j	10784 <_vfprintf_r+0x19c>
   10854:	000217b7          	lui	a5,0x21
   10858:	a6c78793          	addi	a5,a5,-1428 # 20a6c <zeroes.4405+0x34>
   1085c:	04f12023          	sw	a5,64(sp)
   10860:	02047793          	andi	a5,s0,32
   10864:	00079463          	bnez	a5,1086c <_vfprintf_r+0x284>
   10868:	0480106f          	j	118b0 <_vfprintf_r+0x12c8>
   1086c:	007a8a93          	addi	s5,s5,7
   10870:	ff8afa93          	andi	s5,s5,-8
   10874:	000aac83          	lw	s9,0(s5)
   10878:	004aac03          	lw	s8,4(s5)
   1087c:	008a8793          	addi	a5,s5,8
   10880:	00f12c23          	sw	a5,24(sp)
   10884:	00147793          	andi	a5,s0,1
   10888:	00078e63          	beqz	a5,108a4 <_vfprintf_r+0x2bc>
   1088c:	018ce7b3          	or	a5,s9,s8
   10890:	00078a63          	beqz	a5,108a4 <_vfprintf_r+0x2bc>
   10894:	03000793          	li	a5,48
   10898:	0af10c23          	sb	a5,184(sp)
   1089c:	0ba10ca3          	sb	s10,185(sp)
   108a0:	00246413          	ori	s0,s0,2
   108a4:	bff47413          	andi	s0,s0,-1025
   108a8:	00200793          	li	a5,2
   108ac:	4150006f          	j	114c0 <_vfprintf_r+0xed8>
   108b0:	00098513          	mv	a0,s3
   108b4:	01112623          	sw	a7,12(sp)
   108b8:	6d1040ef          	jal	ra,15788 <_localeconv_r>
   108bc:	00452783          	lw	a5,4(a0)
   108c0:	00078513          	mv	a0,a5
   108c4:	02f12c23          	sw	a5,56(sp)
   108c8:	d05ff0ef          	jal	ra,105cc <strlen>
   108cc:	02a12823          	sw	a0,48(sp)
   108d0:	00098513          	mv	a0,s3
   108d4:	6b5040ef          	jal	ra,15788 <_localeconv_r>
   108d8:	00852783          	lw	a5,8(a0)
   108dc:	00c12883          	lw	a7,12(sp)
   108e0:	00f12823          	sw	a5,16(sp)
   108e4:	03012783          	lw	a5,48(sp)
   108e8:	f20786e3          	beqz	a5,10814 <_vfprintf_r+0x22c>
   108ec:	01012783          	lw	a5,16(sp)
   108f0:	f20782e3          	beqz	a5,10814 <_vfprintf_r+0x22c>
   108f4:	0007c783          	lbu	a5,0(a5)
   108f8:	f0078ee3          	beqz	a5,10814 <_vfprintf_r+0x22c>
   108fc:	40046413          	ori	s0,s0,1024
   10900:	f15ff06f          	j	10814 <_vfprintf_r+0x22c>
   10904:	0b714783          	lbu	a5,183(sp)
   10908:	f00796e3          	bnez	a5,10814 <_vfprintf_r+0x22c>
   1090c:	02000793          	li	a5,32
   10910:	0af10ba3          	sb	a5,183(sp)
   10914:	f01ff06f          	j	10814 <_vfprintf_r+0x22c>
   10918:	00146413          	ori	s0,s0,1
   1091c:	ef9ff06f          	j	10814 <_vfprintf_r+0x22c>
   10920:	000aa783          	lw	a5,0(s5)
   10924:	004a8a93          	addi	s5,s5,4
   10928:	02f12423          	sw	a5,40(sp)
   1092c:	ee07d4e3          	bgez	a5,10814 <_vfprintf_r+0x22c>
   10930:	40f007b3          	neg	a5,a5
   10934:	02f12423          	sw	a5,40(sp)
   10938:	00446413          	ori	s0,s0,4
   1093c:	ed9ff06f          	j	10814 <_vfprintf_r+0x22c>
   10940:	02b00793          	li	a5,43
   10944:	fcdff06f          	j	10910 <_vfprintf_r+0x328>
   10948:	01c12683          	lw	a3,28(sp)
   1094c:	01c12783          	lw	a5,28(sp)
   10950:	0006cd03          	lbu	s10,0(a3) # 2000 <_start-0xe074>
   10954:	00178793          	addi	a5,a5,1
   10958:	037d1e63          	bne	s10,s7,10994 <_vfprintf_r+0x3ac>
   1095c:	000aab03          	lw	s6,0(s5)
   10960:	004a8713          	addi	a4,s5,4
   10964:	000b5463          	bgez	s6,1096c <_vfprintf_r+0x384>
   10968:	fff00b13          	li	s6,-1
   1096c:	00070a93          	mv	s5,a4
   10970:	00f12e23          	sw	a5,28(sp)
   10974:	ea1ff06f          	j	10814 <_vfprintf_r+0x22c>
   10978:	038b0333          	mul	t1,s6,s8
   1097c:	00178793          	addi	a5,a5,1
   10980:	fff7cd03          	lbu	s10,-1(a5)
   10984:	00d30b33          	add	s6,t1,a3
   10988:	fd0d0693          	addi	a3,s10,-48
   1098c:	fed776e3          	bleu	a3,a4,10978 <_vfprintf_r+0x390>
   10990:	e99ff06f          	j	10828 <_vfprintf_r+0x240>
   10994:	00000b13          	li	s6,0
   10998:	ff1ff06f          	j	10988 <_vfprintf_r+0x3a0>
   1099c:	08046413          	ori	s0,s0,128
   109a0:	e75ff06f          	j	10814 <_vfprintf_r+0x22c>
   109a4:	01c12783          	lw	a5,28(sp)
   109a8:	02012423          	sw	zero,40(sp)
   109ac:	02812683          	lw	a3,40(sp)
   109b0:	fd0d0d13          	addi	s10,s10,-48
   109b4:	00178793          	addi	a5,a5,1
   109b8:	038686b3          	mul	a3,a3,s8
   109bc:	00dd06b3          	add	a3,s10,a3
   109c0:	fff7cd03          	lbu	s10,-1(a5)
   109c4:	02d12423          	sw	a3,40(sp)
   109c8:	fd0d0693          	addi	a3,s10,-48
   109cc:	fed770e3          	bleu	a3,a4,109ac <_vfprintf_r+0x3c4>
   109d0:	e59ff06f          	j	10828 <_vfprintf_r+0x240>
   109d4:	00846413          	ori	s0,s0,8
   109d8:	e3dff06f          	j	10814 <_vfprintf_r+0x22c>
   109dc:	01c12783          	lw	a5,28(sp)
   109e0:	0007c703          	lbu	a4,0(a5)
   109e4:	06800793          	li	a5,104
   109e8:	00f71c63          	bne	a4,a5,10a00 <_vfprintf_r+0x418>
   109ec:	01c12783          	lw	a5,28(sp)
   109f0:	20046413          	ori	s0,s0,512
   109f4:	00178793          	addi	a5,a5,1
   109f8:	00f12e23          	sw	a5,28(sp)
   109fc:	e19ff06f          	j	10814 <_vfprintf_r+0x22c>
   10a00:	04046413          	ori	s0,s0,64
   10a04:	e11ff06f          	j	10814 <_vfprintf_r+0x22c>
   10a08:	01c12783          	lw	a5,28(sp)
   10a0c:	0007c703          	lbu	a4,0(a5)
   10a10:	06c00793          	li	a5,108
   10a14:	00f71c63          	bne	a4,a5,10a2c <_vfprintf_r+0x444>
   10a18:	01c12783          	lw	a5,28(sp)
   10a1c:	00178793          	addi	a5,a5,1
   10a20:	00f12e23          	sw	a5,28(sp)
   10a24:	02046413          	ori	s0,s0,32
   10a28:	dedff06f          	j	10814 <_vfprintf_r+0x22c>
   10a2c:	01046413          	ori	s0,s0,16
   10a30:	de5ff06f          	j	10814 <_vfprintf_r+0x22c>
   10a34:	004a8793          	addi	a5,s5,4
   10a38:	00f12c23          	sw	a5,24(sp)
   10a3c:	000aa783          	lw	a5,0(s5)
   10a40:	0a010ba3          	sb	zero,183(sp)
   10a44:	12f10e23          	sb	a5,316(sp)
   10a48:	00012623          	sw	zero,12(sp)
   10a4c:	00100b13          	li	s6,1
   10a50:	00000a93          	li	s5,0
   10a54:	00000c13          	li	s8,0
   10a58:	00000b93          	li	s7,0
   10a5c:	00000c93          	li	s9,0
   10a60:	13c10493          	addi	s1,sp,316
   10a64:	3650006f          	j	115c8 <_vfprintf_r+0xfe0>
   10a68:	01046413          	ori	s0,s0,16
   10a6c:	02047793          	andi	a5,s0,32
   10a70:	04078e63          	beqz	a5,10acc <_vfprintf_r+0x4e4>
   10a74:	007a8a93          	addi	s5,s5,7
   10a78:	ff8afa93          	andi	s5,s5,-8
   10a7c:	000aac83          	lw	s9,0(s5)
   10a80:	004aac03          	lw	s8,4(s5)
   10a84:	008a8793          	addi	a5,s5,8
   10a88:	00f12c23          	sw	a5,24(sp)
   10a8c:	000c5e63          	bgez	s8,10aa8 <_vfprintf_r+0x4c0>
   10a90:	41900cb3          	neg	s9,s9
   10a94:	019037b3          	snez	a5,s9
   10a98:	41800c33          	neg	s8,s8
   10a9c:	40fc0c33          	sub	s8,s8,a5
   10aa0:	02d00793          	li	a5,45
   10aa4:	0af10ba3          	sb	a5,183(sp)
   10aa8:	fff00793          	li	a5,-1
   10aac:	64fb10e3          	bne	s6,a5,118ec <_vfprintf_r+0x1304>
   10ab0:	6c0c12e3          	bnez	s8,11974 <_vfprintf_r+0x138c>
   10ab4:	00900793          	li	a5,9
   10ab8:	6b97eee3          	bltu	a5,s9,11974 <_vfprintf_r+0x138c>
   10abc:	030c8c93          	addi	s9,s9,48
   10ac0:	19910fa3          	sb	s9,415(sp)
   10ac4:	19f10493          	addi	s1,sp,415
   10ac8:	6850006f          	j	1194c <_vfprintf_r+0x1364>
   10acc:	004a8793          	addi	a5,s5,4
   10ad0:	00f12c23          	sw	a5,24(sp)
   10ad4:	01047793          	andi	a5,s0,16
   10ad8:	00078863          	beqz	a5,10ae8 <_vfprintf_r+0x500>
   10adc:	000aac83          	lw	s9,0(s5)
   10ae0:	41fcdc13          	srai	s8,s9,0x1f
   10ae4:	fa9ff06f          	j	10a8c <_vfprintf_r+0x4a4>
   10ae8:	04047793          	andi	a5,s0,64
   10aec:	000aac83          	lw	s9,0(s5)
   10af0:	00078863          	beqz	a5,10b00 <_vfprintf_r+0x518>
   10af4:	010c9c93          	slli	s9,s9,0x10
   10af8:	410cdc93          	srai	s9,s9,0x10
   10afc:	fe5ff06f          	j	10ae0 <_vfprintf_r+0x4f8>
   10b00:	20047793          	andi	a5,s0,512
   10b04:	fc078ee3          	beqz	a5,10ae0 <_vfprintf_r+0x4f8>
   10b08:	018c9c93          	slli	s9,s9,0x18
   10b0c:	418cdc93          	srai	s9,s9,0x18
   10b10:	fd1ff06f          	j	10ae0 <_vfprintf_r+0x4f8>
   10b14:	00847793          	andi	a5,s0,8
   10b18:	0a078e63          	beqz	a5,10bd4 <_vfprintf_r+0x5ec>
   10b1c:	004a8793          	addi	a5,s5,4
   10b20:	00f12c23          	sw	a5,24(sp)
   10b24:	000aa783          	lw	a5,0(s5)
   10b28:	0007a603          	lw	a2,0(a5)
   10b2c:	0047a683          	lw	a3,4(a5)
   10b30:	0087a703          	lw	a4,8(a5)
   10b34:	00c7a783          	lw	a5,12(a5)
   10b38:	0ec12023          	sw	a2,224(sp)
   10b3c:	0ed12223          	sw	a3,228(sp)
   10b40:	0ee12423          	sw	a4,232(sp)
   10b44:	0ef12623          	sw	a5,236(sp)
   10b48:	0e010513          	addi	a0,sp,224
   10b4c:	01112623          	sw	a7,12(sp)
   10b50:	3cd040ef          	jal	ra,1571c <_ldcheck>
   10b54:	0aa12e23          	sw	a0,188(sp)
   10b58:	00200793          	li	a5,2
   10b5c:	00c12883          	lw	a7,12(sp)
   10b60:	0cf51663          	bne	a0,a5,10c2c <_vfprintf_r+0x644>
   10b64:	0e012783          	lw	a5,224(sp)
   10b68:	09010593          	addi	a1,sp,144
   10b6c:	0a010513          	addi	a0,sp,160
   10b70:	0af12023          	sw	a5,160(sp)
   10b74:	0e412783          	lw	a5,228(sp)
   10b78:	08012823          	sw	zero,144(sp)
   10b7c:	08012a23          	sw	zero,148(sp)
   10b80:	0af12223          	sw	a5,164(sp)
   10b84:	0e812783          	lw	a5,232(sp)
   10b88:	08012c23          	sw	zero,152(sp)
   10b8c:	08012e23          	sw	zero,156(sp)
   10b90:	0af12423          	sw	a5,168(sp)
   10b94:	0ec12783          	lw	a5,236(sp)
   10b98:	0af12623          	sw	a5,172(sp)
   10b9c:	5c90c0ef          	jal	ra,1d964 <__letf2>
   10ba0:	00c12883          	lw	a7,12(sp)
   10ba4:	00055663          	bgez	a0,10bb0 <_vfprintf_r+0x5c8>
   10ba8:	02d00793          	li	a5,45
   10bac:	0af10ba3          	sb	a5,183(sp)
   10bb0:	04700793          	li	a5,71
   10bb4:	07a7c663          	blt	a5,s10,10c20 <_vfprintf_r+0x638>
   10bb8:	000214b7          	lui	s1,0x21
   10bbc:	a4848493          	addi	s1,s1,-1464 # 20a48 <zeroes.4405+0x10>
   10bc0:	f7f47413          	andi	s0,s0,-129
   10bc4:	00012623          	sw	zero,12(sp)
   10bc8:	00300b13          	li	s6,3
   10bcc:	00000a93          	li	s5,0
   10bd0:	58d0006f          	j	1195c <_vfprintf_r+0x1374>
   10bd4:	007a8a93          	addi	s5,s5,7
   10bd8:	ff8afa93          	andi	s5,s5,-8
   10bdc:	000aa583          	lw	a1,0(s5)
   10be0:	004aa603          	lw	a2,4(s5)
   10be4:	008a8793          	addi	a5,s5,8
   10be8:	0a010513          	addi	a0,sp,160
   10bec:	01112623          	sw	a7,12(sp)
   10bf0:	00f12c23          	sw	a5,24(sp)
   10bf4:	6b00f0ef          	jal	ra,202a4 <__extenddftf2>
   10bf8:	0a012783          	lw	a5,160(sp)
   10bfc:	00c12883          	lw	a7,12(sp)
   10c00:	0ef12023          	sw	a5,224(sp)
   10c04:	0a412783          	lw	a5,164(sp)
   10c08:	0ef12223          	sw	a5,228(sp)
   10c0c:	0a812783          	lw	a5,168(sp)
   10c10:	0ef12423          	sw	a5,232(sp)
   10c14:	0ac12783          	lw	a5,172(sp)
   10c18:	0ef12623          	sw	a5,236(sp)
   10c1c:	f2dff06f          	j	10b48 <_vfprintf_r+0x560>
   10c20:	000214b7          	lui	s1,0x21
   10c24:	a4c48493          	addi	s1,s1,-1460 # 20a4c <zeroes.4405+0x14>
   10c28:	f99ff06f          	j	10bc0 <_vfprintf_r+0x5d8>
   10c2c:	00100793          	li	a5,1
   10c30:	02f51a63          	bne	a0,a5,10c64 <_vfprintf_r+0x67c>
   10c34:	0ec12783          	lw	a5,236(sp)
   10c38:	0007d663          	bgez	a5,10c44 <_vfprintf_r+0x65c>
   10c3c:	02d00793          	li	a5,45
   10c40:	0af10ba3          	sb	a5,183(sp)
   10c44:	04700793          	li	a5,71
   10c48:	01a7c863          	blt	a5,s10,10c58 <_vfprintf_r+0x670>
   10c4c:	000214b7          	lui	s1,0x21
   10c50:	a5048493          	addi	s1,s1,-1456 # 20a50 <zeroes.4405+0x18>
   10c54:	f6dff06f          	j	10bc0 <_vfprintf_r+0x5d8>
   10c58:	000214b7          	lui	s1,0x21
   10c5c:	a5448493          	addi	s1,s1,-1452 # 20a54 <zeroes.4405+0x1c>
   10c60:	f61ff06f          	j	10bc0 <_vfprintf_r+0x5d8>
   10c64:	fdfd7b93          	andi	s7,s10,-33
   10c68:	04100793          	li	a5,65
   10c6c:	06fb9263          	bne	s7,a5,10cd0 <_vfprintf_r+0x6e8>
   10c70:	03000793          	li	a5,48
   10c74:	0af10c23          	sb	a5,184(sp)
   10c78:	06100713          	li	a4,97
   10c7c:	05800793          	li	a5,88
   10c80:	00ed1463          	bne	s10,a4,10c88 <_vfprintf_r+0x6a0>
   10c84:	07800793          	li	a5,120
   10c88:	0af10ca3          	sb	a5,185(sp)
   10c8c:	06300793          	li	a5,99
   10c90:	00246413          	ori	s0,s0,2
   10c94:	4b67d463          	ble	s6,a5,1113c <_vfprintf_r+0xb54>
   10c98:	001b0593          	addi	a1,s6,1
   10c9c:	00098513          	mv	a0,s3
   10ca0:	01112623          	sw	a7,12(sp)
   10ca4:	56d040ef          	jal	ra,15a10 <_malloc_r>
   10ca8:	00050493          	mv	s1,a0
   10cac:	00c12883          	lw	a7,12(sp)
   10cb0:	48051c63          	bnez	a0,11148 <_vfprintf_r+0xb60>
   10cb4:	00c95783          	lhu	a5,12(s2)
   10cb8:	0407e793          	ori	a5,a5,64
   10cbc:	00f91623          	sh	a5,12(s2)
   10cc0:	00c95783          	lhu	a5,12(s2)
   10cc4:	0407f793          	andi	a5,a5,64
   10cc8:	a0078ae3          	beqz	a5,106dc <_vfprintf_r+0xf4>
   10ccc:	a61ff06f          	j	1072c <_vfprintf_r+0x144>
   10cd0:	fff00793          	li	a5,-1
   10cd4:	46fb0e63          	beq	s6,a5,11150 <_vfprintf_r+0xb68>
   10cd8:	04700793          	li	a5,71
   10cdc:	00012623          	sw	zero,12(sp)
   10ce0:	00fb9463          	bne	s7,a5,10ce8 <_vfprintf_r+0x700>
   10ce4:	460b0c63          	beqz	s6,1115c <_vfprintf_r+0xb74>
   10ce8:	0ec12a03          	lw	s4,236(sp)
   10cec:	10046793          	ori	a5,s0,256
   10cf0:	02f12623          	sw	a5,44(sp)
   10cf4:	04012223          	sw	zero,68(sp)
   10cf8:	0e012e03          	lw	t3,224(sp)
   10cfc:	0e412d83          	lw	s11,228(sp)
   10d00:	0e812c83          	lw	s9,232(sp)
   10d04:	000a5a63          	bgez	s4,10d18 <_vfprintf_r+0x730>
   10d08:	800007b7          	lui	a5,0x80000
   10d0c:	0147ca33          	xor	s4,a5,s4
   10d10:	02d00793          	li	a5,45
   10d14:	04f12223          	sw	a5,68(sp)
   10d18:	04100793          	li	a5,65
   10d1c:	48fb9a63          	bne	s7,a5,111b0 <_vfprintf_r+0xbc8>
   10d20:	0a010513          	addi	a0,sp,160
   10d24:	05112c23          	sw	a7,88(sp)
   10d28:	0bc12023          	sw	t3,160(sp)
   10d2c:	0b912423          	sw	s9,168(sp)
   10d30:	0bb12223          	sw	s11,164(sp)
   10d34:	0b412623          	sw	s4,172(sp)
   10d38:	7900f0ef          	jal	ra,204c8 <__trunctfdf2>
   10d3c:	0bc10613          	addi	a2,sp,188
   10d40:	125060ef          	jal	ra,17664 <frexp>
   10d44:	00058613          	mv	a2,a1
   10d48:	00050593          	mv	a1,a0
   10d4c:	0a010513          	addi	a0,sp,160
   10d50:	5540f0ef          	jal	ra,202a4 <__extenddftf2>
   10d54:	0a012783          	lw	a5,160(sp)
   10d58:	07010613          	addi	a2,sp,112
   10d5c:	08010593          	addi	a1,sp,128
   10d60:	08f12023          	sw	a5,128(sp)
   10d64:	0a412783          	lw	a5,164(sp)
   10d68:	09010513          	addi	a0,sp,144
   10d6c:	06012823          	sw	zero,112(sp)
   10d70:	08f12223          	sw	a5,132(sp)
   10d74:	0a812783          	lw	a5,168(sp)
   10d78:	06012a23          	sw	zero,116(sp)
   10d7c:	06012c23          	sw	zero,120(sp)
   10d80:	08f12423          	sw	a5,136(sp)
   10d84:	0ac12783          	lw	a5,172(sp)
   10d88:	08f12623          	sw	a5,140(sp)
   10d8c:	3ffc07b7          	lui	a5,0x3ffc0
   10d90:	06f12e23          	sw	a5,124(sp)
   10d94:	5310c0ef          	jal	ra,1dac4 <__multf3>
   10d98:	09012803          	lw	a6,144(sp)
   10d9c:	09412603          	lw	a2,148(sp)
   10da0:	09812683          	lw	a3,152(sp)
   10da4:	09c12c83          	lw	s9,156(sp)
   10da8:	09010593          	addi	a1,sp,144
   10dac:	0a010513          	addi	a0,sp,160
   10db0:	0b012023          	sw	a6,160(sp)
   10db4:	05012a23          	sw	a6,84(sp)
   10db8:	0ac12223          	sw	a2,164(sp)
   10dbc:	04c12823          	sw	a2,80(sp)
   10dc0:	0ad12423          	sw	a3,168(sp)
   10dc4:	04d12423          	sw	a3,72(sp)
   10dc8:	0b912623          	sw	s9,172(sp)
   10dcc:	08012823          	sw	zero,144(sp)
   10dd0:	08012a23          	sw	zero,148(sp)
   10dd4:	08012c23          	sw	zero,152(sp)
   10dd8:	08012e23          	sw	zero,156(sp)
   10ddc:	15d0c0ef          	jal	ra,1d738 <__eqtf2>
   10de0:	04812683          	lw	a3,72(sp)
   10de4:	05012603          	lw	a2,80(sp)
   10de8:	05412803          	lw	a6,84(sp)
   10dec:	05812883          	lw	a7,88(sp)
   10df0:	00051663          	bnez	a0,10dfc <_vfprintf_r+0x814>
   10df4:	00100713          	li	a4,1
   10df8:	0ae12e23          	sw	a4,188(sp)
   10dfc:	06100713          	li	a4,97
   10e00:	36ed1463          	bne	s10,a4,11168 <_vfprintf_r+0xb80>
   10e04:	00021c37          	lui	s8,0x21
   10e08:	a58c0c13          	addi	s8,s8,-1448 # 20a58 <zeroes.4405+0x20>
   10e0c:	fffb0e13          	addi	t3,s6,-1
   10e10:	00048d93          	mv	s11,s1
   10e14:	400307b7          	lui	a5,0x40030
   10e18:	09010593          	addi	a1,sp,144
   10e1c:	08c12a23          	sw	a2,148(sp)
   10e20:	0a010513          	addi	a0,sp,160
   10e24:	08010613          	addi	a2,sp,128
   10e28:	05112c23          	sw	a7,88(sp)
   10e2c:	05c12a23          	sw	t3,84(sp)
   10e30:	09012823          	sw	a6,144(sp)
   10e34:	08f12623          	sw	a5,140(sp)
   10e38:	08d12c23          	sw	a3,152(sp)
   10e3c:	09912e23          	sw	s9,156(sp)
   10e40:	08012023          	sw	zero,128(sp)
   10e44:	08012223          	sw	zero,132(sp)
   10e48:	08012423          	sw	zero,136(sp)
   10e4c:	4790c0ef          	jal	ra,1dac4 <__multf3>
   10e50:	0a012603          	lw	a2,160(sp)
   10e54:	0a412683          	lw	a3,164(sp)
   10e58:	0a010513          	addi	a0,sp,160
   10e5c:	04c12823          	sw	a2,80(sp)
   10e60:	04d12423          	sw	a3,72(sp)
   10e64:	15c0f0ef          	jal	ra,1ffc0 <__fixtfsi>
   10e68:	00050593          	mv	a1,a0
   10e6c:	00050a13          	mv	s4,a0
   10e70:	0a010513          	addi	a0,sp,160
   10e74:	0a812c83          	lw	s9,168(sp)
   10e78:	0ac12a83          	lw	s5,172(sp)
   10e7c:	2a80f0ef          	jal	ra,20124 <__floatsitf>
   10e80:	0a012783          	lw	a5,160(sp)
   10e84:	05012603          	lw	a2,80(sp)
   10e88:	04812683          	lw	a3,72(sp)
   10e8c:	06f12823          	sw	a5,112(sp)
   10e90:	0a412783          	lw	a5,164(sp)
   10e94:	08c12023          	sw	a2,128(sp)
   10e98:	08010593          	addi	a1,sp,128
   10e9c:	06f12a23          	sw	a5,116(sp)
   10ea0:	0a812783          	lw	a5,168(sp)
   10ea4:	07010613          	addi	a2,sp,112
   10ea8:	09010513          	addi	a0,sp,144
   10eac:	06f12c23          	sw	a5,120(sp)
   10eb0:	0ac12783          	lw	a5,172(sp)
   10eb4:	09912423          	sw	s9,136(sp)
   10eb8:	09512623          	sw	s5,140(sp)
   10ebc:	06f12e23          	sw	a5,124(sp)
   10ec0:	08d12223          	sw	a3,132(sp)
   10ec4:	43d0d0ef          	jal	ra,1eb00 <__subtf3>
   10ec8:	014c05b3          	add	a1,s8,s4
   10ecc:	0005c583          	lbu	a1,0(a1)
   10ed0:	05412e03          	lw	t3,84(sp)
   10ed4:	09c12a83          	lw	s5,156(sp)
   10ed8:	001d8d93          	addi	s11,s11,1
   10edc:	09012283          	lw	t0,144(sp)
   10ee0:	09412f83          	lw	t6,148(sp)
   10ee4:	09812f03          	lw	t5,152(sp)
   10ee8:	05c12423          	sw	t3,72(sp)
   10eec:	febd8fa3          	sb	a1,-1(s11)
   10ef0:	fff00793          	li	a5,-1
   10ef4:	000a8c93          	mv	s9,s5
   10ef8:	05812883          	lw	a7,88(sp)
   10efc:	06fe0c63          	beq	t3,a5,10f74 <_vfprintf_r+0x98c>
   10f00:	fffe0e13          	addi	t3,t3,-1
   10f04:	09010593          	addi	a1,sp,144
   10f08:	0a010513          	addi	a0,sp,160
   10f0c:	07e12623          	sw	t5,108(sp)
   10f10:	07f12423          	sw	t6,104(sp)
   10f14:	06512223          	sw	t0,100(sp)
   10f18:	07112023          	sw	a7,96(sp)
   10f1c:	05c12e23          	sw	t3,92(sp)
   10f20:	0a512023          	sw	t0,160(sp)
   10f24:	04512c23          	sw	t0,88(sp)
   10f28:	0bf12223          	sw	t6,164(sp)
   10f2c:	05f12a23          	sw	t6,84(sp)
   10f30:	0be12423          	sw	t5,168(sp)
   10f34:	05e12823          	sw	t5,80(sp)
   10f38:	0b512623          	sw	s5,172(sp)
   10f3c:	08012823          	sw	zero,144(sp)
   10f40:	08012a23          	sw	zero,148(sp)
   10f44:	08012c23          	sw	zero,152(sp)
   10f48:	08012e23          	sw	zero,156(sp)
   10f4c:	7ec0c0ef          	jal	ra,1d738 <__eqtf2>
   10f50:	05012683          	lw	a3,80(sp)
   10f54:	05412603          	lw	a2,84(sp)
   10f58:	05812803          	lw	a6,88(sp)
   10f5c:	05c12e03          	lw	t3,92(sp)
   10f60:	06012883          	lw	a7,96(sp)
   10f64:	06412283          	lw	t0,100(sp)
   10f68:	06812f83          	lw	t6,104(sp)
   10f6c:	06c12f03          	lw	t5,108(sp)
   10f70:	ea0512e3          	bnez	a0,10e14 <_vfprintf_r+0x82c>
   10f74:	3ffe0cb7          	lui	s9,0x3ffe0
   10f78:	09010593          	addi	a1,sp,144
   10f7c:	0a010513          	addi	a0,sp,160
   10f80:	05112823          	sw	a7,80(sp)
   10f84:	0a512023          	sw	t0,160(sp)
   10f88:	04512e23          	sw	t0,92(sp)
   10f8c:	0bf12223          	sw	t6,164(sp)
   10f90:	05f12c23          	sw	t6,88(sp)
   10f94:	0be12423          	sw	t5,168(sp)
   10f98:	05e12a23          	sw	t5,84(sp)
   10f9c:	0b512623          	sw	s5,172(sp)
   10fa0:	08012823          	sw	zero,144(sp)
   10fa4:	08012a23          	sw	zero,148(sp)
   10fa8:	08012c23          	sw	zero,152(sp)
   10fac:	09912e23          	sw	s9,156(sp)
   10fb0:	0550c0ef          	jal	ra,1d804 <__getf2>
   10fb4:	05012883          	lw	a7,80(sp)
   10fb8:	04a04663          	bgtz	a0,11004 <_vfprintf_r+0xa1c>
   10fbc:	05c12283          	lw	t0,92(sp)
   10fc0:	05812f83          	lw	t6,88(sp)
   10fc4:	05412f03          	lw	t5,84(sp)
   10fc8:	09010593          	addi	a1,sp,144
   10fcc:	0a010513          	addi	a0,sp,160
   10fd0:	0a512023          	sw	t0,160(sp)
   10fd4:	0bf12223          	sw	t6,164(sp)
   10fd8:	0be12423          	sw	t5,168(sp)
   10fdc:	0b512623          	sw	s5,172(sp)
   10fe0:	08012823          	sw	zero,144(sp)
   10fe4:	08012a23          	sw	zero,148(sp)
   10fe8:	08012c23          	sw	zero,152(sp)
   10fec:	09912e23          	sw	s9,156(sp)
   10ff0:	7480c0ef          	jal	ra,1d738 <__eqtf2>
   10ff4:	05012883          	lw	a7,80(sp)
   10ff8:	1a051263          	bnez	a0,1119c <_vfprintf_r+0xbb4>
   10ffc:	001a7a13          	andi	s4,s4,1
   11000:	180a0e63          	beqz	s4,1119c <_vfprintf_r+0xbb4>
   11004:	00fc4603          	lbu	a2,15(s8)
   11008:	0db12623          	sw	s11,204(sp)
   1100c:	03000593          	li	a1,48
   11010:	0cc12683          	lw	a3,204(sp)
   11014:	fff68793          	addi	a5,a3,-1
   11018:	0cf12623          	sw	a5,204(sp)
   1101c:	fff6c783          	lbu	a5,-1(a3)
   11020:	14c78a63          	beq	a5,a2,11174 <_vfprintf_r+0xb8c>
   11024:	03900613          	li	a2,57
   11028:	14c79a63          	bne	a5,a2,1117c <_vfprintf_r+0xb94>
   1102c:	00ac4783          	lbu	a5,10(s8)
   11030:	fef68fa3          	sb	a5,-1(a3)
   11034:	000d8a13          	mv	s4,s11
   11038:	04700713          	li	a4,71
   1103c:	409a0a33          	sub	s4,s4,s1
   11040:	0bc12c83          	lw	s9,188(sp)
   11044:	2aeb9863          	bne	s7,a4,112f4 <_vfprintf_r+0xd0c>
   11048:	ffd00713          	li	a4,-3
   1104c:	00ecc463          	blt	s9,a4,11054 <_vfprintf_r+0xa6c>
   11050:	339b5463          	ble	s9,s6,11378 <_vfprintf_r+0xd90>
   11054:	ffed0d13          	addi	s10,s10,-2
   11058:	fffc8693          	addi	a3,s9,-1 # 3ffdffff <__global_pointer$+0x3ffbce57>
   1105c:	0ad12e23          	sw	a3,188(sp)
   11060:	fdfd7613          	andi	a2,s10,-33
   11064:	04100513          	li	a0,65
   11068:	0ffd7713          	andi	a4,s10,255
   1106c:	00000593          	li	a1,0
   11070:	00a61863          	bne	a2,a0,11080 <_vfprintf_r+0xa98>
   11074:	00f70713          	addi	a4,a4,15
   11078:	0ff77713          	andi	a4,a4,255
   1107c:	00100593          	li	a1,1
   11080:	0ce10223          	sb	a4,196(sp)
   11084:	02b00793          	li	a5,43
   11088:	0006d863          	bgez	a3,11098 <_vfprintf_r+0xab0>
   1108c:	00100693          	li	a3,1
   11090:	419686b3          	sub	a3,a3,s9
   11094:	02d00793          	li	a5,45
   11098:	0cf102a3          	sb	a5,197(sp)
   1109c:	00900793          	li	a5,9
   110a0:	28d7de63          	ble	a3,a5,1133c <_vfprintf_r+0xd54>
   110a4:	0d310713          	addi	a4,sp,211
   110a8:	00070513          	mv	a0,a4
   110ac:	00a00593          	li	a1,10
   110b0:	00900813          	li	a6,9
   110b4:	02b6e7b3          	rem	a5,a3,a1
   110b8:	fff70613          	addi	a2,a4,-1
   110bc:	02b6c6b3          	div	a3,a3,a1
   110c0:	03078793          	addi	a5,a5,48 # 40030030 <__global_pointer$+0x4000ce88>
   110c4:	fef70fa3          	sb	a5,-1(a4)
   110c8:	24d84c63          	blt	a6,a3,11320 <_vfprintf_r+0xd38>
   110cc:	03068793          	addi	a5,a3,48
   110d0:	fef60fa3          	sb	a5,-1(a2)
   110d4:	ffe70713          	addi	a4,a4,-2
   110d8:	0c610613          	addi	a2,sp,198
   110dc:	24a76663          	bltu	a4,a0,11328 <_vfprintf_r+0xd40>
   110e0:	0c410793          	addi	a5,sp,196
   110e4:	40f607b3          	sub	a5,a2,a5
   110e8:	02f12e23          	sw	a5,60(sp)
   110ec:	01478b33          	add	s6,a5,s4
   110f0:	00100793          	li	a5,1
   110f4:	0147c663          	blt	a5,s4,11100 <_vfprintf_r+0xb18>
   110f8:	00147793          	andi	a5,s0,1
   110fc:	00078663          	beqz	a5,11108 <_vfprintf_r+0xb20>
   11100:	02012783          	lw	a5,32(sp)
   11104:	00fb0b33          	add	s6,s6,a5
   11108:	bff47413          	andi	s0,s0,-1025
   1110c:	10046793          	ori	a5,s0,256
   11110:	02f12623          	sw	a5,44(sp)
   11114:	00000c13          	li	s8,0
   11118:	00000b93          	li	s7,0
   1111c:	00000c93          	li	s9,0
   11120:	04412783          	lw	a5,68(sp)
   11124:	00078663          	beqz	a5,11130 <_vfprintf_r+0xb48>
   11128:	02d00713          	li	a4,45
   1112c:	0ae10ba3          	sb	a4,183(sp)
   11130:	02c12403          	lw	s0,44(sp)
   11134:	00000a93          	li	s5,0
   11138:	4900006f          	j	115c8 <_vfprintf_r+0xfe0>
   1113c:	00012623          	sw	zero,12(sp)
   11140:	13c10493          	addi	s1,sp,316
   11144:	ba5ff06f          	j	10ce8 <_vfprintf_r+0x700>
   11148:	00a12623          	sw	a0,12(sp)
   1114c:	b9dff06f          	j	10ce8 <_vfprintf_r+0x700>
   11150:	00012623          	sw	zero,12(sp)
   11154:	00600b13          	li	s6,6
   11158:	b91ff06f          	j	10ce8 <_vfprintf_r+0x700>
   1115c:	01612623          	sw	s6,12(sp)
   11160:	00100b13          	li	s6,1
   11164:	b85ff06f          	j	10ce8 <_vfprintf_r+0x700>
   11168:	00021c37          	lui	s8,0x21
   1116c:	a6cc0c13          	addi	s8,s8,-1428 # 20a6c <zeroes.4405+0x34>
   11170:	c9dff06f          	j	10e0c <_vfprintf_r+0x824>
   11174:	feb68fa3          	sb	a1,-1(a3)
   11178:	e99ff06f          	j	11010 <_vfprintf_r+0xa28>
   1117c:	00178793          	addi	a5,a5,1
   11180:	0ff7f793          	andi	a5,a5,255
   11184:	eadff06f          	j	11030 <_vfprintf_r+0xa48>
   11188:	001a0a13          	addi	s4,s4,1
   1118c:	feea0fa3          	sb	a4,-1(s4)
   11190:	414a87b3          	sub	a5,s5,s4
   11194:	fe07dae3          	bgez	a5,11188 <_vfprintf_r+0xba0>
   11198:	ea1ff06f          	j	11038 <_vfprintf_r+0xa50>
   1119c:	04812783          	lw	a5,72(sp)
   111a0:	000d8a13          	mv	s4,s11
   111a4:	03000713          	li	a4,48
   111a8:	00fd8ab3          	add	s5,s11,a5
   111ac:	fe5ff06f          	j	11190 <_vfprintf_r+0xba8>
   111b0:	04600793          	li	a5,70
   111b4:	00fb8e63          	beq	s7,a5,111d0 <_vfprintf_r+0xbe8>
   111b8:	04500793          	li	a5,69
   111bc:	001b0a93          	addi	s5,s6,1
   111c0:	00fb8463          	beq	s7,a5,111c8 <_vfprintf_r+0xbe0>
   111c4:	000b0a93          	mv	s5,s6
   111c8:	00200613          	li	a2,2
   111cc:	00c0006f          	j	111d8 <_vfprintf_r+0xbf0>
   111d0:	000b0a93          	mv	s5,s6
   111d4:	00300613          	li	a2,3
   111d8:	0c010793          	addi	a5,sp,192
   111dc:	0cc10813          	addi	a6,sp,204
   111e0:	0bc10713          	addi	a4,sp,188
   111e4:	000a8693          	mv	a3,s5
   111e8:	0a010593          	addi	a1,sp,160
   111ec:	00098513          	mv	a0,s3
   111f0:	05112823          	sw	a7,80(sp)
   111f4:	0bc12023          	sw	t3,160(sp)
   111f8:	05c12423          	sw	t3,72(sp)
   111fc:	0bb12223          	sw	s11,164(sp)
   11200:	0b912423          	sw	s9,168(sp)
   11204:	0b412623          	sw	s4,172(sp)
   11208:	0c9030ef          	jal	ra,14ad0 <_ldtoa_r>
   1120c:	04700793          	li	a5,71
   11210:	00050493          	mv	s1,a0
   11214:	04812e03          	lw	t3,72(sp)
   11218:	05012883          	lw	a7,80(sp)
   1121c:	00fb9663          	bne	s7,a5,11228 <_vfprintf_r+0xc40>
   11220:	00147793          	andi	a5,s0,1
   11224:	0a078863          	beqz	a5,112d4 <_vfprintf_r+0xcec>
   11228:	04600793          	li	a5,70
   1122c:	01548c33          	add	s8,s1,s5
   11230:	06fb9263          	bne	s7,a5,11294 <_vfprintf_r+0xcac>
   11234:	0004c703          	lbu	a4,0(s1)
   11238:	03000793          	li	a5,48
   1123c:	04f71863          	bne	a4,a5,1128c <_vfprintf_r+0xca4>
   11240:	09010593          	addi	a1,sp,144
   11244:	0a010513          	addi	a0,sp,160
   11248:	05112823          	sw	a7,80(sp)
   1124c:	0bc12023          	sw	t3,160(sp)
   11250:	05c12423          	sw	t3,72(sp)
   11254:	0bb12223          	sw	s11,164(sp)
   11258:	0b912423          	sw	s9,168(sp)
   1125c:	0b412623          	sw	s4,172(sp)
   11260:	08012823          	sw	zero,144(sp)
   11264:	08012a23          	sw	zero,148(sp)
   11268:	08012c23          	sw	zero,152(sp)
   1126c:	08012e23          	sw	zero,156(sp)
   11270:	4c80c0ef          	jal	ra,1d738 <__eqtf2>
   11274:	04812e03          	lw	t3,72(sp)
   11278:	05012883          	lw	a7,80(sp)
   1127c:	00050863          	beqz	a0,1128c <_vfprintf_r+0xca4>
   11280:	00100793          	li	a5,1
   11284:	41578ab3          	sub	s5,a5,s5
   11288:	0b512e23          	sw	s5,188(sp)
   1128c:	0bc12783          	lw	a5,188(sp)
   11290:	00fc0c33          	add	s8,s8,a5
   11294:	09010593          	addi	a1,sp,144
   11298:	0a010513          	addi	a0,sp,160
   1129c:	05112423          	sw	a7,72(sp)
   112a0:	0bc12023          	sw	t3,160(sp)
   112a4:	0bb12223          	sw	s11,164(sp)
   112a8:	0b912423          	sw	s9,168(sp)
   112ac:	0b412623          	sw	s4,172(sp)
   112b0:	08012823          	sw	zero,144(sp)
   112b4:	08012a23          	sw	zero,148(sp)
   112b8:	08012c23          	sw	zero,152(sp)
   112bc:	08012e23          	sw	zero,156(sp)
   112c0:	4780c0ef          	jal	ra,1d738 <__eqtf2>
   112c4:	04812883          	lw	a7,72(sp)
   112c8:	03000713          	li	a4,48
   112cc:	00051e63          	bnez	a0,112e8 <_vfprintf_r+0xd00>
   112d0:	0d812623          	sw	s8,204(sp)
   112d4:	0cc12a03          	lw	s4,204(sp)
   112d8:	d61ff06f          	j	11038 <_vfprintf_r+0xa50>
   112dc:	00178693          	addi	a3,a5,1
   112e0:	0cd12623          	sw	a3,204(sp)
   112e4:	00e78023          	sb	a4,0(a5)
   112e8:	0cc12783          	lw	a5,204(sp)
   112ec:	ff87e8e3          	bltu	a5,s8,112dc <_vfprintf_r+0xcf4>
   112f0:	fe5ff06f          	j	112d4 <_vfprintf_r+0xcec>
   112f4:	04600713          	li	a4,70
   112f8:	d6eb90e3          	bne	s7,a4,11058 <_vfprintf_r+0xa70>
   112fc:	07905263          	blez	s9,11360 <_vfprintf_r+0xd78>
   11300:	000b1663          	bnez	s6,1130c <_vfprintf_r+0xd24>
   11304:	00147713          	andi	a4,s0,1
   11308:	0c070263          	beqz	a4,113cc <_vfprintf_r+0xde4>
   1130c:	02012783          	lw	a5,32(sp)
   11310:	00fc8733          	add	a4,s9,a5
   11314:	00eb0b33          	add	s6,s6,a4
   11318:	06600d13          	li	s10,102
   1131c:	0940006f          	j	113b0 <_vfprintf_r+0xdc8>
   11320:	00060713          	mv	a4,a2
   11324:	d91ff06f          	j	110b4 <_vfprintf_r+0xacc>
   11328:	00170713          	addi	a4,a4,1
   1132c:	fff74783          	lbu	a5,-1(a4)
   11330:	00160613          	addi	a2,a2,1
   11334:	fef60fa3          	sb	a5,-1(a2)
   11338:	da5ff06f          	j	110dc <_vfprintf_r+0xaf4>
   1133c:	0c610713          	addi	a4,sp,198
   11340:	00059863          	bnez	a1,11350 <_vfprintf_r+0xd68>
   11344:	03000793          	li	a5,48
   11348:	0cf10323          	sb	a5,198(sp)
   1134c:	0c710713          	addi	a4,sp,199
   11350:	03068793          	addi	a5,a3,48
   11354:	00170613          	addi	a2,a4,1
   11358:	00f70023          	sb	a5,0(a4)
   1135c:	d85ff06f          	j	110e0 <_vfprintf_r+0xaf8>
   11360:	000b1663          	bnez	s6,1136c <_vfprintf_r+0xd84>
   11364:	00147713          	andi	a4,s0,1
   11368:	06070663          	beqz	a4,113d4 <_vfprintf_r+0xdec>
   1136c:	02012783          	lw	a5,32(sp)
   11370:	00178713          	addi	a4,a5,1
   11374:	fa1ff06f          	j	11314 <_vfprintf_r+0xd2c>
   11378:	034cc063          	blt	s9,s4,11398 <_vfprintf_r+0xdb0>
   1137c:	00147713          	andi	a4,s0,1
   11380:	000c8b13          	mv	s6,s9
   11384:	00070663          	beqz	a4,11390 <_vfprintf_r+0xda8>
   11388:	02012783          	lw	a5,32(sp)
   1138c:	00fc8b33          	add	s6,s9,a5
   11390:	06700d13          	li	s10,103
   11394:	01c0006f          	j	113b0 <_vfprintf_r+0xdc8>
   11398:	02012783          	lw	a5,32(sp)
   1139c:	06700d13          	li	s10,103
   113a0:	00fa0b33          	add	s6,s4,a5
   113a4:	01904663          	bgtz	s9,113b0 <_vfprintf_r+0xdc8>
   113a8:	419b0333          	sub	t1,s6,s9
   113ac:	00130b13          	addi	s6,t1,1 # 1 <_start-0x10073>
   113b0:	40047b93          	andi	s7,s0,1024
   113b4:	00000c13          	li	s8,0
   113b8:	d60b84e3          	beqz	s7,11120 <_vfprintf_r+0xb38>
   113bc:	00000b93          	li	s7,0
   113c0:	d79050e3          	blez	s9,11120 <_vfprintf_r+0xb38>
   113c4:	0ff00693          	li	a3,255
   113c8:	0380006f          	j	11400 <_vfprintf_r+0xe18>
   113cc:	000c8b13          	mv	s6,s9
   113d0:	f49ff06f          	j	11318 <_vfprintf_r+0xd30>
   113d4:	06600d13          	li	s10,102
   113d8:	00100b13          	li	s6,1
   113dc:	fd5ff06f          	j	113b0 <_vfprintf_r+0xdc8>
   113e0:	03975663          	ble	s9,a4,1140c <_vfprintf_r+0xe24>
   113e4:	01012783          	lw	a5,16(sp)
   113e8:	40ec8cb3          	sub	s9,s9,a4
   113ec:	0017c703          	lbu	a4,1(a5)
   113f0:	02070863          	beqz	a4,11420 <_vfprintf_r+0xe38>
   113f4:	00178793          	addi	a5,a5,1
   113f8:	001b8b93          	addi	s7,s7,1
   113fc:	00f12823          	sw	a5,16(sp)
   11400:	01012783          	lw	a5,16(sp)
   11404:	0007c703          	lbu	a4,0(a5)
   11408:	fcd71ce3          	bne	a4,a3,113e0 <_vfprintf_r+0xdf8>
   1140c:	03012783          	lw	a5,48(sp)
   11410:	018b8733          	add	a4,s7,s8
   11414:	02f70733          	mul	a4,a4,a5
   11418:	01670b33          	add	s6,a4,s6
   1141c:	d05ff06f          	j	11120 <_vfprintf_r+0xb38>
   11420:	001c0c13          	addi	s8,s8,1
   11424:	fddff06f          	j	11400 <_vfprintf_r+0xe18>
   11428:	004a8713          	addi	a4,s5,4
   1142c:	00e12c23          	sw	a4,24(sp)
   11430:	02047713          	andi	a4,s0,32
   11434:	000aa783          	lw	a5,0(s5)
   11438:	02070063          	beqz	a4,11458 <_vfprintf_r+0xe70>
   1143c:	02412703          	lw	a4,36(sp)
   11440:	00e7a023          	sw	a4,0(a5)
   11444:	41f75713          	srai	a4,a4,0x1f
   11448:	00e7a223          	sw	a4,4(a5)
   1144c:	01812a83          	lw	s5,24(sp)
   11450:	01c12483          	lw	s1,28(sp)
   11454:	b28ff06f          	j	1077c <_vfprintf_r+0x194>
   11458:	01047713          	andi	a4,s0,16
   1145c:	00070863          	beqz	a4,1146c <_vfprintf_r+0xe84>
   11460:	02412703          	lw	a4,36(sp)
   11464:	00e7a023          	sw	a4,0(a5)
   11468:	fe5ff06f          	j	1144c <_vfprintf_r+0xe64>
   1146c:	04047713          	andi	a4,s0,64
   11470:	00070863          	beqz	a4,11480 <_vfprintf_r+0xe98>
   11474:	02415703          	lhu	a4,36(sp)
   11478:	00e79023          	sh	a4,0(a5)
   1147c:	fd1ff06f          	j	1144c <_vfprintf_r+0xe64>
   11480:	20047413          	andi	s0,s0,512
   11484:	fc040ee3          	beqz	s0,11460 <_vfprintf_r+0xe78>
   11488:	02414703          	lbu	a4,36(sp)
   1148c:	00e78023          	sb	a4,0(a5)
   11490:	fbdff06f          	j	1144c <_vfprintf_r+0xe64>
   11494:	01046413          	ori	s0,s0,16
   11498:	02047793          	andi	a5,s0,32
   1149c:	04078863          	beqz	a5,114ec <_vfprintf_r+0xf04>
   114a0:	007a8a93          	addi	s5,s5,7
   114a4:	ff8afa93          	andi	s5,s5,-8
   114a8:	000aac83          	lw	s9,0(s5)
   114ac:	004aac03          	lw	s8,4(s5)
   114b0:	008a8793          	addi	a5,s5,8
   114b4:	00f12c23          	sw	a5,24(sp)
   114b8:	bff47413          	andi	s0,s0,-1025
   114bc:	00000793          	li	a5,0
   114c0:	0a010ba3          	sb	zero,183(sp)
   114c4:	fff00713          	li	a4,-1
   114c8:	42eb0863          	beq	s6,a4,118f8 <_vfprintf_r+0x1310>
   114cc:	00040713          	mv	a4,s0
   114d0:	018ce6b3          	or	a3,s9,s8
   114d4:	f7f47413          	andi	s0,s0,-129
   114d8:	42069063          	bnez	a3,118f8 <_vfprintf_r+0x1310>
   114dc:	580b0e63          	beqz	s6,11a78 <_vfprintf_r+0x1490>
   114e0:	00100713          	li	a4,1
   114e4:	40e79e63          	bne	a5,a4,11900 <_vfprintf_r+0x1318>
   114e8:	dd4ff06f          	j	10abc <_vfprintf_r+0x4d4>
   114ec:	004a8793          	addi	a5,s5,4
   114f0:	00f12c23          	sw	a5,24(sp)
   114f4:	01047793          	andi	a5,s0,16
   114f8:	00078663          	beqz	a5,11504 <_vfprintf_r+0xf1c>
   114fc:	000aac83          	lw	s9,0(s5)
   11500:	0100006f          	j	11510 <_vfprintf_r+0xf28>
   11504:	04047793          	andi	a5,s0,64
   11508:	00078863          	beqz	a5,11518 <_vfprintf_r+0xf30>
   1150c:	000adc83          	lhu	s9,0(s5)
   11510:	00000c13          	li	s8,0
   11514:	fa5ff06f          	j	114b8 <_vfprintf_r+0xed0>
   11518:	20047793          	andi	a5,s0,512
   1151c:	fe0780e3          	beqz	a5,114fc <_vfprintf_r+0xf14>
   11520:	000acc83          	lbu	s9,0(s5)
   11524:	fedff06f          	j	11510 <_vfprintf_r+0xf28>
   11528:	004a8793          	addi	a5,s5,4
   1152c:	00f12c23          	sw	a5,24(sp)
   11530:	ffff87b7          	lui	a5,0xffff8
   11534:	8307c793          	xori	a5,a5,-2000
   11538:	0af11c23          	sh	a5,184(sp)
   1153c:	000217b7          	lui	a5,0x21
   11540:	a5878793          	addi	a5,a5,-1448 # 20a58 <zeroes.4405+0x20>
   11544:	04f12023          	sw	a5,64(sp)
   11548:	000aac83          	lw	s9,0(s5)
   1154c:	00000c13          	li	s8,0
   11550:	00246413          	ori	s0,s0,2
   11554:	00200793          	li	a5,2
   11558:	07800d13          	li	s10,120
   1155c:	f65ff06f          	j	114c0 <_vfprintf_r+0xed8>
   11560:	004a8793          	addi	a5,s5,4
   11564:	00f12c23          	sw	a5,24(sp)
   11568:	0a010ba3          	sb	zero,183(sp)
   1156c:	fff00793          	li	a5,-1
   11570:	03112623          	sw	a7,44(sp)
   11574:	000aa483          	lw	s1,0(s5)
   11578:	02fb0663          	beq	s6,a5,115a4 <_vfprintf_r+0xfbc>
   1157c:	000b0613          	mv	a2,s6
   11580:	00000593          	li	a1,0
   11584:	00048513          	mv	a0,s1
   11588:	345040ef          	jal	ra,160cc <memchr>
   1158c:	00a12623          	sw	a0,12(sp)
   11590:	02c12883          	lw	a7,44(sp)
   11594:	e2050c63          	beqz	a0,10bcc <_vfprintf_r+0x5e4>
   11598:	40950b33          	sub	s6,a0,s1
   1159c:	00012623          	sw	zero,12(sp)
   115a0:	e2cff06f          	j	10bcc <_vfprintf_r+0x5e4>
   115a4:	00048513          	mv	a0,s1
   115a8:	824ff0ef          	jal	ra,105cc <strlen>
   115ac:	02c12883          	lw	a7,44(sp)
   115b0:	00050b13          	mv	s6,a0
   115b4:	00012623          	sw	zero,12(sp)
   115b8:	00000a93          	li	s5,0
   115bc:	00000c13          	li	s8,0
   115c0:	00000b93          	li	s7,0
   115c4:	00000c93          	li	s9,0
   115c8:	03512623          	sw	s5,44(sp)
   115cc:	016ad463          	ble	s6,s5,115d4 <_vfprintf_r+0xfec>
   115d0:	03612623          	sw	s6,44(sp)
   115d4:	0b714703          	lbu	a4,183(sp)
   115d8:	00070863          	beqz	a4,115e8 <_vfprintf_r+0x1000>
   115dc:	02c12783          	lw	a5,44(sp)
   115e0:	00178793          	addi	a5,a5,1
   115e4:	02f12623          	sw	a5,44(sp)
   115e8:	00247d93          	andi	s11,s0,2
   115ec:	000d8863          	beqz	s11,115fc <_vfprintf_r+0x1014>
   115f0:	02c12783          	lw	a5,44(sp)
   115f4:	00278793          	addi	a5,a5,2
   115f8:	02f12623          	sw	a5,44(sp)
   115fc:	08447793          	andi	a5,s0,132
   11600:	04f12223          	sw	a5,68(sp)
   11604:	06079863          	bnez	a5,11674 <_vfprintf_r+0x108c>
   11608:	02812783          	lw	a5,40(sp)
   1160c:	02c12703          	lw	a4,44(sp)
   11610:	40e78733          	sub	a4,a5,a4
   11614:	06e05063          	blez	a4,11674 <_vfprintf_r+0x108c>
   11618:	00021e37          	lui	t3,0x21
   1161c:	01000e93          	li	t4,16
   11620:	a28e0e13          	addi	t3,t3,-1496 # 20a28 <blanks.4404>
   11624:	00700f13          	li	t5,7
   11628:	0d812683          	lw	a3,216(sp)
   1162c:	01c8a023          	sw	t3,0(a7)
   11630:	0dc12603          	lw	a2,220(sp)
   11634:	00168693          	addi	a3,a3,1
   11638:	00888593          	addi	a1,a7,8
   1163c:	46eec663          	blt	t4,a4,11aa8 <_vfprintf_r+0x14c0>
   11640:	00e8a223          	sw	a4,4(a7)
   11644:	00c70733          	add	a4,a4,a2
   11648:	0ce12e23          	sw	a4,220(sp)
   1164c:	0cd12c23          	sw	a3,216(sp)
   11650:	00700713          	li	a4,7
   11654:	00058893          	mv	a7,a1
   11658:	00d75e63          	ble	a3,a4,11674 <_vfprintf_r+0x108c>
   1165c:	0d410613          	addi	a2,sp,212
   11660:	00090593          	mv	a1,s2
   11664:	00098513          	mv	a0,s3
   11668:	3d8080ef          	jal	ra,19a40 <__sprint_r>
   1166c:	680518e3          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   11670:	0fc10893          	addi	a7,sp,252
   11674:	0b714703          	lbu	a4,183(sp)
   11678:	04070863          	beqz	a4,116c8 <_vfprintf_r+0x10e0>
   1167c:	0b710713          	addi	a4,sp,183
   11680:	00e8a023          	sw	a4,0(a7)
   11684:	00100713          	li	a4,1
   11688:	00e8a223          	sw	a4,4(a7)
   1168c:	0dc12703          	lw	a4,220(sp)
   11690:	00700693          	li	a3,7
   11694:	00888893          	addi	a7,a7,8
   11698:	00170713          	addi	a4,a4,1
   1169c:	0ce12e23          	sw	a4,220(sp)
   116a0:	0d812703          	lw	a4,216(sp)
   116a4:	00170713          	addi	a4,a4,1
   116a8:	0ce12c23          	sw	a4,216(sp)
   116ac:	00e6de63          	ble	a4,a3,116c8 <_vfprintf_r+0x10e0>
   116b0:	0d410613          	addi	a2,sp,212
   116b4:	00090593          	mv	a1,s2
   116b8:	00098513          	mv	a0,s3
   116bc:	384080ef          	jal	ra,19a40 <__sprint_r>
   116c0:	62051ee3          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   116c4:	0fc10893          	addi	a7,sp,252
   116c8:	040d8863          	beqz	s11,11718 <_vfprintf_r+0x1130>
   116cc:	0b810713          	addi	a4,sp,184
   116d0:	00e8a023          	sw	a4,0(a7)
   116d4:	00200713          	li	a4,2
   116d8:	00e8a223          	sw	a4,4(a7)
   116dc:	0dc12703          	lw	a4,220(sp)
   116e0:	00700693          	li	a3,7
   116e4:	00888893          	addi	a7,a7,8
   116e8:	00270713          	addi	a4,a4,2
   116ec:	0ce12e23          	sw	a4,220(sp)
   116f0:	0d812703          	lw	a4,216(sp)
   116f4:	00170713          	addi	a4,a4,1
   116f8:	0ce12c23          	sw	a4,216(sp)
   116fc:	00e6de63          	ble	a4,a3,11718 <_vfprintf_r+0x1130>
   11700:	0d410613          	addi	a2,sp,212
   11704:	00090593          	mv	a1,s2
   11708:	00098513          	mv	a0,s3
   1170c:	334080ef          	jal	ra,19a40 <__sprint_r>
   11710:	5e0516e3          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   11714:	0fc10893          	addi	a7,sp,252
   11718:	04412783          	lw	a5,68(sp)
   1171c:	08000713          	li	a4,128
   11720:	06e79663          	bne	a5,a4,1178c <_vfprintf_r+0x11a4>
   11724:	02812783          	lw	a5,40(sp)
   11728:	02c12703          	lw	a4,44(sp)
   1172c:	40e78db3          	sub	s11,a5,a4
   11730:	05b05e63          	blez	s11,1178c <_vfprintf_r+0x11a4>
   11734:	01000793          	li	a5,16
   11738:	00700e13          	li	t3,7
   1173c:	0d812703          	lw	a4,216(sp)
   11740:	0dc12683          	lw	a3,220(sp)
   11744:	00888613          	addi	a2,a7,8
   11748:	00170713          	addi	a4,a4,1
   1174c:	3bb7ca63          	blt	a5,s11,11b00 <_vfprintf_r+0x1518>
   11750:	01412783          	lw	a5,20(sp)
   11754:	01b8a223          	sw	s11,4(a7)
   11758:	00dd8db3          	add	s11,s11,a3
   1175c:	00f8a023          	sw	a5,0(a7)
   11760:	0db12e23          	sw	s11,220(sp)
   11764:	0ce12c23          	sw	a4,216(sp)
   11768:	00700693          	li	a3,7
   1176c:	00060893          	mv	a7,a2
   11770:	00e6de63          	ble	a4,a3,1178c <_vfprintf_r+0x11a4>
   11774:	0d410613          	addi	a2,sp,212
   11778:	00090593          	mv	a1,s2
   1177c:	00098513          	mv	a0,s3
   11780:	2c0080ef          	jal	ra,19a40 <__sprint_r>
   11784:	56051ce3          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   11788:	0fc10893          	addi	a7,sp,252
   1178c:	416a8ab3          	sub	s5,s5,s6
   11790:	05505e63          	blez	s5,117ec <_vfprintf_r+0x1204>
   11794:	01000d93          	li	s11,16
   11798:	00700813          	li	a6,7
   1179c:	01412783          	lw	a5,20(sp)
   117a0:	0d812703          	lw	a4,216(sp)
   117a4:	0dc12683          	lw	a3,220(sp)
   117a8:	00f8a023          	sw	a5,0(a7)
   117ac:	00170713          	addi	a4,a4,1
   117b0:	00888613          	addi	a2,a7,8
   117b4:	395dce63          	blt	s11,s5,11b50 <_vfprintf_r+0x1568>
   117b8:	0158a223          	sw	s5,4(a7)
   117bc:	00da8ab3          	add	s5,s5,a3
   117c0:	0d512e23          	sw	s5,220(sp)
   117c4:	0ce12c23          	sw	a4,216(sp)
   117c8:	00700693          	li	a3,7
   117cc:	00060893          	mv	a7,a2
   117d0:	00e6de63          	ble	a4,a3,117ec <_vfprintf_r+0x1204>
   117d4:	0d410613          	addi	a2,sp,212
   117d8:	00090593          	mv	a1,s2
   117dc:	00098513          	mv	a0,s3
   117e0:	260080ef          	jal	ra,19a40 <__sprint_r>
   117e4:	50051ce3          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   117e8:	0fc10893          	addi	a7,sp,252
   117ec:	10047713          	andi	a4,s0,256
   117f0:	0dc12d83          	lw	s11,220(sp)
   117f4:	38071e63          	bnez	a4,11b90 <_vfprintf_r+0x15a8>
   117f8:	01bb0333          	add	t1,s6,s11
   117fc:	0098a023          	sw	s1,0(a7)
   11800:	0168a223          	sw	s6,4(a7)
   11804:	0c612e23          	sw	t1,220(sp)
   11808:	0d812783          	lw	a5,216(sp)
   1180c:	00700713          	li	a4,7
   11810:	00888893          	addi	a7,a7,8
   11814:	00178793          	addi	a5,a5,1
   11818:	0cf12c23          	sw	a5,216(sp)
   1181c:	4af75c63          	ble	a5,a4,11cd4 <_vfprintf_r+0x16ec>
   11820:	0d410613          	addi	a2,sp,212
   11824:	00090593          	mv	a1,s2
   11828:	00098513          	mv	a0,s3
   1182c:	214080ef          	jal	ra,19a40 <__sprint_r>
   11830:	4c0516e3          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   11834:	0fc10893          	addi	a7,sp,252
   11838:	49c0006f          	j	11cd4 <_vfprintf_r+0x16ec>
   1183c:	01046413          	ori	s0,s0,16
   11840:	02047793          	andi	a5,s0,32
   11844:	02078263          	beqz	a5,11868 <_vfprintf_r+0x1280>
   11848:	007a8a93          	addi	s5,s5,7
   1184c:	ff8afa93          	andi	s5,s5,-8
   11850:	000aac83          	lw	s9,0(s5)
   11854:	004aac03          	lw	s8,4(s5)
   11858:	008a8793          	addi	a5,s5,8
   1185c:	00f12c23          	sw	a5,24(sp)
   11860:	00100793          	li	a5,1
   11864:	c5dff06f          	j	114c0 <_vfprintf_r+0xed8>
   11868:	004a8793          	addi	a5,s5,4
   1186c:	00f12c23          	sw	a5,24(sp)
   11870:	01047793          	andi	a5,s0,16
   11874:	00078663          	beqz	a5,11880 <_vfprintf_r+0x1298>
   11878:	000aac83          	lw	s9,0(s5)
   1187c:	0100006f          	j	1188c <_vfprintf_r+0x12a4>
   11880:	04047793          	andi	a5,s0,64
   11884:	00078863          	beqz	a5,11894 <_vfprintf_r+0x12ac>
   11888:	000adc83          	lhu	s9,0(s5)
   1188c:	00000c13          	li	s8,0
   11890:	fd1ff06f          	j	11860 <_vfprintf_r+0x1278>
   11894:	20047793          	andi	a5,s0,512
   11898:	fe0780e3          	beqz	a5,11878 <_vfprintf_r+0x1290>
   1189c:	000acc83          	lbu	s9,0(s5)
   118a0:	fedff06f          	j	1188c <_vfprintf_r+0x12a4>
   118a4:	000217b7          	lui	a5,0x21
   118a8:	a5878793          	addi	a5,a5,-1448 # 20a58 <zeroes.4405+0x20>
   118ac:	fb1fe06f          	j	1085c <_vfprintf_r+0x274>
   118b0:	004a8793          	addi	a5,s5,4
   118b4:	00f12c23          	sw	a5,24(sp)
   118b8:	01047793          	andi	a5,s0,16
   118bc:	00078663          	beqz	a5,118c8 <_vfprintf_r+0x12e0>
   118c0:	000aac83          	lw	s9,0(s5)
   118c4:	0100006f          	j	118d4 <_vfprintf_r+0x12ec>
   118c8:	04047793          	andi	a5,s0,64
   118cc:	00078863          	beqz	a5,118dc <_vfprintf_r+0x12f4>
   118d0:	000adc83          	lhu	s9,0(s5)
   118d4:	00000c13          	li	s8,0
   118d8:	fadfe06f          	j	10884 <_vfprintf_r+0x29c>
   118dc:	20047793          	andi	a5,s0,512
   118e0:	fe0780e3          	beqz	a5,118c0 <_vfprintf_r+0x12d8>
   118e4:	000acc83          	lbu	s9,0(s5)
   118e8:	fedff06f          	j	118d4 <_vfprintf_r+0x12ec>
   118ec:	00040713          	mv	a4,s0
   118f0:	00100793          	li	a5,1
   118f4:	bddff06f          	j	114d0 <_vfprintf_r+0xee8>
   118f8:	00100713          	li	a4,1
   118fc:	9ae78a63          	beq	a5,a4,10ab0 <_vfprintf_r+0x4c8>
   11900:	00200713          	li	a4,2
   11904:	12e78e63          	beq	a5,a4,11a40 <_vfprintf_r+0x1458>
   11908:	1a010793          	addi	a5,sp,416
   1190c:	01dc1693          	slli	a3,s8,0x1d
   11910:	007cf713          	andi	a4,s9,7
   11914:	003cdc93          	srli	s9,s9,0x3
   11918:	03070713          	addi	a4,a4,48
   1191c:	0196ecb3          	or	s9,a3,s9
   11920:	003c5c13          	srli	s8,s8,0x3
   11924:	fee78fa3          	sb	a4,-1(a5)
   11928:	018ce6b3          	or	a3,s9,s8
   1192c:	fff78493          	addi	s1,a5,-1
   11930:	02069e63          	bnez	a3,1196c <_vfprintf_r+0x1384>
   11934:	00147693          	andi	a3,s0,1
   11938:	00068a63          	beqz	a3,1194c <_vfprintf_r+0x1364>
   1193c:	03000693          	li	a3,48
   11940:	00d70663          	beq	a4,a3,1194c <_vfprintf_r+0x1364>
   11944:	fed48fa3          	sb	a3,-1(s1)
   11948:	ffe78493          	addi	s1,a5,-2
   1194c:	1a010793          	addi	a5,sp,416
   11950:	000b0a93          	mv	s5,s6
   11954:	00012623          	sw	zero,12(sp)
   11958:	40978b33          	sub	s6,a5,s1
   1195c:	00000c13          	li	s8,0
   11960:	00000b93          	li	s7,0
   11964:	00000c93          	li	s9,0
   11968:	c61ff06f          	j	115c8 <_vfprintf_r+0xfe0>
   1196c:	00048793          	mv	a5,s1
   11970:	f9dff06f          	j	1190c <_vfprintf_r+0x1324>
   11974:	00000a13          	li	s4,0
   11978:	1a010d93          	addi	s11,sp,416
   1197c:	40047a93          	andi	s5,s0,1024
   11980:	00900b93          	li	s7,9
   11984:	00a00613          	li	a2,10
   11988:	00000693          	li	a3,0
   1198c:	000c8513          	mv	a0,s9
   11990:	000c0593          	mv	a1,s8
   11994:	01112623          	sw	a7,12(sp)
   11998:	4dd0a0ef          	jal	ra,1c674 <__umoddi3>
   1199c:	03050513          	addi	a0,a0,48
   119a0:	fead8fa3          	sb	a0,-1(s11)
   119a4:	fffd8493          	addi	s1,s11,-1
   119a8:	001a0a13          	addi	s4,s4,1
   119ac:	00c12883          	lw	a7,12(sp)
   119b0:	040a8e63          	beqz	s5,11a0c <_vfprintf_r+0x1424>
   119b4:	01012783          	lw	a5,16(sp)
   119b8:	0007c783          	lbu	a5,0(a5)
   119bc:	04fa1863          	bne	s4,a5,11a0c <_vfprintf_r+0x1424>
   119c0:	0ff00793          	li	a5,255
   119c4:	04fa0463          	beq	s4,a5,11a0c <_vfprintf_r+0x1424>
   119c8:	000c1463          	bnez	s8,119d0 <_vfprintf_r+0x13e8>
   119cc:	059bf063          	bleu	s9,s7,11a0c <_vfprintf_r+0x1424>
   119d0:	03012783          	lw	a5,48(sp)
   119d4:	03812583          	lw	a1,56(sp)
   119d8:	01112623          	sw	a7,12(sp)
   119dc:	40f484b3          	sub	s1,s1,a5
   119e0:	00078613          	mv	a2,a5
   119e4:	00048513          	mv	a0,s1
   119e8:	0d4060ef          	jal	ra,17abc <strncpy>
   119ec:	01012783          	lw	a5,16(sp)
   119f0:	00000a13          	li	s4,0
   119f4:	00c12883          	lw	a7,12(sp)
   119f8:	0017c783          	lbu	a5,1(a5)
   119fc:	00078863          	beqz	a5,11a0c <_vfprintf_r+0x1424>
   11a00:	01012783          	lw	a5,16(sp)
   11a04:	00178793          	addi	a5,a5,1
   11a08:	00f12823          	sw	a5,16(sp)
   11a0c:	000c8513          	mv	a0,s9
   11a10:	000c0593          	mv	a1,s8
   11a14:	00a00613          	li	a2,10
   11a18:	00000693          	li	a3,0
   11a1c:	01112623          	sw	a7,12(sp)
   11a20:	0210a0ef          	jal	ra,1c240 <__udivdi3>
   11a24:	00058c13          	mv	s8,a1
   11a28:	00a5e5b3          	or	a1,a1,a0
   11a2c:	00050c93          	mv	s9,a0
   11a30:	00c12883          	lw	a7,12(sp)
   11a34:	f0058ce3          	beqz	a1,1194c <_vfprintf_r+0x1364>
   11a38:	00048d93          	mv	s11,s1
   11a3c:	f49ff06f          	j	11984 <_vfprintf_r+0x139c>
   11a40:	1a010493          	addi	s1,sp,416
   11a44:	04012703          	lw	a4,64(sp)
   11a48:	00fcf793          	andi	a5,s9,15
   11a4c:	fff48493          	addi	s1,s1,-1
   11a50:	00f707b3          	add	a5,a4,a5
   11a54:	0007c783          	lbu	a5,0(a5)
   11a58:	004cdc93          	srli	s9,s9,0x4
   11a5c:	00f48023          	sb	a5,0(s1)
   11a60:	01cc1793          	slli	a5,s8,0x1c
   11a64:	0197ecb3          	or	s9,a5,s9
   11a68:	004c5c13          	srli	s8,s8,0x4
   11a6c:	018ce7b3          	or	a5,s9,s8
   11a70:	fc079ae3          	bnez	a5,11a44 <_vfprintf_r+0x145c>
   11a74:	ed9ff06f          	j	1194c <_vfprintf_r+0x1364>
   11a78:	1a010493          	addi	s1,sp,416
   11a7c:	ec0798e3          	bnez	a5,1194c <_vfprintf_r+0x1364>
   11a80:	00177713          	andi	a4,a4,1
   11a84:	ec0704e3          	beqz	a4,1194c <_vfprintf_r+0x1364>
   11a88:	03000793          	li	a5,48
   11a8c:	18f10fa3          	sb	a5,415(sp)
   11a90:	834ff06f          	j	10ac4 <_vfprintf_r+0x4dc>
   11a94:	2c0d06e3          	beqz	s10,12560 <_vfprintf_r+0x1f78>
   11a98:	13a10e23          	sb	s10,316(sp)
   11a9c:	0a010ba3          	sb	zero,183(sp)
   11aa0:	01512c23          	sw	s5,24(sp)
   11aa4:	fa5fe06f          	j	10a48 <_vfprintf_r+0x460>
   11aa8:	01060613          	addi	a2,a2,16
   11aac:	01d8a223          	sw	t4,4(a7)
   11ab0:	0cc12e23          	sw	a2,220(sp)
   11ab4:	0cd12c23          	sw	a3,216(sp)
   11ab8:	02df5e63          	ble	a3,t5,11af4 <_vfprintf_r+0x150c>
   11abc:	0d410613          	addi	a2,sp,212
   11ac0:	00090593          	mv	a1,s2
   11ac4:	00098513          	mv	a0,s3
   11ac8:	05e12c23          	sw	t5,88(sp)
   11acc:	05c12a23          	sw	t3,84(sp)
   11ad0:	05d12823          	sw	t4,80(sp)
   11ad4:	04e12423          	sw	a4,72(sp)
   11ad8:	769070ef          	jal	ra,19a40 <__sprint_r>
   11adc:	220510e3          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   11ae0:	05812f03          	lw	t5,88(sp)
   11ae4:	05412e03          	lw	t3,84(sp)
   11ae8:	05012e83          	lw	t4,80(sp)
   11aec:	04812703          	lw	a4,72(sp)
   11af0:	0fc10593          	addi	a1,sp,252
   11af4:	ff070713          	addi	a4,a4,-16
   11af8:	00058893          	mv	a7,a1
   11afc:	b2dff06f          	j	11628 <_vfprintf_r+0x1040>
   11b00:	01412583          	lw	a1,20(sp)
   11b04:	01068693          	addi	a3,a3,16
   11b08:	00f8a223          	sw	a5,4(a7)
   11b0c:	00b8a023          	sw	a1,0(a7)
   11b10:	0cd12e23          	sw	a3,220(sp)
   11b14:	0ce12c23          	sw	a4,216(sp)
   11b18:	02ee5663          	ble	a4,t3,11b44 <_vfprintf_r+0x155c>
   11b1c:	0d410613          	addi	a2,sp,212
   11b20:	00090593          	mv	a1,s2
   11b24:	00098513          	mv	a0,s3
   11b28:	05c12423          	sw	t3,72(sp)
   11b2c:	04f12223          	sw	a5,68(sp)
   11b30:	711070ef          	jal	ra,19a40 <__sprint_r>
   11b34:	1c0514e3          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   11b38:	04812e03          	lw	t3,72(sp)
   11b3c:	04412783          	lw	a5,68(sp)
   11b40:	0fc10613          	addi	a2,sp,252
   11b44:	ff0d8d93          	addi	s11,s11,-16
   11b48:	00060893          	mv	a7,a2
   11b4c:	bf1ff06f          	j	1173c <_vfprintf_r+0x1154>
   11b50:	01068693          	addi	a3,a3,16
   11b54:	01b8a223          	sw	s11,4(a7)
   11b58:	0cd12e23          	sw	a3,220(sp)
   11b5c:	0ce12c23          	sw	a4,216(sp)
   11b60:	02e85263          	ble	a4,a6,11b84 <_vfprintf_r+0x159c>
   11b64:	0d410613          	addi	a2,sp,212
   11b68:	00090593          	mv	a1,s2
   11b6c:	00098513          	mv	a0,s3
   11b70:	05012223          	sw	a6,68(sp)
   11b74:	6cd070ef          	jal	ra,19a40 <__sprint_r>
   11b78:	180512e3          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   11b7c:	04412803          	lw	a6,68(sp)
   11b80:	0fc10613          	addi	a2,sp,252
   11b84:	ff0a8a93          	addi	s5,s5,-16
   11b88:	00060893          	mv	a7,a2
   11b8c:	c11ff06f          	j	1179c <_vfprintf_r+0x11b4>
   11b90:	06500713          	li	a4,101
   11b94:	71a75263          	ble	s10,a4,12298 <_vfprintf_r+0x1cb0>
   11b98:	0e012703          	lw	a4,224(sp)
   11b9c:	09010593          	addi	a1,sp,144
   11ba0:	0a010513          	addi	a0,sp,160
   11ba4:	0ae12023          	sw	a4,160(sp)
   11ba8:	0e412703          	lw	a4,228(sp)
   11bac:	05112223          	sw	a7,68(sp)
   11bb0:	08012823          	sw	zero,144(sp)
   11bb4:	0ae12223          	sw	a4,164(sp)
   11bb8:	0e812703          	lw	a4,232(sp)
   11bbc:	08012a23          	sw	zero,148(sp)
   11bc0:	08012c23          	sw	zero,152(sp)
   11bc4:	0ae12423          	sw	a4,168(sp)
   11bc8:	0ec12703          	lw	a4,236(sp)
   11bcc:	08012e23          	sw	zero,156(sp)
   11bd0:	0ae12623          	sw	a4,172(sp)
   11bd4:	3650b0ef          	jal	ra,1d738 <__eqtf2>
   11bd8:	04412883          	lw	a7,68(sp)
   11bdc:	18051263          	bnez	a0,11d60 <_vfprintf_r+0x1778>
   11be0:	000217b7          	lui	a5,0x21
   11be4:	a8078793          	addi	a5,a5,-1408 # 20a80 <zeroes.4405+0x48>
   11be8:	00f8a023          	sw	a5,0(a7)
   11bec:	00100793          	li	a5,1
   11bf0:	00f8a223          	sw	a5,4(a7)
   11bf4:	0d812783          	lw	a5,216(sp)
   11bf8:	001d8d93          	addi	s11,s11,1
   11bfc:	0db12e23          	sw	s11,220(sp)
   11c00:	00178793          	addi	a5,a5,1
   11c04:	0cf12c23          	sw	a5,216(sp)
   11c08:	00700713          	li	a4,7
   11c0c:	00888893          	addi	a7,a7,8
   11c10:	00f75e63          	ble	a5,a4,11c2c <_vfprintf_r+0x1644>
   11c14:	0d410613          	addi	a2,sp,212
   11c18:	00090593          	mv	a1,s2
   11c1c:	00098513          	mv	a0,s3
   11c20:	621070ef          	jal	ra,19a40 <__sprint_r>
   11c24:	0c051ce3          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   11c28:	0fc10893          	addi	a7,sp,252
   11c2c:	0bc12783          	lw	a5,188(sp)
   11c30:	0147c663          	blt	a5,s4,11c3c <_vfprintf_r+0x1654>
   11c34:	00147793          	andi	a5,s0,1
   11c38:	08078e63          	beqz	a5,11cd4 <_vfprintf_r+0x16ec>
   11c3c:	03412783          	lw	a5,52(sp)
   11c40:	02012703          	lw	a4,32(sp)
   11c44:	00888893          	addi	a7,a7,8
   11c48:	fef8ac23          	sw	a5,-8(a7)
   11c4c:	02012783          	lw	a5,32(sp)
   11c50:	fef8ae23          	sw	a5,-4(a7)
   11c54:	0dc12783          	lw	a5,220(sp)
   11c58:	00e787b3          	add	a5,a5,a4
   11c5c:	0cf12e23          	sw	a5,220(sp)
   11c60:	0d812783          	lw	a5,216(sp)
   11c64:	00700713          	li	a4,7
   11c68:	00178793          	addi	a5,a5,1
   11c6c:	0cf12c23          	sw	a5,216(sp)
   11c70:	00f75e63          	ble	a5,a4,11c8c <_vfprintf_r+0x16a4>
   11c74:	0d410613          	addi	a2,sp,212
   11c78:	00090593          	mv	a1,s2
   11c7c:	00098513          	mv	a0,s3
   11c80:	5c1070ef          	jal	ra,19a40 <__sprint_r>
   11c84:	06051ce3          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   11c88:	0fc10893          	addi	a7,sp,252
   11c8c:	fffa0493          	addi	s1,s4,-1
   11c90:	04905263          	blez	s1,11cd4 <_vfprintf_r+0x16ec>
   11c94:	01000a93          	li	s5,16
   11c98:	00700b93          	li	s7,7
   11c9c:	01412603          	lw	a2,20(sp)
   11ca0:	0d812783          	lw	a5,216(sp)
   11ca4:	0dc12703          	lw	a4,220(sp)
   11ca8:	00c8a023          	sw	a2,0(a7)
   11cac:	00178793          	addi	a5,a5,1
   11cb0:	00888693          	addi	a3,a7,8
   11cb4:	069aca63          	blt	s5,s1,11d28 <_vfprintf_r+0x1740>
   11cb8:	0098a223          	sw	s1,4(a7)
   11cbc:	00e484b3          	add	s1,s1,a4
   11cc0:	0c912e23          	sw	s1,220(sp)
   11cc4:	0cf12c23          	sw	a5,216(sp)
   11cc8:	00700713          	li	a4,7
   11ccc:	00068893          	mv	a7,a3
   11cd0:	b4f748e3          	blt	a4,a5,11820 <_vfprintf_r+0x1238>
   11cd4:	00447413          	andi	s0,s0,4
   11cd8:	7c041263          	bnez	s0,1249c <_vfprintf_r+0x1eb4>
   11cdc:	02812d03          	lw	s10,40(sp)
   11ce0:	02c12783          	lw	a5,44(sp)
   11ce4:	00fd5463          	ble	a5,s10,11cec <_vfprintf_r+0x1704>
   11ce8:	00078d13          	mv	s10,a5
   11cec:	02412783          	lw	a5,36(sp)
   11cf0:	01a787b3          	add	a5,a5,s10
   11cf4:	02f12223          	sw	a5,36(sp)
   11cf8:	0dc12783          	lw	a5,220(sp)
   11cfc:	00078c63          	beqz	a5,11d14 <_vfprintf_r+0x172c>
   11d00:	0d410613          	addi	a2,sp,212
   11d04:	00090593          	mv	a1,s2
   11d08:	00098513          	mv	a0,s3
   11d0c:	535070ef          	jal	ra,19a40 <__sprint_r>
   11d10:	7e051663          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   11d14:	00c12783          	lw	a5,12(sp)
   11d18:	0c012c23          	sw	zero,216(sp)
   11d1c:	02079ae3          	bnez	a5,12550 <_vfprintf_r+0x1f68>
   11d20:	0fc10893          	addi	a7,sp,252
   11d24:	f28ff06f          	j	1144c <_vfprintf_r+0xe64>
   11d28:	01070713          	addi	a4,a4,16
   11d2c:	0158a223          	sw	s5,4(a7)
   11d30:	0ce12e23          	sw	a4,220(sp)
   11d34:	0cf12c23          	sw	a5,216(sp)
   11d38:	00fbde63          	ble	a5,s7,11d54 <_vfprintf_r+0x176c>
   11d3c:	0d410613          	addi	a2,sp,212
   11d40:	00090593          	mv	a1,s2
   11d44:	00098513          	mv	a0,s3
   11d48:	4f9070ef          	jal	ra,19a40 <__sprint_r>
   11d4c:	7a051863          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   11d50:	0fc10693          	addi	a3,sp,252
   11d54:	ff048493          	addi	s1,s1,-16
   11d58:	00068893          	mv	a7,a3
   11d5c:	f41ff06f          	j	11c9c <_vfprintf_r+0x16b4>
   11d60:	0bc12703          	lw	a4,188(sp)
   11d64:	16e04463          	bgtz	a4,11ecc <_vfprintf_r+0x18e4>
   11d68:	000217b7          	lui	a5,0x21
   11d6c:	a8078793          	addi	a5,a5,-1408 # 20a80 <zeroes.4405+0x48>
   11d70:	00f8a023          	sw	a5,0(a7)
   11d74:	00100793          	li	a5,1
   11d78:	00f8a223          	sw	a5,4(a7)
   11d7c:	0d812783          	lw	a5,216(sp)
   11d80:	001d8d93          	addi	s11,s11,1
   11d84:	0db12e23          	sw	s11,220(sp)
   11d88:	00178793          	addi	a5,a5,1
   11d8c:	0cf12c23          	sw	a5,216(sp)
   11d90:	00700713          	li	a4,7
   11d94:	00888893          	addi	a7,a7,8
   11d98:	00f75e63          	ble	a5,a4,11db4 <_vfprintf_r+0x17cc>
   11d9c:	0d410613          	addi	a2,sp,212
   11da0:	00090593          	mv	a1,s2
   11da4:	00098513          	mv	a0,s3
   11da8:	499070ef          	jal	ra,19a40 <__sprint_r>
   11dac:	74051863          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   11db0:	0fc10893          	addi	a7,sp,252
   11db4:	0bc12783          	lw	a5,188(sp)
   11db8:	00079863          	bnez	a5,11dc8 <_vfprintf_r+0x17e0>
   11dbc:	000a1663          	bnez	s4,11dc8 <_vfprintf_r+0x17e0>
   11dc0:	00147793          	andi	a5,s0,1
   11dc4:	f00788e3          	beqz	a5,11cd4 <_vfprintf_r+0x16ec>
   11dc8:	03412783          	lw	a5,52(sp)
   11dcc:	02012703          	lw	a4,32(sp)
   11dd0:	00888893          	addi	a7,a7,8
   11dd4:	fef8ac23          	sw	a5,-8(a7)
   11dd8:	02012783          	lw	a5,32(sp)
   11ddc:	fef8ae23          	sw	a5,-4(a7)
   11de0:	0dc12783          	lw	a5,220(sp)
   11de4:	00e787b3          	add	a5,a5,a4
   11de8:	0cf12e23          	sw	a5,220(sp)
   11dec:	0d812783          	lw	a5,216(sp)
   11df0:	00700713          	li	a4,7
   11df4:	00178793          	addi	a5,a5,1
   11df8:	0cf12c23          	sw	a5,216(sp)
   11dfc:	00f75e63          	ble	a5,a4,11e18 <_vfprintf_r+0x1830>
   11e00:	0d410613          	addi	a2,sp,212
   11e04:	00090593          	mv	a1,s2
   11e08:	00098513          	mv	a0,s3
   11e0c:	435070ef          	jal	ra,19a40 <__sprint_r>
   11e10:	6e051663          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   11e14:	0fc10893          	addi	a7,sp,252
   11e18:	0bc12a83          	lw	s5,188(sp)
   11e1c:	060ad063          	bgez	s5,11e7c <_vfprintf_r+0x1894>
   11e20:	41500ab3          	neg	s5,s5
   11e24:	00088713          	mv	a4,a7
   11e28:	01000b93          	li	s7,16
   11e2c:	00700c13          	li	s8,7
   11e30:	01412603          	lw	a2,20(sp)
   11e34:	0d812783          	lw	a5,216(sp)
   11e38:	0dc12683          	lw	a3,220(sp)
   11e3c:	00c72023          	sw	a2,0(a4)
   11e40:	00178793          	addi	a5,a5,1
   11e44:	00888893          	addi	a7,a7,8
   11e48:	055bc663          	blt	s7,s5,11e94 <_vfprintf_r+0x18ac>
   11e4c:	01572223          	sw	s5,4(a4)
   11e50:	00da8ab3          	add	s5,s5,a3
   11e54:	0d512e23          	sw	s5,220(sp)
   11e58:	0cf12c23          	sw	a5,216(sp)
   11e5c:	00700713          	li	a4,7
   11e60:	00f75e63          	ble	a5,a4,11e7c <_vfprintf_r+0x1894>
   11e64:	0d410613          	addi	a2,sp,212
   11e68:	00090593          	mv	a1,s2
   11e6c:	00098513          	mv	a0,s3
   11e70:	3d1070ef          	jal	ra,19a40 <__sprint_r>
   11e74:	68051463          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   11e78:	0fc10893          	addi	a7,sp,252
   11e7c:	0dc12783          	lw	a5,220(sp)
   11e80:	0098a023          	sw	s1,0(a7)
   11e84:	0148a223          	sw	s4,4(a7)
   11e88:	014787b3          	add	a5,a5,s4
   11e8c:	0cf12e23          	sw	a5,220(sp)
   11e90:	979ff06f          	j	11808 <_vfprintf_r+0x1220>
   11e94:	01068693          	addi	a3,a3,16
   11e98:	01772223          	sw	s7,4(a4)
   11e9c:	0cd12e23          	sw	a3,220(sp)
   11ea0:	0cf12c23          	sw	a5,216(sp)
   11ea4:	00fc5e63          	ble	a5,s8,11ec0 <_vfprintf_r+0x18d8>
   11ea8:	0d410613          	addi	a2,sp,212
   11eac:	00090593          	mv	a1,s2
   11eb0:	00098513          	mv	a0,s3
   11eb4:	38d070ef          	jal	ra,19a40 <__sprint_r>
   11eb8:	64051263          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   11ebc:	0fc10893          	addi	a7,sp,252
   11ec0:	ff0a8a93          	addi	s5,s5,-16
   11ec4:	00088713          	mv	a4,a7
   11ec8:	f69ff06f          	j	11e30 <_vfprintf_r+0x1848>
   11ecc:	000c8a93          	mv	s5,s9
   11ed0:	019a5463          	ble	s9,s4,11ed8 <_vfprintf_r+0x18f0>
   11ed4:	000a0a93          	mv	s5,s4
   11ed8:	05505263          	blez	s5,11f1c <_vfprintf_r+0x1934>
   11edc:	0d812703          	lw	a4,216(sp)
   11ee0:	01ba8db3          	add	s11,s5,s11
   11ee4:	0098a023          	sw	s1,0(a7)
   11ee8:	00170713          	addi	a4,a4,1
   11eec:	0158a223          	sw	s5,4(a7)
   11ef0:	0db12e23          	sw	s11,220(sp)
   11ef4:	0ce12c23          	sw	a4,216(sp)
   11ef8:	00700693          	li	a3,7
   11efc:	00888893          	addi	a7,a7,8
   11f00:	00e6de63          	ble	a4,a3,11f1c <_vfprintf_r+0x1934>
   11f04:	0d410613          	addi	a2,sp,212
   11f08:	00090593          	mv	a1,s2
   11f0c:	00098513          	mv	a0,s3
   11f10:	331070ef          	jal	ra,19a40 <__sprint_r>
   11f14:	5e051463          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   11f18:	0fc10893          	addi	a7,sp,252
   11f1c:	000ad463          	bgez	s5,11f24 <_vfprintf_r+0x193c>
   11f20:	00000a93          	li	s5,0
   11f24:	415c8ab3          	sub	s5,s9,s5
   11f28:	05505e63          	blez	s5,11f84 <_vfprintf_r+0x199c>
   11f2c:	01000d13          	li	s10,16
   11f30:	00700d93          	li	s11,7
   11f34:	01412783          	lw	a5,20(sp)
   11f38:	0d812703          	lw	a4,216(sp)
   11f3c:	0dc12683          	lw	a3,220(sp)
   11f40:	00f8a023          	sw	a5,0(a7)
   11f44:	00170713          	addi	a4,a4,1
   11f48:	00888613          	addi	a2,a7,8
   11f4c:	195d4c63          	blt	s10,s5,120e4 <_vfprintf_r+0x1afc>
   11f50:	0158a223          	sw	s5,4(a7)
   11f54:	00da8ab3          	add	s5,s5,a3
   11f58:	0d512e23          	sw	s5,220(sp)
   11f5c:	0ce12c23          	sw	a4,216(sp)
   11f60:	00700693          	li	a3,7
   11f64:	00060893          	mv	a7,a2
   11f68:	00e6de63          	ble	a4,a3,11f84 <_vfprintf_r+0x199c>
   11f6c:	0d410613          	addi	a2,sp,212
   11f70:	00090593          	mv	a1,s2
   11f74:	00098513          	mv	a0,s3
   11f78:	2c9070ef          	jal	ra,19a40 <__sprint_r>
   11f7c:	58051063          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   11f80:	0fc10893          	addi	a7,sp,252
   11f84:	40047793          	andi	a5,s0,1024
   11f88:	01948ab3          	add	s5,s1,s9
   11f8c:	02078063          	beqz	a5,11fac <_vfprintf_r+0x19c4>
   11f90:	00700d13          	li	s10,7
   11f94:	01448db3          	add	s11,s1,s4
   11f98:	180b9263          	bnez	s7,1211c <_vfprintf_r+0x1b34>
   11f9c:	180c1263          	bnez	s8,12120 <_vfprintf_r+0x1b38>
   11fa0:	014487b3          	add	a5,s1,s4
   11fa4:	0157f463          	bleu	s5,a5,11fac <_vfprintf_r+0x19c4>
   11fa8:	00078a93          	mv	s5,a5
   11fac:	0bc12783          	lw	a5,188(sp)
   11fb0:	0147c663          	blt	a5,s4,11fbc <_vfprintf_r+0x19d4>
   11fb4:	00147793          	andi	a5,s0,1
   11fb8:	04078a63          	beqz	a5,1200c <_vfprintf_r+0x1a24>
   11fbc:	03412783          	lw	a5,52(sp)
   11fc0:	02012703          	lw	a4,32(sp)
   11fc4:	00888893          	addi	a7,a7,8
   11fc8:	fef8ac23          	sw	a5,-8(a7)
   11fcc:	02012783          	lw	a5,32(sp)
   11fd0:	fef8ae23          	sw	a5,-4(a7)
   11fd4:	0dc12783          	lw	a5,220(sp)
   11fd8:	00e787b3          	add	a5,a5,a4
   11fdc:	0cf12e23          	sw	a5,220(sp)
   11fe0:	0d812783          	lw	a5,216(sp)
   11fe4:	00700713          	li	a4,7
   11fe8:	00178793          	addi	a5,a5,1
   11fec:	0cf12c23          	sw	a5,216(sp)
   11ff0:	00f75e63          	ble	a5,a4,1200c <_vfprintf_r+0x1a24>
   11ff4:	0d410613          	addi	a2,sp,212
   11ff8:	00090593          	mv	a1,s2
   11ffc:	00098513          	mv	a0,s3
   12000:	241070ef          	jal	ra,19a40 <__sprint_r>
   12004:	4e051c63          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   12008:	0fc10893          	addi	a7,sp,252
   1200c:	014484b3          	add	s1,s1,s4
   12010:	415487b3          	sub	a5,s1,s5
   12014:	0bc12483          	lw	s1,188(sp)
   12018:	409a04b3          	sub	s1,s4,s1
   1201c:	0097d463          	ble	s1,a5,12024 <_vfprintf_r+0x1a3c>
   12020:	00078493          	mv	s1,a5
   12024:	04905463          	blez	s1,1206c <_vfprintf_r+0x1a84>
   12028:	0dc12783          	lw	a5,220(sp)
   1202c:	0158a023          	sw	s5,0(a7)
   12030:	0098a223          	sw	s1,4(a7)
   12034:	00f487b3          	add	a5,s1,a5
   12038:	0cf12e23          	sw	a5,220(sp)
   1203c:	0d812783          	lw	a5,216(sp)
   12040:	00700713          	li	a4,7
   12044:	00888893          	addi	a7,a7,8
   12048:	00178793          	addi	a5,a5,1
   1204c:	0cf12c23          	sw	a5,216(sp)
   12050:	00f75e63          	ble	a5,a4,1206c <_vfprintf_r+0x1a84>
   12054:	0d410613          	addi	a2,sp,212
   12058:	00090593          	mv	a1,s2
   1205c:	00098513          	mv	a0,s3
   12060:	1e1070ef          	jal	ra,19a40 <__sprint_r>
   12064:	48051c63          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   12068:	0fc10893          	addi	a7,sp,252
   1206c:	00048793          	mv	a5,s1
   12070:	0004d463          	bgez	s1,12078 <_vfprintf_r+0x1a90>
   12074:	00000793          	li	a5,0
   12078:	0bc12483          	lw	s1,188(sp)
   1207c:	409a04b3          	sub	s1,s4,s1
   12080:	40f484b3          	sub	s1,s1,a5
   12084:	c49058e3          	blez	s1,11cd4 <_vfprintf_r+0x16ec>
   12088:	01000a93          	li	s5,16
   1208c:	00700b93          	li	s7,7
   12090:	01412603          	lw	a2,20(sp)
   12094:	0d812783          	lw	a5,216(sp)
   12098:	0dc12703          	lw	a4,220(sp)
   1209c:	00c8a023          	sw	a2,0(a7)
   120a0:	00178793          	addi	a5,a5,1
   120a4:	00888693          	addi	a3,a7,8
   120a8:	c09ad8e3          	ble	s1,s5,11cb8 <_vfprintf_r+0x16d0>
   120ac:	01070713          	addi	a4,a4,16
   120b0:	0158a223          	sw	s5,4(a7)
   120b4:	0ce12e23          	sw	a4,220(sp)
   120b8:	0cf12c23          	sw	a5,216(sp)
   120bc:	00fbde63          	ble	a5,s7,120d8 <_vfprintf_r+0x1af0>
   120c0:	0d410613          	addi	a2,sp,212
   120c4:	00090593          	mv	a1,s2
   120c8:	00098513          	mv	a0,s3
   120cc:	175070ef          	jal	ra,19a40 <__sprint_r>
   120d0:	42051663          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   120d4:	0fc10693          	addi	a3,sp,252
   120d8:	ff048493          	addi	s1,s1,-16
   120dc:	00068893          	mv	a7,a3
   120e0:	fb1ff06f          	j	12090 <_vfprintf_r+0x1aa8>
   120e4:	01068693          	addi	a3,a3,16
   120e8:	01a8a223          	sw	s10,4(a7)
   120ec:	0cd12e23          	sw	a3,220(sp)
   120f0:	0ce12c23          	sw	a4,216(sp)
   120f4:	00edde63          	ble	a4,s11,12110 <_vfprintf_r+0x1b28>
   120f8:	0d410613          	addi	a2,sp,212
   120fc:	00090593          	mv	a1,s2
   12100:	00098513          	mv	a0,s3
   12104:	13d070ef          	jal	ra,19a40 <__sprint_r>
   12108:	3e051a63          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   1210c:	0fc10613          	addi	a2,sp,252
   12110:	ff0a8a93          	addi	s5,s5,-16
   12114:	00060893          	mv	a7,a2
   12118:	e1dff06f          	j	11f34 <_vfprintf_r+0x194c>
   1211c:	0c0c0e63          	beqz	s8,121f8 <_vfprintf_r+0x1c10>
   12120:	fffc0c13          	addi	s8,s8,-1
   12124:	03812783          	lw	a5,56(sp)
   12128:	03012703          	lw	a4,48(sp)
   1212c:	00888893          	addi	a7,a7,8
   12130:	fef8ac23          	sw	a5,-8(a7)
   12134:	03012783          	lw	a5,48(sp)
   12138:	fef8ae23          	sw	a5,-4(a7)
   1213c:	0dc12783          	lw	a5,220(sp)
   12140:	00e787b3          	add	a5,a5,a4
   12144:	0cf12e23          	sw	a5,220(sp)
   12148:	0d812783          	lw	a5,216(sp)
   1214c:	00178793          	addi	a5,a5,1
   12150:	0cf12c23          	sw	a5,216(sp)
   12154:	00fd5e63          	ble	a5,s10,12170 <_vfprintf_r+0x1b88>
   12158:	0d410613          	addi	a2,sp,212
   1215c:	00090593          	mv	a1,s2
   12160:	00098513          	mv	a0,s3
   12164:	0dd070ef          	jal	ra,19a40 <__sprint_r>
   12168:	38051a63          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   1216c:	0fc10893          	addi	a7,sp,252
   12170:	01012783          	lw	a5,16(sp)
   12174:	415d8733          	sub	a4,s11,s5
   12178:	0007cb03          	lbu	s6,0(a5)
   1217c:	01675463          	ble	s6,a4,12184 <_vfprintf_r+0x1b9c>
   12180:	00070b13          	mv	s6,a4
   12184:	05605263          	blez	s6,121c8 <_vfprintf_r+0x1be0>
   12188:	0dc12703          	lw	a4,220(sp)
   1218c:	0158a023          	sw	s5,0(a7)
   12190:	0168a223          	sw	s6,4(a7)
   12194:	00eb0733          	add	a4,s6,a4
   12198:	0ce12e23          	sw	a4,220(sp)
   1219c:	0d812703          	lw	a4,216(sp)
   121a0:	00888893          	addi	a7,a7,8
   121a4:	00170713          	addi	a4,a4,1
   121a8:	0ce12c23          	sw	a4,216(sp)
   121ac:	00ed5e63          	ble	a4,s10,121c8 <_vfprintf_r+0x1be0>
   121b0:	0d410613          	addi	a2,sp,212
   121b4:	00090593          	mv	a1,s2
   121b8:	00098513          	mv	a0,s3
   121bc:	085070ef          	jal	ra,19a40 <__sprint_r>
   121c0:	32051e63          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   121c4:	0fc10893          	addi	a7,sp,252
   121c8:	000b0713          	mv	a4,s6
   121cc:	000b5463          	bgez	s6,121d4 <_vfprintf_r+0x1bec>
   121d0:	00000713          	li	a4,0
   121d4:	01012783          	lw	a5,16(sp)
   121d8:	01000813          	li	a6,16
   121dc:	0007c783          	lbu	a5,0(a5)
   121e0:	40e78b33          	sub	s6,a5,a4
   121e4:	07604263          	bgtz	s6,12248 <_vfprintf_r+0x1c60>
   121e8:	01012783          	lw	a5,16(sp)
   121ec:	0007c783          	lbu	a5,0(a5)
   121f0:	00fa8ab3          	add	s5,s5,a5
   121f4:	da5ff06f          	j	11f98 <_vfprintf_r+0x19b0>
   121f8:	01012783          	lw	a5,16(sp)
   121fc:	fffb8b93          	addi	s7,s7,-1
   12200:	fff78793          	addi	a5,a5,-1
   12204:	00f12823          	sw	a5,16(sp)
   12208:	f1dff06f          	j	12124 <_vfprintf_r+0x1b3c>
   1220c:	01068693          	addi	a3,a3,16
   12210:	0108a223          	sw	a6,4(a7)
   12214:	0cd12e23          	sw	a3,220(sp)
   12218:	0ce12c23          	sw	a4,216(sp)
   1221c:	02ed5263          	ble	a4,s10,12240 <_vfprintf_r+0x1c58>
   12220:	0d410613          	addi	a2,sp,212
   12224:	00090593          	mv	a1,s2
   12228:	00098513          	mv	a0,s3
   1222c:	05012223          	sw	a6,68(sp)
   12230:	011070ef          	jal	ra,19a40 <__sprint_r>
   12234:	2c051463          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   12238:	04412803          	lw	a6,68(sp)
   1223c:	0fc10613          	addi	a2,sp,252
   12240:	ff0b0b13          	addi	s6,s6,-16
   12244:	00060893          	mv	a7,a2
   12248:	01412783          	lw	a5,20(sp)
   1224c:	0d812703          	lw	a4,216(sp)
   12250:	0dc12683          	lw	a3,220(sp)
   12254:	00f8a023          	sw	a5,0(a7)
   12258:	00170713          	addi	a4,a4,1
   1225c:	00888613          	addi	a2,a7,8
   12260:	fb6846e3          	blt	a6,s6,1220c <_vfprintf_r+0x1c24>
   12264:	00db07b3          	add	a5,s6,a3
   12268:	0168a223          	sw	s6,4(a7)
   1226c:	0cf12e23          	sw	a5,220(sp)
   12270:	0ce12c23          	sw	a4,216(sp)
   12274:	00060893          	mv	a7,a2
   12278:	f6ed58e3          	ble	a4,s10,121e8 <_vfprintf_r+0x1c00>
   1227c:	0d410613          	addi	a2,sp,212
   12280:	00090593          	mv	a1,s2
   12284:	00098513          	mv	a0,s3
   12288:	7b8070ef          	jal	ra,19a40 <__sprint_r>
   1228c:	26051863          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   12290:	0fc10893          	addi	a7,sp,252
   12294:	f55ff06f          	j	121e8 <_vfprintf_r+0x1c00>
   12298:	0d812783          	lw	a5,216(sp)
   1229c:	00100713          	li	a4,1
   122a0:	0098a023          	sw	s1,0(a7)
   122a4:	001d8d93          	addi	s11,s11,1
   122a8:	00178793          	addi	a5,a5,1
   122ac:	00888b93          	addi	s7,a7,8
   122b0:	01474663          	blt	a4,s4,122bc <_vfprintf_r+0x1cd4>
   122b4:	00147693          	andi	a3,s0,1
   122b8:	1c068663          	beqz	a3,12484 <_vfprintf_r+0x1e9c>
   122bc:	00100713          	li	a4,1
   122c0:	00e8a223          	sw	a4,4(a7)
   122c4:	0db12e23          	sw	s11,220(sp)
   122c8:	0cf12c23          	sw	a5,216(sp)
   122cc:	00700713          	li	a4,7
   122d0:	00f75e63          	ble	a5,a4,122ec <_vfprintf_r+0x1d04>
   122d4:	0d410613          	addi	a2,sp,212
   122d8:	00090593          	mv	a1,s2
   122dc:	00098513          	mv	a0,s3
   122e0:	760070ef          	jal	ra,19a40 <__sprint_r>
   122e4:	20051c63          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   122e8:	0fc10b93          	addi	s7,sp,252
   122ec:	03412783          	lw	a5,52(sp)
   122f0:	02012703          	lw	a4,32(sp)
   122f4:	008b8b93          	addi	s7,s7,8
   122f8:	fefbac23          	sw	a5,-8(s7)
   122fc:	02012783          	lw	a5,32(sp)
   12300:	fefbae23          	sw	a5,-4(s7)
   12304:	0dc12783          	lw	a5,220(sp)
   12308:	00e787b3          	add	a5,a5,a4
   1230c:	0cf12e23          	sw	a5,220(sp)
   12310:	0d812783          	lw	a5,216(sp)
   12314:	00700713          	li	a4,7
   12318:	00178793          	addi	a5,a5,1
   1231c:	0cf12c23          	sw	a5,216(sp)
   12320:	00f75e63          	ble	a5,a4,1233c <_vfprintf_r+0x1d54>
   12324:	0d410613          	addi	a2,sp,212
   12328:	00090593          	mv	a1,s2
   1232c:	00098513          	mv	a0,s3
   12330:	710070ef          	jal	ra,19a40 <__sprint_r>
   12334:	1c051463          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   12338:	0fc10b93          	addi	s7,sp,252
   1233c:	0e012783          	lw	a5,224(sp)
   12340:	09010593          	addi	a1,sp,144
   12344:	0a010513          	addi	a0,sp,160
   12348:	0af12023          	sw	a5,160(sp)
   1234c:	0e412783          	lw	a5,228(sp)
   12350:	fffa0a93          	addi	s5,s4,-1
   12354:	08012823          	sw	zero,144(sp)
   12358:	0af12223          	sw	a5,164(sp)
   1235c:	0e812783          	lw	a5,232(sp)
   12360:	08012a23          	sw	zero,148(sp)
   12364:	08012c23          	sw	zero,152(sp)
   12368:	0af12423          	sw	a5,168(sp)
   1236c:	0ec12783          	lw	a5,236(sp)
   12370:	08012e23          	sw	zero,156(sp)
   12374:	0af12623          	sw	a5,172(sp)
   12378:	3c00b0ef          	jal	ra,1d738 <__eqtf2>
   1237c:	08050663          	beqz	a0,12408 <_vfprintf_r+0x1e20>
   12380:	0dc12783          	lw	a5,220(sp)
   12384:	0d812703          	lw	a4,216(sp)
   12388:	00148493          	addi	s1,s1,1
   1238c:	fff78793          	addi	a5,a5,-1
   12390:	014787b3          	add	a5,a5,s4
   12394:	00170713          	addi	a4,a4,1
   12398:	009ba023          	sw	s1,0(s7)
   1239c:	015ba223          	sw	s5,4(s7)
   123a0:	0cf12e23          	sw	a5,220(sp)
   123a4:	0ce12c23          	sw	a4,216(sp)
   123a8:	00700793          	li	a5,7
   123ac:	008b8b93          	addi	s7,s7,8
   123b0:	00e7de63          	ble	a4,a5,123cc <_vfprintf_r+0x1de4>
   123b4:	0d410613          	addi	a2,sp,212
   123b8:	00090593          	mv	a1,s2
   123bc:	00098513          	mv	a0,s3
   123c0:	680070ef          	jal	ra,19a40 <__sprint_r>
   123c4:	12051c63          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   123c8:	0fc10b93          	addi	s7,sp,252
   123cc:	0c410793          	addi	a5,sp,196
   123d0:	00fba023          	sw	a5,0(s7)
   123d4:	03c12783          	lw	a5,60(sp)
   123d8:	03c12703          	lw	a4,60(sp)
   123dc:	008b8893          	addi	a7,s7,8
   123e0:	00fba223          	sw	a5,4(s7)
   123e4:	0dc12783          	lw	a5,220(sp)
   123e8:	00e787b3          	add	a5,a5,a4
   123ec:	0cf12e23          	sw	a5,220(sp)
   123f0:	0d812783          	lw	a5,216(sp)
   123f4:	00700713          	li	a4,7
   123f8:	00178793          	addi	a5,a5,1
   123fc:	0cf12c23          	sw	a5,216(sp)
   12400:	8cf75ae3          	ble	a5,a4,11cd4 <_vfprintf_r+0x16ec>
   12404:	c1cff06f          	j	11820 <_vfprintf_r+0x1238>
   12408:	fd5052e3          	blez	s5,123cc <_vfprintf_r+0x1de4>
   1240c:	01000493          	li	s1,16
   12410:	00700c13          	li	s8,7
   12414:	01412603          	lw	a2,20(sp)
   12418:	0d812703          	lw	a4,216(sp)
   1241c:	0dc12783          	lw	a5,220(sp)
   12420:	00cba023          	sw	a2,0(s7)
   12424:	00170713          	addi	a4,a4,1
   12428:	008b8693          	addi	a3,s7,8
   1242c:	0354c063          	blt	s1,s5,1244c <_vfprintf_r+0x1e64>
   12430:	00fa87b3          	add	a5,s5,a5
   12434:	015ba223          	sw	s5,4(s7)
   12438:	0cf12e23          	sw	a5,220(sp)
   1243c:	0ce12c23          	sw	a4,216(sp)
   12440:	00700793          	li	a5,7
   12444:	00068b93          	mv	s7,a3
   12448:	f69ff06f          	j	123b0 <_vfprintf_r+0x1dc8>
   1244c:	01078793          	addi	a5,a5,16
   12450:	009ba223          	sw	s1,4(s7)
   12454:	0cf12e23          	sw	a5,220(sp)
   12458:	0ce12c23          	sw	a4,216(sp)
   1245c:	00ec5e63          	ble	a4,s8,12478 <_vfprintf_r+0x1e90>
   12460:	0d410613          	addi	a2,sp,212
   12464:	00090593          	mv	a1,s2
   12468:	00098513          	mv	a0,s3
   1246c:	5d4070ef          	jal	ra,19a40 <__sprint_r>
   12470:	08051663          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   12474:	0fc10693          	addi	a3,sp,252
   12478:	ff0a8a93          	addi	s5,s5,-16
   1247c:	00068b93          	mv	s7,a3
   12480:	f95ff06f          	j	12414 <_vfprintf_r+0x1e2c>
   12484:	00e8a223          	sw	a4,4(a7)
   12488:	0db12e23          	sw	s11,220(sp)
   1248c:	0cf12c23          	sw	a5,216(sp)
   12490:	00700713          	li	a4,7
   12494:	f2f75ce3          	ble	a5,a4,123cc <_vfprintf_r+0x1de4>
   12498:	f1dff06f          	j	123b4 <_vfprintf_r+0x1dcc>
   1249c:	02812783          	lw	a5,40(sp)
   124a0:	02c12703          	lw	a4,44(sp)
   124a4:	40e78433          	sub	s0,a5,a4
   124a8:	82805ae3          	blez	s0,11cdc <_vfprintf_r+0x16f4>
   124ac:	000214b7          	lui	s1,0x21
   124b0:	01000a93          	li	s5,16
   124b4:	a2848493          	addi	s1,s1,-1496 # 20a28 <blanks.4404>
   124b8:	00700b93          	li	s7,7
   124bc:	0d812783          	lw	a5,216(sp)
   124c0:	0098a023          	sw	s1,0(a7)
   124c4:	0dc12703          	lw	a4,220(sp)
   124c8:	00178793          	addi	a5,a5,1
   124cc:	048ac663          	blt	s5,s0,12518 <_vfprintf_r+0x1f30>
   124d0:	0088a223          	sw	s0,4(a7)
   124d4:	00e40433          	add	s0,s0,a4
   124d8:	0c812e23          	sw	s0,220(sp)
   124dc:	0cf12c23          	sw	a5,216(sp)
   124e0:	00700713          	li	a4,7
   124e4:	fef75c63          	ble	a5,a4,11cdc <_vfprintf_r+0x16f4>
   124e8:	0d410613          	addi	a2,sp,212
   124ec:	00090593          	mv	a1,s2
   124f0:	00098513          	mv	a0,s3
   124f4:	54c070ef          	jal	ra,19a40 <__sprint_r>
   124f8:	fe050263          	beqz	a0,11cdc <_vfprintf_r+0x16f4>
   124fc:	00c12783          	lw	a5,12(sp)
   12500:	00079463          	bnez	a5,12508 <_vfprintf_r+0x1f20>
   12504:	fbcfe06f          	j	10cc0 <_vfprintf_r+0x6d8>
   12508:	00078593          	mv	a1,a5
   1250c:	00098513          	mv	a0,s3
   12510:	241000ef          	jal	ra,12f50 <_free_r>
   12514:	facfe06f          	j	10cc0 <_vfprintf_r+0x6d8>
   12518:	01070713          	addi	a4,a4,16
   1251c:	0158a223          	sw	s5,4(a7)
   12520:	0ce12e23          	sw	a4,220(sp)
   12524:	0cf12c23          	sw	a5,216(sp)
   12528:	00888893          	addi	a7,a7,8
   1252c:	00fbde63          	ble	a5,s7,12548 <_vfprintf_r+0x1f60>
   12530:	0d410613          	addi	a2,sp,212
   12534:	00090593          	mv	a1,s2
   12538:	00098513          	mv	a0,s3
   1253c:	504070ef          	jal	ra,19a40 <__sprint_r>
   12540:	fa051ee3          	bnez	a0,124fc <_vfprintf_r+0x1f14>
   12544:	0fc10893          	addi	a7,sp,252
   12548:	ff040413          	addi	s0,s0,-16
   1254c:	f71ff06f          	j	124bc <_vfprintf_r+0x1ed4>
   12550:	00c12583          	lw	a1,12(sp)
   12554:	00098513          	mv	a0,s3
   12558:	1f9000ef          	jal	ra,12f50 <_free_r>
   1255c:	fc4ff06f          	j	11d20 <_vfprintf_r+0x1738>
   12560:	0dc12783          	lw	a5,220(sp)
   12564:	00079463          	bnez	a5,1256c <_vfprintf_r+0x1f84>
   12568:	f58fe06f          	j	10cc0 <_vfprintf_r+0x6d8>
   1256c:	0d410613          	addi	a2,sp,212
   12570:	00090593          	mv	a1,s2
   12574:	00098513          	mv	a0,s3
   12578:	4c8070ef          	jal	ra,19a40 <__sprint_r>
   1257c:	f44fe06f          	j	10cc0 <_vfprintf_r+0x6d8>

00012580 <vfprintf>:
   12580:	00060693          	mv	a3,a2
   12584:	00058613          	mv	a2,a1
   12588:	00050593          	mv	a1,a0
   1258c:	8201a503          	lw	a0,-2016(gp) # 229c8 <_impure_ptr>
   12590:	858fe06f          	j	105e8 <_vfprintf_r>

00012594 <__sbprintf>:
   12594:	00c5d783          	lhu	a5,12(a1)
   12598:	b8010113          	addi	sp,sp,-1152
   1259c:	46812c23          	sw	s0,1144(sp)
   125a0:	ffd7f793          	andi	a5,a5,-3
   125a4:	00f11a23          	sh	a5,20(sp)
   125a8:	0645a783          	lw	a5,100(a1)
   125ac:	00058413          	mv	s0,a1
   125b0:	46912a23          	sw	s1,1140(sp)
   125b4:	06f12623          	sw	a5,108(sp)
   125b8:	00e5d783          	lhu	a5,14(a1)
   125bc:	47212823          	sw	s2,1136(sp)
   125c0:	46112e23          	sw	ra,1148(sp)
   125c4:	00f11b23          	sh	a5,22(sp)
   125c8:	01c5a783          	lw	a5,28(a1)
   125cc:	00050913          	mv	s2,a0
   125d0:	02012023          	sw	zero,32(sp)
   125d4:	02f12223          	sw	a5,36(sp)
   125d8:	0245a783          	lw	a5,36(a1)
   125dc:	00810593          	addi	a1,sp,8
   125e0:	02f12623          	sw	a5,44(sp)
   125e4:	07010793          	addi	a5,sp,112
   125e8:	00f12423          	sw	a5,8(sp)
   125ec:	00f12c23          	sw	a5,24(sp)
   125f0:	40000793          	li	a5,1024
   125f4:	00f12823          	sw	a5,16(sp)
   125f8:	00f12e23          	sw	a5,28(sp)
   125fc:	fedfd0ef          	jal	ra,105e8 <_vfprintf_r>
   12600:	00050493          	mv	s1,a0
   12604:	00054c63          	bltz	a0,1261c <__sbprintf+0x88>
   12608:	00810593          	addi	a1,sp,8
   1260c:	00090513          	mv	a0,s2
   12610:	504000ef          	jal	ra,12b14 <_fflush_r>
   12614:	00050463          	beqz	a0,1261c <__sbprintf+0x88>
   12618:	fff00493          	li	s1,-1
   1261c:	01415783          	lhu	a5,20(sp)
   12620:	0407f793          	andi	a5,a5,64
   12624:	00078863          	beqz	a5,12634 <__sbprintf+0xa0>
   12628:	00c45783          	lhu	a5,12(s0)
   1262c:	0407e793          	ori	a5,a5,64
   12630:	00f41623          	sh	a5,12(s0)
   12634:	47c12083          	lw	ra,1148(sp)
   12638:	47812403          	lw	s0,1144(sp)
   1263c:	00048513          	mv	a0,s1
   12640:	47012903          	lw	s2,1136(sp)
   12644:	47412483          	lw	s1,1140(sp)
   12648:	48010113          	addi	sp,sp,1152
   1264c:	00008067          	ret

00012650 <__swsetup_r>:
   12650:	ff010113          	addi	sp,sp,-16
   12654:	00912223          	sw	s1,4(sp)
   12658:	00050493          	mv	s1,a0
   1265c:	8201a503          	lw	a0,-2016(gp) # 229c8 <_impure_ptr>
   12660:	00812423          	sw	s0,8(sp)
   12664:	00112623          	sw	ra,12(sp)
   12668:	00058413          	mv	s0,a1
   1266c:	00050863          	beqz	a0,1267c <__swsetup_r+0x2c>
   12670:	03852783          	lw	a5,56(a0)
   12674:	00079463          	bnez	a5,1267c <__swsetup_r+0x2c>
   12678:	62c000ef          	jal	ra,12ca4 <__sinit>
   1267c:	00c41703          	lh	a4,12(s0)
   12680:	01071793          	slli	a5,a4,0x10
   12684:	0107d793          	srli	a5,a5,0x10
   12688:	0087f693          	andi	a3,a5,8
   1268c:	06069e63          	bnez	a3,12708 <__swsetup_r+0xb8>
   12690:	0107f693          	andi	a3,a5,16
   12694:	02069663          	bnez	a3,126c0 <__swsetup_r+0x70>
   12698:	00900793          	li	a5,9
   1269c:	00f4a023          	sw	a5,0(s1)
   126a0:	04076713          	ori	a4,a4,64
   126a4:	00e41623          	sh	a4,12(s0)
   126a8:	fff00513          	li	a0,-1
   126ac:	00c12083          	lw	ra,12(sp)
   126b0:	00812403          	lw	s0,8(sp)
   126b4:	00412483          	lw	s1,4(sp)
   126b8:	01010113          	addi	sp,sp,16
   126bc:	00008067          	ret
   126c0:	0047f793          	andi	a5,a5,4
   126c4:	02078c63          	beqz	a5,126fc <__swsetup_r+0xac>
   126c8:	03042583          	lw	a1,48(s0)
   126cc:	00058c63          	beqz	a1,126e4 <__swsetup_r+0x94>
   126d0:	04040793          	addi	a5,s0,64
   126d4:	00f58663          	beq	a1,a5,126e0 <__swsetup_r+0x90>
   126d8:	00048513          	mv	a0,s1
   126dc:	075000ef          	jal	ra,12f50 <_free_r>
   126e0:	02042823          	sw	zero,48(s0)
   126e4:	00c45783          	lhu	a5,12(s0)
   126e8:	00042223          	sw	zero,4(s0)
   126ec:	fdb7f793          	andi	a5,a5,-37
   126f0:	00f41623          	sh	a5,12(s0)
   126f4:	01042783          	lw	a5,16(s0)
   126f8:	00f42023          	sw	a5,0(s0)
   126fc:	00c45783          	lhu	a5,12(s0)
   12700:	0087e793          	ori	a5,a5,8
   12704:	00f41623          	sh	a5,12(s0)
   12708:	01042783          	lw	a5,16(s0)
   1270c:	02079063          	bnez	a5,1272c <__swsetup_r+0xdc>
   12710:	00c45783          	lhu	a5,12(s0)
   12714:	20000713          	li	a4,512
   12718:	2807f793          	andi	a5,a5,640
   1271c:	00e78863          	beq	a5,a4,1272c <__swsetup_r+0xdc>
   12720:	00040593          	mv	a1,s0
   12724:	00048513          	mv	a0,s1
   12728:	1f8030ef          	jal	ra,15920 <__smakebuf_r>
   1272c:	00c45783          	lhu	a5,12(s0)
   12730:	0017f713          	andi	a4,a5,1
   12734:	02070c63          	beqz	a4,1276c <__swsetup_r+0x11c>
   12738:	01442783          	lw	a5,20(s0)
   1273c:	00042423          	sw	zero,8(s0)
   12740:	40f007b3          	neg	a5,a5
   12744:	00f42c23          	sw	a5,24(s0)
   12748:	01042783          	lw	a5,16(s0)
   1274c:	00000513          	li	a0,0
   12750:	f4079ee3          	bnez	a5,126ac <__swsetup_r+0x5c>
   12754:	00c41783          	lh	a5,12(s0)
   12758:	0807f713          	andi	a4,a5,128
   1275c:	f40708e3          	beqz	a4,126ac <__swsetup_r+0x5c>
   12760:	0407e793          	ori	a5,a5,64
   12764:	00f41623          	sh	a5,12(s0)
   12768:	f41ff06f          	j	126a8 <__swsetup_r+0x58>
   1276c:	0027f793          	andi	a5,a5,2
   12770:	00000713          	li	a4,0
   12774:	00079463          	bnez	a5,1277c <__swsetup_r+0x12c>
   12778:	01442703          	lw	a4,20(s0)
   1277c:	00e42423          	sw	a4,8(s0)
   12780:	fc9ff06f          	j	12748 <__swsetup_r+0xf8>

00012784 <__register_exitproc>:
   12784:	81c1a703          	lw	a4,-2020(gp) # 229c4 <_global_impure_ptr>
   12788:	00050313          	mv	t1,a0
   1278c:	14872783          	lw	a5,328(a4)
   12790:	00079663          	bnez	a5,1279c <__register_exitproc+0x18>
   12794:	14c70793          	addi	a5,a4,332
   12798:	14f72423          	sw	a5,328(a4)
   1279c:	0047a703          	lw	a4,4(a5)
   127a0:	01f00813          	li	a6,31
   127a4:	fff00513          	li	a0,-1
   127a8:	04e84a63          	blt	a6,a4,127fc <__register_exitproc+0x78>
   127ac:	00271893          	slli	a7,a4,0x2
   127b0:	02030c63          	beqz	t1,127e8 <__register_exitproc+0x64>
   127b4:	01178533          	add	a0,a5,a7
   127b8:	08c52423          	sw	a2,136(a0)
   127bc:	1887a803          	lw	a6,392(a5)
   127c0:	00100613          	li	a2,1
   127c4:	00e61633          	sll	a2,a2,a4
   127c8:	00c86833          	or	a6,a6,a2
   127cc:	1907a423          	sw	a6,392(a5)
   127d0:	10d52423          	sw	a3,264(a0)
   127d4:	00200693          	li	a3,2
   127d8:	00d31863          	bne	t1,a3,127e8 <__register_exitproc+0x64>
   127dc:	18c7a683          	lw	a3,396(a5)
   127e0:	00c6e633          	or	a2,a3,a2
   127e4:	18c7a623          	sw	a2,396(a5)
   127e8:	00170713          	addi	a4,a4,1
   127ec:	00e7a223          	sw	a4,4(a5)
   127f0:	011787b3          	add	a5,a5,a7
   127f4:	00b7a423          	sw	a1,8(a5)
   127f8:	00000513          	li	a0,0
   127fc:	00008067          	ret

00012800 <__call_exitprocs>:
   12800:	fd010113          	addi	sp,sp,-48
   12804:	01312e23          	sw	s3,28(sp)
   12808:	81c1a983          	lw	s3,-2020(gp) # 229c4 <_global_impure_ptr>
   1280c:	01412c23          	sw	s4,24(sp)
   12810:	01512a23          	sw	s5,20(sp)
   12814:	01612823          	sw	s6,16(sp)
   12818:	02112623          	sw	ra,44(sp)
   1281c:	02812423          	sw	s0,40(sp)
   12820:	02912223          	sw	s1,36(sp)
   12824:	03212023          	sw	s2,32(sp)
   12828:	01712623          	sw	s7,12(sp)
   1282c:	00050a93          	mv	s5,a0
   12830:	00058a13          	mv	s4,a1
   12834:	00100b13          	li	s6,1
   12838:	1489a483          	lw	s1,328(s3)
   1283c:	00048c63          	beqz	s1,12854 <__call_exitprocs+0x54>
   12840:	0044a403          	lw	s0,4(s1)
   12844:	fff40913          	addi	s2,s0,-1
   12848:	00241413          	slli	s0,s0,0x2
   1284c:	00848433          	add	s0,s1,s0
   12850:	02095863          	bgez	s2,12880 <__call_exitprocs+0x80>
   12854:	02c12083          	lw	ra,44(sp)
   12858:	02812403          	lw	s0,40(sp)
   1285c:	02412483          	lw	s1,36(sp)
   12860:	02012903          	lw	s2,32(sp)
   12864:	01c12983          	lw	s3,28(sp)
   12868:	01812a03          	lw	s4,24(sp)
   1286c:	01412a83          	lw	s5,20(sp)
   12870:	01012b03          	lw	s6,16(sp)
   12874:	00c12b83          	lw	s7,12(sp)
   12878:	03010113          	addi	sp,sp,48
   1287c:	00008067          	ret
   12880:	000a0c63          	beqz	s4,12898 <__call_exitprocs+0x98>
   12884:	10442783          	lw	a5,260(s0)
   12888:	01478863          	beq	a5,s4,12898 <__call_exitprocs+0x98>
   1288c:	fff90913          	addi	s2,s2,-1
   12890:	ffc40413          	addi	s0,s0,-4
   12894:	fbdff06f          	j	12850 <__call_exitprocs+0x50>
   12898:	0044a703          	lw	a4,4(s1)
   1289c:	00442783          	lw	a5,4(s0)
   128a0:	fff70713          	addi	a4,a4,-1
   128a4:	03271c63          	bne	a4,s2,128dc <__call_exitprocs+0xdc>
   128a8:	0124a223          	sw	s2,4(s1)
   128ac:	fe0780e3          	beqz	a5,1288c <__call_exitprocs+0x8c>
   128b0:	1884a683          	lw	a3,392(s1)
   128b4:	012b1733          	sll	a4,s6,s2
   128b8:	0044ab83          	lw	s7,4(s1)
   128bc:	00d776b3          	and	a3,a4,a3
   128c0:	02069263          	bnez	a3,128e4 <__call_exitprocs+0xe4>
   128c4:	000780e7          	jalr	a5
   128c8:	0044a703          	lw	a4,4(s1)
   128cc:	1489a783          	lw	a5,328(s3)
   128d0:	f77714e3          	bne	a4,s7,12838 <__call_exitprocs+0x38>
   128d4:	faf48ce3          	beq	s1,a5,1288c <__call_exitprocs+0x8c>
   128d8:	f61ff06f          	j	12838 <__call_exitprocs+0x38>
   128dc:	00042223          	sw	zero,4(s0)
   128e0:	fcdff06f          	j	128ac <__call_exitprocs+0xac>
   128e4:	18c4a683          	lw	a3,396(s1)
   128e8:	08442583          	lw	a1,132(s0)
   128ec:	00d77733          	and	a4,a4,a3
   128f0:	00071863          	bnez	a4,12900 <__call_exitprocs+0x100>
   128f4:	000a8513          	mv	a0,s5
   128f8:	000780e7          	jalr	a5
   128fc:	fcdff06f          	j	128c8 <__call_exitprocs+0xc8>
   12900:	00058513          	mv	a0,a1
   12904:	000780e7          	jalr	a5
   12908:	fc1ff06f          	j	128c8 <__call_exitprocs+0xc8>

0001290c <__sflush_r>:
   1290c:	00c59783          	lh	a5,12(a1)
   12910:	fe010113          	addi	sp,sp,-32
   12914:	00812c23          	sw	s0,24(sp)
   12918:	01079713          	slli	a4,a5,0x10
   1291c:	01075713          	srli	a4,a4,0x10
   12920:	00912a23          	sw	s1,20(sp)
   12924:	00112e23          	sw	ra,28(sp)
   12928:	01212823          	sw	s2,16(sp)
   1292c:	01312623          	sw	s3,12(sp)
   12930:	00877693          	andi	a3,a4,8
   12934:	00050493          	mv	s1,a0
   12938:	00058413          	mv	s0,a1
   1293c:	16069c63          	bnez	a3,12ab4 <__sflush_r+0x1a8>
   12940:	00001737          	lui	a4,0x1
   12944:	80070713          	addi	a4,a4,-2048 # 800 <_start-0xf874>
   12948:	00e7e7b3          	or	a5,a5,a4
   1294c:	0045a703          	lw	a4,4(a1)
   12950:	00f59623          	sh	a5,12(a1)
   12954:	02e04663          	bgtz	a4,12980 <__sflush_r+0x74>
   12958:	03c5a703          	lw	a4,60(a1)
   1295c:	02e04263          	bgtz	a4,12980 <__sflush_r+0x74>
   12960:	00000513          	li	a0,0
   12964:	01c12083          	lw	ra,28(sp)
   12968:	01812403          	lw	s0,24(sp)
   1296c:	01412483          	lw	s1,20(sp)
   12970:	01012903          	lw	s2,16(sp)
   12974:	00c12983          	lw	s3,12(sp)
   12978:	02010113          	addi	sp,sp,32
   1297c:	00008067          	ret
   12980:	02842703          	lw	a4,40(s0)
   12984:	fc070ee3          	beqz	a4,12960 <__sflush_r+0x54>
   12988:	0004a903          	lw	s2,0(s1)
   1298c:	01379693          	slli	a3,a5,0x13
   12990:	0004a023          	sw	zero,0(s1)
   12994:	01c42583          	lw	a1,28(s0)
   12998:	0c06d863          	bgez	a3,12a68 <__sflush_r+0x15c>
   1299c:	05042603          	lw	a2,80(s0)
   129a0:	00c45783          	lhu	a5,12(s0)
   129a4:	0047f793          	andi	a5,a5,4
   129a8:	00078e63          	beqz	a5,129c4 <__sflush_r+0xb8>
   129ac:	00442783          	lw	a5,4(s0)
   129b0:	40f60633          	sub	a2,a2,a5
   129b4:	03042783          	lw	a5,48(s0)
   129b8:	00078663          	beqz	a5,129c4 <__sflush_r+0xb8>
   129bc:	03c42783          	lw	a5,60(s0)
   129c0:	40f60633          	sub	a2,a2,a5
   129c4:	02842783          	lw	a5,40(s0)
   129c8:	01c42583          	lw	a1,28(s0)
   129cc:	00000693          	li	a3,0
   129d0:	00048513          	mv	a0,s1
   129d4:	000780e7          	jalr	a5
   129d8:	fff00793          	li	a5,-1
   129dc:	00c45683          	lhu	a3,12(s0)
   129e0:	02f51263          	bne	a0,a5,12a04 <__sflush_r+0xf8>
   129e4:	0004a783          	lw	a5,0(s1)
   129e8:	01d00713          	li	a4,29
   129ec:	0af76c63          	bltu	a4,a5,12aa4 <__sflush_r+0x198>
   129f0:	20400737          	lui	a4,0x20400
   129f4:	00170713          	addi	a4,a4,1 # 20400001 <__global_pointer$+0x203dce59>
   129f8:	00f75733          	srl	a4,a4,a5
   129fc:	00177713          	andi	a4,a4,1
   12a00:	0a070263          	beqz	a4,12aa4 <__sflush_r+0x198>
   12a04:	fffff7b7          	lui	a5,0xfffff
   12a08:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__global_pointer$+0xfffdc657>
   12a0c:	01042703          	lw	a4,16(s0)
   12a10:	00d7f7b3          	and	a5,a5,a3
   12a14:	01079793          	slli	a5,a5,0x10
   12a18:	4107d793          	srai	a5,a5,0x10
   12a1c:	00e42023          	sw	a4,0(s0)
   12a20:	00f41623          	sh	a5,12(s0)
   12a24:	00042223          	sw	zero,4(s0)
   12a28:	01379713          	slli	a4,a5,0x13
   12a2c:	00075c63          	bgez	a4,12a44 <__sflush_r+0x138>
   12a30:	fff00793          	li	a5,-1
   12a34:	00f51663          	bne	a0,a5,12a40 <__sflush_r+0x134>
   12a38:	0004a783          	lw	a5,0(s1)
   12a3c:	00079463          	bnez	a5,12a44 <__sflush_r+0x138>
   12a40:	04a42823          	sw	a0,80(s0)
   12a44:	03042583          	lw	a1,48(s0)
   12a48:	0124a023          	sw	s2,0(s1)
   12a4c:	f0058ae3          	beqz	a1,12960 <__sflush_r+0x54>
   12a50:	04040793          	addi	a5,s0,64
   12a54:	00f58663          	beq	a1,a5,12a60 <__sflush_r+0x154>
   12a58:	00048513          	mv	a0,s1
   12a5c:	4f4000ef          	jal	ra,12f50 <_free_r>
   12a60:	02042823          	sw	zero,48(s0)
   12a64:	efdff06f          	j	12960 <__sflush_r+0x54>
   12a68:	00000613          	li	a2,0
   12a6c:	00100693          	li	a3,1
   12a70:	00048513          	mv	a0,s1
   12a74:	000700e7          	jalr	a4
   12a78:	fff00793          	li	a5,-1
   12a7c:	00050613          	mv	a2,a0
   12a80:	f2f510e3          	bne	a0,a5,129a0 <__sflush_r+0x94>
   12a84:	0004a783          	lw	a5,0(s1)
   12a88:	f0078ce3          	beqz	a5,129a0 <__sflush_r+0x94>
   12a8c:	01d00713          	li	a4,29
   12a90:	00e78663          	beq	a5,a4,12a9c <__sflush_r+0x190>
   12a94:	01600713          	li	a4,22
   12a98:	06e79263          	bne	a5,a4,12afc <__sflush_r+0x1f0>
   12a9c:	0124a023          	sw	s2,0(s1)
   12aa0:	ec1ff06f          	j	12960 <__sflush_r+0x54>
   12aa4:	0406e793          	ori	a5,a3,64
   12aa8:	00f41623          	sh	a5,12(s0)
   12aac:	fff00513          	li	a0,-1
   12ab0:	eb5ff06f          	j	12964 <__sflush_r+0x58>
   12ab4:	0105a983          	lw	s3,16(a1)
   12ab8:	ea0984e3          	beqz	s3,12960 <__sflush_r+0x54>
   12abc:	0005a903          	lw	s2,0(a1)
   12ac0:	00377713          	andi	a4,a4,3
   12ac4:	0135a023          	sw	s3,0(a1)
   12ac8:	41390933          	sub	s2,s2,s3
   12acc:	00000793          	li	a5,0
   12ad0:	00071463          	bnez	a4,12ad8 <__sflush_r+0x1cc>
   12ad4:	0145a783          	lw	a5,20(a1)
   12ad8:	00f42423          	sw	a5,8(s0)
   12adc:	e92052e3          	blez	s2,12960 <__sflush_r+0x54>
   12ae0:	02442783          	lw	a5,36(s0)
   12ae4:	01c42583          	lw	a1,28(s0)
   12ae8:	00090693          	mv	a3,s2
   12aec:	00098613          	mv	a2,s3
   12af0:	00048513          	mv	a0,s1
   12af4:	000780e7          	jalr	a5
   12af8:	00a04863          	bgtz	a0,12b08 <__sflush_r+0x1fc>
   12afc:	00c45783          	lhu	a5,12(s0)
   12b00:	0407e793          	ori	a5,a5,64
   12b04:	fa5ff06f          	j	12aa8 <__sflush_r+0x19c>
   12b08:	00a989b3          	add	s3,s3,a0
   12b0c:	40a90933          	sub	s2,s2,a0
   12b10:	fcdff06f          	j	12adc <__sflush_r+0x1d0>

00012b14 <_fflush_r>:
   12b14:	fe010113          	addi	sp,sp,-32
   12b18:	00812c23          	sw	s0,24(sp)
   12b1c:	00112e23          	sw	ra,28(sp)
   12b20:	00050413          	mv	s0,a0
   12b24:	00050c63          	beqz	a0,12b3c <_fflush_r+0x28>
   12b28:	03852783          	lw	a5,56(a0)
   12b2c:	00079863          	bnez	a5,12b3c <_fflush_r+0x28>
   12b30:	00b12623          	sw	a1,12(sp)
   12b34:	170000ef          	jal	ra,12ca4 <__sinit>
   12b38:	00c12583          	lw	a1,12(sp)
   12b3c:	00c59783          	lh	a5,12(a1)
   12b40:	00078c63          	beqz	a5,12b58 <_fflush_r+0x44>
   12b44:	00040513          	mv	a0,s0
   12b48:	01812403          	lw	s0,24(sp)
   12b4c:	01c12083          	lw	ra,28(sp)
   12b50:	02010113          	addi	sp,sp,32
   12b54:	db9ff06f          	j	1290c <__sflush_r>
   12b58:	01c12083          	lw	ra,28(sp)
   12b5c:	01812403          	lw	s0,24(sp)
   12b60:	00000513          	li	a0,0
   12b64:	02010113          	addi	sp,sp,32
   12b68:	00008067          	ret

00012b6c <fflush>:
   12b6c:	00050593          	mv	a1,a0
   12b70:	00051a63          	bnez	a0,12b84 <fflush+0x18>
   12b74:	81c1a503          	lw	a0,-2020(gp) # 229c4 <_global_impure_ptr>
   12b78:	000135b7          	lui	a1,0x13
   12b7c:	b1458593          	addi	a1,a1,-1260 # 12b14 <_fflush_r>
   12b80:	32d0006f          	j	136ac <_fwalk_reent>
   12b84:	8201a503          	lw	a0,-2016(gp) # 229c8 <_impure_ptr>
   12b88:	f8dff06f          	j	12b14 <_fflush_r>

00012b8c <__fp_lock>:
   12b8c:	00000513          	li	a0,0
   12b90:	00008067          	ret

00012b94 <_cleanup_r>:
   12b94:	0001b5b7          	lui	a1,0x1b
   12b98:	a1c58593          	addi	a1,a1,-1508 # 1aa1c <_fclose_r>
   12b9c:	3110006f          	j	136ac <_fwalk_reent>

00012ba0 <std.isra.0>:
   12ba0:	ff010113          	addi	sp,sp,-16
   12ba4:	00812423          	sw	s0,8(sp)
   12ba8:	00112623          	sw	ra,12(sp)
   12bac:	00050413          	mv	s0,a0
   12bb0:	00b51623          	sh	a1,12(a0)
   12bb4:	00c51723          	sh	a2,14(a0)
   12bb8:	00052023          	sw	zero,0(a0)
   12bbc:	00052223          	sw	zero,4(a0)
   12bc0:	00052423          	sw	zero,8(a0)
   12bc4:	06052223          	sw	zero,100(a0)
   12bc8:	00052823          	sw	zero,16(a0)
   12bcc:	00052a23          	sw	zero,20(a0)
   12bd0:	00052c23          	sw	zero,24(a0)
   12bd4:	00800613          	li	a2,8
   12bd8:	00000593          	li	a1,0
   12bdc:	05c50513          	addi	a0,a0,92
   12be0:	fb0fd0ef          	jal	ra,10390 <memset>
   12be4:	000177b7          	lui	a5,0x17
   12be8:	7e878793          	addi	a5,a5,2024 # 177e8 <__sread>
   12bec:	02f42023          	sw	a5,32(s0)
   12bf0:	000187b7          	lui	a5,0x18
   12bf4:	84078793          	addi	a5,a5,-1984 # 17840 <__swrite>
   12bf8:	02f42223          	sw	a5,36(s0)
   12bfc:	000187b7          	lui	a5,0x18
   12c00:	8c478793          	addi	a5,a5,-1852 # 178c4 <__sseek>
   12c04:	02f42423          	sw	a5,40(s0)
   12c08:	000187b7          	lui	a5,0x18
   12c0c:	91c78793          	addi	a5,a5,-1764 # 1791c <__sclose>
   12c10:	00842e23          	sw	s0,28(s0)
   12c14:	02f42623          	sw	a5,44(s0)
   12c18:	00c12083          	lw	ra,12(sp)
   12c1c:	00812403          	lw	s0,8(sp)
   12c20:	01010113          	addi	sp,sp,16
   12c24:	00008067          	ret

00012c28 <__fp_unlock>:
   12c28:	00000513          	li	a0,0
   12c2c:	00008067          	ret

00012c30 <__sfmoreglue>:
   12c30:	ff010113          	addi	sp,sp,-16
   12c34:	00912223          	sw	s1,4(sp)
   12c38:	06800613          	li	a2,104
   12c3c:	fff58493          	addi	s1,a1,-1
   12c40:	02c484b3          	mul	s1,s1,a2
   12c44:	01212023          	sw	s2,0(sp)
   12c48:	00058913          	mv	s2,a1
   12c4c:	00812423          	sw	s0,8(sp)
   12c50:	00112623          	sw	ra,12(sp)
   12c54:	07448593          	addi	a1,s1,116
   12c58:	5b9020ef          	jal	ra,15a10 <_malloc_r>
   12c5c:	00050413          	mv	s0,a0
   12c60:	02050063          	beqz	a0,12c80 <__sfmoreglue+0x50>
   12c64:	00052023          	sw	zero,0(a0)
   12c68:	01252223          	sw	s2,4(a0)
   12c6c:	00c50513          	addi	a0,a0,12
   12c70:	00a42423          	sw	a0,8(s0)
   12c74:	06848613          	addi	a2,s1,104
   12c78:	00000593          	li	a1,0
   12c7c:	f14fd0ef          	jal	ra,10390 <memset>
   12c80:	00040513          	mv	a0,s0
   12c84:	00c12083          	lw	ra,12(sp)
   12c88:	00812403          	lw	s0,8(sp)
   12c8c:	00412483          	lw	s1,4(sp)
   12c90:	00012903          	lw	s2,0(sp)
   12c94:	01010113          	addi	sp,sp,16
   12c98:	00008067          	ret

00012c9c <_cleanup>:
   12c9c:	81c1a503          	lw	a0,-2020(gp) # 229c4 <_global_impure_ptr>
   12ca0:	ef5ff06f          	j	12b94 <_cleanup_r>

00012ca4 <__sinit>:
   12ca4:	03852783          	lw	a5,56(a0)
   12ca8:	06079e63          	bnez	a5,12d24 <__sinit+0x80>
   12cac:	ff010113          	addi	sp,sp,-16
   12cb0:	000137b7          	lui	a5,0x13
   12cb4:	00112623          	sw	ra,12(sp)
   12cb8:	00812423          	sw	s0,8(sp)
   12cbc:	b9478793          	addi	a5,a5,-1132 # 12b94 <_cleanup_r>
   12cc0:	02f52e23          	sw	a5,60(a0)
   12cc4:	00300793          	li	a5,3
   12cc8:	2ef52223          	sw	a5,740(a0)
   12ccc:	2ec50793          	addi	a5,a0,748
   12cd0:	00050413          	mv	s0,a0
   12cd4:	2ef52423          	sw	a5,744(a0)
   12cd8:	2e052023          	sw	zero,736(a0)
   12cdc:	00452503          	lw	a0,4(a0)
   12ce0:	00000613          	li	a2,0
   12ce4:	00400593          	li	a1,4
   12ce8:	eb9ff0ef          	jal	ra,12ba0 <std.isra.0>
   12cec:	00842503          	lw	a0,8(s0)
   12cf0:	00100613          	li	a2,1
   12cf4:	00900593          	li	a1,9
   12cf8:	ea9ff0ef          	jal	ra,12ba0 <std.isra.0>
   12cfc:	00c42503          	lw	a0,12(s0)
   12d00:	00200613          	li	a2,2
   12d04:	01200593          	li	a1,18
   12d08:	e99ff0ef          	jal	ra,12ba0 <std.isra.0>
   12d0c:	00100793          	li	a5,1
   12d10:	02f42c23          	sw	a5,56(s0)
   12d14:	00c12083          	lw	ra,12(sp)
   12d18:	00812403          	lw	s0,8(sp)
   12d1c:	01010113          	addi	sp,sp,16
   12d20:	00008067          	ret
   12d24:	00008067          	ret

00012d28 <__sfp>:
   12d28:	ff010113          	addi	sp,sp,-16
   12d2c:	00912223          	sw	s1,4(sp)
   12d30:	81c1a483          	lw	s1,-2020(gp) # 229c4 <_global_impure_ptr>
   12d34:	01212023          	sw	s2,0(sp)
   12d38:	00112623          	sw	ra,12(sp)
   12d3c:	0384a783          	lw	a5,56(s1)
   12d40:	00812423          	sw	s0,8(sp)
   12d44:	00050913          	mv	s2,a0
   12d48:	00079663          	bnez	a5,12d54 <__sfp+0x2c>
   12d4c:	00048513          	mv	a0,s1
   12d50:	f55ff0ef          	jal	ra,12ca4 <__sinit>
   12d54:	2e048493          	addi	s1,s1,736
   12d58:	0084a403          	lw	s0,8(s1)
   12d5c:	0044a783          	lw	a5,4(s1)
   12d60:	fff78793          	addi	a5,a5,-1
   12d64:	0007da63          	bgez	a5,12d78 <__sfp+0x50>
   12d68:	0004a783          	lw	a5,0(s1)
   12d6c:	00078e63          	beqz	a5,12d88 <__sfp+0x60>
   12d70:	0004a483          	lw	s1,0(s1)
   12d74:	fe5ff06f          	j	12d58 <__sfp+0x30>
   12d78:	00c41703          	lh	a4,12(s0)
   12d7c:	04070463          	beqz	a4,12dc4 <__sfp+0x9c>
   12d80:	06840413          	addi	s0,s0,104
   12d84:	fddff06f          	j	12d60 <__sfp+0x38>
   12d88:	00400593          	li	a1,4
   12d8c:	00090513          	mv	a0,s2
   12d90:	ea1ff0ef          	jal	ra,12c30 <__sfmoreglue>
   12d94:	00a4a023          	sw	a0,0(s1)
   12d98:	fc051ce3          	bnez	a0,12d70 <__sfp+0x48>
   12d9c:	00c00793          	li	a5,12
   12da0:	00f92023          	sw	a5,0(s2)
   12da4:	00000413          	li	s0,0
   12da8:	00040513          	mv	a0,s0
   12dac:	00c12083          	lw	ra,12(sp)
   12db0:	00812403          	lw	s0,8(sp)
   12db4:	00412483          	lw	s1,4(sp)
   12db8:	00012903          	lw	s2,0(sp)
   12dbc:	01010113          	addi	sp,sp,16
   12dc0:	00008067          	ret
   12dc4:	ffff07b7          	lui	a5,0xffff0
   12dc8:	00178793          	addi	a5,a5,1 # ffff0001 <__global_pointer$+0xfffcce59>
   12dcc:	06042223          	sw	zero,100(s0)
   12dd0:	00042023          	sw	zero,0(s0)
   12dd4:	00042223          	sw	zero,4(s0)
   12dd8:	00042423          	sw	zero,8(s0)
   12ddc:	00f42623          	sw	a5,12(s0)
   12de0:	00042823          	sw	zero,16(s0)
   12de4:	00042a23          	sw	zero,20(s0)
   12de8:	00042c23          	sw	zero,24(s0)
   12dec:	00800613          	li	a2,8
   12df0:	00000593          	li	a1,0
   12df4:	05c40513          	addi	a0,s0,92
   12df8:	d98fd0ef          	jal	ra,10390 <memset>
   12dfc:	02042823          	sw	zero,48(s0)
   12e00:	02042a23          	sw	zero,52(s0)
   12e04:	04042223          	sw	zero,68(s0)
   12e08:	04042423          	sw	zero,72(s0)
   12e0c:	f9dff06f          	j	12da8 <__sfp+0x80>

00012e10 <__sfp_lock_acquire>:
   12e10:	00008067          	ret

00012e14 <__sfp_lock_release>:
   12e14:	00008067          	ret

00012e18 <__sinit_lock_acquire>:
   12e18:	00008067          	ret

00012e1c <__sinit_lock_release>:
   12e1c:	00008067          	ret

00012e20 <__fp_lock_all>:
   12e20:	8201a503          	lw	a0,-2016(gp) # 229c8 <_impure_ptr>
   12e24:	000135b7          	lui	a1,0x13
   12e28:	b8c58593          	addi	a1,a1,-1140 # 12b8c <__fp_lock>
   12e2c:	7e00006f          	j	1360c <_fwalk>

00012e30 <__fp_unlock_all>:
   12e30:	8201a503          	lw	a0,-2016(gp) # 229c8 <_impure_ptr>
   12e34:	000135b7          	lui	a1,0x13
   12e38:	c2858593          	addi	a1,a1,-984 # 12c28 <__fp_unlock>
   12e3c:	7d00006f          	j	1360c <_fwalk>

00012e40 <_malloc_trim_r>:
   12e40:	fd010113          	addi	sp,sp,-48
   12e44:	03212023          	sw	s2,32(sp)
   12e48:	00022937          	lui	s2,0x22
   12e4c:	02812423          	sw	s0,40(sp)
   12e50:	02912223          	sw	s1,36(sp)
   12e54:	01312e23          	sw	s3,28(sp)
   12e58:	00b12623          	sw	a1,12(sp)
   12e5c:	02112623          	sw	ra,44(sp)
   12e60:	00050993          	mv	s3,a0
   12e64:	59c90913          	addi	s2,s2,1436 # 2259c <__malloc_av_>
   12e68:	3c4030ef          	jal	ra,1622c <__malloc_lock>
   12e6c:	00892783          	lw	a5,8(s2)
   12e70:	00c12583          	lw	a1,12(sp)
   12e74:	0047a483          	lw	s1,4(a5)
   12e78:	000017b7          	lui	a5,0x1
   12e7c:	fef78413          	addi	s0,a5,-17 # fef <_start-0xf085>
   12e80:	ffc4f493          	andi	s1,s1,-4
   12e84:	40b40433          	sub	s0,s0,a1
   12e88:	00940433          	add	s0,s0,s1
   12e8c:	00c45413          	srli	s0,s0,0xc
   12e90:	fff40413          	addi	s0,s0,-1
   12e94:	00c41413          	slli	s0,s0,0xc
   12e98:	02f45663          	ble	a5,s0,12ec4 <_malloc_trim_r+0x84>
   12e9c:	00098513          	mv	a0,s3
   12ea0:	390030ef          	jal	ra,16230 <__malloc_unlock>
   12ea4:	00000513          	li	a0,0
   12ea8:	02c12083          	lw	ra,44(sp)
   12eac:	02812403          	lw	s0,40(sp)
   12eb0:	02412483          	lw	s1,36(sp)
   12eb4:	02012903          	lw	s2,32(sp)
   12eb8:	01c12983          	lw	s3,28(sp)
   12ebc:	03010113          	addi	sp,sp,48
   12ec0:	00008067          	ret
   12ec4:	00000593          	li	a1,0
   12ec8:	00098513          	mv	a0,s3
   12ecc:	750040ef          	jal	ra,1761c <_sbrk_r>
   12ed0:	00892783          	lw	a5,8(s2)
   12ed4:	009787b3          	add	a5,a5,s1
   12ed8:	fcf512e3          	bne	a0,a5,12e9c <_malloc_trim_r+0x5c>
   12edc:	408005b3          	neg	a1,s0
   12ee0:	00098513          	mv	a0,s3
   12ee4:	738040ef          	jal	ra,1761c <_sbrk_r>
   12ee8:	fff00793          	li	a5,-1
   12eec:	02f51c63          	bne	a0,a5,12f24 <_malloc_trim_r+0xe4>
   12ef0:	00000593          	li	a1,0
   12ef4:	00098513          	mv	a0,s3
   12ef8:	724040ef          	jal	ra,1761c <_sbrk_r>
   12efc:	00892703          	lw	a4,8(s2)
   12f00:	00f00693          	li	a3,15
   12f04:	40e507b3          	sub	a5,a0,a4
   12f08:	f8f6dae3          	ble	a5,a3,12e9c <_malloc_trim_r+0x5c>
   12f0c:	8241a683          	lw	a3,-2012(gp) # 229cc <__malloc_sbrk_base>
   12f10:	0017e793          	ori	a5,a5,1
   12f14:	00f72223          	sw	a5,4(a4)
   12f18:	40d50533          	sub	a0,a0,a3
   12f1c:	84a1ae23          	sw	a0,-1956(gp) # 22a04 <__malloc_current_mallinfo>
   12f20:	f7dff06f          	j	12e9c <_malloc_trim_r+0x5c>
   12f24:	00892783          	lw	a5,8(s2)
   12f28:	408484b3          	sub	s1,s1,s0
   12f2c:	0014e493          	ori	s1,s1,1
   12f30:	0097a223          	sw	s1,4(a5)
   12f34:	85c1a783          	lw	a5,-1956(gp) # 22a04 <__malloc_current_mallinfo>
   12f38:	00098513          	mv	a0,s3
   12f3c:	40878433          	sub	s0,a5,s0
   12f40:	8481ae23          	sw	s0,-1956(gp) # 22a04 <__malloc_current_mallinfo>
   12f44:	2ec030ef          	jal	ra,16230 <__malloc_unlock>
   12f48:	00100513          	li	a0,1
   12f4c:	f5dff06f          	j	12ea8 <_malloc_trim_r+0x68>

00012f50 <_free_r>:
   12f50:	24058c63          	beqz	a1,131a8 <_free_r+0x258>
   12f54:	ff010113          	addi	sp,sp,-16
   12f58:	00812423          	sw	s0,8(sp)
   12f5c:	00912223          	sw	s1,4(sp)
   12f60:	00050413          	mv	s0,a0
   12f64:	00058493          	mv	s1,a1
   12f68:	00112623          	sw	ra,12(sp)
   12f6c:	2c0030ef          	jal	ra,1622c <__malloc_lock>
   12f70:	ffc4a503          	lw	a0,-4(s1)
   12f74:	00022637          	lui	a2,0x22
   12f78:	ff848693          	addi	a3,s1,-8
   12f7c:	ffe57793          	andi	a5,a0,-2
   12f80:	59c60813          	addi	a6,a2,1436 # 2259c <__malloc_av_>
   12f84:	00f685b3          	add	a1,a3,a5
   12f88:	0045a703          	lw	a4,4(a1)
   12f8c:	00882803          	lw	a6,8(a6)
   12f90:	59c60613          	addi	a2,a2,1436
   12f94:	ffc77713          	andi	a4,a4,-4
   12f98:	00157513          	andi	a0,a0,1
   12f9c:	06b81063          	bne	a6,a1,12ffc <_free_r+0xac>
   12fa0:	00e787b3          	add	a5,a5,a4
   12fa4:	02051063          	bnez	a0,12fc4 <_free_r+0x74>
   12fa8:	ff84a703          	lw	a4,-8(s1)
   12fac:	40e686b3          	sub	a3,a3,a4
   12fb0:	0086a583          	lw	a1,8(a3)
   12fb4:	00e787b3          	add	a5,a5,a4
   12fb8:	00c6a703          	lw	a4,12(a3)
   12fbc:	00e5a623          	sw	a4,12(a1)
   12fc0:	00b72423          	sw	a1,8(a4)
   12fc4:	0017e713          	ori	a4,a5,1
   12fc8:	00e6a223          	sw	a4,4(a3)
   12fcc:	8281a703          	lw	a4,-2008(gp) # 229d0 <__malloc_trim_threshold>
   12fd0:	00d62423          	sw	a3,8(a2)
   12fd4:	00e7e863          	bltu	a5,a4,12fe4 <_free_r+0x94>
   12fd8:	8381a583          	lw	a1,-1992(gp) # 229e0 <__malloc_top_pad>
   12fdc:	00040513          	mv	a0,s0
   12fe0:	e61ff0ef          	jal	ra,12e40 <_malloc_trim_r>
   12fe4:	00040513          	mv	a0,s0
   12fe8:	00812403          	lw	s0,8(sp)
   12fec:	00c12083          	lw	ra,12(sp)
   12ff0:	00412483          	lw	s1,4(sp)
   12ff4:	01010113          	addi	sp,sp,16
   12ff8:	2380306f          	j	16230 <__malloc_unlock>
   12ffc:	00e5a223          	sw	a4,4(a1)
   13000:	00000813          	li	a6,0
   13004:	02051663          	bnez	a0,13030 <_free_r+0xe0>
   13008:	ff84a503          	lw	a0,-8(s1)
   1300c:	000228b7          	lui	a7,0x22
   13010:	5a488893          	addi	a7,a7,1444 # 225a4 <__malloc_av_+0x8>
   13014:	40a686b3          	sub	a3,a3,a0
   13018:	00a787b3          	add	a5,a5,a0
   1301c:	0086a503          	lw	a0,8(a3)
   13020:	0b150663          	beq	a0,a7,130cc <_free_r+0x17c>
   13024:	00c6a883          	lw	a7,12(a3)
   13028:	01152623          	sw	a7,12(a0)
   1302c:	00a8a423          	sw	a0,8(a7)
   13030:	00e58533          	add	a0,a1,a4
   13034:	00452503          	lw	a0,4(a0)
   13038:	00157513          	andi	a0,a0,1
   1303c:	02051863          	bnez	a0,1306c <_free_r+0x11c>
   13040:	00e787b3          	add	a5,a5,a4
   13044:	0085a703          	lw	a4,8(a1)
   13048:	08081663          	bnez	a6,130d4 <_free_r+0x184>
   1304c:	00022537          	lui	a0,0x22
   13050:	5a450513          	addi	a0,a0,1444 # 225a4 <__malloc_av_+0x8>
   13054:	08a71063          	bne	a4,a0,130d4 <_free_r+0x184>
   13058:	00d62a23          	sw	a3,20(a2)
   1305c:	00d62823          	sw	a3,16(a2)
   13060:	00e6a623          	sw	a4,12(a3)
   13064:	00e6a423          	sw	a4,8(a3)
   13068:	00100813          	li	a6,1
   1306c:	0017e713          	ori	a4,a5,1
   13070:	00e6a223          	sw	a4,4(a3)
   13074:	00f68733          	add	a4,a3,a5
   13078:	00f72023          	sw	a5,0(a4)
   1307c:	f60814e3          	bnez	a6,12fe4 <_free_r+0x94>
   13080:	1ff00713          	li	a4,511
   13084:	06f76063          	bltu	a4,a5,130e4 <_free_r+0x194>
   13088:	0037d793          	srli	a5,a5,0x3
   1308c:	4027d593          	srai	a1,a5,0x2
   13090:	00100713          	li	a4,1
   13094:	00b71733          	sll	a4,a4,a1
   13098:	00462583          	lw	a1,4(a2)
   1309c:	00178793          	addi	a5,a5,1
   130a0:	00379793          	slli	a5,a5,0x3
   130a4:	00f607b3          	add	a5,a2,a5
   130a8:	00b76733          	or	a4,a4,a1
   130ac:	00e62223          	sw	a4,4(a2)
   130b0:	0007a703          	lw	a4,0(a5)
   130b4:	ff878613          	addi	a2,a5,-8
   130b8:	00c6a623          	sw	a2,12(a3)
   130bc:	00e6a423          	sw	a4,8(a3)
   130c0:	00d7a023          	sw	a3,0(a5)
   130c4:	00d72623          	sw	a3,12(a4)
   130c8:	f1dff06f          	j	12fe4 <_free_r+0x94>
   130cc:	00100813          	li	a6,1
   130d0:	f61ff06f          	j	13030 <_free_r+0xe0>
   130d4:	00c5a583          	lw	a1,12(a1)
   130d8:	00b72623          	sw	a1,12(a4)
   130dc:	00e5a423          	sw	a4,8(a1)
   130e0:	f8dff06f          	j	1306c <_free_r+0x11c>
   130e4:	0097d593          	srli	a1,a5,0x9
   130e8:	00400713          	li	a4,4
   130ec:	04b76863          	bltu	a4,a1,1313c <_free_r+0x1ec>
   130f0:	0067d713          	srli	a4,a5,0x6
   130f4:	03870713          	addi	a4,a4,56
   130f8:	00170593          	addi	a1,a4,1
   130fc:	00359593          	slli	a1,a1,0x3
   13100:	00b605b3          	add	a1,a2,a1
   13104:	ff858513          	addi	a0,a1,-8
   13108:	0005a583          	lw	a1,0(a1)
   1310c:	08b51463          	bne	a0,a1,13194 <_free_r+0x244>
   13110:	00100793          	li	a5,1
   13114:	40275713          	srai	a4,a4,0x2
   13118:	00e79733          	sll	a4,a5,a4
   1311c:	00462783          	lw	a5,4(a2)
   13120:	00f76733          	or	a4,a4,a5
   13124:	00e62223          	sw	a4,4(a2)
   13128:	00a6a623          	sw	a0,12(a3)
   1312c:	00b6a423          	sw	a1,8(a3)
   13130:	00d52423          	sw	a3,8(a0)
   13134:	00d5a623          	sw	a3,12(a1)
   13138:	eadff06f          	j	12fe4 <_free_r+0x94>
   1313c:	01400713          	li	a4,20
   13140:	00b76663          	bltu	a4,a1,1314c <_free_r+0x1fc>
   13144:	05b58713          	addi	a4,a1,91
   13148:	fb1ff06f          	j	130f8 <_free_r+0x1a8>
   1314c:	05400713          	li	a4,84
   13150:	00b76863          	bltu	a4,a1,13160 <_free_r+0x210>
   13154:	00c7d713          	srli	a4,a5,0xc
   13158:	06e70713          	addi	a4,a4,110
   1315c:	f9dff06f          	j	130f8 <_free_r+0x1a8>
   13160:	15400713          	li	a4,340
   13164:	00b76863          	bltu	a4,a1,13174 <_free_r+0x224>
   13168:	00f7d713          	srli	a4,a5,0xf
   1316c:	07770713          	addi	a4,a4,119
   13170:	f89ff06f          	j	130f8 <_free_r+0x1a8>
   13174:	55400513          	li	a0,1364
   13178:	07e00713          	li	a4,126
   1317c:	f6b56ee3          	bltu	a0,a1,130f8 <_free_r+0x1a8>
   13180:	0127d713          	srli	a4,a5,0x12
   13184:	07c70713          	addi	a4,a4,124
   13188:	f71ff06f          	j	130f8 <_free_r+0x1a8>
   1318c:	0085a583          	lw	a1,8(a1)
   13190:	00b50863          	beq	a0,a1,131a0 <_free_r+0x250>
   13194:	0045a703          	lw	a4,4(a1)
   13198:	ffc77713          	andi	a4,a4,-4
   1319c:	fee7e8e3          	bltu	a5,a4,1318c <_free_r+0x23c>
   131a0:	00c5a503          	lw	a0,12(a1)
   131a4:	f85ff06f          	j	13128 <_free_r+0x1d8>
   131a8:	00008067          	ret

000131ac <__sfvwrite_r>:
   131ac:	00862783          	lw	a5,8(a2)
   131b0:	00079863          	bnez	a5,131c0 <__sfvwrite_r+0x14>
   131b4:	00000793          	li	a5,0
   131b8:	00078513          	mv	a0,a5
   131bc:	00008067          	ret
   131c0:	00c5d783          	lhu	a5,12(a1)
   131c4:	fb010113          	addi	sp,sp,-80
   131c8:	04812423          	sw	s0,72(sp)
   131cc:	05212023          	sw	s2,64(sp)
   131d0:	03512a23          	sw	s5,52(sp)
   131d4:	04112623          	sw	ra,76(sp)
   131d8:	04912223          	sw	s1,68(sp)
   131dc:	03312e23          	sw	s3,60(sp)
   131e0:	03412c23          	sw	s4,56(sp)
   131e4:	03612823          	sw	s6,48(sp)
   131e8:	03712623          	sw	s7,44(sp)
   131ec:	03812423          	sw	s8,40(sp)
   131f0:	03912223          	sw	s9,36(sp)
   131f4:	03a12023          	sw	s10,32(sp)
   131f8:	01b12e23          	sw	s11,28(sp)
   131fc:	0087f793          	andi	a5,a5,8
   13200:	00060a93          	mv	s5,a2
   13204:	00058413          	mv	s0,a1
   13208:	00050913          	mv	s2,a0
   1320c:	0e078263          	beqz	a5,132f0 <__sfvwrite_r+0x144>
   13210:	0105a783          	lw	a5,16(a1)
   13214:	0c078e63          	beqz	a5,132f0 <__sfvwrite_r+0x144>
   13218:	00c45783          	lhu	a5,12(s0)
   1321c:	000aaa03          	lw	s4,0(s5)
   13220:	0027f713          	andi	a4,a5,2
   13224:	16071a63          	bnez	a4,13398 <__sfvwrite_r+0x1ec>
   13228:	0017f793          	andi	a5,a5,1
   1322c:	20078463          	beqz	a5,13434 <__sfvwrite_r+0x288>
   13230:	00000b93          	li	s7,0
   13234:	00000513          	li	a0,0
   13238:	00000b13          	li	s6,0
   1323c:	00000993          	li	s3,0
   13240:	36098463          	beqz	s3,135a8 <__sfvwrite_r+0x3fc>
   13244:	02051263          	bnez	a0,13268 <__sfvwrite_r+0xbc>
   13248:	00098613          	mv	a2,s3
   1324c:	00a00593          	li	a1,10
   13250:	000b0513          	mv	a0,s6
   13254:	679020ef          	jal	ra,160cc <memchr>
   13258:	00198b93          	addi	s7,s3,1
   1325c:	00050663          	beqz	a0,13268 <__sfvwrite_r+0xbc>
   13260:	00150513          	addi	a0,a0,1
   13264:	41650bb3          	sub	s7,a0,s6
   13268:	000b8c13          	mv	s8,s7
   1326c:	0179f463          	bleu	s7,s3,13274 <__sfvwrite_r+0xc8>
   13270:	00098c13          	mv	s8,s3
   13274:	00042503          	lw	a0,0(s0)
   13278:	01042783          	lw	a5,16(s0)
   1327c:	01442683          	lw	a3,20(s0)
   13280:	32a7fe63          	bleu	a0,a5,135bc <__sfvwrite_r+0x410>
   13284:	00842483          	lw	s1,8(s0)
   13288:	009684b3          	add	s1,a3,s1
   1328c:	3384d863          	ble	s8,s1,135bc <__sfvwrite_r+0x410>
   13290:	000b0593          	mv	a1,s6
   13294:	00048613          	mv	a2,s1
   13298:	741020ef          	jal	ra,161d8 <memmove>
   1329c:	00042783          	lw	a5,0(s0)
   132a0:	00040593          	mv	a1,s0
   132a4:	00090513          	mv	a0,s2
   132a8:	009787b3          	add	a5,a5,s1
   132ac:	00f42023          	sw	a5,0(s0)
   132b0:	865ff0ef          	jal	ra,12b14 <_fflush_r>
   132b4:	16051663          	bnez	a0,13420 <__sfvwrite_r+0x274>
   132b8:	409b8bb3          	sub	s7,s7,s1
   132bc:	00100513          	li	a0,1
   132c0:	000b9a63          	bnez	s7,132d4 <__sfvwrite_r+0x128>
   132c4:	00040593          	mv	a1,s0
   132c8:	00090513          	mv	a0,s2
   132cc:	849ff0ef          	jal	ra,12b14 <_fflush_r>
   132d0:	14051863          	bnez	a0,13420 <__sfvwrite_r+0x274>
   132d4:	008aa783          	lw	a5,8(s5)
   132d8:	009b0b33          	add	s6,s6,s1
   132dc:	409989b3          	sub	s3,s3,s1
   132e0:	409784b3          	sub	s1,a5,s1
   132e4:	009aa423          	sw	s1,8(s5)
   132e8:	f4049ce3          	bnez	s1,13240 <__sfvwrite_r+0x94>
   132ec:	0680006f          	j	13354 <__sfvwrite_r+0x1a8>
   132f0:	00040593          	mv	a1,s0
   132f4:	00090513          	mv	a0,s2
   132f8:	b58ff0ef          	jal	ra,12650 <__swsetup_r>
   132fc:	fff00793          	li	a5,-1
   13300:	f0050ce3          	beqz	a0,13218 <__sfvwrite_r+0x6c>
   13304:	0540006f          	j	13358 <__sfvwrite_r+0x1ac>
   13308:	000a2983          	lw	s3,0(s4)
   1330c:	004a2483          	lw	s1,4(s4)
   13310:	008a0a13          	addi	s4,s4,8
   13314:	fe048ae3          	beqz	s1,13308 <__sfvwrite_r+0x15c>
   13318:	00048693          	mv	a3,s1
   1331c:	009b7463          	bleu	s1,s6,13324 <__sfvwrite_r+0x178>
   13320:	000b0693          	mv	a3,s6
   13324:	02442783          	lw	a5,36(s0)
   13328:	01c42583          	lw	a1,28(s0)
   1332c:	00098613          	mv	a2,s3
   13330:	00090513          	mv	a0,s2
   13334:	000780e7          	jalr	a5
   13338:	0ea05463          	blez	a0,13420 <__sfvwrite_r+0x274>
   1333c:	008aa783          	lw	a5,8(s5)
   13340:	00a989b3          	add	s3,s3,a0
   13344:	40a484b3          	sub	s1,s1,a0
   13348:	40a78533          	sub	a0,a5,a0
   1334c:	00aaa423          	sw	a0,8(s5)
   13350:	fc0512e3          	bnez	a0,13314 <__sfvwrite_r+0x168>
   13354:	00000793          	li	a5,0
   13358:	04c12083          	lw	ra,76(sp)
   1335c:	04812403          	lw	s0,72(sp)
   13360:	04412483          	lw	s1,68(sp)
   13364:	04012903          	lw	s2,64(sp)
   13368:	03c12983          	lw	s3,60(sp)
   1336c:	03812a03          	lw	s4,56(sp)
   13370:	03412a83          	lw	s5,52(sp)
   13374:	03012b03          	lw	s6,48(sp)
   13378:	02c12b83          	lw	s7,44(sp)
   1337c:	02812c03          	lw	s8,40(sp)
   13380:	02412c83          	lw	s9,36(sp)
   13384:	02012d03          	lw	s10,32(sp)
   13388:	01c12d83          	lw	s11,28(sp)
   1338c:	00078513          	mv	a0,a5
   13390:	05010113          	addi	sp,sp,80
   13394:	00008067          	ret
   13398:	80000b37          	lui	s6,0x80000
   1339c:	00000993          	li	s3,0
   133a0:	00000493          	li	s1,0
   133a4:	c00b4b13          	xori	s6,s6,-1024
   133a8:	f6dff06f          	j	13314 <__sfvwrite_r+0x168>
   133ac:	000a2b03          	lw	s6,0(s4)
   133b0:	004a2483          	lw	s1,4(s4)
   133b4:	008a0a13          	addi	s4,s4,8
   133b8:	fe048ae3          	beqz	s1,133ac <__sfvwrite_r+0x200>
   133bc:	00c45703          	lhu	a4,12(s0)
   133c0:	00842783          	lw	a5,8(s0)
   133c4:	00042503          	lw	a0,0(s0)
   133c8:	20077693          	andi	a3,a4,512
   133cc:	14068863          	beqz	a3,1351c <__sfvwrite_r+0x370>
   133d0:	0cf4e263          	bltu	s1,a5,13494 <__sfvwrite_r+0x2e8>
   133d4:	48077693          	andi	a3,a4,1152
   133d8:	0a068e63          	beqz	a3,13494 <__sfvwrite_r+0x2e8>
   133dc:	01442d83          	lw	s11,20(s0)
   133e0:	01042583          	lw	a1,16(s0)
   133e4:	03bc8db3          	mul	s11,s9,s11
   133e8:	40b509b3          	sub	s3,a0,a1
   133ec:	00198793          	addi	a5,s3,1
   133f0:	009787b3          	add	a5,a5,s1
   133f4:	03adcdb3          	div	s11,s11,s10
   133f8:	00fdf463          	bleu	a5,s11,13400 <__sfvwrite_r+0x254>
   133fc:	00078d93          	mv	s11,a5
   13400:	40077713          	andi	a4,a4,1024
   13404:	0e070463          	beqz	a4,134ec <__sfvwrite_r+0x340>
   13408:	000d8593          	mv	a1,s11
   1340c:	00090513          	mv	a0,s2
   13410:	600020ef          	jal	ra,15a10 <_malloc_r>
   13414:	04051063          	bnez	a0,13454 <__sfvwrite_r+0x2a8>
   13418:	00c00793          	li	a5,12
   1341c:	00f92023          	sw	a5,0(s2)
   13420:	00c45783          	lhu	a5,12(s0)
   13424:	0407e793          	ori	a5,a5,64
   13428:	00f41623          	sh	a5,12(s0)
   1342c:	fff00793          	li	a5,-1
   13430:	f29ff06f          	j	13358 <__sfvwrite_r+0x1ac>
   13434:	80000bb7          	lui	s7,0x80000
   13438:	ffebcc13          	xori	s8,s7,-2
   1343c:	00000b13          	li	s6,0
   13440:	00000493          	li	s1,0
   13444:	fffbcb93          	not	s7,s7
   13448:	00300c93          	li	s9,3
   1344c:	00200d13          	li	s10,2
   13450:	f69ff06f          	j	133b8 <__sfvwrite_r+0x20c>
   13454:	01042583          	lw	a1,16(s0)
   13458:	00098613          	mv	a2,s3
   1345c:	00a12623          	sw	a0,12(sp)
   13460:	491020ef          	jal	ra,160f0 <memcpy>
   13464:	00c45703          	lhu	a4,12(s0)
   13468:	00c12783          	lw	a5,12(sp)
   1346c:	b7f77713          	andi	a4,a4,-1153
   13470:	08076713          	ori	a4,a4,128
   13474:	00e41623          	sh	a4,12(s0)
   13478:	00f42823          	sw	a5,16(s0)
   1347c:	01b42a23          	sw	s11,20(s0)
   13480:	013787b3          	add	a5,a5,s3
   13484:	413d8db3          	sub	s11,s11,s3
   13488:	00f42023          	sw	a5,0(s0)
   1348c:	01b42423          	sw	s11,8(s0)
   13490:	00048793          	mv	a5,s1
   13494:	00048993          	mv	s3,s1
   13498:	00f4f463          	bleu	a5,s1,134a0 <__sfvwrite_r+0x2f4>
   1349c:	00048793          	mv	a5,s1
   134a0:	00042503          	lw	a0,0(s0)
   134a4:	00078613          	mv	a2,a5
   134a8:	000b0593          	mv	a1,s6
   134ac:	00f12623          	sw	a5,12(sp)
   134b0:	529020ef          	jal	ra,161d8 <memmove>
   134b4:	00842703          	lw	a4,8(s0)
   134b8:	00c12783          	lw	a5,12(sp)
   134bc:	40f70733          	sub	a4,a4,a5
   134c0:	00e42423          	sw	a4,8(s0)
   134c4:	00042703          	lw	a4,0(s0)
   134c8:	00f707b3          	add	a5,a4,a5
   134cc:	00f42023          	sw	a5,0(s0)
   134d0:	008aa783          	lw	a5,8(s5)
   134d4:	013b0b33          	add	s6,s6,s3
   134d8:	413484b3          	sub	s1,s1,s3
   134dc:	413789b3          	sub	s3,a5,s3
   134e0:	013aa423          	sw	s3,8(s5)
   134e4:	ec099ae3          	bnez	s3,133b8 <__sfvwrite_r+0x20c>
   134e8:	e6dff06f          	j	13354 <__sfvwrite_r+0x1a8>
   134ec:	000d8613          	mv	a2,s11
   134f0:	00090513          	mv	a0,s2
   134f4:	3d1030ef          	jal	ra,170c4 <_realloc_r>
   134f8:	00050793          	mv	a5,a0
   134fc:	f6051ee3          	bnez	a0,13478 <__sfvwrite_r+0x2cc>
   13500:	01042583          	lw	a1,16(s0)
   13504:	00090513          	mv	a0,s2
   13508:	a49ff0ef          	jal	ra,12f50 <_free_r>
   1350c:	00c45783          	lhu	a5,12(s0)
   13510:	f7f7f793          	andi	a5,a5,-129
   13514:	00f41623          	sh	a5,12(s0)
   13518:	f01ff06f          	j	13418 <__sfvwrite_r+0x26c>
   1351c:	01042703          	lw	a4,16(s0)
   13520:	00a76663          	bltu	a4,a0,1352c <__sfvwrite_r+0x380>
   13524:	01442683          	lw	a3,20(s0)
   13528:	04d4f663          	bleu	a3,s1,13574 <__sfvwrite_r+0x3c8>
   1352c:	00078993          	mv	s3,a5
   13530:	00f4f463          	bleu	a5,s1,13538 <__sfvwrite_r+0x38c>
   13534:	00048993          	mv	s3,s1
   13538:	00098613          	mv	a2,s3
   1353c:	000b0593          	mv	a1,s6
   13540:	499020ef          	jal	ra,161d8 <memmove>
   13544:	00842783          	lw	a5,8(s0)
   13548:	00042703          	lw	a4,0(s0)
   1354c:	413787b3          	sub	a5,a5,s3
   13550:	01370733          	add	a4,a4,s3
   13554:	00f42423          	sw	a5,8(s0)
   13558:	00e42023          	sw	a4,0(s0)
   1355c:	f6079ae3          	bnez	a5,134d0 <__sfvwrite_r+0x324>
   13560:	00040593          	mv	a1,s0
   13564:	00090513          	mv	a0,s2
   13568:	dacff0ef          	jal	ra,12b14 <_fflush_r>
   1356c:	f60502e3          	beqz	a0,134d0 <__sfvwrite_r+0x324>
   13570:	eb1ff06f          	j	13420 <__sfvwrite_r+0x274>
   13574:	000b8793          	mv	a5,s7
   13578:	009c6463          	bltu	s8,s1,13580 <__sfvwrite_r+0x3d4>
   1357c:	00048793          	mv	a5,s1
   13580:	02d7c7b3          	div	a5,a5,a3
   13584:	02442703          	lw	a4,36(s0)
   13588:	01c42583          	lw	a1,28(s0)
   1358c:	000b0613          	mv	a2,s6
   13590:	00090513          	mv	a0,s2
   13594:	02d786b3          	mul	a3,a5,a3
   13598:	000700e7          	jalr	a4
   1359c:	00050993          	mv	s3,a0
   135a0:	f2a048e3          	bgtz	a0,134d0 <__sfvwrite_r+0x324>
   135a4:	e7dff06f          	j	13420 <__sfvwrite_r+0x274>
   135a8:	000a2b03          	lw	s6,0(s4)
   135ac:	004a2983          	lw	s3,4(s4)
   135b0:	00000513          	li	a0,0
   135b4:	008a0a13          	addi	s4,s4,8
   135b8:	c89ff06f          	j	13240 <__sfvwrite_r+0x94>
   135bc:	02dc4263          	blt	s8,a3,135e0 <__sfvwrite_r+0x434>
   135c0:	02442783          	lw	a5,36(s0)
   135c4:	01c42583          	lw	a1,28(s0)
   135c8:	000b0613          	mv	a2,s6
   135cc:	00090513          	mv	a0,s2
   135d0:	000780e7          	jalr	a5
   135d4:	00050493          	mv	s1,a0
   135d8:	cea040e3          	bgtz	a0,132b8 <__sfvwrite_r+0x10c>
   135dc:	e45ff06f          	j	13420 <__sfvwrite_r+0x274>
   135e0:	000c0613          	mv	a2,s8
   135e4:	000b0593          	mv	a1,s6
   135e8:	3f1020ef          	jal	ra,161d8 <memmove>
   135ec:	00842783          	lw	a5,8(s0)
   135f0:	000c0493          	mv	s1,s8
   135f4:	418787b3          	sub	a5,a5,s8
   135f8:	00f42423          	sw	a5,8(s0)
   135fc:	00042783          	lw	a5,0(s0)
   13600:	018787b3          	add	a5,a5,s8
   13604:	00f42023          	sw	a5,0(s0)
   13608:	cb1ff06f          	j	132b8 <__sfvwrite_r+0x10c>

0001360c <_fwalk>:
   1360c:	fd010113          	addi	sp,sp,-48
   13610:	02812423          	sw	s0,40(sp)
   13614:	03212023          	sw	s2,32(sp)
   13618:	01412c23          	sw	s4,24(sp)
   1361c:	01512a23          	sw	s5,20(sp)
   13620:	02112623          	sw	ra,44(sp)
   13624:	02912223          	sw	s1,36(sp)
   13628:	01312e23          	sw	s3,28(sp)
   1362c:	2e050413          	addi	s0,a0,736
   13630:	00000913          	li	s2,0
   13634:	00100a13          	li	s4,1
   13638:	fff00a93          	li	s5,-1
   1363c:	02041663          	bnez	s0,13668 <_fwalk+0x5c>
   13640:	02c12083          	lw	ra,44(sp)
   13644:	02812403          	lw	s0,40(sp)
   13648:	00090513          	mv	a0,s2
   1364c:	02412483          	lw	s1,36(sp)
   13650:	02012903          	lw	s2,32(sp)
   13654:	01c12983          	lw	s3,28(sp)
   13658:	01812a03          	lw	s4,24(sp)
   1365c:	01412a83          	lw	s5,20(sp)
   13660:	03010113          	addi	sp,sp,48
   13664:	00008067          	ret
   13668:	00842483          	lw	s1,8(s0)
   1366c:	00442983          	lw	s3,4(s0)
   13670:	fff98993          	addi	s3,s3,-1
   13674:	0009d663          	bgez	s3,13680 <_fwalk+0x74>
   13678:	00042403          	lw	s0,0(s0)
   1367c:	fc1ff06f          	j	1363c <_fwalk+0x30>
   13680:	00c4d783          	lhu	a5,12(s1)
   13684:	02fa7063          	bleu	a5,s4,136a4 <_fwalk+0x98>
   13688:	00e49783          	lh	a5,14(s1)
   1368c:	01578c63          	beq	a5,s5,136a4 <_fwalk+0x98>
   13690:	00048513          	mv	a0,s1
   13694:	00b12623          	sw	a1,12(sp)
   13698:	000580e7          	jalr	a1
   1369c:	00c12583          	lw	a1,12(sp)
   136a0:	00a96933          	or	s2,s2,a0
   136a4:	06848493          	addi	s1,s1,104
   136a8:	fc9ff06f          	j	13670 <_fwalk+0x64>

000136ac <_fwalk_reent>:
   136ac:	fd010113          	addi	sp,sp,-48
   136b0:	02812423          	sw	s0,40(sp)
   136b4:	03212023          	sw	s2,32(sp)
   136b8:	01412c23          	sw	s4,24(sp)
   136bc:	01512a23          	sw	s5,20(sp)
   136c0:	01612823          	sw	s6,16(sp)
   136c4:	01712623          	sw	s7,12(sp)
   136c8:	02112623          	sw	ra,44(sp)
   136cc:	02912223          	sw	s1,36(sp)
   136d0:	01312e23          	sw	s3,28(sp)
   136d4:	00050a13          	mv	s4,a0
   136d8:	00058a93          	mv	s5,a1
   136dc:	2e050413          	addi	s0,a0,736
   136e0:	00000913          	li	s2,0
   136e4:	00100b13          	li	s6,1
   136e8:	fff00b93          	li	s7,-1
   136ec:	02041a63          	bnez	s0,13720 <_fwalk_reent+0x74>
   136f0:	02c12083          	lw	ra,44(sp)
   136f4:	02812403          	lw	s0,40(sp)
   136f8:	00090513          	mv	a0,s2
   136fc:	02412483          	lw	s1,36(sp)
   13700:	02012903          	lw	s2,32(sp)
   13704:	01c12983          	lw	s3,28(sp)
   13708:	01812a03          	lw	s4,24(sp)
   1370c:	01412a83          	lw	s5,20(sp)
   13710:	01012b03          	lw	s6,16(sp)
   13714:	00c12b83          	lw	s7,12(sp)
   13718:	03010113          	addi	sp,sp,48
   1371c:	00008067          	ret
   13720:	00842483          	lw	s1,8(s0)
   13724:	00442983          	lw	s3,4(s0)
   13728:	fff98993          	addi	s3,s3,-1
   1372c:	0009d663          	bgez	s3,13738 <_fwalk_reent+0x8c>
   13730:	00042403          	lw	s0,0(s0)
   13734:	fb9ff06f          	j	136ec <_fwalk_reent+0x40>
   13738:	00c4d783          	lhu	a5,12(s1)
   1373c:	00fb7e63          	bleu	a5,s6,13758 <_fwalk_reent+0xac>
   13740:	00e49783          	lh	a5,14(s1)
   13744:	01778a63          	beq	a5,s7,13758 <_fwalk_reent+0xac>
   13748:	00048593          	mv	a1,s1
   1374c:	000a0513          	mv	a0,s4
   13750:	000a80e7          	jalr	s5
   13754:	00a96933          	or	s2,s2,a0
   13758:	06848493          	addi	s1,s1,104
   1375c:	fcdff06f          	j	13728 <_fwalk_reent+0x7c>

00013760 <eclear>:
   13760:	01450793          	addi	a5,a0,20
   13764:	00250513          	addi	a0,a0,2
   13768:	fe051f23          	sh	zero,-2(a0)
   1376c:	fef51ce3          	bne	a0,a5,13764 <eclear+0x4>
   13770:	00008067          	ret

00013774 <emov>:
   13774:	01450793          	addi	a5,a0,20
   13778:	00250513          	addi	a0,a0,2
   1377c:	ffe55703          	lhu	a4,-2(a0)
   13780:	00258593          	addi	a1,a1,2
   13784:	fee59f23          	sh	a4,-2(a1)
   13788:	fea798e3          	bne	a5,a0,13778 <emov+0x4>
   1378c:	00008067          	ret

00013790 <ecleaz>:
   13790:	01a50793          	addi	a5,a0,26
   13794:	00250513          	addi	a0,a0,2
   13798:	fe051f23          	sh	zero,-2(a0)
   1379c:	fef51ce3          	bne	a0,a5,13794 <ecleaz+0x4>
   137a0:	00008067          	ret

000137a4 <emovz>:
   137a4:	01850713          	addi	a4,a0,24
   137a8:	00058793          	mv	a5,a1
   137ac:	00250513          	addi	a0,a0,2
   137b0:	ffe55683          	lhu	a3,-2(a0)
   137b4:	00278793          	addi	a5,a5,2
   137b8:	fed79f23          	sh	a3,-2(a5)
   137bc:	fea718e3          	bne	a4,a0,137ac <emovz+0x8>
   137c0:	00059c23          	sh	zero,24(a1)
   137c4:	00008067          	ret

000137c8 <ecmpm>:
   137c8:	00450793          	addi	a5,a0,4
   137cc:	00458593          	addi	a1,a1,4
   137d0:	01a50513          	addi	a0,a0,26
   137d4:	00278793          	addi	a5,a5,2
   137d8:	00258593          	addi	a1,a1,2
   137dc:	ffe7d683          	lhu	a3,-2(a5)
   137e0:	ffe5d703          	lhu	a4,-2(a1)
   137e4:	00e69863          	bne	a3,a4,137f4 <ecmpm+0x2c>
   137e8:	fef516e3          	bne	a0,a5,137d4 <ecmpm+0xc>
   137ec:	00000513          	li	a0,0
   137f0:	00008067          	ret
   137f4:	00100513          	li	a0,1
   137f8:	00d76463          	bltu	a4,a3,13800 <ecmpm+0x38>
   137fc:	fff00513          	li	a0,-1
   13800:	00008067          	ret

00013804 <eshdn1>:
   13804:	00450693          	addi	a3,a0,4
   13808:	00000793          	li	a5,0
   1380c:	01a50513          	addi	a0,a0,26
   13810:	ffff8637          	lui	a2,0xffff8
   13814:	0006d703          	lhu	a4,0(a3)
   13818:	00177593          	andi	a1,a4,1
   1381c:	00058463          	beqz	a1,13824 <eshdn1+0x20>
   13820:	0017e793          	ori	a5,a5,1
   13824:	0027f593          	andi	a1,a5,2
   13828:	00175713          	srli	a4,a4,0x1
   1382c:	02059063          	bnez	a1,1384c <eshdn1+0x48>
   13830:	00179793          	slli	a5,a5,0x1
   13834:	00e69023          	sh	a4,0(a3)
   13838:	01079793          	slli	a5,a5,0x10
   1383c:	00268693          	addi	a3,a3,2
   13840:	0107d793          	srli	a5,a5,0x10
   13844:	fcd518e3          	bne	a0,a3,13814 <eshdn1+0x10>
   13848:	00008067          	ret
   1384c:	00c76733          	or	a4,a4,a2
   13850:	fe1ff06f          	j	13830 <eshdn1+0x2c>

00013854 <eshup1>:
   13854:	01650693          	addi	a3,a0,22
   13858:	00000713          	li	a4,0
   1385c:	0026d783          	lhu	a5,2(a3)
   13860:	01079613          	slli	a2,a5,0x10
   13864:	41065613          	srai	a2,a2,0x10
   13868:	00065463          	bgez	a2,13870 <eshup1+0x1c>
   1386c:	00176713          	ori	a4,a4,1
   13870:	00179793          	slli	a5,a5,0x1
   13874:	01079793          	slli	a5,a5,0x10
   13878:	00277613          	andi	a2,a4,2
   1387c:	0107d793          	srli	a5,a5,0x10
   13880:	02061063          	bnez	a2,138a0 <eshup1+0x4c>
   13884:	00171713          	slli	a4,a4,0x1
   13888:	00f69123          	sh	a5,2(a3)
   1388c:	01071713          	slli	a4,a4,0x10
   13890:	ffe68693          	addi	a3,a3,-2
   13894:	01075713          	srli	a4,a4,0x10
   13898:	fcd512e3          	bne	a0,a3,1385c <eshup1+0x8>
   1389c:	00008067          	ret
   138a0:	0017e793          	ori	a5,a5,1
   138a4:	fe1ff06f          	j	13884 <eshup1+0x30>

000138a8 <eshdn8>:
   138a8:	00450793          	addi	a5,a0,4
   138ac:	00000713          	li	a4,0
   138b0:	01a50513          	addi	a0,a0,26
   138b4:	0007d683          	lhu	a3,0(a5)
   138b8:	00278793          	addi	a5,a5,2
   138bc:	0086d613          	srli	a2,a3,0x8
   138c0:	00c76733          	or	a4,a4,a2
   138c4:	fee79f23          	sh	a4,-2(a5)
   138c8:	00869713          	slli	a4,a3,0x8
   138cc:	01071713          	slli	a4,a4,0x10
   138d0:	01075713          	srli	a4,a4,0x10
   138d4:	fef510e3          	bne	a0,a5,138b4 <eshdn8+0xc>
   138d8:	00008067          	ret

000138dc <eshup8>:
   138dc:	01650793          	addi	a5,a0,22
   138e0:	00000713          	li	a4,0
   138e4:	0027d683          	lhu	a3,2(a5)
   138e8:	ffe78793          	addi	a5,a5,-2
   138ec:	00869613          	slli	a2,a3,0x8
   138f0:	00c76733          	or	a4,a4,a2
   138f4:	00e79223          	sh	a4,4(a5)
   138f8:	0086d713          	srli	a4,a3,0x8
   138fc:	fef514e3          	bne	a0,a5,138e4 <eshup8+0x8>
   13900:	00008067          	ret

00013904 <eshup6>:
   13904:	00450793          	addi	a5,a0,4
   13908:	01850713          	addi	a4,a0,24
   1390c:	00278793          	addi	a5,a5,2
   13910:	0007d683          	lhu	a3,0(a5)
   13914:	fed79f23          	sh	a3,-2(a5)
   13918:	fef71ae3          	bne	a4,a5,1390c <eshup6+0x8>
   1391c:	00051c23          	sh	zero,24(a0)
   13920:	00008067          	ret

00013924 <eshdn6>:
   13924:	01850793          	addi	a5,a0,24
   13928:	01a50713          	addi	a4,a0,26
   1392c:	00450693          	addi	a3,a0,4
   13930:	ffe78793          	addi	a5,a5,-2
   13934:	0007d603          	lhu	a2,0(a5)
   13938:	ffe70713          	addi	a4,a4,-2
   1393c:	00c71023          	sh	a2,0(a4)
   13940:	fef698e3          	bne	a3,a5,13930 <eshdn6+0xc>
   13944:	00051223          	sh	zero,4(a0)
   13948:	00008067          	ret

0001394c <eaddm>:
   1394c:	01858593          	addi	a1,a1,24
   13950:	01650713          	addi	a4,a0,22
   13954:	00000693          	li	a3,0
   13958:	00275783          	lhu	a5,2(a4)
   1395c:	0005d603          	lhu	a2,0(a1)
   13960:	ffe70713          	addi	a4,a4,-2
   13964:	ffe58593          	addi	a1,a1,-2
   13968:	00c787b3          	add	a5,a5,a2
   1396c:	00d787b3          	add	a5,a5,a3
   13970:	00f59123          	sh	a5,2(a1)
   13974:	0107d793          	srli	a5,a5,0x10
   13978:	0017f693          	andi	a3,a5,1
   1397c:	fce51ee3          	bne	a0,a4,13958 <eaddm+0xc>
   13980:	00008067          	ret

00013984 <esubm>:
   13984:	01858593          	addi	a1,a1,24
   13988:	01650713          	addi	a4,a0,22
   1398c:	00000693          	li	a3,0
   13990:	0005d783          	lhu	a5,0(a1)
   13994:	00275603          	lhu	a2,2(a4)
   13998:	ffe70713          	addi	a4,a4,-2
   1399c:	ffe58593          	addi	a1,a1,-2
   139a0:	40c787b3          	sub	a5,a5,a2
   139a4:	40d787b3          	sub	a5,a5,a3
   139a8:	00f59123          	sh	a5,2(a1)
   139ac:	0107d793          	srli	a5,a5,0x10
   139b0:	0017f693          	andi	a3,a5,1
   139b4:	fce51ee3          	bne	a0,a4,13990 <esubm+0xc>
   139b8:	00008067          	ret

000139bc <m16m>:
   139bc:	fe010113          	addi	sp,sp,-32
   139c0:	00010337          	lui	t1,0x10
   139c4:	01858893          	addi	a7,a1,24
   139c8:	00011d23          	sh	zero,26(sp)
   139cc:	00011e23          	sh	zero,28(sp)
   139d0:	00458593          	addi	a1,a1,4
   139d4:	01c10693          	addi	a3,sp,28
   139d8:	fff30313          	addi	t1,t1,-1 # ffff <_start-0x75>
   139dc:	0008d703          	lhu	a4,0(a7)
   139e0:	ffe68693          	addi	a3,a3,-2
   139e4:	ffe88893          	addi	a7,a7,-2
   139e8:	02071c63          	bnez	a4,13a20 <m16m+0x64>
   139ec:	fe069f23          	sh	zero,-2(a3)
   139f0:	ff1596e3          	bne	a1,a7,139dc <m16m+0x20>
   139f4:	00400793          	li	a5,4
   139f8:	01a00713          	li	a4,26
   139fc:	00410593          	addi	a1,sp,4
   13a00:	00f585b3          	add	a1,a1,a5
   13a04:	0005d583          	lhu	a1,0(a1)
   13a08:	00f606b3          	add	a3,a2,a5
   13a0c:	00278793          	addi	a5,a5,2
   13a10:	00b69023          	sh	a1,0(a3)
   13a14:	fee794e3          	bne	a5,a4,139fc <m16m+0x40>
   13a18:	02010113          	addi	sp,sp,32
   13a1c:	00008067          	ret
   13a20:	02a70733          	mul	a4,a4,a0
   13a24:	0026d803          	lhu	a6,2(a3)
   13a28:	006777b3          	and	a5,a4,t1
   13a2c:	010787b3          	add	a5,a5,a6
   13a30:	0107d813          	srli	a6,a5,0x10
   13a34:	00f69123          	sh	a5,2(a3)
   13a38:	01075793          	srli	a5,a4,0x10
   13a3c:	0006d703          	lhu	a4,0(a3)
   13a40:	00e787b3          	add	a5,a5,a4
   13a44:	010787b3          	add	a5,a5,a6
   13a48:	00f69023          	sh	a5,0(a3)
   13a4c:	0107d793          	srli	a5,a5,0x10
   13a50:	fef69f23          	sh	a5,-2(a3)
   13a54:	f9dff06f          	j	139f0 <m16m+0x34>

00013a58 <eisnan>:
   13a58:	01255783          	lhu	a5,18(a0)
   13a5c:	fff7c793          	not	a5,a5
   13a60:	01179713          	slli	a4,a5,0x11
   13a64:	00071c63          	bnez	a4,13a7c <eisnan+0x24>
   13a68:	01250793          	addi	a5,a0,18
   13a6c:	00250513          	addi	a0,a0,2
   13a70:	ffe55703          	lhu	a4,-2(a0)
   13a74:	00071863          	bnez	a4,13a84 <eisnan+0x2c>
   13a78:	fea79ae3          	bne	a5,a0,13a6c <eisnan+0x14>
   13a7c:	00000513          	li	a0,0
   13a80:	00008067          	ret
   13a84:	00100513          	li	a0,1
   13a88:	00008067          	ret

00013a8c <eisneg>:
   13a8c:	ff010113          	addi	sp,sp,-16
   13a90:	00812423          	sw	s0,8(sp)
   13a94:	00112623          	sw	ra,12(sp)
   13a98:	00050413          	mv	s0,a0
   13a9c:	fbdff0ef          	jal	ra,13a58 <eisnan>
   13aa0:	00051e63          	bnez	a0,13abc <eisneg+0x30>
   13aa4:	01241503          	lh	a0,18(s0)
   13aa8:	01f55513          	srli	a0,a0,0x1f
   13aac:	00c12083          	lw	ra,12(sp)
   13ab0:	00812403          	lw	s0,8(sp)
   13ab4:	01010113          	addi	sp,sp,16
   13ab8:	00008067          	ret
   13abc:	00000513          	li	a0,0
   13ac0:	fedff06f          	j	13aac <eisneg+0x20>

00013ac4 <emovi>:
   13ac4:	01251783          	lh	a5,18(a0)
   13ac8:	ff010113          	addi	sp,sp,-16
   13acc:	00112623          	sw	ra,12(sp)
   13ad0:	00812423          	sw	s0,8(sp)
   13ad4:	00912223          	sw	s1,4(sp)
   13ad8:	01212023          	sw	s2,0(sp)
   13adc:	0607d863          	bgez	a5,13b4c <emovi+0x88>
   13ae0:	fff00793          	li	a5,-1
   13ae4:	00f59023          	sh	a5,0(a1)
   13ae8:	01255703          	lhu	a4,18(a0)
   13aec:	000087b7          	lui	a5,0x8
   13af0:	fff78793          	addi	a5,a5,-1 # 7fff <_start-0x8075>
   13af4:	00e7f733          	and	a4,a5,a4
   13af8:	00e59123          	sh	a4,2(a1)
   13afc:	01050913          	addi	s2,a0,16
   13b00:	06f71663          	bne	a4,a5,13b6c <emovi+0xa8>
   13b04:	00058413          	mv	s0,a1
   13b08:	00050493          	mv	s1,a0
   13b0c:	f4dff0ef          	jal	ra,13a58 <eisnan>
   13b10:	04050263          	beqz	a0,13b54 <emovi+0x90>
   13b14:	00640793          	addi	a5,s0,6
   13b18:	00041223          	sh	zero,4(s0)
   13b1c:	ffc48513          	addi	a0,s1,-4
   13b20:	ffe90913          	addi	s2,s2,-2
   13b24:	00295703          	lhu	a4,2(s2)
   13b28:	00278793          	addi	a5,a5,2
   13b2c:	fee79f23          	sh	a4,-2(a5)
   13b30:	fea918e3          	bne	s2,a0,13b20 <emovi+0x5c>
   13b34:	00c12083          	lw	ra,12(sp)
   13b38:	00812403          	lw	s0,8(sp)
   13b3c:	00412483          	lw	s1,4(sp)
   13b40:	00012903          	lw	s2,0(sp)
   13b44:	01010113          	addi	sp,sp,16
   13b48:	00008067          	ret
   13b4c:	00059023          	sh	zero,0(a1)
   13b50:	f99ff06f          	j	13ae8 <emovi+0x24>
   13b54:	00440793          	addi	a5,s0,4
   13b58:	01a40593          	addi	a1,s0,26
   13b5c:	00278793          	addi	a5,a5,2
   13b60:	fe079f23          	sh	zero,-2(a5)
   13b64:	feb79ce3          	bne	a5,a1,13b5c <emovi+0x98>
   13b68:	fcdff06f          	j	13b34 <emovi+0x70>
   13b6c:	00658793          	addi	a5,a1,6
   13b70:	00059223          	sh	zero,4(a1)
   13b74:	ffe50513          	addi	a0,a0,-2
   13b78:	ffe90913          	addi	s2,s2,-2
   13b7c:	00295703          	lhu	a4,2(s2)
   13b80:	00278793          	addi	a5,a5,2
   13b84:	fee79f23          	sh	a4,-2(a5)
   13b88:	fea918e3          	bne	s2,a0,13b78 <emovi+0xb4>
   13b8c:	00059c23          	sh	zero,24(a1)
   13b90:	fa5ff06f          	j	13b34 <emovi+0x70>

00013b94 <ecmp>:
   13b94:	fb010113          	addi	sp,sp,-80
   13b98:	04912223          	sw	s1,68(sp)
   13b9c:	05212023          	sw	s2,64(sp)
   13ba0:	04112623          	sw	ra,76(sp)
   13ba4:	04812423          	sw	s0,72(sp)
   13ba8:	00050913          	mv	s2,a0
   13bac:	00058493          	mv	s1,a1
   13bb0:	ea9ff0ef          	jal	ra,13a58 <eisnan>
   13bb4:	0e051063          	bnez	a0,13c94 <ecmp+0x100>
   13bb8:	00048513          	mv	a0,s1
   13bbc:	e9dff0ef          	jal	ra,13a58 <eisnan>
   13bc0:	00050413          	mv	s0,a0
   13bc4:	0c051863          	bnez	a0,13c94 <ecmp+0x100>
   13bc8:	00810593          	addi	a1,sp,8
   13bcc:	00090513          	mv	a0,s2
   13bd0:	ef5ff0ef          	jal	ra,13ac4 <emovi>
   13bd4:	02410593          	addi	a1,sp,36
   13bd8:	00048513          	mv	a0,s1
   13bdc:	ee9ff0ef          	jal	ra,13ac4 <emovi>
   13be0:	00815703          	lhu	a4,8(sp)
   13be4:	02415783          	lhu	a5,36(sp)
   13be8:	06e78063          	beq	a5,a4,13c48 <ecmp+0xb4>
   13bec:	00200793          	li	a5,2
   13bf0:	01800693          	li	a3,24
   13bf4:	00810613          	addi	a2,sp,8
   13bf8:	00f60633          	add	a2,a2,a5
   13bfc:	00065603          	lhu	a2,0(a2) # ffff8000 <__global_pointer$+0xfffd4e58>
   13c00:	02061c63          	bnez	a2,13c38 <ecmp+0xa4>
   13c04:	02410613          	addi	a2,sp,36
   13c08:	00f60633          	add	a2,a2,a5
   13c0c:	00065603          	lhu	a2,0(a2)
   13c10:	02061463          	bnez	a2,13c38 <ecmp+0xa4>
   13c14:	00278793          	addi	a5,a5,2
   13c18:	fcd79ee3          	bne	a5,a3,13bf4 <ecmp+0x60>
   13c1c:	00040513          	mv	a0,s0
   13c20:	04c12083          	lw	ra,76(sp)
   13c24:	04812403          	lw	s0,72(sp)
   13c28:	04412483          	lw	s1,68(sp)
   13c2c:	04012903          	lw	s2,64(sp)
   13c30:	05010113          	addi	sp,sp,80
   13c34:	00008067          	ret
   13c38:	00100413          	li	s0,1
   13c3c:	fe0700e3          	beqz	a4,13c1c <ecmp+0x88>
   13c40:	fff00413          	li	s0,-1
   13c44:	fd9ff06f          	j	13c1c <ecmp+0x88>
   13c48:	00100613          	li	a2,1
   13c4c:	00078463          	beqz	a5,13c54 <ecmp+0xc0>
   13c50:	fff00613          	li	a2,-1
   13c54:	00000793          	li	a5,0
   13c58:	01800593          	li	a1,24
   13c5c:	00810713          	addi	a4,sp,8
   13c60:	00f70733          	add	a4,a4,a5
   13c64:	00075683          	lhu	a3,0(a4)
   13c68:	02410713          	addi	a4,sp,36
   13c6c:	00f70733          	add	a4,a4,a5
   13c70:	00075703          	lhu	a4,0(a4)
   13c74:	00e69863          	bne	a3,a4,13c84 <ecmp+0xf0>
   13c78:	00278793          	addi	a5,a5,2
   13c7c:	feb790e3          	bne	a5,a1,13c5c <ecmp+0xc8>
   13c80:	f9dff06f          	j	13c1c <ecmp+0x88>
   13c84:	00060413          	mv	s0,a2
   13c88:	f8d76ae3          	bltu	a4,a3,13c1c <ecmp+0x88>
   13c8c:	40c00433          	neg	s0,a2
   13c90:	f8dff06f          	j	13c1c <ecmp+0x88>
   13c94:	ffe00413          	li	s0,-2
   13c98:	f85ff06f          	j	13c1c <ecmp+0x88>

00013c9c <eisinf>:
   13c9c:	01255783          	lhu	a5,18(a0)
   13ca0:	fff7c793          	not	a5,a5
   13ca4:	01179713          	slli	a4,a5,0x11
   13ca8:	02071063          	bnez	a4,13cc8 <eisinf+0x2c>
   13cac:	ff010113          	addi	sp,sp,-16
   13cb0:	00112623          	sw	ra,12(sp)
   13cb4:	da5ff0ef          	jal	ra,13a58 <eisnan>
   13cb8:	00c12083          	lw	ra,12(sp)
   13cbc:	00153513          	seqz	a0,a0
   13cc0:	01010113          	addi	sp,sp,16
   13cc4:	00008067          	ret
   13cc8:	00000513          	li	a0,0
   13ccc:	00008067          	ret

00013cd0 <einfin.isra.2>:
   13cd0:	01250793          	addi	a5,a0,18
   13cd4:	00250513          	addi	a0,a0,2
   13cd8:	fe051f23          	sh	zero,-2(a0)
   13cdc:	fef51ce3          	bne	a0,a5,13cd4 <einfin.isra.2+0x4>
   13ce0:	00055783          	lhu	a5,0(a0)
   13ce4:	00008737          	lui	a4,0x8
   13ce8:	fff70713          	addi	a4,a4,-1 # 7fff <_start-0x8075>
   13cec:	00e7e7b3          	or	a5,a5,a4
   13cf0:	00f51023          	sh	a5,0(a0)
   13cf4:	00008067          	ret

00013cf8 <eshift.part.3>:
   13cf8:	fe010113          	addi	sp,sp,-32
   13cfc:	00812c23          	sw	s0,24(sp)
   13d00:	01312623          	sw	s3,12(sp)
   13d04:	00112e23          	sw	ra,28(sp)
   13d08:	00912a23          	sw	s1,20(sp)
   13d0c:	01212823          	sw	s2,16(sp)
   13d10:	01412423          	sw	s4,8(sp)
   13d14:	01512223          	sw	s5,4(sp)
   13d18:	00050993          	mv	s3,a0
   13d1c:	00058413          	mv	s0,a1
   13d20:	1005d263          	bgez	a1,13e24 <eshift.part.3+0x12c>
   13d24:	40b00933          	neg	s2,a1
   13d28:	00090a13          	mv	s4,s2
   13d2c:	00000493          	li	s1,0
   13d30:	00f00a93          	li	s5,15
   13d34:	034ace63          	blt	s5,s4,13d70 <eshift.part.3+0x78>
   13d38:	00495913          	srli	s2,s2,0x4
   13d3c:	ff000593          	li	a1,-16
   13d40:	02b905b3          	mul	a1,s2,a1
   13d44:	00700a13          	li	s4,7
   13d48:	40858433          	sub	s0,a1,s0
   13d4c:	00040913          	mv	s2,s0
   13d50:	032a4c63          	blt	s4,s2,13d88 <eshift.part.3+0x90>
   13d54:	00345593          	srli	a1,s0,0x3
   13d58:	ff800793          	li	a5,-8
   13d5c:	02f585b3          	mul	a1,a1,a5
   13d60:	00858433          	add	s0,a1,s0
   13d64:	02041e63          	bnez	s0,13da0 <eshift.part.3+0xa8>
   13d68:	00903533          	snez	a0,s1
   13d6c:	0940006f          	j	13e00 <eshift.part.3+0x108>
   13d70:	0189d783          	lhu	a5,24(s3)
   13d74:	00098513          	mv	a0,s3
   13d78:	ff0a0a13          	addi	s4,s4,-16
   13d7c:	00f4e4b3          	or	s1,s1,a5
   13d80:	ba5ff0ef          	jal	ra,13924 <eshdn6>
   13d84:	fb1ff06f          	j	13d34 <eshift.part.3+0x3c>
   13d88:	0189c783          	lbu	a5,24(s3)
   13d8c:	00098513          	mv	a0,s3
   13d90:	ff890913          	addi	s2,s2,-8
   13d94:	0097e4b3          	or	s1,a5,s1
   13d98:	b11ff0ef          	jal	ra,138a8 <eshdn8>
   13d9c:	fb5ff06f          	j	13d50 <eshift.part.3+0x58>
   13da0:	0189d783          	lhu	a5,24(s3)
   13da4:	00098513          	mv	a0,s3
   13da8:	fff40413          	addi	s0,s0,-1
   13dac:	0017f793          	andi	a5,a5,1
   13db0:	0097e4b3          	or	s1,a5,s1
   13db4:	a51ff0ef          	jal	ra,13804 <eshdn1>
   13db8:	fadff06f          	j	13d64 <eshift.part.3+0x6c>
   13dbc:	00098513          	mv	a0,s3
   13dc0:	b45ff0ef          	jal	ra,13904 <eshup6>
   13dc4:	ff048493          	addi	s1,s1,-16
   13dc8:	fe994ae3          	blt	s2,s1,13dbc <eshift.part.3+0xc4>
   13dcc:	00445593          	srli	a1,s0,0x4
   13dd0:	ff000793          	li	a5,-16
   13dd4:	02f585b3          	mul	a1,a1,a5
   13dd8:	00700913          	li	s2,7
   13ddc:	00b40433          	add	s0,s0,a1
   13de0:	00040493          	mv	s1,s0
   13de4:	04994663          	blt	s2,s1,13e30 <eshift.part.3+0x138>
   13de8:	00345593          	srli	a1,s0,0x3
   13dec:	ff800793          	li	a5,-8
   13df0:	02f585b3          	mul	a1,a1,a5
   13df4:	00b40433          	add	s0,s0,a1
   13df8:	04041463          	bnez	s0,13e40 <eshift.part.3+0x148>
   13dfc:	00000513          	li	a0,0
   13e00:	01c12083          	lw	ra,28(sp)
   13e04:	01812403          	lw	s0,24(sp)
   13e08:	01412483          	lw	s1,20(sp)
   13e0c:	01012903          	lw	s2,16(sp)
   13e10:	00c12983          	lw	s3,12(sp)
   13e14:	00812a03          	lw	s4,8(sp)
   13e18:	00412a83          	lw	s5,4(sp)
   13e1c:	02010113          	addi	sp,sp,32
   13e20:	00008067          	ret
   13e24:	00058493          	mv	s1,a1
   13e28:	00f00913          	li	s2,15
   13e2c:	f9dff06f          	j	13dc8 <eshift.part.3+0xd0>
   13e30:	00098513          	mv	a0,s3
   13e34:	aa9ff0ef          	jal	ra,138dc <eshup8>
   13e38:	ff848493          	addi	s1,s1,-8
   13e3c:	fa9ff06f          	j	13de4 <eshift.part.3+0xec>
   13e40:	00098513          	mv	a0,s3
   13e44:	a11ff0ef          	jal	ra,13854 <eshup1>
   13e48:	fff40413          	addi	s0,s0,-1
   13e4c:	fadff06f          	j	13df8 <eshift.part.3+0x100>

00013e50 <enormlz>:
   13e50:	00455783          	lhu	a5,4(a0)
   13e54:	ff010113          	addi	sp,sp,-16
   13e58:	00912223          	sw	s1,4(sp)
   13e5c:	00112623          	sw	ra,12(sp)
   13e60:	00812423          	sw	s0,8(sp)
   13e64:	01212023          	sw	s2,0(sp)
   13e68:	00050493          	mv	s1,a0
   13e6c:	08079263          	bnez	a5,13ef0 <enormlz+0xa0>
   13e70:	00651783          	lh	a5,6(a0)
   13e74:	00000413          	li	s0,0
   13e78:	0a000913          	li	s2,160
   13e7c:	0207d863          	bgez	a5,13eac <enormlz+0x5c>
   13e80:	00040513          	mv	a0,s0
   13e84:	00c12083          	lw	ra,12(sp)
   13e88:	00812403          	lw	s0,8(sp)
   13e8c:	00412483          	lw	s1,4(sp)
   13e90:	00012903          	lw	s2,0(sp)
   13e94:	01010113          	addi	sp,sp,16
   13e98:	00008067          	ret
   13e9c:	00048513          	mv	a0,s1
   13ea0:	01040413          	addi	s0,s0,16
   13ea4:	a61ff0ef          	jal	ra,13904 <eshup6>
   13ea8:	fd240ce3          	beq	s0,s2,13e80 <enormlz+0x30>
   13eac:	0064d783          	lhu	a5,6(s1)
   13eb0:	fe0786e3          	beqz	a5,13e9c <enormlz+0x4c>
   13eb4:	0064d783          	lhu	a5,6(s1)
   13eb8:	f007f793          	andi	a5,a5,-256
   13ebc:	02078263          	beqz	a5,13ee0 <enormlz+0x90>
   13ec0:	0a000913          	li	s2,160
   13ec4:	00649783          	lh	a5,6(s1)
   13ec8:	fa07cce3          	bltz	a5,13e80 <enormlz+0x30>
   13ecc:	00048513          	mv	a0,s1
   13ed0:	00140413          	addi	s0,s0,1
   13ed4:	981ff0ef          	jal	ra,13854 <eshup1>
   13ed8:	fe8956e3          	ble	s0,s2,13ec4 <enormlz+0x74>
   13edc:	fa5ff06f          	j	13e80 <enormlz+0x30>
   13ee0:	00048513          	mv	a0,s1
   13ee4:	9f9ff0ef          	jal	ra,138dc <eshup8>
   13ee8:	00840413          	addi	s0,s0,8
   13eec:	fc9ff06f          	j	13eb4 <enormlz+0x64>
   13ef0:	f007f793          	andi	a5,a5,-256
   13ef4:	00000413          	li	s0,0
   13ef8:	00078663          	beqz	a5,13f04 <enormlz+0xb4>
   13efc:	9adff0ef          	jal	ra,138a8 <eshdn8>
   13f00:	ff800413          	li	s0,-8
   13f04:	f7000913          	li	s2,-144
   13f08:	0140006f          	j	13f1c <enormlz+0xcc>
   13f0c:	00048513          	mv	a0,s1
   13f10:	fff40413          	addi	s0,s0,-1
   13f14:	8f1ff0ef          	jal	ra,13804 <eshdn1>
   13f18:	f72444e3          	blt	s0,s2,13e80 <enormlz+0x30>
   13f1c:	0044d783          	lhu	a5,4(s1)
   13f20:	fe0796e3          	bnez	a5,13f0c <enormlz+0xbc>
   13f24:	f5dff06f          	j	13e80 <enormlz+0x30>

00013f28 <enan.constprop.12>:
   13f28:	01050793          	addi	a5,a0,16
   13f2c:	00250513          	addi	a0,a0,2
   13f30:	fe051f23          	sh	zero,-2(a0)
   13f34:	fef51ce3          	bne	a0,a5,13f2c <enan.constprop.12+0x4>
   13f38:	ffffc7b7          	lui	a5,0xffffc
   13f3c:	00f51023          	sh	a5,0(a0)
   13f40:	ffff87b7          	lui	a5,0xffff8
   13f44:	fff7c793          	not	a5,a5
   13f48:	00f51123          	sh	a5,2(a0)
   13f4c:	00008067          	ret

00013f50 <emovo.isra.6>:
   13f50:	00050713          	mv	a4,a0
   13f54:	00075683          	lhu	a3,0(a4)
   13f58:	00058513          	mv	a0,a1
   13f5c:	00275783          	lhu	a5,2(a4)
   13f60:	00068663          	beqz	a3,13f6c <emovo.isra.6+0x1c>
   13f64:	ffff86b7          	lui	a3,0xffff8
   13f68:	00d7e7b3          	or	a5,a5,a3
   13f6c:	00f51923          	sh	a5,18(a0)
   13f70:	00275603          	lhu	a2,2(a4)
   13f74:	000086b7          	lui	a3,0x8
   13f78:	fff68693          	addi	a3,a3,-1 # 7fff <_start-0x8075>
   13f7c:	00670793          	addi	a5,a4,6
   13f80:	00d61e63          	bne	a2,a3,13f9c <emovo.isra.6+0x4c>
   13f84:	01a70713          	addi	a4,a4,26
   13f88:	0007d683          	lhu	a3,0(a5) # ffff8000 <__global_pointer$+0xfffd4e58>
   13f8c:	02069863          	bnez	a3,13fbc <emovo.isra.6+0x6c>
   13f90:	00278793          	addi	a5,a5,2
   13f94:	fee79ae3          	bne	a5,a4,13f88 <emovo.isra.6+0x38>
   13f98:	d39ff06f          	j	13cd0 <einfin.isra.2>
   13f9c:	01050513          	addi	a0,a0,16
   13fa0:	01870713          	addi	a4,a4,24
   13fa4:	00278793          	addi	a5,a5,2
   13fa8:	ffe7d683          	lhu	a3,-2(a5)
   13fac:	ffe50513          	addi	a0,a0,-2
   13fb0:	00d51123          	sh	a3,2(a0)
   13fb4:	fee798e3          	bne	a5,a4,13fa4 <emovo.isra.6+0x54>
   13fb8:	00008067          	ret
   13fbc:	f6dff06f          	j	13f28 <enan.constprop.12>

00013fc0 <e113toe.isra.8>:
   13fc0:	fd010113          	addi	sp,sp,-48
   13fc4:	02912223          	sw	s1,36(sp)
   13fc8:	00050493          	mv	s1,a0
   13fcc:	00410513          	addi	a0,sp,4
   13fd0:	02812423          	sw	s0,40(sp)
   13fd4:	02112623          	sw	ra,44(sp)
   13fd8:	00058413          	mv	s0,a1
   13fdc:	fb4ff0ef          	jal	ra,13790 <ecleaz>
   13fe0:	00e4d703          	lhu	a4,14(s1)
   13fe4:	01071793          	slli	a5,a4,0x10
   13fe8:	4107d793          	srai	a5,a5,0x10
   13fec:	0407c263          	bltz	a5,14030 <e113toe.isra.8+0x70>
   13ff0:	00011223          	sh	zero,4(sp)
   13ff4:	000086b7          	lui	a3,0x8
   13ff8:	fff68693          	addi	a3,a3,-1 # 7fff <_start-0x8075>
   13ffc:	00d77733          	and	a4,a4,a3
   14000:	00e48793          	addi	a5,s1,14
   14004:	06d71c63          	bne	a4,a3,1407c <e113toe.isra.8+0xbc>
   14008:	00048713          	mv	a4,s1
   1400c:	00075683          	lhu	a3,0(a4)
   14010:	02068663          	beqz	a3,1403c <e113toe.isra.8+0x7c>
   14014:	00040513          	mv	a0,s0
   14018:	f11ff0ef          	jal	ra,13f28 <enan.constprop.12>
   1401c:	02c12083          	lw	ra,44(sp)
   14020:	02812403          	lw	s0,40(sp)
   14024:	02412483          	lw	s1,36(sp)
   14028:	03010113          	addi	sp,sp,48
   1402c:	00008067          	ret
   14030:	fff00793          	li	a5,-1
   14034:	00f11223          	sh	a5,4(sp)
   14038:	fbdff06f          	j	13ff4 <e113toe.isra.8+0x34>
   1403c:	00270713          	addi	a4,a4,2
   14040:	fce796e3          	bne	a5,a4,1400c <e113toe.isra.8+0x4c>
   14044:	00040513          	mv	a0,s0
   14048:	f18ff0ef          	jal	ra,13760 <eclear>
   1404c:	00040513          	mv	a0,s0
   14050:	c81ff0ef          	jal	ra,13cd0 <einfin.isra.2>
   14054:	00e49783          	lh	a5,14(s1)
   14058:	fc07d2e3          	bgez	a5,1401c <e113toe.isra.8+0x5c>
   1405c:	00040513          	mv	a0,s0
   14060:	9f9ff0ef          	jal	ra,13a58 <eisnan>
   14064:	fa051ce3          	bnez	a0,1401c <e113toe.isra.8+0x5c>
   14068:	01245783          	lhu	a5,18(s0)
   1406c:	ffff8737          	lui	a4,0xffff8
   14070:	00e7c7b3          	xor	a5,a5,a4
   14074:	00f41923          	sh	a5,18(s0)
   14078:	fa5ff06f          	j	1401c <e113toe.isra.8+0x5c>
   1407c:	00e11323          	sh	a4,6(sp)
   14080:	00410693          	addi	a3,sp,4
   14084:	ffe78793          	addi	a5,a5,-2
   14088:	0007d603          	lhu	a2,0(a5)
   1408c:	00268693          	addi	a3,a3,2
   14090:	00c69223          	sh	a2,4(a3)
   14094:	fef498e3          	bne	s1,a5,14084 <e113toe.isra.8+0xc4>
   14098:	00071c63          	bnez	a4,140b0 <e113toe.isra.8+0xf0>
   1409c:	00011423          	sh	zero,8(sp)
   140a0:	00040593          	mv	a1,s0
   140a4:	00410513          	addi	a0,sp,4
   140a8:	ea9ff0ef          	jal	ra,13f50 <emovo.isra.6>
   140ac:	f71ff06f          	j	1401c <e113toe.isra.8+0x5c>
   140b0:	00100793          	li	a5,1
   140b4:	fff00593          	li	a1,-1
   140b8:	00410513          	addi	a0,sp,4
   140bc:	00f11423          	sh	a5,8(sp)
   140c0:	c39ff0ef          	jal	ra,13cf8 <eshift.part.3>
   140c4:	fddff06f          	j	140a0 <e113toe.isra.8+0xe0>

000140c8 <emdnorm>:
   140c8:	fe010113          	addi	sp,sp,-32
   140cc:	00812c23          	sw	s0,24(sp)
   140d0:	00912a23          	sw	s1,20(sp)
   140d4:	01212823          	sw	s2,16(sp)
   140d8:	01312623          	sw	s3,12(sp)
   140dc:	01412423          	sw	s4,8(sp)
   140e0:	01512223          	sw	s5,4(sp)
   140e4:	00068913          	mv	s2,a3
   140e8:	00078413          	mv	s0,a5
   140ec:	00112e23          	sw	ra,28(sp)
   140f0:	00050493          	mv	s1,a0
   140f4:	00058993          	mv	s3,a1
   140f8:	00060a13          	mv	s4,a2
   140fc:	00070a93          	mv	s5,a4
   14100:	d51ff0ef          	jal	ra,13e50 <enormlz>
   14104:	09000793          	li	a5,144
   14108:	40a90933          	sub	s2,s2,a0
   1410c:	04a7d463          	ble	a0,a5,14154 <emdnorm+0x8c>
   14110:	000087b7          	lui	a5,0x8
   14114:	ffe78793          	addi	a5,a5,-2 # 7ffe <_start-0x8076>
   14118:	2d27c663          	blt	a5,s2,143e4 <emdnorm+0x31c>
   1411c:	00248793          	addi	a5,s1,2
   14120:	01a48493          	addi	s1,s1,26
   14124:	00278793          	addi	a5,a5,2
   14128:	fe079f23          	sh	zero,-2(a5)
   1412c:	fe979ce3          	bne	a5,s1,14124 <emdnorm+0x5c>
   14130:	01c12083          	lw	ra,28(sp)
   14134:	01812403          	lw	s0,24(sp)
   14138:	01412483          	lw	s1,20(sp)
   1413c:	01012903          	lw	s2,16(sp)
   14140:	00c12983          	lw	s3,12(sp)
   14144:	00812a03          	lw	s4,8(sp)
   14148:	00412a83          	lw	s5,4(sp)
   1414c:	02010113          	addi	sp,sp,32
   14150:	00008067          	ret
   14154:	00095e63          	bgez	s2,14170 <emdnorm+0xa8>
   14158:	f7000793          	li	a5,-144
   1415c:	12f94c63          	blt	s2,a5,14294 <emdnorm+0x1cc>
   14160:	00090593          	mv	a1,s2
   14164:	00048513          	mv	a0,s1
   14168:	b91ff0ef          	jal	ra,13cf8 <eshift.part.3>
   1416c:	14051063          	bnez	a0,142ac <emdnorm+0x1e4>
   14170:	220a8663          	beqz	s5,1439c <emdnorm+0x2d4>
   14174:	00442703          	lw	a4,4(s0)
   14178:	00042783          	lw	a5,0(s0)
   1417c:	06f70663          	beq	a4,a5,141e8 <emdnorm+0x120>
   14180:	01a40513          	addi	a0,s0,26
   14184:	e0cff0ef          	jal	ra,13790 <ecleaz>
   14188:	00442783          	lw	a5,4(s0)
   1418c:	03800713          	li	a4,56
   14190:	16e78e63          	beq	a5,a4,1430c <emdnorm+0x244>
   14194:	12f74063          	blt	a4,a5,142b4 <emdnorm+0x1ec>
   14198:	01800713          	li	a4,24
   1419c:	1ae78663          	beq	a5,a4,14348 <emdnorm+0x280>
   141a0:	03500713          	li	a4,53
   141a4:	18e78263          	beq	a5,a4,14328 <emdnorm+0x260>
   141a8:	00c00713          	li	a4,12
   141ac:	00e42423          	sw	a4,8(s0)
   141b0:	80010737          	lui	a4,0x80010
   141b4:	fff70713          	addi	a4,a4,-1 # 8000ffff <__global_pointer$+0x7ffece57>
   141b8:	00e42a23          	sw	a4,20(s0)
   141bc:	00100713          	li	a4,1
   141c0:	00e41c23          	sh	a4,24(s0)
   141c4:	00b00713          	li	a4,11
   141c8:	00e42623          	sw	a4,12(s0)
   141cc:	00c42703          	lw	a4,12(s0)
   141d0:	01845683          	lhu	a3,24(s0)
   141d4:	00870713          	addi	a4,a4,8
   141d8:	00171713          	slli	a4,a4,0x1
   141dc:	00e40733          	add	a4,s0,a4
   141e0:	00d71523          	sh	a3,10(a4)
   141e4:	00f42023          	sw	a5,0(s0)
   141e8:	03204263          	bgtz	s2,1420c <emdnorm+0x144>
   141ec:	00442703          	lw	a4,4(s0)
   141f0:	09000793          	li	a5,144
   141f4:	00f70c63          	beq	a4,a5,1420c <emdnorm+0x144>
   141f8:	0184d783          	lhu	a5,24(s1)
   141fc:	00048513          	mv	a0,s1
   14200:	0017f793          	andi	a5,a5,1
   14204:	00f9e9b3          	or	s3,s3,a5
   14208:	dfcff0ef          	jal	ra,13804 <eshdn1>
   1420c:	00842683          	lw	a3,8(s0)
   14210:	01445603          	lhu	a2,20(s0)
   14214:	00442583          	lw	a1,4(s0)
   14218:	00169713          	slli	a4,a3,0x1
   1421c:	00e48733          	add	a4,s1,a4
   14220:	00075783          	lhu	a5,0(a4)
   14224:	00c7f7b3          	and	a5,a5,a2
   14228:	08f00613          	li	a2,143
   1422c:	00b64a63          	blt	a2,a1,14240 <emdnorm+0x178>
   14230:	00168693          	addi	a3,a3,1
   14234:	00070613          	mv	a2,a4
   14238:	00c00593          	li	a1,12
   1423c:	10d5da63          	ble	a3,a1,14350 <emdnorm+0x288>
   14240:	01445683          	lhu	a3,20(s0)
   14244:	00075603          	lhu	a2,0(a4)
   14248:	fff6c693          	not	a3,a3
   1424c:	00c6f6b3          	and	a3,a3,a2
   14250:	00d71023          	sh	a3,0(a4)
   14254:	01645703          	lhu	a4,22(s0)
   14258:	00f776b3          	and	a3,a4,a5
   1425c:	10068a63          	beqz	a3,14370 <emdnorm+0x2a8>
   14260:	02f71263          	bne	a4,a5,14284 <emdnorm+0x1bc>
   14264:	10099463          	bnez	s3,1436c <emdnorm+0x2a4>
   14268:	00c42783          	lw	a5,12(s0)
   1426c:	01845703          	lhu	a4,24(s0)
   14270:	00179793          	slli	a5,a5,0x1
   14274:	00f487b3          	add	a5,s1,a5
   14278:	0007d783          	lhu	a5,0(a5)
   1427c:	00e7f7b3          	and	a5,a5,a4
   14280:	0e078863          	beqz	a5,14370 <emdnorm+0x2a8>
   14284:	00048593          	mv	a1,s1
   14288:	01a40513          	addi	a0,s0,26
   1428c:	ec0ff0ef          	jal	ra,1394c <eaddm>
   14290:	0e00006f          	j	14370 <emdnorm+0x2a8>
   14294:	00248793          	addi	a5,s1,2
   14298:	01a48493          	addi	s1,s1,26
   1429c:	00278793          	addi	a5,a5,2
   142a0:	fe079f23          	sh	zero,-2(a5)
   142a4:	fe979ce3          	bne	a5,s1,1429c <emdnorm+0x1d4>
   142a8:	e89ff06f          	j	14130 <emdnorm+0x68>
   142ac:	00100993          	li	s3,1
   142b0:	ec1ff06f          	j	14170 <emdnorm+0xa8>
   142b4:	04000713          	li	a4,64
   142b8:	02e78863          	beq	a5,a4,142e8 <emdnorm+0x220>
   142bc:	07100713          	li	a4,113
   142c0:	eee794e3          	bne	a5,a4,141a8 <emdnorm+0xe0>
   142c4:	40008737          	lui	a4,0x40008
   142c8:	fff70713          	addi	a4,a4,-1 # 40007fff <__global_pointer$+0x3ffe4e57>
   142cc:	00a00693          	li	a3,10
   142d0:	00e42a23          	sw	a4,20(s0)
   142d4:	00d42423          	sw	a3,8(s0)
   142d8:	ffff8737          	lui	a4,0xffff8
   142dc:	00e41c23          	sh	a4,24(s0)
   142e0:	00d42623          	sw	a3,12(s0)
   142e4:	ee9ff06f          	j	141cc <emdnorm+0x104>
   142e8:	00700713          	li	a4,7
   142ec:	00e42423          	sw	a4,8(s0)
   142f0:	80010737          	lui	a4,0x80010
   142f4:	fff70713          	addi	a4,a4,-1 # 8000ffff <__global_pointer$+0x7ffece57>
   142f8:	00e42a23          	sw	a4,20(s0)
   142fc:	00100713          	li	a4,1
   14300:	00e41c23          	sh	a4,24(s0)
   14304:	00600713          	li	a4,6
   14308:	ec1ff06f          	j	141c8 <emdnorm+0x100>
   1430c:	00600693          	li	a3,6
   14310:	00800737          	lui	a4,0x800
   14314:	0ff70713          	addi	a4,a4,255 # 8000ff <__global_pointer$+0x7dcf57>
   14318:	00e42a23          	sw	a4,20(s0)
   1431c:	00d42423          	sw	a3,8(s0)
   14320:	10000713          	li	a4,256
   14324:	fb9ff06f          	j	142dc <emdnorm+0x214>
   14328:	04000737          	lui	a4,0x4000
   1432c:	7ff70713          	addi	a4,a4,2047 # 40007ff <__global_pointer$+0x3fdd657>
   14330:	00600693          	li	a3,6
   14334:	00e42a23          	sw	a4,20(s0)
   14338:	00001737          	lui	a4,0x1
   1433c:	00d42423          	sw	a3,8(s0)
   14340:	80070713          	addi	a4,a4,-2048 # 800 <_start-0xf874>
   14344:	f99ff06f          	j	142dc <emdnorm+0x214>
   14348:	00400693          	li	a3,4
   1434c:	fc5ff06f          	j	14310 <emdnorm+0x248>
   14350:	00265503          	lhu	a0,2(a2)
   14354:	00050463          	beqz	a0,1435c <emdnorm+0x294>
   14358:	0017e793          	ori	a5,a5,1
   1435c:	00061123          	sh	zero,2(a2)
   14360:	00168693          	addi	a3,a3,1
   14364:	00260613          	addi	a2,a2,2
   14368:	ed5ff06f          	j	1423c <emdnorm+0x174>
   1436c:	f00a0ce3          	beqz	s4,14284 <emdnorm+0x1bc>
   14370:	01204c63          	bgtz	s2,14388 <emdnorm+0x2c0>
   14374:	00442703          	lw	a4,4(s0)
   14378:	09000793          	li	a5,144
   1437c:	00f70663          	beq	a4,a5,14388 <emdnorm+0x2c0>
   14380:	00048513          	mv	a0,s1
   14384:	cd0ff0ef          	jal	ra,13854 <eshup1>
   14388:	0044d783          	lhu	a5,4(s1)
   1438c:	00078863          	beqz	a5,1439c <emdnorm+0x2d4>
   14390:	00048513          	mv	a0,s1
   14394:	c70ff0ef          	jal	ra,13804 <eshdn1>
   14398:	00190913          	addi	s2,s2,1
   1439c:	000087b7          	lui	a5,0x8
   143a0:	00049c23          	sh	zero,24(s1)
   143a4:	ffe78793          	addi	a5,a5,-2 # 7ffe <_start-0x8076>
   143a8:	0327d463          	ble	s2,a5,143d0 <emdnorm+0x308>
   143ac:	ffff87b7          	lui	a5,0xffff8
   143b0:	fff7c793          	not	a5,a5
   143b4:	00f49123          	sh	a5,2(s1)
   143b8:	00448793          	addi	a5,s1,4
   143bc:	01848493          	addi	s1,s1,24
   143c0:	00079023          	sh	zero,0(a5) # ffff8000 <__global_pointer$+0xfffd4e58>
   143c4:	00278793          	addi	a5,a5,2
   143c8:	fef49ce3          	bne	s1,a5,143c0 <emdnorm+0x2f8>
   143cc:	d65ff06f          	j	14130 <emdnorm+0x68>
   143d0:	00095663          	bgez	s2,143dc <emdnorm+0x314>
   143d4:	00049123          	sh	zero,2(s1)
   143d8:	d59ff06f          	j	14130 <emdnorm+0x68>
   143dc:	01249123          	sh	s2,2(s1)
   143e0:	d51ff06f          	j	14130 <emdnorm+0x68>
   143e4:	d80a98e3          	bnez	s5,14174 <emdnorm+0xac>
   143e8:	00049c23          	sh	zero,24(s1)
   143ec:	fc1ff06f          	j	143ac <emdnorm+0x2e4>

000143f0 <eiremain>:
   143f0:	fe010113          	addi	sp,sp,-32
   143f4:	01412423          	sw	s4,8(sp)
   143f8:	00255a03          	lhu	s4,2(a0)
   143fc:	00812c23          	sw	s0,24(sp)
   14400:	00058413          	mv	s0,a1
   14404:	00112e23          	sw	ra,28(sp)
   14408:	00912a23          	sw	s1,20(sp)
   1440c:	01212823          	sw	s2,16(sp)
   14410:	01512223          	sw	s5,4(sp)
   14414:	01612023          	sw	s6,0(sp)
   14418:	00060913          	mv	s2,a2
   1441c:	03460b13          	addi	s6,a2,52
   14420:	01312623          	sw	s3,12(sp)
   14424:	00050a93          	mv	s5,a0
   14428:	a29ff0ef          	jal	ra,13e50 <enormlz>
   1442c:	00245483          	lhu	s1,2(s0)
   14430:	40aa0a33          	sub	s4,s4,a0
   14434:	00040513          	mv	a0,s0
   14438:	a19ff0ef          	jal	ra,13e50 <enormlz>
   1443c:	40a484b3          	sub	s1,s1,a0
   14440:	000b0513          	mv	a0,s6
   14444:	b4cff0ef          	jal	ra,13790 <ecleaz>
   14448:	0544d263          	ble	s4,s1,1448c <eiremain+0x9c>
   1444c:	00040513          	mv	a0,s0
   14450:	01812403          	lw	s0,24(sp)
   14454:	01c12083          	lw	ra,28(sp)
   14458:	00c12983          	lw	s3,12(sp)
   1445c:	00812a03          	lw	s4,8(sp)
   14460:	00412a83          	lw	s5,4(sp)
   14464:	00012b03          	lw	s6,0(sp)
   14468:	00090793          	mv	a5,s2
   1446c:	00048693          	mv	a3,s1
   14470:	01012903          	lw	s2,16(sp)
   14474:	01412483          	lw	s1,20(sp)
   14478:	00000713          	li	a4,0
   1447c:	00000613          	li	a2,0
   14480:	00000593          	li	a1,0
   14484:	02010113          	addi	sp,sp,32
   14488:	c41ff06f          	j	140c8 <emdnorm>
   1448c:	00040593          	mv	a1,s0
   14490:	000a8513          	mv	a0,s5
   14494:	b34ff0ef          	jal	ra,137c8 <ecmpm>
   14498:	00000993          	li	s3,0
   1449c:	00a04a63          	bgtz	a0,144b0 <eiremain+0xc0>
   144a0:	00040593          	mv	a1,s0
   144a4:	000a8513          	mv	a0,s5
   144a8:	cdcff0ef          	jal	ra,13984 <esubm>
   144ac:	00100993          	li	s3,1
   144b0:	000b0513          	mv	a0,s6
   144b4:	ba0ff0ef          	jal	ra,13854 <eshup1>
   144b8:	04c95783          	lhu	a5,76(s2)
   144bc:	00040513          	mv	a0,s0
   144c0:	fff48493          	addi	s1,s1,-1
   144c4:	00f9e9b3          	or	s3,s3,a5
   144c8:	05391623          	sh	s3,76(s2)
   144cc:	b88ff0ef          	jal	ra,13854 <eshup1>
   144d0:	f79ff06f          	j	14448 <eiremain+0x58>

000144d4 <emul>:
   144d4:	f7010113          	addi	sp,sp,-144
   144d8:	08812423          	sw	s0,136(sp)
   144dc:	08912223          	sw	s1,132(sp)
   144e0:	09212023          	sw	s2,128(sp)
   144e4:	07312e23          	sw	s3,124(sp)
   144e8:	08112623          	sw	ra,140(sp)
   144ec:	07412c23          	sw	s4,120(sp)
   144f0:	07512a23          	sw	s5,116(sp)
   144f4:	07612823          	sw	s6,112(sp)
   144f8:	07712623          	sw	s7,108(sp)
   144fc:	07812423          	sw	s8,104(sp)
   14500:	07912223          	sw	s9,100(sp)
   14504:	00050493          	mv	s1,a0
   14508:	00058413          	mv	s0,a1
   1450c:	00060913          	mv	s2,a2
   14510:	00068993          	mv	s3,a3
   14514:	d44ff0ef          	jal	ra,13a58 <eisnan>
   14518:	04050263          	beqz	a0,1455c <emul+0x88>
   1451c:	00090593          	mv	a1,s2
   14520:	00048513          	mv	a0,s1
   14524:	a50ff0ef          	jal	ra,13774 <emov>
   14528:	08c12083          	lw	ra,140(sp)
   1452c:	08812403          	lw	s0,136(sp)
   14530:	08412483          	lw	s1,132(sp)
   14534:	08012903          	lw	s2,128(sp)
   14538:	07c12983          	lw	s3,124(sp)
   1453c:	07812a03          	lw	s4,120(sp)
   14540:	07412a83          	lw	s5,116(sp)
   14544:	07012b03          	lw	s6,112(sp)
   14548:	06c12b83          	lw	s7,108(sp)
   1454c:	06812c03          	lw	s8,104(sp)
   14550:	06412c83          	lw	s9,100(sp)
   14554:	09010113          	addi	sp,sp,144
   14558:	00008067          	ret
   1455c:	00040513          	mv	a0,s0
   14560:	cf8ff0ef          	jal	ra,13a58 <eisnan>
   14564:	00050863          	beqz	a0,14574 <emul+0xa0>
   14568:	00090593          	mv	a1,s2
   1456c:	00040513          	mv	a0,s0
   14570:	fb5ff06f          	j	14524 <emul+0x50>
   14574:	00048513          	mv	a0,s1
   14578:	f24ff0ef          	jal	ra,13c9c <eisinf>
   1457c:	06051463          	bnez	a0,145e4 <emul+0x110>
   14580:	00040513          	mv	a0,s0
   14584:	f18ff0ef          	jal	ra,13c9c <eisinf>
   14588:	00050c63          	beqz	a0,145a0 <emul+0xcc>
   1458c:	000215b7          	lui	a1,0x21
   14590:	a8458593          	addi	a1,a1,-1404 # 20a84 <ezero>
   14594:	00048513          	mv	a0,s1
   14598:	dfcff0ef          	jal	ra,13b94 <ecmp>
   1459c:	04050e63          	beqz	a0,145f8 <emul+0x124>
   145a0:	00048513          	mv	a0,s1
   145a4:	ef8ff0ef          	jal	ra,13c9c <eisinf>
   145a8:	00051863          	bnez	a0,145b8 <emul+0xe4>
   145ac:	00040513          	mv	a0,s0
   145b0:	eecff0ef          	jal	ra,13c9c <eisinf>
   145b4:	04050c63          	beqz	a0,1460c <emul+0x138>
   145b8:	00048513          	mv	a0,s1
   145bc:	cd0ff0ef          	jal	ra,13a8c <eisneg>
   145c0:	00050493          	mv	s1,a0
   145c4:	00040513          	mv	a0,s0
   145c8:	cc4ff0ef          	jal	ra,13a8c <eisneg>
   145cc:	02a48c63          	beq	s1,a0,14604 <emul+0x130>
   145d0:	ffff87b7          	lui	a5,0xffff8
   145d4:	00f91923          	sh	a5,18(s2)
   145d8:	00090513          	mv	a0,s2
   145dc:	ef4ff0ef          	jal	ra,13cd0 <einfin.isra.2>
   145e0:	f49ff06f          	j	14528 <emul+0x54>
   145e4:	000215b7          	lui	a1,0x21
   145e8:	a8458593          	addi	a1,a1,-1404 # 20a84 <ezero>
   145ec:	00040513          	mv	a0,s0
   145f0:	da4ff0ef          	jal	ra,13b94 <ecmp>
   145f4:	f80516e3          	bnez	a0,14580 <emul+0xac>
   145f8:	00090513          	mv	a0,s2
   145fc:	92dff0ef          	jal	ra,13f28 <enan.constprop.12>
   14600:	f29ff06f          	j	14528 <emul+0x54>
   14604:	00091923          	sh	zero,18(s2)
   14608:	fd1ff06f          	j	145d8 <emul+0x104>
   1460c:	00048513          	mv	a0,s1
   14610:	00c10593          	addi	a1,sp,12
   14614:	cb0ff0ef          	jal	ra,13ac4 <emovi>
   14618:	00040513          	mv	a0,s0
   1461c:	02810593          	addi	a1,sp,40
   14620:	ca4ff0ef          	jal	ra,13ac4 <emovi>
   14624:	00e15403          	lhu	s0,14(sp)
   14628:	02a15483          	lhu	s1,42(sp)
   1462c:	02041463          	bnez	s0,14654 <emul+0x180>
   14630:	00000793          	li	a5,0
   14634:	01600713          	li	a4,22
   14638:	00c10693          	addi	a3,sp,12
   1463c:	00f686b3          	add	a3,a3,a5
   14640:	0026d683          	lhu	a3,2(a3)
   14644:	10068a63          	beqz	a3,14758 <emul+0x284>
   14648:	00c10513          	addi	a0,sp,12
   1464c:	805ff0ef          	jal	ra,13e50 <enormlz>
   14650:	40a00433          	neg	s0,a0
   14654:	02a15783          	lhu	a5,42(sp)
   14658:	00048c13          	mv	s8,s1
   1465c:	02079263          	bnez	a5,14680 <emul+0x1ac>
   14660:	01600713          	li	a4,22
   14664:	02810693          	addi	a3,sp,40
   14668:	00f686b3          	add	a3,a3,a5
   1466c:	0026d683          	lhu	a3,2(a3)
   14670:	0e068e63          	beqz	a3,1476c <emul+0x298>
   14674:	02810513          	addi	a0,sp,40
   14678:	fd8ff0ef          	jal	ra,13e50 <enormlz>
   1467c:	40a48c33          	sub	s8,s1,a0
   14680:	02815783          	lhu	a5,40(sp)
   14684:	03498b93          	addi	s7,s3,52
   14688:	03898493          	addi	s1,s3,56
   1468c:	02f99a23          	sh	a5,52(s3)
   14690:	02a15783          	lhu	a5,42(sp)
   14694:	000b8a13          	mv	s4,s7
   14698:	02f99b23          	sh	a5,54(s3)
   1469c:	04e98793          	addi	a5,s3,78
   146a0:	00049023          	sh	zero,0(s1)
   146a4:	00248493          	addi	s1,s1,2
   146a8:	fe979ce3          	bne	a5,s1,146a0 <emul+0x1cc>
   146ac:	00000a93          	li	s5,0
   146b0:	00000b13          	li	s6,0
   146b4:	fec00c93          	li	s9,-20
   146b8:	00c10793          	addi	a5,sp,12
   146bc:	015787b3          	add	a5,a5,s5
   146c0:	0187d503          	lhu	a0,24(a5) # ffff8018 <__global_pointer$+0xfffd4e70>
   146c4:	00050e63          	beqz	a0,146e0 <emul+0x20c>
   146c8:	02810593          	addi	a1,sp,40
   146cc:	04410613          	addi	a2,sp,68
   146d0:	aecff0ef          	jal	ra,139bc <m16m>
   146d4:	000b8593          	mv	a1,s7
   146d8:	04410513          	addi	a0,sp,68
   146dc:	a70ff0ef          	jal	ra,1394c <eaddm>
   146e0:	04c9d783          	lhu	a5,76(s3)
   146e4:	000b8513          	mv	a0,s7
   146e8:	ffea8a93          	addi	s5,s5,-2
   146ec:	00fb6b33          	or	s6,s6,a5
   146f0:	a34ff0ef          	jal	ra,13924 <eshdn6>
   146f4:	fd9a92e3          	bne	s5,s9,146b8 <emul+0x1e4>
   146f8:	02810793          	addi	a5,sp,40
   146fc:	000a5703          	lhu	a4,0(s4)
   14700:	002a0a13          	addi	s4,s4,2
   14704:	00278793          	addi	a5,a5,2
   14708:	fee79f23          	sh	a4,-2(a5)
   1470c:	fe9a18e3          	bne	s4,s1,146fc <emul+0x228>
   14710:	ffffc6b7          	lui	a3,0xffffc
   14714:	01840433          	add	s0,s0,s8
   14718:	00268693          	addi	a3,a3,2 # ffffc002 <__global_pointer$+0xfffd8e5a>
   1471c:	00098793          	mv	a5,s3
   14720:	04000713          	li	a4,64
   14724:	00d406b3          	add	a3,s0,a3
   14728:	00000613          	li	a2,0
   1472c:	000b0593          	mv	a1,s6
   14730:	02810513          	addi	a0,sp,40
   14734:	995ff0ef          	jal	ra,140c8 <emdnorm>
   14738:	00c15703          	lhu	a4,12(sp)
   1473c:	02815783          	lhu	a5,40(sp)
   14740:	02f71c63          	bne	a4,a5,14778 <emul+0x2a4>
   14744:	02011423          	sh	zero,40(sp)
   14748:	00090593          	mv	a1,s2
   1474c:	02810513          	addi	a0,sp,40
   14750:	801ff0ef          	jal	ra,13f50 <emovo.isra.6>
   14754:	dd5ff06f          	j	14528 <emul+0x54>
   14758:	00278793          	addi	a5,a5,2
   1475c:	ece79ee3          	bne	a5,a4,14638 <emul+0x164>
   14760:	00090513          	mv	a0,s2
   14764:	ffdfe0ef          	jal	ra,13760 <eclear>
   14768:	dc1ff06f          	j	14528 <emul+0x54>
   1476c:	00278793          	addi	a5,a5,2
   14770:	eee79ae3          	bne	a5,a4,14664 <emul+0x190>
   14774:	fedff06f          	j	14760 <emul+0x28c>
   14778:	fff00793          	li	a5,-1
   1477c:	02f11423          	sh	a5,40(sp)
   14780:	fc9ff06f          	j	14748 <emul+0x274>

00014784 <ediv>:
   14784:	f7010113          	addi	sp,sp,-144
   14788:	08812423          	sw	s0,136(sp)
   1478c:	08912223          	sw	s1,132(sp)
   14790:	09212023          	sw	s2,128(sp)
   14794:	07512a23          	sw	s5,116(sp)
   14798:	08112623          	sw	ra,140(sp)
   1479c:	07312e23          	sw	s3,124(sp)
   147a0:	07412c23          	sw	s4,120(sp)
   147a4:	07612823          	sw	s6,112(sp)
   147a8:	07712623          	sw	s7,108(sp)
   147ac:	07812423          	sw	s8,104(sp)
   147b0:	07912223          	sw	s9,100(sp)
   147b4:	07a12023          	sw	s10,96(sp)
   147b8:	00050493          	mv	s1,a0
   147bc:	00058413          	mv	s0,a1
   147c0:	00060913          	mv	s2,a2
   147c4:	00068a93          	mv	s5,a3
   147c8:	a90ff0ef          	jal	ra,13a58 <eisnan>
   147cc:	04050463          	beqz	a0,14814 <ediv+0x90>
   147d0:	00090593          	mv	a1,s2
   147d4:	00048513          	mv	a0,s1
   147d8:	f9dfe0ef          	jal	ra,13774 <emov>
   147dc:	08c12083          	lw	ra,140(sp)
   147e0:	08812403          	lw	s0,136(sp)
   147e4:	08412483          	lw	s1,132(sp)
   147e8:	08012903          	lw	s2,128(sp)
   147ec:	07c12983          	lw	s3,124(sp)
   147f0:	07812a03          	lw	s4,120(sp)
   147f4:	07412a83          	lw	s5,116(sp)
   147f8:	07012b03          	lw	s6,112(sp)
   147fc:	06c12b83          	lw	s7,108(sp)
   14800:	06812c03          	lw	s8,104(sp)
   14804:	06412c83          	lw	s9,100(sp)
   14808:	06012d03          	lw	s10,96(sp)
   1480c:	09010113          	addi	sp,sp,144
   14810:	00008067          	ret
   14814:	00040513          	mv	a0,s0
   14818:	a40ff0ef          	jal	ra,13a58 <eisnan>
   1481c:	00050863          	beqz	a0,1482c <ediv+0xa8>
   14820:	00090593          	mv	a1,s2
   14824:	00040513          	mv	a0,s0
   14828:	fb1ff06f          	j	147d8 <ediv+0x54>
   1482c:	000219b7          	lui	s3,0x21
   14830:	a8498593          	addi	a1,s3,-1404 # 20a84 <ezero>
   14834:	00048513          	mv	a0,s1
   14838:	b5cff0ef          	jal	ra,13b94 <ecmp>
   1483c:	1e050663          	beqz	a0,14a28 <ediv+0x2a4>
   14840:	00048513          	mv	a0,s1
   14844:	c58ff0ef          	jal	ra,13c9c <eisinf>
   14848:	00050993          	mv	s3,a0
   1484c:	00040513          	mv	a0,s0
   14850:	c4cff0ef          	jal	ra,13c9c <eisinf>
   14854:	1e099863          	bnez	s3,14a44 <ediv+0x2c0>
   14858:	1e051e63          	bnez	a0,14a54 <ediv+0x2d0>
   1485c:	00048513          	mv	a0,s1
   14860:	00c10593          	addi	a1,sp,12
   14864:	a60ff0ef          	jal	ra,13ac4 <emovi>
   14868:	00040513          	mv	a0,s0
   1486c:	02810593          	addi	a1,sp,40
   14870:	a54ff0ef          	jal	ra,13ac4 <emovi>
   14874:	02a15483          	lhu	s1,42(sp)
   14878:	00e15403          	lhu	s0,14(sp)
   1487c:	02049463          	bnez	s1,148a4 <ediv+0x120>
   14880:	00000793          	li	a5,0
   14884:	01600713          	li	a4,22
   14888:	02810693          	addi	a3,sp,40
   1488c:	00f686b3          	add	a3,a3,a5
   14890:	0026d683          	lhu	a3,2(a3)
   14894:	1e068663          	beqz	a3,14a80 <ediv+0x2fc>
   14898:	02810513          	addi	a0,sp,40
   1489c:	db4ff0ef          	jal	ra,13e50 <enormlz>
   148a0:	40a004b3          	neg	s1,a0
   148a4:	00e15783          	lhu	a5,14(sp)
   148a8:	00040b93          	mv	s7,s0
   148ac:	02079263          	bnez	a5,148d0 <ediv+0x14c>
   148b0:	01600713          	li	a4,22
   148b4:	00c10693          	addi	a3,sp,12
   148b8:	00f686b3          	add	a3,a3,a5
   148bc:	0026d683          	lhu	a3,2(a3)
   148c0:	1c068663          	beqz	a3,14a8c <ediv+0x308>
   148c4:	00c10513          	addi	a0,sp,12
   148c8:	d88ff0ef          	jal	ra,13e50 <enormlz>
   148cc:	40a40bb3          	sub	s7,s0,a0
   148d0:	02815783          	lhu	a5,40(sp)
   148d4:	02a15703          	lhu	a4,42(sp)
   148d8:	034a8993          	addi	s3,s5,52
   148dc:	02fa9a23          	sh	a5,52(s5)
   148e0:	038a8793          	addi	a5,s5,56
   148e4:	02ea9b23          	sh	a4,54(s5)
   148e8:	00078a13          	mv	s4,a5
   148ec:	04ea8713          	addi	a4,s5,78
   148f0:	00278793          	addi	a5,a5,2
   148f4:	fe079f23          	sh	zero,-2(a5)
   148f8:	fee79ce3          	bne	a5,a4,148f0 <ediv+0x16c>
   148fc:	02810513          	addi	a0,sp,40
   14900:	f05fe0ef          	jal	ra,13804 <eshdn1>
   14904:	01215c03          	lhu	s8,18(sp)
   14908:	00010b37          	lui	s6,0x10
   1490c:	fffb0b13          	addi	s6,s6,-1 # ffff <_start-0x75>
   14910:	036c0d33          	mul	s10,s8,s6
   14914:	01a98c93          	addi	s9,s3,26
   14918:	02c15783          	lhu	a5,44(sp)
   1491c:	02e15403          	lhu	s0,46(sp)
   14920:	01079793          	slli	a5,a5,0x10
   14924:	008787b3          	add	a5,a5,s0
   14928:	000b0413          	mv	s0,s6
   1492c:	00fd6863          	bltu	s10,a5,1493c <ediv+0x1b8>
   14930:	0387d433          	divu	s0,a5,s8
   14934:	01041413          	slli	s0,s0,0x10
   14938:	01045413          	srli	s0,s0,0x10
   1493c:	00c10593          	addi	a1,sp,12
   14940:	00040513          	mv	a0,s0
   14944:	04410613          	addi	a2,sp,68
   14948:	874ff0ef          	jal	ra,139bc <m16m>
   1494c:	02810593          	addi	a1,sp,40
   14950:	04410513          	addi	a0,sp,68
   14954:	e75fe0ef          	jal	ra,137c8 <ecmpm>
   14958:	02a05663          	blez	a0,14984 <ediv+0x200>
   1495c:	04410593          	addi	a1,sp,68
   14960:	00c10513          	addi	a0,sp,12
   14964:	820ff0ef          	jal	ra,13984 <esubm>
   14968:	02810593          	addi	a1,sp,40
   1496c:	04410513          	addi	a0,sp,68
   14970:	e59fe0ef          	jal	ra,137c8 <ecmpm>
   14974:	12a04a63          	bgtz	a0,14aa8 <ediv+0x324>
   14978:	fff40413          	addi	s0,s0,-1
   1497c:	01041413          	slli	s0,s0,0x10
   14980:	01045413          	srli	s0,s0,0x10
   14984:	02810593          	addi	a1,sp,40
   14988:	04410513          	addi	a0,sp,68
   1498c:	ff9fe0ef          	jal	ra,13984 <esubm>
   14990:	02810513          	addi	a0,sp,40
   14994:	008a1023          	sh	s0,0(s4)
   14998:	002a0a13          	addi	s4,s4,2
   1499c:	f69fe0ef          	jal	ra,13904 <eshup6>
   149a0:	f79a1ce3          	bne	s4,s9,14918 <ediv+0x194>
   149a4:	00000793          	li	a5,0
   149a8:	00000593          	li	a1,0
   149ac:	01600713          	li	a4,22
   149b0:	02810693          	addi	a3,sp,40
   149b4:	00f686b3          	add	a3,a3,a5
   149b8:	0046d683          	lhu	a3,4(a3)
   149bc:	00278793          	addi	a5,a5,2
   149c0:	00d5e5b3          	or	a1,a1,a3
   149c4:	fee796e3          	bne	a5,a4,149b0 <ediv+0x22c>
   149c8:	00b035b3          	snez	a1,a1
   149cc:	02810793          	addi	a5,sp,40
   149d0:	0009d703          	lhu	a4,0(s3)
   149d4:	00298993          	addi	s3,s3,2
   149d8:	00278793          	addi	a5,a5,2
   149dc:	fee79f23          	sh	a4,-2(a5)
   149e0:	ff3a18e3          	bne	s4,s3,149d0 <ediv+0x24c>
   149e4:	000046b7          	lui	a3,0x4
   149e8:	417484b3          	sub	s1,s1,s7
   149ec:	fff68693          	addi	a3,a3,-1 # 3fff <_start-0xc075>
   149f0:	000a8793          	mv	a5,s5
   149f4:	04000713          	li	a4,64
   149f8:	00d486b3          	add	a3,s1,a3
   149fc:	00000613          	li	a2,0
   14a00:	02810513          	addi	a0,sp,40
   14a04:	ec4ff0ef          	jal	ra,140c8 <emdnorm>
   14a08:	00c15703          	lhu	a4,12(sp)
   14a0c:	02815783          	lhu	a5,40(sp)
   14a10:	0af71a63          	bne	a4,a5,14ac4 <ediv+0x340>
   14a14:	02011423          	sh	zero,40(sp)
   14a18:	00090593          	mv	a1,s2
   14a1c:	02810513          	addi	a0,sp,40
   14a20:	d30ff0ef          	jal	ra,13f50 <emovo.isra.6>
   14a24:	db9ff06f          	j	147dc <ediv+0x58>
   14a28:	a8498593          	addi	a1,s3,-1404
   14a2c:	00040513          	mv	a0,s0
   14a30:	964ff0ef          	jal	ra,13b94 <ecmp>
   14a34:	e00516e3          	bnez	a0,14840 <ediv+0xbc>
   14a38:	00090513          	mv	a0,s2
   14a3c:	cecff0ef          	jal	ra,13f28 <enan.constprop.12>
   14a40:	d9dff06f          	j	147dc <ediv+0x58>
   14a44:	fe051ae3          	bnez	a0,14a38 <ediv+0x2b4>
   14a48:	00090513          	mv	a0,s2
   14a4c:	d15fe0ef          	jal	ra,13760 <eclear>
   14a50:	d8dff06f          	j	147dc <ediv+0x58>
   14a54:	00048513          	mv	a0,s1
   14a58:	834ff0ef          	jal	ra,13a8c <eisneg>
   14a5c:	00050493          	mv	s1,a0
   14a60:	00040513          	mv	a0,s0
   14a64:	828ff0ef          	jal	ra,13a8c <eisneg>
   14a68:	02a48c63          	beq	s1,a0,14aa0 <ediv+0x31c>
   14a6c:	ffff87b7          	lui	a5,0xffff8
   14a70:	00f91923          	sh	a5,18(s2)
   14a74:	00090513          	mv	a0,s2
   14a78:	a58ff0ef          	jal	ra,13cd0 <einfin.isra.2>
   14a7c:	d61ff06f          	j	147dc <ediv+0x58>
   14a80:	00278793          	addi	a5,a5,2 # ffff8002 <__global_pointer$+0xfffd4e5a>
   14a84:	e0e792e3          	bne	a5,a4,14888 <ediv+0x104>
   14a88:	fc1ff06f          	j	14a48 <ediv+0x2c4>
   14a8c:	00278793          	addi	a5,a5,2
   14a90:	e2e792e3          	bne	a5,a4,148b4 <ediv+0x130>
   14a94:	00c15703          	lhu	a4,12(sp)
   14a98:	02815783          	lhu	a5,40(sp)
   14a9c:	fcf718e3          	bne	a4,a5,14a6c <ediv+0x2e8>
   14aa0:	00091923          	sh	zero,18(s2)
   14aa4:	fd1ff06f          	j	14a74 <ediv+0x2f0>
   14aa8:	ffe40413          	addi	s0,s0,-2
   14aac:	01041413          	slli	s0,s0,0x10
   14ab0:	04410593          	addi	a1,sp,68
   14ab4:	00c10513          	addi	a0,sp,12
   14ab8:	01045413          	srli	s0,s0,0x10
   14abc:	ec9fe0ef          	jal	ra,13984 <esubm>
   14ac0:	ec5ff06f          	j	14984 <ediv+0x200>
   14ac4:	fff00793          	li	a5,-1
   14ac8:	02f11423          	sh	a5,40(sp)
   14acc:	f4dff06f          	j	14a18 <ediv+0x294>

00014ad0 <_ldtoa_r>:
   14ad0:	0005ae03          	lw	t3,0(a1)
   14ad4:	0045a303          	lw	t1,4(a1)
   14ad8:	0085a883          	lw	a7,8(a1)
   14adc:	00c5a583          	lw	a1,12(a1)
   14ae0:	e2010113          	addi	sp,sp,-480
   14ae4:	1c812c23          	sw	s0,472(sp)
   14ae8:	02b12623          	sw	a1,44(sp)
   14aec:	00078413          	mv	s0,a5
   14af0:	04052583          	lw	a1,64(a0)
   14af4:	fff00793          	li	a5,-1
   14af8:	14f12823          	sw	a5,336(sp)
   14afc:	09000793          	li	a5,144
   14b00:	1d412423          	sw	s4,456(sp)
   14b04:	1d512223          	sw	s5,452(sp)
   14b08:	1b712e23          	sw	s7,444(sp)
   14b0c:	1b912a23          	sw	s9,436(sp)
   14b10:	1c112e23          	sw	ra,476(sp)
   14b14:	1c912a23          	sw	s1,468(sp)
   14b18:	1d212823          	sw	s2,464(sp)
   14b1c:	1d312623          	sw	s3,460(sp)
   14b20:	1d612023          	sw	s6,448(sp)
   14b24:	1b812c23          	sw	s8,440(sp)
   14b28:	1ba12823          	sw	s10,432(sp)
   14b2c:	1bb12623          	sw	s11,428(sp)
   14b30:	01012623          	sw	a6,12(sp)
   14b34:	03c12023          	sw	t3,32(sp)
   14b38:	02612223          	sw	t1,36(sp)
   14b3c:	03112423          	sw	a7,40(sp)
   14b40:	14f12a23          	sw	a5,340(sp)
   14b44:	00050a13          	mv	s4,a0
   14b48:	00060b93          	mv	s7,a2
   14b4c:	00068a93          	mv	s5,a3
   14b50:	00070c93          	mv	s9,a4
   14b54:	02058063          	beqz	a1,14b74 <_ldtoa_r+0xa4>
   14b58:	04452783          	lw	a5,68(a0)
   14b5c:	00100713          	li	a4,1
   14b60:	00f71733          	sll	a4,a4,a5
   14b64:	00f5a223          	sw	a5,4(a1)
   14b68:	00e5a423          	sw	a4,8(a1)
   14b6c:	770010ef          	jal	ra,162dc <_Bfree>
   14b70:	040a2023          	sw	zero,64(s4)
   14b74:	02010513          	addi	a0,sp,32
   14b78:	05010593          	addi	a1,sp,80
   14b7c:	c44ff0ef          	jal	ra,13fc0 <e113toe.isra.8>
   14b80:	05010513          	addi	a0,sp,80
   14b84:	f09fe0ef          	jal	ra,13a8c <eisneg>
   14b88:	0e050063          	beqz	a0,14c68 <_ldtoa_r+0x198>
   14b8c:	00100793          	li	a5,1
   14b90:	00f42023          	sw	a5,0(s0)
   14b94:	00300793          	li	a5,3
   14b98:	0cfb8c63          	beq	s7,a5,14c70 <_ldtoa_r+0x1a0>
   14b9c:	01400913          	li	s2,20
   14ba0:	000b8a63          	beqz	s7,14bb4 <_ldtoa_r+0xe4>
   14ba4:	fffa8913          	addi	s2,s5,-1
   14ba8:	02a00793          	li	a5,42
   14bac:	0127d463          	ble	s2,a5,14bb4 <_ldtoa_r+0xe4>
   14bb0:	02a00913          	li	s2,42
   14bb4:	15412783          	lw	a5,340(sp)
   14bb8:	05010513          	addi	a0,sp,80
   14bbc:	00f12823          	sw	a5,16(sp)
   14bc0:	e99fe0ef          	jal	ra,13a58 <eisnan>
   14bc4:	00050413          	mv	s0,a0
   14bc8:	0a050863          	beqz	a0,14c78 <_ldtoa_r+0x1a8>
   14bcc:	000215b7          	lui	a1,0x21
   14bd0:	cd858593          	addi	a1,a1,-808 # 20cd8 <emtens+0x104>
   14bd4:	11410513          	addi	a0,sp,276
   14bd8:	00002437          	lui	s0,0x2
   14bdc:	39d020ef          	jal	ra,17778 <sprintf>
   14be0:	70f40413          	addi	s0,s0,1807 # 270f <_start-0xd965>
   14be4:	01012783          	lw	a5,16(sp)
   14be8:	05010513          	addi	a0,sp,80
   14bec:	16812023          	sw	s0,352(sp)
   14bf0:	14f12a23          	sw	a5,340(sp)
   14bf4:	8a8ff0ef          	jal	ra,13c9c <eisinf>
   14bf8:	11410993          	addi	s3,sp,276
   14bfc:	00051863          	bnez	a0,14c0c <_ldtoa_r+0x13c>
   14c00:	05010513          	addi	a0,sp,80
   14c04:	e55fe0ef          	jal	ra,13a58 <eisnan>
   14c08:	180506e3          	beqz	a0,15594 <_ldtoa_r+0xac4>
   14c0c:	000027b7          	lui	a5,0x2
   14c10:	70f78793          	addi	a5,a5,1807 # 270f <_start-0xd965>
   14c14:	00fca023          	sw	a5,0(s9)
   14c18:	00098793          	mv	a5,s3
   14c1c:	02000613          	li	a2,32
   14c20:	02d00693          	li	a3,45
   14c24:	0007c703          	lbu	a4,0(a5)
   14c28:	1cc704e3          	beq	a4,a2,155f0 <_ldtoa_r+0xb20>
   14c2c:	1cd702e3          	beq	a4,a3,155f0 <_ldtoa_r+0xb20>
   14c30:	00098413          	mv	s0,s3
   14c34:	00178793          	addi	a5,a5,1
   14c38:	fff7c703          	lbu	a4,-1(a5)
   14c3c:	00140693          	addi	a3,s0,1
   14c40:	fee68fa3          	sb	a4,-1(a3)
   14c44:	1a071ae3          	bnez	a4,155f8 <_ldtoa_r+0xb28>
   14c48:	00200713          	li	a4,2
   14c4c:	00100793          	li	a5,1
   14c50:	00eb8863          	beq	s7,a4,14c60 <_ldtoa_r+0x190>
   14c54:	16012783          	lw	a5,352(sp)
   14c58:	0127d463          	ble	s2,a5,14c60 <_ldtoa_r+0x190>
   14c5c:	00090793          	mv	a5,s2
   14c60:	03000693          	li	a3,48
   14c64:	1a50006f          	j	15608 <_ldtoa_r+0xb38>
   14c68:	00042023          	sw	zero,0(s0)
   14c6c:	f29ff06f          	j	14b94 <_ldtoa_r+0xc4>
   14c70:	000a8913          	mv	s2,s5
   14c74:	f35ff06f          	j	14ba8 <_ldtoa_r+0xd8>
   14c78:	09000793          	li	a5,144
   14c7c:	06c10593          	addi	a1,sp,108
   14c80:	05010513          	addi	a0,sp,80
   14c84:	14f12a23          	sw	a5,340(sp)
   14c88:	aedfe0ef          	jal	ra,13774 <emov>
   14c8c:	07e15783          	lhu	a5,126(sp)
   14c90:	00012223          	sw	zero,4(sp)
   14c94:	01079713          	slli	a4,a5,0x10
   14c98:	41075713          	srai	a4,a4,0x10
   14c9c:	02075063          	bgez	a4,14cbc <_ldtoa_r+0x1ec>
   14ca0:	00008737          	lui	a4,0x8
   14ca4:	fff70713          	addi	a4,a4,-1 # 7fff <_start-0x8075>
   14ca8:	00e7f7b3          	and	a5,a5,a4
   14cac:	06f11f23          	sh	a5,126(sp)
   14cb0:	000107b7          	lui	a5,0x10
   14cb4:	fff78793          	addi	a5,a5,-1 # ffff <_start-0x75>
   14cb8:	00f12223          	sw	a5,4(sp)
   14cbc:	00021b37          	lui	s6,0x21
   14cc0:	a84b0513          	addi	a0,s6,-1404 # 20a84 <ezero>
   14cc4:	08810593          	addi	a1,sp,136
   14cc8:	01450513          	addi	a0,a0,20
   14ccc:	aa9fe0ef          	jal	ra,13774 <emov>
   14cd0:	07e15703          	lhu	a4,126(sp)
   14cd4:	000214b7          	lui	s1,0x21
   14cd8:	a84b0993          	addi	s3,s6,-1404
   14cdc:	a9848493          	addi	s1,s1,-1384 # 20a98 <eone>
   14ce0:	1e071ce3          	bnez	a4,156d8 <_ldtoa_r+0xc08>
   14ce4:	06c10713          	addi	a4,sp,108
   14ce8:	00000793          	li	a5,0
   14cec:	00900693          	li	a3,9
   14cf0:	00075603          	lhu	a2,0(a4)
   14cf4:	10061063          	bnez	a2,14df4 <_ldtoa_r+0x324>
   14cf8:	00178793          	addi	a5,a5,1
   14cfc:	00270713          	addi	a4,a4,2
   14d00:	fed798e3          	bne	a5,a3,14cf0 <_ldtoa_r+0x220>
   14d04:	0c010593          	addi	a1,sp,192
   14d08:	08810513          	addi	a0,sp,136
   14d0c:	db9fe0ef          	jal	ra,13ac4 <emovi>
   14d10:	08810593          	addi	a1,sp,136
   14d14:	0c010513          	addi	a0,sp,192
   14d18:	a8dfe0ef          	jal	ra,137a4 <emovz>
   14d1c:	0c010593          	addi	a1,sp,192
   14d20:	06c10513          	addi	a0,sp,108
   14d24:	da1fe0ef          	jal	ra,13ac4 <emovi>
   14d28:	06c10593          	addi	a1,sp,108
   14d2c:	0c010513          	addi	a0,sp,192
   14d30:	a75fe0ef          	jal	ra,137a4 <emovz>
   14d34:	15010613          	addi	a2,sp,336
   14d38:	06c10593          	addi	a1,sp,108
   14d3c:	08810513          	addi	a0,sp,136
   14d40:	eb0ff0ef          	jal	ra,143f0 <eiremain>
   14d44:	19c15483          	lhu	s1,412(sp)
   14d48:	00049a63          	bnez	s1,14d5c <_ldtoa_r+0x28c>
   14d4c:	a84b0593          	addi	a1,s6,-1404
   14d50:	06c10513          	addi	a0,sp,108
   14d54:	e41fe0ef          	jal	ra,13b94 <ecmp>
   14d58:	6a051463          	bnez	a0,15400 <_ldtoa_r+0x930>
   14d5c:	00412783          	lw	a5,4(sp)
   14d60:	6e078663          	beqz	a5,1544c <_ldtoa_r+0x97c>
   14d64:	02d00793          	li	a5,45
   14d68:	10f10a23          	sb	a5,276(sp)
   14d6c:	00300793          	li	a5,3
   14d70:	00090993          	mv	s3,s2
   14d74:	00fb9863          	bne	s7,a5,14d84 <_ldtoa_r+0x2b4>
   14d78:	008909b3          	add	s3,s2,s0
   14d7c:	02a00793          	li	a5,42
   14d80:	1737cce3          	blt	a5,s3,156f8 <_ldtoa_r+0xc28>
   14d84:	00a00793          	li	a5,10
   14d88:	6cf49663          	bne	s1,a5,15454 <_ldtoa_r+0x984>
   14d8c:	03100793          	li	a5,49
   14d90:	10f10aa3          	sb	a5,277(sp)
   14d94:	02e00793          	li	a5,46
   14d98:	10f10b23          	sb	a5,278(sp)
   14d9c:	11710c13          	addi	s8,sp,279
   14da0:	01305a63          	blez	s3,14db4 <_ldtoa_r+0x2e4>
   14da4:	03000793          	li	a5,48
   14da8:	10f10ba3          	sb	a5,279(sp)
   14dac:	fff98993          	addi	s3,s3,-1
   14db0:	11810c13          	addi	s8,sp,280
   14db4:	00140413          	addi	s0,s0,1
   14db8:	6a09d863          	bgez	s3,15468 <_ldtoa_r+0x998>
   14dbc:	000215b7          	lui	a1,0x21
   14dc0:	00040613          	mv	a2,s0
   14dc4:	cfc58593          	addi	a1,a1,-772 # 20cfc <emtens+0x128>
   14dc8:	000c0513          	mv	a0,s8
   14dcc:	1ad020ef          	jal	ra,17778 <sprintf>
   14dd0:	e15ff06f          	j	14be4 <_ldtoa_r+0x114>
   14dd4:	000215b7          	lui	a1,0x21
   14dd8:	cec58593          	addi	a1,a1,-788 # 20cec <emtens+0x118>
   14ddc:	df9ff06f          	j	14bd4 <_ldtoa_r+0x104>
   14de0:	07c11783          	lh	a5,124(sp)
   14de4:	0007c863          	bltz	a5,14df4 <_ldtoa_r+0x324>
   14de8:	000215b7          	lui	a1,0x21
   14dec:	cf858593          	addi	a1,a1,-776 # 20cf8 <emtens+0x124>
   14df0:	de5ff06f          	j	14bd4 <_ldtoa_r+0x104>
   14df4:	06c10593          	addi	a1,sp,108
   14df8:	00048513          	mv	a0,s1
   14dfc:	d99fe0ef          	jal	ra,13b94 <ecmp>
   14e00:	f00502e3          	beqz	a0,14d04 <_ldtoa_r+0x234>
   14e04:	46055663          	bgez	a0,15270 <_ldtoa_r+0x7a0>
   14e08:	0a410593          	addi	a1,sp,164
   14e0c:	06c10513          	addi	a0,sp,108
   14e10:	965fe0ef          	jal	ra,13774 <emov>
   14e14:	000047b7          	lui	a5,0x4
   14e18:	08e78793          	addi	a5,a5,142 # 408e <_start-0xbfe6>
   14e1c:	0af11b23          	sh	a5,182(sp)
   14e20:	01000793          	li	a5,16
   14e24:	00f12423          	sw	a5,8(sp)
   14e28:	000087b7          	lui	a5,0x8
   14e2c:	fff78793          	addi	a5,a5,-1 # 7fff <_start-0x8075>
   14e30:	00f12a23          	sw	a5,20(sp)
   14e34:	ffffc7b7          	lui	a5,0xffffc
   14e38:	00278793          	addi	a5,a5,2 # ffffc002 <__global_pointer$+0xfffd8e5a>
   14e3c:	00000d13          	li	s10,0
   14e40:	00f12c23          	sw	a5,24(sp)
   14e44:	000217b7          	lui	a5,0x21
   14e48:	b4c78793          	addi	a5,a5,-1204 # 20b4c <etens+0xa0>
   14e4c:	01a78533          	add	a0,a5,s10
   14e50:	15010693          	addi	a3,sp,336
   14e54:	08810613          	addi	a2,sp,136
   14e58:	0a410593          	addi	a1,sp,164
   14e5c:	929ff0ef          	jal	ra,14784 <ediv>
   14e60:	03c10593          	addi	a1,sp,60
   14e64:	08810513          	addi	a0,sp,136
   14e68:	90dfe0ef          	jal	ra,13774 <emov>
   14e6c:	01412783          	lw	a5,20(sp)
   14e70:	04e15c03          	lhu	s8,78(sp)
   14e74:	00fc7733          	and	a4,s8,a5
   14e78:	01812783          	lw	a5,24(sp)
   14e7c:	00f70733          	add	a4,a4,a5
   14e80:	04e04a63          	bgtz	a4,14ed4 <_ldtoa_r+0x404>
   14e84:	0c010513          	addi	a0,sp,192
   14e88:	8d9fe0ef          	jal	ra,13760 <eclear>
   14e8c:	010c1c13          	slli	s8,s8,0x10
   14e90:	410c5c13          	srai	s8,s8,0x10
   14e94:	100c5463          	bgez	s8,14f9c <_ldtoa_r+0x4cc>
   14e98:	00000793          	li	a5,0
   14e9c:	03c10713          	addi	a4,sp,60
   14ea0:	00f70733          	add	a4,a4,a5
   14ea4:	00075683          	lhu	a3,0(a4)
   14ea8:	0c010713          	addi	a4,sp,192
   14eac:	00f70733          	add	a4,a4,a5
   14eb0:	00075703          	lhu	a4,0(a4)
   14eb4:	3ae68663          	beq	a3,a4,15260 <_ldtoa_r+0x790>
   14eb8:	00048513          	mv	a0,s1
   14ebc:	b9dfe0ef          	jal	ra,13a58 <eisnan>
   14ec0:	08050263          	beqz	a0,14f44 <_ldtoa_r+0x474>
   14ec4:	0c010593          	addi	a1,sp,192
   14ec8:	00048513          	mv	a0,s1
   14ecc:	8a9fe0ef          	jal	ra,13774 <emov>
   14ed0:	0cc0006f          	j	14f9c <_ldtoa_r+0x4cc>
   14ed4:	09000793          	li	a5,144
   14ed8:	40e78db3          	sub	s11,a5,a4
   14edc:	0c010593          	addi	a1,sp,192
   14ee0:	03c10513          	addi	a0,sp,60
   14ee4:	891fe0ef          	jal	ra,13774 <emov>
   14ee8:	0bb05a63          	blez	s11,14f9c <_ldtoa_r+0x4cc>
   14eec:	0c010693          	addi	a3,sp,192
   14ef0:	000d8793          	mv	a5,s11
   14ef4:	00f00613          	li	a2,15
   14ef8:	02f64e63          	blt	a2,a5,14f34 <_ldtoa_r+0x464>
   14efc:	004dd793          	srli	a5,s11,0x4
   14f00:	ff000613          	li	a2,-16
   14f04:	00179693          	slli	a3,a5,0x1
   14f08:	02c787b3          	mul	a5,a5,a2
   14f0c:	0c010713          	addi	a4,sp,192
   14f10:	00d706b3          	add	a3,a4,a3
   14f14:	0006d703          	lhu	a4,0(a3)
   14f18:	01b787b3          	add	a5,a5,s11
   14f1c:	00179793          	slli	a5,a5,0x1
   14f20:	00f987b3          	add	a5,s3,a5
   14f24:	12c7d783          	lhu	a5,300(a5)
   14f28:	00e7f7b3          	and	a5,a5,a4
   14f2c:	00f69023          	sh	a5,0(a3)
   14f30:	f5dff06f          	j	14e8c <_ldtoa_r+0x3bc>
   14f34:	00069023          	sh	zero,0(a3)
   14f38:	ff078793          	addi	a5,a5,-16
   14f3c:	00268693          	addi	a3,a3,2
   14f40:	fb9ff06f          	j	14ef8 <_ldtoa_r+0x428>
   14f44:	0c010513          	addi	a0,sp,192
   14f48:	b11fe0ef          	jal	ra,13a58 <eisnan>
   14f4c:	00050863          	beqz	a0,14f5c <_ldtoa_r+0x48c>
   14f50:	0c010593          	addi	a1,sp,192
   14f54:	00058513          	mv	a0,a1
   14f58:	f75ff06f          	j	14ecc <_ldtoa_r+0x3fc>
   14f5c:	00048513          	mv	a0,s1
   14f60:	d3dfe0ef          	jal	ra,13c9c <eisinf>
   14f64:	00050d93          	mv	s11,a0
   14f68:	0c010513          	addi	a0,sp,192
   14f6c:	d31fe0ef          	jal	ra,13c9c <eisinf>
   14f70:	00050c13          	mv	s8,a0
   14f74:	140d8c63          	beqz	s11,150cc <_ldtoa_r+0x5fc>
   14f78:	12050463          	beqz	a0,150a0 <_ldtoa_r+0x5d0>
   14f7c:	00048513          	mv	a0,s1
   14f80:	b0dfe0ef          	jal	ra,13a8c <eisneg>
   14f84:	00050c13          	mv	s8,a0
   14f88:	0c010513          	addi	a0,sp,192
   14f8c:	b01fe0ef          	jal	ra,13a8c <eisneg>
   14f90:	10ac1863          	bne	s8,a0,150a0 <_ldtoa_r+0x5d0>
   14f94:	0c010513          	addi	a0,sp,192
   14f98:	f91fe0ef          	jal	ra,13f28 <enan.constprop.12>
   14f9c:	00000793          	li	a5,0
   14fa0:	08810713          	addi	a4,sp,136
   14fa4:	00f70733          	add	a4,a4,a5
   14fa8:	00075683          	lhu	a3,0(a4)
   14fac:	0c010713          	addi	a4,sp,192
   14fb0:	00f70733          	add	a4,a4,a5
   14fb4:	00075703          	lhu	a4,0(a4)
   14fb8:	02e69263          	bne	a3,a4,14fdc <_ldtoa_r+0x50c>
   14fbc:	00278793          	addi	a5,a5,2
   14fc0:	01200713          	li	a4,18
   14fc4:	fce79ee3          	bne	a5,a4,14fa0 <_ldtoa_r+0x4d0>
   14fc8:	0a410593          	addi	a1,sp,164
   14fcc:	08810513          	addi	a0,sp,136
   14fd0:	fa4fe0ef          	jal	ra,13774 <emov>
   14fd4:	00812783          	lw	a5,8(sp)
   14fd8:	00f40433          	add	s0,s0,a5
   14fdc:	00812783          	lw	a5,8(sp)
   14fe0:	014d0d13          	addi	s10,s10,20
   14fe4:	0017d793          	srli	a5,a5,0x1
   14fe8:	00f12423          	sw	a5,8(sp)
   14fec:	06400793          	li	a5,100
   14ff0:	e4fd1ae3          	bne	s10,a5,14e44 <_ldtoa_r+0x374>
   14ff4:	0b615783          	lhu	a5,182(sp)
   14ff8:	07e15703          	lhu	a4,126(sp)
   14ffc:	06c10593          	addi	a1,sp,108
   15000:	0a410513          	addi	a0,sp,164
   15004:	00e787b3          	add	a5,a5,a4
   15008:	ffffc737          	lui	a4,0xffffc
   1500c:	f7270713          	addi	a4,a4,-142 # ffffbf72 <__global_pointer$+0xfffd8dca>
   15010:	00e787b3          	add	a5,a5,a4
   15014:	0af11b23          	sh	a5,182(sp)
   15018:	f5cfe0ef          	jal	ra,13774 <emov>
   1501c:	00048513          	mv	a0,s1
   15020:	08810593          	addi	a1,sp,136
   15024:	f50fe0ef          	jal	ra,13774 <emov>
   15028:	00000493          	li	s1,0
   1502c:	00001d37          	lui	s10,0x1
   15030:	11898993          	addi	s3,s3,280
   15034:	10400d93          	li	s11,260
   15038:	000217b7          	lui	a5,0x21
   1503c:	aac78793          	addi	a5,a5,-1364 # 20aac <etens>
   15040:	0a410593          	addi	a1,sp,164
   15044:	00098513          	mv	a0,s3
   15048:	00978c33          	add	s8,a5,s1
   1504c:	b49fe0ef          	jal	ra,13b94 <ecmp>
   15050:	caa04ae3          	bgtz	a0,14d04 <_ldtoa_r+0x234>
   15054:	0a410593          	addi	a1,sp,164
   15058:	000c0513          	mv	a0,s8
   1505c:	b39fe0ef          	jal	ra,13b94 <ecmp>
   15060:	02a04863          	bgtz	a0,15090 <_ldtoa_r+0x5c0>
   15064:	0a410613          	addi	a2,sp,164
   15068:	00060593          	mv	a1,a2
   1506c:	15010693          	addi	a3,sp,336
   15070:	000c0513          	mv	a0,s8
   15074:	f10ff0ef          	jal	ra,14784 <ediv>
   15078:	08810613          	addi	a2,sp,136
   1507c:	15010693          	addi	a3,sp,336
   15080:	00060593          	mv	a1,a2
   15084:	000c0513          	mv	a0,s8
   15088:	c4cff0ef          	jal	ra,144d4 <emul>
   1508c:	01a40433          	add	s0,s0,s10
   15090:	01448493          	addi	s1,s1,20
   15094:	001d5d13          	srli	s10,s10,0x1
   15098:	fbb490e3          	bne	s1,s11,15038 <_ldtoa_r+0x568>
   1509c:	c69ff06f          	j	14d04 <_ldtoa_r+0x234>
   150a0:	00048513          	mv	a0,s1
   150a4:	0c010593          	addi	a1,sp,192
   150a8:	eccfe0ef          	jal	ra,13774 <emov>
   150ac:	0c010513          	addi	a0,sp,192
   150b0:	9a9fe0ef          	jal	ra,13a58 <eisnan>
   150b4:	ee0514e3          	bnez	a0,14f9c <_ldtoa_r+0x4cc>
   150b8:	0d215783          	lhu	a5,210(sp)
   150bc:	ffff8737          	lui	a4,0xffff8
   150c0:	00e7c7b3          	xor	a5,a5,a4
   150c4:	0cf11923          	sh	a5,210(sp)
   150c8:	ed5ff06f          	j	14f9c <_ldtoa_r+0x4cc>
   150cc:	e80512e3          	bnez	a0,14f50 <_ldtoa_r+0x480>
   150d0:	0dc10593          	addi	a1,sp,220
   150d4:	00048513          	mv	a0,s1
   150d8:	9edfe0ef          	jal	ra,13ac4 <emovi>
   150dc:	0f810593          	addi	a1,sp,248
   150e0:	0c010513          	addi	a0,sp,192
   150e4:	9e1fe0ef          	jal	ra,13ac4 <emovi>
   150e8:	0dc15703          	lhu	a4,220(sp)
   150ec:	0fa15d83          	lhu	s11,250(sp)
   150f0:	0de15783          	lhu	a5,222(sp)
   150f4:	fff74713          	not	a4,a4
   150f8:	01071713          	slli	a4,a4,0x10
   150fc:	01075713          	srli	a4,a4,0x10
   15100:	0ce11e23          	sh	a4,220(sp)
   15104:	41b787b3          	sub	a5,a5,s11
   15108:	08f05863          	blez	a5,15198 <_ldtoa_r+0x6c8>
   1510c:	11410593          	addi	a1,sp,276
   15110:	0f810513          	addi	a0,sp,248
   15114:	00f12e23          	sw	a5,28(sp)
   15118:	e8cfe0ef          	jal	ra,137a4 <emovz>
   1511c:	0f810593          	addi	a1,sp,248
   15120:	0dc10513          	addi	a0,sp,220
   15124:	e80fe0ef          	jal	ra,137a4 <emovz>
   15128:	0dc10593          	addi	a1,sp,220
   1512c:	11410513          	addi	a0,sp,276
   15130:	e74fe0ef          	jal	ra,137a4 <emovz>
   15134:	01c12783          	lw	a5,28(sp)
   15138:	0fa15d83          	lhu	s11,250(sp)
   1513c:	40f007b3          	neg	a5,a5
   15140:	f6f00713          	li	a4,-145
   15144:	08e7ce63          	blt	a5,a4,151e0 <_ldtoa_r+0x710>
   15148:	00078593          	mv	a1,a5
   1514c:	0dc10513          	addi	a0,sp,220
   15150:	ba9fe0ef          	jal	ra,13cf8 <eshift.part.3>
   15154:	00050813          	mv	a6,a0
   15158:	0dc15703          	lhu	a4,220(sp)
   1515c:	0f815783          	lhu	a5,248(sp)
   15160:	01012e23          	sw	a6,28(sp)
   15164:	0f810593          	addi	a1,sp,248
   15168:	0dc10513          	addi	a0,sp,220
   1516c:	0ef71463          	bne	a4,a5,15254 <_ldtoa_r+0x784>
   15170:	fdcfe0ef          	jal	ra,1394c <eaddm>
   15174:	01c12803          	lw	a6,28(sp)
   15178:	15010793          	addi	a5,sp,336
   1517c:	04000713          	li	a4,64
   15180:	000d8693          	mv	a3,s11
   15184:	000c0613          	mv	a2,s8
   15188:	00080593          	mv	a1,a6
   1518c:	0f810513          	addi	a0,sp,248
   15190:	f39fe0ef          	jal	ra,140c8 <emdnorm>
   15194:	04c0006f          	j	151e0 <_ldtoa_r+0x710>
   15198:	fa0794e3          	bnez	a5,15140 <_ldtoa_r+0x670>
   1519c:	0f810593          	addi	a1,sp,248
   151a0:	0dc10513          	addi	a0,sp,220
   151a4:	00e12e23          	sw	a4,28(sp)
   151a8:	e20fe0ef          	jal	ra,137c8 <ecmpm>
   151ac:	06051a63          	bnez	a0,15220 <_ldtoa_r+0x750>
   151b0:	0f815783          	lhu	a5,248(sp)
   151b4:	01c12703          	lw	a4,28(sp)
   151b8:	00e78863          	beq	a5,a4,151c8 <_ldtoa_r+0x6f8>
   151bc:	0c010513          	addi	a0,sp,192
   151c0:	da0fe0ef          	jal	ra,13760 <eclear>
   151c4:	dd9ff06f          	j	14f9c <_ldtoa_r+0x4cc>
   151c8:	020d9463          	bnez	s11,151f0 <_ldtoa_r+0x720>
   151cc:	0fe11703          	lh	a4,254(sp)
   151d0:	00000793          	li	a5,0
   151d4:	02074063          	bltz	a4,151f4 <_ldtoa_r+0x724>
   151d8:	0f810513          	addi	a0,sp,248
   151dc:	e78fe0ef          	jal	ra,13854 <eshup1>
   151e0:	0c010593          	addi	a1,sp,192
   151e4:	0f810513          	addi	a0,sp,248
   151e8:	d69fe0ef          	jal	ra,13f50 <emovo.isra.6>
   151ec:	db1ff06f          	j	14f9c <_ldtoa_r+0x4cc>
   151f0:	00000793          	li	a5,0
   151f4:	01600713          	li	a4,22
   151f8:	0f810693          	addi	a3,sp,248
   151fc:	00f68633          	add	a2,a3,a5
   15200:	00265603          	lhu	a2,2(a2)
   15204:	00060863          	beqz	a2,15214 <_ldtoa_r+0x744>
   15208:	001d8d93          	addi	s11,s11,1
   1520c:	0fb11d23          	sh	s11,250(sp)
   15210:	fd1ff06f          	j	151e0 <_ldtoa_r+0x710>
   15214:	00278793          	addi	a5,a5,2
   15218:	fee790e3          	bne	a5,a4,151f8 <_ldtoa_r+0x728>
   1521c:	ff1ff06f          	j	1520c <_ldtoa_r+0x73c>
   15220:	00000813          	li	a6,0
   15224:	f2a05ae3          	blez	a0,15158 <_ldtoa_r+0x688>
   15228:	11410593          	addi	a1,sp,276
   1522c:	0f810513          	addi	a0,sp,248
   15230:	d74fe0ef          	jal	ra,137a4 <emovz>
   15234:	0f810593          	addi	a1,sp,248
   15238:	0dc10513          	addi	a0,sp,220
   1523c:	d68fe0ef          	jal	ra,137a4 <emovz>
   15240:	0dc10593          	addi	a1,sp,220
   15244:	11410513          	addi	a0,sp,276
   15248:	d5cfe0ef          	jal	ra,137a4 <emovz>
   1524c:	000c0813          	mv	a6,s8
   15250:	f09ff06f          	j	15158 <_ldtoa_r+0x688>
   15254:	f30fe0ef          	jal	ra,13984 <esubm>
   15258:	00100c13          	li	s8,1
   1525c:	f19ff06f          	j	15174 <_ldtoa_r+0x6a4>
   15260:	00278793          	addi	a5,a5,2
   15264:	01200713          	li	a4,18
   15268:	c2e79ae3          	bne	a5,a4,14e9c <_ldtoa_r+0x3cc>
   1526c:	d31ff06f          	j	14f9c <_ldtoa_r+0x4cc>
   15270:	07e15783          	lhu	a5,126(sp)
   15274:	11898c13          	addi	s8,s3,280
   15278:	0a078863          	beqz	a5,15328 <_ldtoa_r+0x858>
   1527c:	0c010593          	addi	a1,sp,192
   15280:	06c10513          	addi	a0,sp,108
   15284:	00004c37          	lui	s8,0x4
   15288:	83dfe0ef          	jal	ra,13ac4 <emovi>
   1528c:	ffec0c13          	addi	s8,s8,-2 # 3ffe <_start-0xc076>
   15290:	fd500d13          	li	s10,-43
   15294:	0d815783          	lhu	a5,216(sp)
   15298:	0077f793          	andi	a5,a5,7
   1529c:	06079263          	bnez	a5,15300 <_ldtoa_r+0x830>
   152a0:	0a410593          	addi	a1,sp,164
   152a4:	0c010513          	addi	a0,sp,192
   152a8:	cfcfe0ef          	jal	ra,137a4 <emovz>
   152ac:	0a410513          	addi	a0,sp,164
   152b0:	d54fe0ef          	jal	ra,13804 <eshdn1>
   152b4:	0a410513          	addi	a0,sp,164
   152b8:	d4cfe0ef          	jal	ra,13804 <eshdn1>
   152bc:	0a410593          	addi	a1,sp,164
   152c0:	0c010513          	addi	a0,sp,192
   152c4:	e88fe0ef          	jal	ra,1394c <eaddm>
   152c8:	0a615783          	lhu	a5,166(sp)
   152cc:	00378793          	addi	a5,a5,3
   152d0:	0af11323          	sh	a5,166(sp)
   152d4:	0a815783          	lhu	a5,168(sp)
   152d8:	10079a63          	bnez	a5,153ec <_ldtoa_r+0x91c>
   152dc:	0bc15783          	lhu	a5,188(sp)
   152e0:	02079063          	bnez	a5,15300 <_ldtoa_r+0x830>
   152e4:	0a615783          	lhu	a5,166(sp)
   152e8:	00fc6c63          	bltu	s8,a5,15300 <_ldtoa_r+0x830>
   152ec:	0c010593          	addi	a1,sp,192
   152f0:	0a410513          	addi	a0,sp,164
   152f4:	fff40413          	addi	s0,s0,-1
   152f8:	cacfe0ef          	jal	ra,137a4 <emovz>
   152fc:	f9a41ce3          	bne	s0,s10,15294 <_ldtoa_r+0x7c4>
   15300:	06c10593          	addi	a1,sp,108
   15304:	0c010513          	addi	a0,sp,192
   15308:	c49fe0ef          	jal	ra,13f50 <emovo.isra.6>
   1530c:	0240006f          	j	15330 <_ldtoa_r+0x860>
   15310:	06c10613          	addi	a2,sp,108
   15314:	15010693          	addi	a3,sp,336
   15318:	00060593          	mv	a1,a2
   1531c:	000c0513          	mv	a0,s8
   15320:	9b4ff0ef          	jal	ra,144d4 <emul>
   15324:	fff40413          	addi	s0,s0,-1
   15328:	07c11783          	lh	a5,124(sp)
   1532c:	fe07d2e3          	bgez	a5,15310 <_ldtoa_r+0x840>
   15330:	0c010593          	addi	a1,sp,192
   15334:	06c10513          	addi	a0,sp,108
   15338:	c3cfe0ef          	jal	ra,13774 <emov>
   1533c:	08810593          	addi	a1,sp,136
   15340:	00048513          	mv	a0,s1
   15344:	c30fe0ef          	jal	ra,13774 <emov>
   15348:	15098793          	addi	a5,s3,336
   1534c:	00000d13          	li	s10,0
   15350:	fffffc37          	lui	s8,0xfffff
   15354:	00f12423          	sw	a5,8(sp)
   15358:	00200d93          	li	s11,2
   1535c:	000217b7          	lui	a5,0x21
   15360:	aac78793          	addi	a5,a5,-1364 # 20aac <etens>
   15364:	01a789b3          	add	s3,a5,s10
   15368:	00812783          	lw	a5,8(sp)
   1536c:	0c010593          	addi	a1,sp,192
   15370:	00048513          	mv	a0,s1
   15374:	01a78733          	add	a4,a5,s10
   15378:	00e12a23          	sw	a4,20(sp)
   1537c:	819fe0ef          	jal	ra,13b94 <ecmp>
   15380:	01412703          	lw	a4,20(sp)
   15384:	04a05863          	blez	a0,153d4 <_ldtoa_r+0x904>
   15388:	0c010593          	addi	a1,sp,192
   1538c:	00070513          	mv	a0,a4
   15390:	805fe0ef          	jal	ra,13b94 <ecmp>
   15394:	02054863          	bltz	a0,153c4 <_ldtoa_r+0x8f4>
   15398:	0c010613          	addi	a2,sp,192
   1539c:	00060593          	mv	a1,a2
   153a0:	15010693          	addi	a3,sp,336
   153a4:	00098513          	mv	a0,s3
   153a8:	92cff0ef          	jal	ra,144d4 <emul>
   153ac:	08810613          	addi	a2,sp,136
   153b0:	15010693          	addi	a3,sp,336
   153b4:	00060593          	mv	a1,a2
   153b8:	00098513          	mv	a0,s3
   153bc:	918ff0ef          	jal	ra,144d4 <emul>
   153c0:	01840433          	add	s0,s0,s8
   153c4:	014d0d13          	addi	s10,s10,20 # 1014 <_start-0xf060>
   153c8:	10400793          	li	a5,260
   153cc:	03bc4c33          	div	s8,s8,s11
   153d0:	f8fd16e3          	bne	s10,a5,1535c <_ldtoa_r+0x88c>
   153d4:	08810613          	addi	a2,sp,136
   153d8:	15010693          	addi	a3,sp,336
   153dc:	00048593          	mv	a1,s1
   153e0:	00060513          	mv	a0,a2
   153e4:	ba0ff0ef          	jal	ra,14784 <ediv>
   153e8:	91dff06f          	j	14d04 <_ldtoa_r+0x234>
   153ec:	0a410513          	addi	a0,sp,164
   153f0:	c14fe0ef          	jal	ra,13804 <eshdn1>
   153f4:	0a615783          	lhu	a5,166(sp)
   153f8:	00178793          	addi	a5,a5,1
   153fc:	ed5ff06f          	j	152d0 <_ldtoa_r+0x800>
   15400:	06c10513          	addi	a0,sp,108
   15404:	c50fe0ef          	jal	ra,13854 <eshup1>
   15408:	0a410593          	addi	a1,sp,164
   1540c:	06c10513          	addi	a0,sp,108
   15410:	b94fe0ef          	jal	ra,137a4 <emovz>
   15414:	0a410513          	addi	a0,sp,164
   15418:	c3cfe0ef          	jal	ra,13854 <eshup1>
   1541c:	0a410513          	addi	a0,sp,164
   15420:	c34fe0ef          	jal	ra,13854 <eshup1>
   15424:	06c10593          	addi	a1,sp,108
   15428:	0a410513          	addi	a0,sp,164
   1542c:	d20fe0ef          	jal	ra,1394c <eaddm>
   15430:	15010613          	addi	a2,sp,336
   15434:	06c10593          	addi	a1,sp,108
   15438:	08810513          	addi	a0,sp,136
   1543c:	fb5fe0ef          	jal	ra,143f0 <eiremain>
   15440:	fff40413          	addi	s0,s0,-1
   15444:	19c15483          	lhu	s1,412(sp)
   15448:	901ff06f          	j	14d48 <_ldtoa_r+0x278>
   1544c:	02000793          	li	a5,32
   15450:	919ff06f          	j	14d68 <_ldtoa_r+0x298>
   15454:	03048493          	addi	s1,s1,48
   15458:	02e00793          	li	a5,46
   1545c:	10910aa3          	sb	s1,277(sp)
   15460:	10f10b23          	sb	a5,278(sp)
   15464:	11710c13          	addi	s8,sp,279
   15468:	000c0493          	mv	s1,s8
   1546c:	418487b3          	sub	a5,s1,s8
   15470:	04f9d663          	ble	a5,s3,154bc <_ldtoa_r+0x9ec>
   15474:	19c15783          	lhu	a5,412(sp)
   15478:	00400713          	li	a4,4
   1547c:	fff48c13          	addi	s8,s1,-1
   15480:	92f75ee3          	ble	a5,a4,14dbc <_ldtoa_r+0x2ec>
   15484:	00500713          	li	a4,5
   15488:	08e78463          	beq	a5,a4,15510 <_ldtoa_r+0xa40>
   1548c:	000c0793          	mv	a5,s8
   15490:	02e00613          	li	a2,46
   15494:	03800593          	li	a1,56
   15498:	03000693          	li	a3,48
   1549c:	fff78793          	addi	a5,a5,-1
   154a0:	0007c703          	lbu	a4,0(a5)
   154a4:	07f77713          	andi	a4,a4,127
   154a8:	0a09d663          	bgez	s3,15554 <_ldtoa_r+0xa84>
   154ac:	03100713          	li	a4,49
   154b0:	00e78023          	sb	a4,0(a5)
   154b4:	00140413          	addi	s0,s0,1
   154b8:	905ff06f          	j	14dbc <_ldtoa_r+0x2ec>
   154bc:	06c10513          	addi	a0,sp,108
   154c0:	b94fe0ef          	jal	ra,13854 <eshup1>
   154c4:	0a410593          	addi	a1,sp,164
   154c8:	06c10513          	addi	a0,sp,108
   154cc:	ad8fe0ef          	jal	ra,137a4 <emovz>
   154d0:	0a410513          	addi	a0,sp,164
   154d4:	b80fe0ef          	jal	ra,13854 <eshup1>
   154d8:	0a410513          	addi	a0,sp,164
   154dc:	b78fe0ef          	jal	ra,13854 <eshup1>
   154e0:	06c10593          	addi	a1,sp,108
   154e4:	0a410513          	addi	a0,sp,164
   154e8:	c64fe0ef          	jal	ra,1394c <eaddm>
   154ec:	15010613          	addi	a2,sp,336
   154f0:	06c10593          	addi	a1,sp,108
   154f4:	08810513          	addi	a0,sp,136
   154f8:	ef9fe0ef          	jal	ra,143f0 <eiremain>
   154fc:	19c14783          	lbu	a5,412(sp)
   15500:	00148493          	addi	s1,s1,1
   15504:	03078793          	addi	a5,a5,48
   15508:	fef48fa3          	sb	a5,-1(s1)
   1550c:	f61ff06f          	j	1546c <_ldtoa_r+0x99c>
   15510:	08810593          	addi	a1,sp,136
   15514:	06c10513          	addi	a0,sp,108
   15518:	a39fe0ef          	jal	ra,13f50 <emovo.isra.6>
   1551c:	a84b0593          	addi	a1,s6,-1404
   15520:	08810513          	addi	a0,sp,136
   15524:	e70fe0ef          	jal	ra,13b94 <ecmp>
   15528:	f60512e3          	bnez	a0,1548c <_ldtoa_r+0x9bc>
   1552c:	8809c8e3          	bltz	s3,14dbc <_ldtoa_r+0x2ec>
   15530:	ffe4c783          	lbu	a5,-2(s1)
   15534:	fd278793          	addi	a5,a5,-46
   15538:	0017b793          	seqz	a5,a5
   1553c:	fff7c793          	not	a5,a5
   15540:	00fc07b3          	add	a5,s8,a5
   15544:	0007c783          	lbu	a5,0(a5)
   15548:	0017f793          	andi	a5,a5,1
   1554c:	860788e3          	beqz	a5,14dbc <_ldtoa_r+0x2ec>
   15550:	f3dff06f          	j	1548c <_ldtoa_r+0x9bc>
   15554:	02c71463          	bne	a4,a2,1557c <_ldtoa_r+0xaac>
   15558:	fff7c703          	lbu	a4,-1(a5)
   1555c:	03800693          	li	a3,56
   15560:	00e6e863          	bltu	a3,a4,15570 <_ldtoa_r+0xaa0>
   15564:	00170713          	addi	a4,a4,1 # ffff8001 <__global_pointer$+0xfffd4e59>
   15568:	fee78fa3          	sb	a4,-1(a5)
   1556c:	851ff06f          	j	14dbc <_ldtoa_r+0x2ec>
   15570:	00140413          	addi	s0,s0,1
   15574:	03100713          	li	a4,49
   15578:	ff1ff06f          	j	15568 <_ldtoa_r+0xa98>
   1557c:	00e5e863          	bltu	a1,a4,1558c <_ldtoa_r+0xabc>
   15580:	00170713          	addi	a4,a4,1
   15584:	00e78023          	sb	a4,0(a5)
   15588:	835ff06f          	j	14dbc <_ldtoa_r+0x2ec>
   1558c:	00d78023          	sb	a3,0(a5)
   15590:	f0dff06f          	j	1549c <_ldtoa_r+0x9cc>
   15594:	00140413          	addi	s0,s0,1
   15598:	008ca023          	sw	s0,0(s9)
   1559c:	00098793          	mv	a5,s3
   155a0:	02e00693          	li	a3,46
   155a4:	0007c703          	lbu	a4,0(a5)
   155a8:	00071663          	bnez	a4,155b4 <_ldtoa_r+0xae4>
   155ac:	04500713          	li	a4,69
   155b0:	02c0006f          	j	155dc <_ldtoa_r+0xb0c>
   155b4:	00d70c63          	beq	a4,a3,155cc <_ldtoa_r+0xafc>
   155b8:	00178793          	addi	a5,a5,1
   155bc:	fe9ff06f          	j	155a4 <_ldtoa_r+0xad4>
   155c0:	0017c703          	lbu	a4,1(a5)
   155c4:	00178793          	addi	a5,a5,1
   155c8:	fee78fa3          	sb	a4,-1(a5)
   155cc:	0007c703          	lbu	a4,0(a5)
   155d0:	fe0718e3          	bnez	a4,155c0 <_ldtoa_r+0xaf0>
   155d4:	fd9ff06f          	j	155ac <_ldtoa_r+0xadc>
   155d8:	fff78793          	addi	a5,a5,-1
   155dc:	0007c683          	lbu	a3,0(a5)
   155e0:	00e68463          	beq	a3,a4,155e8 <_ldtoa_r+0xb18>
   155e4:	fef9eae3          	bltu	s3,a5,155d8 <_ldtoa_r+0xb08>
   155e8:	00078023          	sb	zero,0(a5)
   155ec:	e2cff06f          	j	14c18 <_ldtoa_r+0x148>
   155f0:	00178793          	addi	a5,a5,1
   155f4:	e30ff06f          	j	14c24 <_ldtoa_r+0x154>
   155f8:	00068413          	mv	s0,a3
   155fc:	e38ff06f          	j	14c34 <_ldtoa_r+0x164>
   15600:	fff40413          	addi	s0,s0,-1
   15604:	00040023          	sb	zero,0(s0)
   15608:	fff44703          	lbu	a4,-1(s0)
   1560c:	00d71663          	bne	a4,a3,15618 <_ldtoa_r+0xb48>
   15610:	41340733          	sub	a4,s0,s3
   15614:	fee7c6e3          	blt	a5,a4,15600 <_ldtoa_r+0xb30>
   15618:	00300793          	li	a5,3
   1561c:	009a8713          	addi	a4,s5,9
   15620:	02fb9463          	bne	s7,a5,15648 <_ldtoa_r+0xb78>
   15624:	16012783          	lw	a5,352(sp)
   15628:	00f90933          	add	s2,s2,a5
   1562c:	00095863          	bgez	s2,1563c <_ldtoa_r+0xb6c>
   15630:	10010a23          	sb	zero,276(sp)
   15634:	000ca023          	sw	zero,0(s9)
   15638:	00098413          	mv	s0,s3
   1563c:	000ca783          	lw	a5,0(s9)
   15640:	00fa8ab3          	add	s5,s5,a5
   15644:	003a8713          	addi	a4,s5,3
   15648:	040a2223          	sw	zero,68(s4)
   1564c:	00400793          	li	a5,4
   15650:	01478693          	addi	a3,a5,20
   15654:	044a2583          	lw	a1,68(s4)
   15658:	06d77863          	bleu	a3,a4,156c8 <_ldtoa_r+0xbf8>
   1565c:	000a0513          	mv	a0,s4
   15660:	3d5000ef          	jal	ra,16234 <_Balloc>
   15664:	04aa2023          	sw	a0,64(s4)
   15668:	00098593          	mv	a1,s3
   1566c:	00050493          	mv	s1,a0
   15670:	430020ef          	jal	ra,17aa0 <strcpy>
   15674:	00c12783          	lw	a5,12(sp)
   15678:	00078863          	beqz	a5,15688 <_ldtoa_r+0xbb8>
   1567c:	41340433          	sub	s0,s0,s3
   15680:	00848433          	add	s0,s1,s0
   15684:	0087a023          	sw	s0,0(a5)
   15688:	1dc12083          	lw	ra,476(sp)
   1568c:	1d812403          	lw	s0,472(sp)
   15690:	00048513          	mv	a0,s1
   15694:	1d012903          	lw	s2,464(sp)
   15698:	1d412483          	lw	s1,468(sp)
   1569c:	1cc12983          	lw	s3,460(sp)
   156a0:	1c812a03          	lw	s4,456(sp)
   156a4:	1c412a83          	lw	s5,452(sp)
   156a8:	1c012b03          	lw	s6,448(sp)
   156ac:	1bc12b83          	lw	s7,444(sp)
   156b0:	1b812c03          	lw	s8,440(sp)
   156b4:	1b412c83          	lw	s9,436(sp)
   156b8:	1b012d03          	lw	s10,432(sp)
   156bc:	1ac12d83          	lw	s11,428(sp)
   156c0:	1e010113          	addi	sp,sp,480
   156c4:	00008067          	ret
   156c8:	00158593          	addi	a1,a1,1
   156cc:	04ba2223          	sw	a1,68(s4)
   156d0:	00179793          	slli	a5,a5,0x1
   156d4:	f7dff06f          	j	15650 <_ldtoa_r+0xb80>
   156d8:	000087b7          	lui	a5,0x8
   156dc:	fff78793          	addi	a5,a5,-1 # 7fff <_start-0x8075>
   156e0:	f0f71063          	bne	a4,a5,14de0 <_ldtoa_r+0x310>
   156e4:	00412783          	lw	a5,4(sp)
   156e8:	ee078663          	beqz	a5,14dd4 <_ldtoa_r+0x304>
   156ec:	000215b7          	lui	a1,0x21
   156f0:	ce058593          	addi	a1,a1,-800 # 20ce0 <emtens+0x10c>
   156f4:	ce0ff06f          	j	14bd4 <_ldtoa_r+0x104>
   156f8:	00a00793          	li	a5,10
   156fc:	02a00993          	li	s3,42
   15700:	d4f49ae3          	bne	s1,a5,15454 <_ldtoa_r+0x984>
   15704:	03100793          	li	a5,49
   15708:	10f10aa3          	sb	a5,277(sp)
   1570c:	02e00793          	li	a5,46
   15710:	10f10b23          	sb	a5,278(sp)
   15714:	02a00993          	li	s3,42
   15718:	e8cff06f          	j	14da4 <_ldtoa_r+0x2d4>

0001571c <_ldcheck>:
   1571c:	00052783          	lw	a5,0(a0)
   15720:	fc010113          	addi	sp,sp,-64
   15724:	01410593          	addi	a1,sp,20
   15728:	00f12023          	sw	a5,0(sp)
   1572c:	00452783          	lw	a5,4(a0)
   15730:	02112e23          	sw	ra,60(sp)
   15734:	00f12223          	sw	a5,4(sp)
   15738:	00852783          	lw	a5,8(a0)
   1573c:	00f12423          	sw	a5,8(sp)
   15740:	00c52783          	lw	a5,12(a0)
   15744:	00010513          	mv	a0,sp
   15748:	00f12623          	sw	a5,12(sp)
   1574c:	875fe0ef          	jal	ra,13fc0 <e113toe.isra.8>
   15750:	02615783          	lhu	a5,38(sp)
   15754:	00000513          	li	a0,0
   15758:	fff7c793          	not	a5,a5
   1575c:	01179713          	slli	a4,a5,0x11
   15760:	00071a63          	bnez	a4,15774 <_ldcheck+0x58>
   15764:	01410513          	addi	a0,sp,20
   15768:	af0fe0ef          	jal	ra,13a58 <eisnan>
   1576c:	00153513          	seqz	a0,a0
   15770:	00150513          	addi	a0,a0,1
   15774:	03c12083          	lw	ra,60(sp)
   15778:	04010113          	addi	sp,sp,64
   1577c:	00008067          	ret

00015780 <__localeconv_l>:
   15780:	0f050513          	addi	a0,a0,240
   15784:	00008067          	ret

00015788 <_localeconv_r>:
   15788:	8201a783          	lw	a5,-2016(gp) # 229c8 <_impure_ptr>
   1578c:	0347a503          	lw	a0,52(a5)
   15790:	00051663          	bnez	a0,1579c <_localeconv_r+0x14>
   15794:	00022537          	lui	a0,0x22
   15798:	43050513          	addi	a0,a0,1072 # 22430 <__global_locale>
   1579c:	0f050513          	addi	a0,a0,240
   157a0:	00008067          	ret

000157a4 <localeconv>:
   157a4:	8201a783          	lw	a5,-2016(gp) # 229c8 <_impure_ptr>
   157a8:	0347a503          	lw	a0,52(a5)
   157ac:	00051663          	bnez	a0,157b8 <localeconv+0x14>
   157b0:	00022537          	lui	a0,0x22
   157b4:	43050513          	addi	a0,a0,1072 # 22430 <__global_locale>
   157b8:	0f050513          	addi	a0,a0,240
   157bc:	00008067          	ret

000157c0 <_setlocale_r>:
   157c0:	ff010113          	addi	sp,sp,-16
   157c4:	00912223          	sw	s1,4(sp)
   157c8:	00112623          	sw	ra,12(sp)
   157cc:	00812423          	sw	s0,8(sp)
   157d0:	000214b7          	lui	s1,0x21
   157d4:	04060263          	beqz	a2,15818 <_setlocale_r+0x58>
   157d8:	000215b7          	lui	a1,0x21
   157dc:	d0458593          	addi	a1,a1,-764 # 20d04 <emtens+0x130>
   157e0:	00060513          	mv	a0,a2
   157e4:	00060413          	mv	s0,a2
   157e8:	13c020ef          	jal	ra,17924 <strcmp>
   157ec:	02050663          	beqz	a0,15818 <_setlocale_r+0x58>
   157f0:	d0048593          	addi	a1,s1,-768 # 20d00 <emtens+0x12c>
   157f4:	00040513          	mv	a0,s0
   157f8:	12c020ef          	jal	ra,17924 <strcmp>
   157fc:	00050e63          	beqz	a0,15818 <_setlocale_r+0x58>
   15800:	000215b7          	lui	a1,0x21
   15804:	a7c58593          	addi	a1,a1,-1412 # 20a7c <zeroes.4405+0x44>
   15808:	00040513          	mv	a0,s0
   1580c:	118020ef          	jal	ra,17924 <strcmp>
   15810:	00000793          	li	a5,0
   15814:	00051463          	bnez	a0,1581c <_setlocale_r+0x5c>
   15818:	d0048793          	addi	a5,s1,-768
   1581c:	00c12083          	lw	ra,12(sp)
   15820:	00812403          	lw	s0,8(sp)
   15824:	00412483          	lw	s1,4(sp)
   15828:	00078513          	mv	a0,a5
   1582c:	01010113          	addi	sp,sp,16
   15830:	00008067          	ret

00015834 <__locale_mb_cur_max>:
   15834:	8201a783          	lw	a5,-2016(gp) # 229c8 <_impure_ptr>
   15838:	0347a783          	lw	a5,52(a5)
   1583c:	00079663          	bnez	a5,15848 <__locale_mb_cur_max+0x14>
   15840:	000227b7          	lui	a5,0x22
   15844:	43078793          	addi	a5,a5,1072 # 22430 <__global_locale>
   15848:	1287c503          	lbu	a0,296(a5)
   1584c:	00008067          	ret

00015850 <__locale_ctype_ptr_l>:
   15850:	0ec52503          	lw	a0,236(a0)
   15854:	00008067          	ret

00015858 <__locale_ctype_ptr>:
   15858:	8201a783          	lw	a5,-2016(gp) # 229c8 <_impure_ptr>
   1585c:	0347a783          	lw	a5,52(a5)
   15860:	00079663          	bnez	a5,1586c <__locale_ctype_ptr+0x14>
   15864:	000227b7          	lui	a5,0x22
   15868:	43078793          	addi	a5,a5,1072 # 22430 <__global_locale>
   1586c:	0ec7a503          	lw	a0,236(a5)
   15870:	00008067          	ret

00015874 <setlocale>:
   15874:	00058613          	mv	a2,a1
   15878:	00050593          	mv	a1,a0
   1587c:	8201a503          	lw	a0,-2016(gp) # 229c8 <_impure_ptr>
   15880:	f41ff06f          	j	157c0 <_setlocale_r>

00015884 <__swhatbuf_r>:
   15884:	fa010113          	addi	sp,sp,-96
   15888:	04912a23          	sw	s1,84(sp)
   1588c:	00058493          	mv	s1,a1
   15890:	00e59583          	lh	a1,14(a1)
   15894:	04812c23          	sw	s0,88(sp)
   15898:	04112e23          	sw	ra,92(sp)
   1589c:	00060413          	mv	s0,a2
   158a0:	0005de63          	bgez	a1,158bc <__swhatbuf_r+0x38>
   158a4:	00c4d783          	lhu	a5,12(s1)
   158a8:	0006a023          	sw	zero,0(a3)
   158ac:	0807f793          	andi	a5,a5,128
   158b0:	04079863          	bnez	a5,15900 <__swhatbuf_r+0x7c>
   158b4:	40000793          	li	a5,1024
   158b8:	04c0006f          	j	15904 <__swhatbuf_r+0x80>
   158bc:	01410613          	addi	a2,sp,20
   158c0:	00d12623          	sw	a3,12(sp)
   158c4:	3d4050ef          	jal	ra,1ac98 <_fstat_r>
   158c8:	00c12683          	lw	a3,12(sp)
   158cc:	fc054ce3          	bltz	a0,158a4 <__swhatbuf_r+0x20>
   158d0:	01812703          	lw	a4,24(sp)
   158d4:	0000f7b7          	lui	a5,0xf
   158d8:	00001537          	lui	a0,0x1
   158dc:	00e7f7b3          	and	a5,a5,a4
   158e0:	ffffe737          	lui	a4,0xffffe
   158e4:	00e787b3          	add	a5,a5,a4
   158e8:	0017b793          	seqz	a5,a5
   158ec:	00f6a023          	sw	a5,0(a3)
   158f0:	40000793          	li	a5,1024
   158f4:	00f42023          	sw	a5,0(s0)
   158f8:	80050513          	addi	a0,a0,-2048 # 800 <_start-0xf874>
   158fc:	0100006f          	j	1590c <__swhatbuf_r+0x88>
   15900:	04000793          	li	a5,64
   15904:	00f42023          	sw	a5,0(s0)
   15908:	00000513          	li	a0,0
   1590c:	05c12083          	lw	ra,92(sp)
   15910:	05812403          	lw	s0,88(sp)
   15914:	05412483          	lw	s1,84(sp)
   15918:	06010113          	addi	sp,sp,96
   1591c:	00008067          	ret

00015920 <__smakebuf_r>:
   15920:	00c5d783          	lhu	a5,12(a1)
   15924:	fe010113          	addi	sp,sp,-32
   15928:	00812c23          	sw	s0,24(sp)
   1592c:	00112e23          	sw	ra,28(sp)
   15930:	00912a23          	sw	s1,20(sp)
   15934:	01212823          	sw	s2,16(sp)
   15938:	0027f793          	andi	a5,a5,2
   1593c:	00058413          	mv	s0,a1
   15940:	02078863          	beqz	a5,15970 <__smakebuf_r+0x50>
   15944:	04340793          	addi	a5,s0,67
   15948:	00f42023          	sw	a5,0(s0)
   1594c:	00f42823          	sw	a5,16(s0)
   15950:	00100793          	li	a5,1
   15954:	00f42a23          	sw	a5,20(s0)
   15958:	01c12083          	lw	ra,28(sp)
   1595c:	01812403          	lw	s0,24(sp)
   15960:	01412483          	lw	s1,20(sp)
   15964:	01012903          	lw	s2,16(sp)
   15968:	02010113          	addi	sp,sp,32
   1596c:	00008067          	ret
   15970:	00c10693          	addi	a3,sp,12
   15974:	00810613          	addi	a2,sp,8
   15978:	00050493          	mv	s1,a0
   1597c:	f09ff0ef          	jal	ra,15884 <__swhatbuf_r>
   15980:	00812583          	lw	a1,8(sp)
   15984:	00050913          	mv	s2,a0
   15988:	00048513          	mv	a0,s1
   1598c:	084000ef          	jal	ra,15a10 <_malloc_r>
   15990:	02051063          	bnez	a0,159b0 <__smakebuf_r+0x90>
   15994:	00c41783          	lh	a5,12(s0)
   15998:	2007f713          	andi	a4,a5,512
   1599c:	fa071ee3          	bnez	a4,15958 <__smakebuf_r+0x38>
   159a0:	ffc7f793          	andi	a5,a5,-4
   159a4:	0027e793          	ori	a5,a5,2
   159a8:	00f41623          	sh	a5,12(s0)
   159ac:	f99ff06f          	j	15944 <__smakebuf_r+0x24>
   159b0:	000137b7          	lui	a5,0x13
   159b4:	b9478793          	addi	a5,a5,-1132 # 12b94 <_cleanup_r>
   159b8:	02f4ae23          	sw	a5,60(s1)
   159bc:	00c45783          	lhu	a5,12(s0)
   159c0:	00a42023          	sw	a0,0(s0)
   159c4:	00a42823          	sw	a0,16(s0)
   159c8:	0807e793          	ori	a5,a5,128
   159cc:	00f41623          	sh	a5,12(s0)
   159d0:	00812783          	lw	a5,8(sp)
   159d4:	00f42a23          	sw	a5,20(s0)
   159d8:	00c12783          	lw	a5,12(sp)
   159dc:	02078263          	beqz	a5,15a00 <__smakebuf_r+0xe0>
   159e0:	00e41583          	lh	a1,14(s0)
   159e4:	00048513          	mv	a0,s1
   159e8:	2fc050ef          	jal	ra,1ace4 <_isatty_r>
   159ec:	00050a63          	beqz	a0,15a00 <__smakebuf_r+0xe0>
   159f0:	00c45783          	lhu	a5,12(s0)
   159f4:	ffc7f793          	andi	a5,a5,-4
   159f8:	0017e793          	ori	a5,a5,1
   159fc:	00f41623          	sh	a5,12(s0)
   15a00:	00c45783          	lhu	a5,12(s0)
   15a04:	00f96933          	or	s2,s2,a5
   15a08:	01241623          	sh	s2,12(s0)
   15a0c:	f4dff06f          	j	15958 <__smakebuf_r+0x38>

00015a10 <_malloc_r>:
   15a10:	fd010113          	addi	sp,sp,-48
   15a14:	02112623          	sw	ra,44(sp)
   15a18:	02812423          	sw	s0,40(sp)
   15a1c:	02912223          	sw	s1,36(sp)
   15a20:	03212023          	sw	s2,32(sp)
   15a24:	01312e23          	sw	s3,28(sp)
   15a28:	01412c23          	sw	s4,24(sp)
   15a2c:	01512a23          	sw	s5,20(sp)
   15a30:	01612823          	sw	s6,16(sp)
   15a34:	01712623          	sw	s7,12(sp)
   15a38:	01812423          	sw	s8,8(sp)
   15a3c:	00b58793          	addi	a5,a1,11
   15a40:	01600713          	li	a4,22
   15a44:	04f77463          	bleu	a5,a4,15a8c <_malloc_r+0x7c>
   15a48:	ff87f493          	andi	s1,a5,-8
   15a4c:	0404d263          	bgez	s1,15a90 <_malloc_r+0x80>
   15a50:	00c00793          	li	a5,12
   15a54:	00f52023          	sw	a5,0(a0)
   15a58:	00000513          	li	a0,0
   15a5c:	02c12083          	lw	ra,44(sp)
   15a60:	02812403          	lw	s0,40(sp)
   15a64:	02412483          	lw	s1,36(sp)
   15a68:	02012903          	lw	s2,32(sp)
   15a6c:	01c12983          	lw	s3,28(sp)
   15a70:	01812a03          	lw	s4,24(sp)
   15a74:	01412a83          	lw	s5,20(sp)
   15a78:	01012b03          	lw	s6,16(sp)
   15a7c:	00c12b83          	lw	s7,12(sp)
   15a80:	00812c03          	lw	s8,8(sp)
   15a84:	03010113          	addi	sp,sp,48
   15a88:	00008067          	ret
   15a8c:	01000493          	li	s1,16
   15a90:	fcb4e0e3          	bltu	s1,a1,15a50 <_malloc_r+0x40>
   15a94:	00050993          	mv	s3,a0
   15a98:	794000ef          	jal	ra,1622c <__malloc_lock>
   15a9c:	00022937          	lui	s2,0x22
   15aa0:	1f700793          	li	a5,503
   15aa4:	59c90913          	addi	s2,s2,1436 # 2259c <__malloc_av_>
   15aa8:	0497ea63          	bltu	a5,s1,15afc <_malloc_r+0xec>
   15aac:	00848713          	addi	a4,s1,8
   15ab0:	00e90733          	add	a4,s2,a4
   15ab4:	00472403          	lw	s0,4(a4) # ffffe004 <__global_pointer$+0xfffdae5c>
   15ab8:	ff870693          	addi	a3,a4,-8
   15abc:	0034d793          	srli	a5,s1,0x3
   15ac0:	00d41863          	bne	s0,a3,15ad0 <_malloc_r+0xc0>
   15ac4:	00c72403          	lw	s0,12(a4)
   15ac8:	00278793          	addi	a5,a5,2
   15acc:	08870063          	beq	a4,s0,15b4c <_malloc_r+0x13c>
   15ad0:	00442783          	lw	a5,4(s0)
   15ad4:	00c42703          	lw	a4,12(s0)
   15ad8:	00842683          	lw	a3,8(s0)
   15adc:	ffc7f793          	andi	a5,a5,-4
   15ae0:	00f407b3          	add	a5,s0,a5
   15ae4:	00e6a623          	sw	a4,12(a3)
   15ae8:	00d72423          	sw	a3,8(a4)
   15aec:	0047a703          	lw	a4,4(a5)
   15af0:	00176713          	ori	a4,a4,1
   15af4:	00e7a223          	sw	a4,4(a5)
   15af8:	0a80006f          	j	15ba0 <_malloc_r+0x190>
   15afc:	0094d713          	srli	a4,s1,0x9
   15b00:	03f00793          	li	a5,63
   15b04:	00070a63          	beqz	a4,15b18 <_malloc_r+0x108>
   15b08:	00400793          	li	a5,4
   15b0c:	0ae7e263          	bltu	a5,a4,15bb0 <_malloc_r+0x1a0>
   15b10:	0064d793          	srli	a5,s1,0x6
   15b14:	03878793          	addi	a5,a5,56
   15b18:	00178713          	addi	a4,a5,1
   15b1c:	00371713          	slli	a4,a4,0x3
   15b20:	00e90733          	add	a4,s2,a4
   15b24:	00472403          	lw	s0,4(a4)
   15b28:	ff870593          	addi	a1,a4,-8
   15b2c:	00f00513          	li	a0,15
   15b30:	00b40c63          	beq	s0,a1,15b48 <_malloc_r+0x138>
   15b34:	00442703          	lw	a4,4(s0)
   15b38:	ffc77713          	andi	a4,a4,-4
   15b3c:	40970633          	sub	a2,a4,s1
   15b40:	0cc55063          	ble	a2,a0,15c00 <_malloc_r+0x1f0>
   15b44:	fff78793          	addi	a5,a5,-1
   15b48:	00178793          	addi	a5,a5,1
   15b4c:	01092403          	lw	s0,16(s2)
   15b50:	000225b7          	lui	a1,0x22
   15b54:	00890693          	addi	a3,s2,8
   15b58:	5a458593          	addi	a1,a1,1444 # 225a4 <__malloc_av_+0x8>
   15b5c:	12d40863          	beq	s0,a3,15c8c <_malloc_r+0x27c>
   15b60:	00442703          	lw	a4,4(s0)
   15b64:	00f00613          	li	a2,15
   15b68:	ffc77713          	andi	a4,a4,-4
   15b6c:	40970533          	sub	a0,a4,s1
   15b70:	0aa65a63          	ble	a0,a2,15c24 <_malloc_r+0x214>
   15b74:	0014e793          	ori	a5,s1,1
   15b78:	00f42223          	sw	a5,4(s0)
   15b7c:	00940633          	add	a2,s0,s1
   15b80:	00c92a23          	sw	a2,20(s2)
   15b84:	00c92823          	sw	a2,16(s2)
   15b88:	00156793          	ori	a5,a0,1
   15b8c:	00d62623          	sw	a3,12(a2)
   15b90:	00d62423          	sw	a3,8(a2)
   15b94:	00f62223          	sw	a5,4(a2)
   15b98:	00e40733          	add	a4,s0,a4
   15b9c:	00a72023          	sw	a0,0(a4)
   15ba0:	00098513          	mv	a0,s3
   15ba4:	68c000ef          	jal	ra,16230 <__malloc_unlock>
   15ba8:	00840513          	addi	a0,s0,8
   15bac:	eb1ff06f          	j	15a5c <_malloc_r+0x4c>
   15bb0:	01400793          	li	a5,20
   15bb4:	00e7e663          	bltu	a5,a4,15bc0 <_malloc_r+0x1b0>
   15bb8:	05b70793          	addi	a5,a4,91
   15bbc:	f5dff06f          	j	15b18 <_malloc_r+0x108>
   15bc0:	05400793          	li	a5,84
   15bc4:	00e7e863          	bltu	a5,a4,15bd4 <_malloc_r+0x1c4>
   15bc8:	00c4d793          	srli	a5,s1,0xc
   15bcc:	06e78793          	addi	a5,a5,110
   15bd0:	f49ff06f          	j	15b18 <_malloc_r+0x108>
   15bd4:	15400793          	li	a5,340
   15bd8:	00e7e863          	bltu	a5,a4,15be8 <_malloc_r+0x1d8>
   15bdc:	00f4d793          	srli	a5,s1,0xf
   15be0:	07778793          	addi	a5,a5,119
   15be4:	f35ff06f          	j	15b18 <_malloc_r+0x108>
   15be8:	55400693          	li	a3,1364
   15bec:	07e00793          	li	a5,126
   15bf0:	f2e6e4e3          	bltu	a3,a4,15b18 <_malloc_r+0x108>
   15bf4:	0124d793          	srli	a5,s1,0x12
   15bf8:	07c78793          	addi	a5,a5,124
   15bfc:	f1dff06f          	j	15b18 <_malloc_r+0x108>
   15c00:	00c42683          	lw	a3,12(s0)
   15c04:	00064c63          	bltz	a2,15c1c <_malloc_r+0x20c>
   15c08:	00842783          	lw	a5,8(s0)
   15c0c:	00d7a623          	sw	a3,12(a5)
   15c10:	00f6a423          	sw	a5,8(a3)
   15c14:	00e407b3          	add	a5,s0,a4
   15c18:	ed5ff06f          	j	15aec <_malloc_r+0xdc>
   15c1c:	00068413          	mv	s0,a3
   15c20:	f11ff06f          	j	15b30 <_malloc_r+0x120>
   15c24:	00d92a23          	sw	a3,20(s2)
   15c28:	00d92823          	sw	a3,16(s2)
   15c2c:	00054c63          	bltz	a0,15c44 <_malloc_r+0x234>
   15c30:	00e40733          	add	a4,s0,a4
   15c34:	00472783          	lw	a5,4(a4)
   15c38:	0017e793          	ori	a5,a5,1
   15c3c:	00f72223          	sw	a5,4(a4)
   15c40:	f61ff06f          	j	15ba0 <_malloc_r+0x190>
   15c44:	1ff00693          	li	a3,511
   15c48:	00492803          	lw	a6,4(s2)
   15c4c:	16e6e663          	bltu	a3,a4,15db8 <_malloc_r+0x3a8>
   15c50:	00375713          	srli	a4,a4,0x3
   15c54:	40275613          	srai	a2,a4,0x2
   15c58:	00100693          	li	a3,1
   15c5c:	00170713          	addi	a4,a4,1
   15c60:	00c696b3          	sll	a3,a3,a2
   15c64:	00371713          	slli	a4,a4,0x3
   15c68:	00e90733          	add	a4,s2,a4
   15c6c:	0106e6b3          	or	a3,a3,a6
   15c70:	00d92223          	sw	a3,4(s2)
   15c74:	00072683          	lw	a3,0(a4)
   15c78:	ff870613          	addi	a2,a4,-8
   15c7c:	00c42623          	sw	a2,12(s0)
   15c80:	00d42423          	sw	a3,8(s0)
   15c84:	00872023          	sw	s0,0(a4)
   15c88:	0086a623          	sw	s0,12(a3)
   15c8c:	4027d713          	srai	a4,a5,0x2
   15c90:	00100313          	li	t1,1
   15c94:	00e31333          	sll	t1,t1,a4
   15c98:	00492703          	lw	a4,4(s2)
   15c9c:	06676a63          	bltu	a4,t1,15d10 <_malloc_r+0x300>
   15ca0:	006776b3          	and	a3,a4,t1
   15ca4:	00069c63          	bnez	a3,15cbc <_malloc_r+0x2ac>
   15ca8:	ffc7f793          	andi	a5,a5,-4
   15cac:	00131313          	slli	t1,t1,0x1
   15cb0:	006776b3          	and	a3,a4,t1
   15cb4:	00478793          	addi	a5,a5,4
   15cb8:	fe068ae3          	beqz	a3,15cac <_malloc_r+0x29c>
   15cbc:	00f00e13          	li	t3,15
   15cc0:	00379693          	slli	a3,a5,0x3
   15cc4:	00d906b3          	add	a3,s2,a3
   15cc8:	00068813          	mv	a6,a3
   15ccc:	00078513          	mv	a0,a5
   15cd0:	00c82403          	lw	s0,12(a6)
   15cd4:	1b041263          	bne	s0,a6,15e78 <_malloc_r+0x468>
   15cd8:	00150513          	addi	a0,a0,1
   15cdc:	00357713          	andi	a4,a0,3
   15ce0:	00880813          	addi	a6,a6,8
   15ce4:	fe0716e3          	bnez	a4,15cd0 <_malloc_r+0x2c0>
   15ce8:	0037f713          	andi	a4,a5,3
   15cec:	20071463          	bnez	a4,15ef4 <_malloc_r+0x4e4>
   15cf0:	00492703          	lw	a4,4(s2)
   15cf4:	fff34793          	not	a5,t1
   15cf8:	00f777b3          	and	a5,a4,a5
   15cfc:	00f92223          	sw	a5,4(s2)
   15d00:	00492703          	lw	a4,4(s2)
   15d04:	00131313          	slli	t1,t1,0x1
   15d08:	00676463          	bltu	a4,t1,15d10 <_malloc_r+0x300>
   15d0c:	20031863          	bnez	t1,15f1c <_malloc_r+0x50c>
   15d10:	00892b83          	lw	s7,8(s2)
   15d14:	004ba403          	lw	s0,4(s7) # 80000004 <__global_pointer$+0x7ffdce5c>
   15d18:	ffc47a93          	andi	s5,s0,-4
   15d1c:	009ae863          	bltu	s5,s1,15d2c <_malloc_r+0x31c>
   15d20:	409a8733          	sub	a4,s5,s1
   15d24:	00f00793          	li	a5,15
   15d28:	30e7ca63          	blt	a5,a4,1603c <_malloc_r+0x62c>
   15d2c:	8381a403          	lw	s0,-1992(gp) # 229e0 <__malloc_top_pad>
   15d30:	8241a703          	lw	a4,-2012(gp) # 229cc <__malloc_sbrk_base>
   15d34:	fff00793          	li	a5,-1
   15d38:	00848433          	add	s0,s1,s0
   15d3c:	1ef71463          	bne	a4,a5,15f24 <_malloc_r+0x514>
   15d40:	01040413          	addi	s0,s0,16
   15d44:	00040593          	mv	a1,s0
   15d48:	00098513          	mv	a0,s3
   15d4c:	0d1010ef          	jal	ra,1761c <_sbrk_r>
   15d50:	fff00793          	li	a5,-1
   15d54:	00050b13          	mv	s6,a0
   15d58:	26f50863          	beq	a0,a5,15fc8 <_malloc_r+0x5b8>
   15d5c:	015b87b3          	add	a5,s7,s5
   15d60:	00f57463          	bleu	a5,a0,15d68 <_malloc_r+0x358>
   15d64:	272b9263          	bne	s7,s2,15fc8 <_malloc_r+0x5b8>
   15d68:	85c18693          	addi	a3,gp,-1956 # 22a04 <__malloc_current_mallinfo>
   15d6c:	0006a703          	lw	a4,0(a3)
   15d70:	85c18c13          	addi	s8,gp,-1956 # 22a04 <__malloc_current_mallinfo>
   15d74:	00e40733          	add	a4,s0,a4
   15d78:	00e6a023          	sw	a4,0(a3)
   15d7c:	1d679063          	bne	a5,s6,15f3c <_malloc_r+0x52c>
   15d80:	01479693          	slli	a3,a5,0x14
   15d84:	1a069c63          	bnez	a3,15f3c <_malloc_r+0x52c>
   15d88:	00892783          	lw	a5,8(s2)
   15d8c:	008a8433          	add	s0,s5,s0
   15d90:	00146413          	ori	s0,s0,1
   15d94:	0087a223          	sw	s0,4(a5)
   15d98:	000c2783          	lw	a5,0(s8) # fffff000 <__global_pointer$+0xfffdbe58>
   15d9c:	8341a683          	lw	a3,-1996(gp) # 229dc <__malloc_max_sbrked_mem>
   15da0:	00f6f463          	bleu	a5,a3,15da8 <_malloc_r+0x398>
   15da4:	82f1aa23          	sw	a5,-1996(gp) # 229dc <__malloc_max_sbrked_mem>
   15da8:	8301a683          	lw	a3,-2000(gp) # 229d8 <__malloc_max_total_mem>
   15dac:	20f6fe63          	bleu	a5,a3,15fc8 <_malloc_r+0x5b8>
   15db0:	82f1a823          	sw	a5,-2000(gp) # 229d8 <__malloc_max_total_mem>
   15db4:	2140006f          	j	15fc8 <_malloc_r+0x5b8>
   15db8:	00975613          	srli	a2,a4,0x9
   15dbc:	00400693          	li	a3,4
   15dc0:	04c6e663          	bltu	a3,a2,15e0c <_malloc_r+0x3fc>
   15dc4:	00675693          	srli	a3,a4,0x6
   15dc8:	03868693          	addi	a3,a3,56
   15dcc:	00168613          	addi	a2,a3,1
   15dd0:	00361613          	slli	a2,a2,0x3
   15dd4:	00c90633          	add	a2,s2,a2
   15dd8:	ff860513          	addi	a0,a2,-8
   15ddc:	00062603          	lw	a2,0(a2)
   15de0:	08c51263          	bne	a0,a2,15e64 <_malloc_r+0x454>
   15de4:	4026d693          	srai	a3,a3,0x2
   15de8:	00100713          	li	a4,1
   15dec:	00d716b3          	sll	a3,a4,a3
   15df0:	0106e6b3          	or	a3,a3,a6
   15df4:	00d92223          	sw	a3,4(s2)
   15df8:	00a42623          	sw	a0,12(s0)
   15dfc:	00c42423          	sw	a2,8(s0)
   15e00:	00852423          	sw	s0,8(a0)
   15e04:	00862623          	sw	s0,12(a2)
   15e08:	e85ff06f          	j	15c8c <_malloc_r+0x27c>
   15e0c:	01400693          	li	a3,20
   15e10:	00c6e663          	bltu	a3,a2,15e1c <_malloc_r+0x40c>
   15e14:	05b60693          	addi	a3,a2,91
   15e18:	fb5ff06f          	j	15dcc <_malloc_r+0x3bc>
   15e1c:	05400693          	li	a3,84
   15e20:	00c6e863          	bltu	a3,a2,15e30 <_malloc_r+0x420>
   15e24:	00c75693          	srli	a3,a4,0xc
   15e28:	06e68693          	addi	a3,a3,110
   15e2c:	fa1ff06f          	j	15dcc <_malloc_r+0x3bc>
   15e30:	15400693          	li	a3,340
   15e34:	00c6e863          	bltu	a3,a2,15e44 <_malloc_r+0x434>
   15e38:	00f75693          	srli	a3,a4,0xf
   15e3c:	07768693          	addi	a3,a3,119
   15e40:	f8dff06f          	j	15dcc <_malloc_r+0x3bc>
   15e44:	55400513          	li	a0,1364
   15e48:	07e00693          	li	a3,126
   15e4c:	f8c560e3          	bltu	a0,a2,15dcc <_malloc_r+0x3bc>
   15e50:	01275693          	srli	a3,a4,0x12
   15e54:	07c68693          	addi	a3,a3,124
   15e58:	f75ff06f          	j	15dcc <_malloc_r+0x3bc>
   15e5c:	00862603          	lw	a2,8(a2)
   15e60:	00c50863          	beq	a0,a2,15e70 <_malloc_r+0x460>
   15e64:	00462683          	lw	a3,4(a2)
   15e68:	ffc6f693          	andi	a3,a3,-4
   15e6c:	fed768e3          	bltu	a4,a3,15e5c <_malloc_r+0x44c>
   15e70:	00c62503          	lw	a0,12(a2)
   15e74:	f85ff06f          	j	15df8 <_malloc_r+0x3e8>
   15e78:	00442703          	lw	a4,4(s0)
   15e7c:	00c42603          	lw	a2,12(s0)
   15e80:	ffc77713          	andi	a4,a4,-4
   15e84:	409708b3          	sub	a7,a4,s1
   15e88:	051e5063          	ble	a7,t3,15ec8 <_malloc_r+0x4b8>
   15e8c:	0014e793          	ori	a5,s1,1
   15e90:	00f42223          	sw	a5,4(s0)
   15e94:	00842783          	lw	a5,8(s0)
   15e98:	009406b3          	add	a3,s0,s1
   15e9c:	00e40733          	add	a4,s0,a4
   15ea0:	00c7a623          	sw	a2,12(a5)
   15ea4:	00f62423          	sw	a5,8(a2)
   15ea8:	00d92a23          	sw	a3,20(s2)
   15eac:	00d92823          	sw	a3,16(s2)
   15eb0:	0018e793          	ori	a5,a7,1
   15eb4:	00b6a623          	sw	a1,12(a3)
   15eb8:	00b6a423          	sw	a1,8(a3)
   15ebc:	00f6a223          	sw	a5,4(a3)
   15ec0:	01172023          	sw	a7,0(a4)
   15ec4:	cddff06f          	j	15ba0 <_malloc_r+0x190>
   15ec8:	0208c263          	bltz	a7,15eec <_malloc_r+0x4dc>
   15ecc:	00e40733          	add	a4,s0,a4
   15ed0:	00472783          	lw	a5,4(a4)
   15ed4:	0017e793          	ori	a5,a5,1
   15ed8:	00f72223          	sw	a5,4(a4)
   15edc:	00842783          	lw	a5,8(s0)
   15ee0:	00c7a623          	sw	a2,12(a5)
   15ee4:	00f62423          	sw	a5,8(a2)
   15ee8:	cb9ff06f          	j	15ba0 <_malloc_r+0x190>
   15eec:	00060413          	mv	s0,a2
   15ef0:	de5ff06f          	j	15cd4 <_malloc_r+0x2c4>
   15ef4:	ff868713          	addi	a4,a3,-8
   15ef8:	0006a683          	lw	a3,0(a3)
   15efc:	fff78793          	addi	a5,a5,-1
   15f00:	dee684e3          	beq	a3,a4,15ce8 <_malloc_r+0x2d8>
   15f04:	dfdff06f          	j	15d00 <_malloc_r+0x2f0>
   15f08:	00478793          	addi	a5,a5,4
   15f0c:	00131313          	slli	t1,t1,0x1
   15f10:	006776b3          	and	a3,a4,t1
   15f14:	fe068ae3          	beqz	a3,15f08 <_malloc_r+0x4f8>
   15f18:	da9ff06f          	j	15cc0 <_malloc_r+0x2b0>
   15f1c:	00050793          	mv	a5,a0
   15f20:	ff1ff06f          	j	15f10 <_malloc_r+0x500>
   15f24:	000017b7          	lui	a5,0x1
   15f28:	00f78793          	addi	a5,a5,15 # 100f <_start-0xf065>
   15f2c:	00f40433          	add	s0,s0,a5
   15f30:	fffff7b7          	lui	a5,0xfffff
   15f34:	00f47433          	and	s0,s0,a5
   15f38:	e0dff06f          	j	15d44 <_malloc_r+0x334>
   15f3c:	8241a603          	lw	a2,-2012(gp) # 229cc <__malloc_sbrk_base>
   15f40:	fff00693          	li	a3,-1
   15f44:	0ad61663          	bne	a2,a3,15ff0 <_malloc_r+0x5e0>
   15f48:	8361a223          	sw	s6,-2012(gp) # 229cc <__malloc_sbrk_base>
   15f4c:	007b7593          	andi	a1,s6,7
   15f50:	00058863          	beqz	a1,15f60 <_malloc_r+0x550>
   15f54:	00800793          	li	a5,8
   15f58:	40b785b3          	sub	a1,a5,a1
   15f5c:	00bb0b33          	add	s6,s6,a1
   15f60:	000017b7          	lui	a5,0x1
   15f64:	00f585b3          	add	a1,a1,a5
   15f68:	008b0433          	add	s0,s6,s0
   15f6c:	fff78793          	addi	a5,a5,-1 # fff <_start-0xf075>
   15f70:	00f47433          	and	s0,s0,a5
   15f74:	40858a33          	sub	s4,a1,s0
   15f78:	000a0593          	mv	a1,s4
   15f7c:	00098513          	mv	a0,s3
   15f80:	69c010ef          	jal	ra,1761c <_sbrk_r>
   15f84:	fff00793          	li	a5,-1
   15f88:	00f51663          	bne	a0,a5,15f94 <_malloc_r+0x584>
   15f8c:	000b0513          	mv	a0,s6
   15f90:	00000a13          	li	s4,0
   15f94:	000c2783          	lw	a5,0(s8)
   15f98:	41650533          	sub	a0,a0,s6
   15f9c:	01692423          	sw	s6,8(s2)
   15fa0:	014787b3          	add	a5,a5,s4
   15fa4:	01450a33          	add	s4,a0,s4
   15fa8:	001a6a13          	ori	s4,s4,1
   15fac:	00fc2023          	sw	a5,0(s8)
   15fb0:	014b2223          	sw	s4,4(s6)
   15fb4:	df2b82e3          	beq	s7,s2,15d98 <_malloc_r+0x388>
   15fb8:	00f00713          	li	a4,15
   15fbc:	05576263          	bltu	a4,s5,16000 <_malloc_r+0x5f0>
   15fc0:	00100793          	li	a5,1
   15fc4:	00fb2223          	sw	a5,4(s6)
   15fc8:	00892783          	lw	a5,8(s2)
   15fcc:	0047a783          	lw	a5,4(a5)
   15fd0:	ffc7f793          	andi	a5,a5,-4
   15fd4:	40978733          	sub	a4,a5,s1
   15fd8:	0097e663          	bltu	a5,s1,15fe4 <_malloc_r+0x5d4>
   15fdc:	00f00793          	li	a5,15
   15fe0:	04e7ce63          	blt	a5,a4,1603c <_malloc_r+0x62c>
   15fe4:	00098513          	mv	a0,s3
   15fe8:	248000ef          	jal	ra,16230 <__malloc_unlock>
   15fec:	a6dff06f          	j	15a58 <_malloc_r+0x48>
   15ff0:	40fb07b3          	sub	a5,s6,a5
   15ff4:	00e787b3          	add	a5,a5,a4
   15ff8:	00fc2023          	sw	a5,0(s8)
   15ffc:	f51ff06f          	j	15f4c <_malloc_r+0x53c>
   16000:	004ba783          	lw	a5,4(s7)
   16004:	ff4a8413          	addi	s0,s5,-12
   16008:	ff847413          	andi	s0,s0,-8
   1600c:	0017f793          	andi	a5,a5,1
   16010:	0087e7b3          	or	a5,a5,s0
   16014:	00fba223          	sw	a5,4(s7)
   16018:	00500693          	li	a3,5
   1601c:	008b87b3          	add	a5,s7,s0
   16020:	00d7a223          	sw	a3,4(a5)
   16024:	00d7a423          	sw	a3,8(a5)
   16028:	d68778e3          	bleu	s0,a4,15d98 <_malloc_r+0x388>
   1602c:	008b8593          	addi	a1,s7,8
   16030:	00098513          	mv	a0,s3
   16034:	f1dfc0ef          	jal	ra,12f50 <_free_r>
   16038:	d61ff06f          	j	15d98 <_malloc_r+0x388>
   1603c:	00892403          	lw	s0,8(s2)
   16040:	0014e793          	ori	a5,s1,1
   16044:	00f42223          	sw	a5,4(s0)
   16048:	009407b3          	add	a5,s0,s1
   1604c:	00f92423          	sw	a5,8(s2)
   16050:	aa1ff06f          	j	15af0 <_malloc_r+0xe0>

00016054 <_mbtowc_r>:
   16054:	8201a783          	lw	a5,-2016(gp) # 229c8 <_impure_ptr>
   16058:	0347a783          	lw	a5,52(a5)
   1605c:	00079663          	bnez	a5,16068 <_mbtowc_r+0x14>
   16060:	000227b7          	lui	a5,0x22
   16064:	43078793          	addi	a5,a5,1072 # 22430 <__global_locale>
   16068:	0e47a303          	lw	t1,228(a5)
   1606c:	00030067          	jr	t1

00016070 <__ascii_mbtowc>:
   16070:	02059a63          	bnez	a1,160a4 <__ascii_mbtowc+0x34>
   16074:	ff010113          	addi	sp,sp,-16
   16078:	00c10593          	addi	a1,sp,12
   1607c:	00000513          	li	a0,0
   16080:	00060e63          	beqz	a2,1609c <__ascii_mbtowc+0x2c>
   16084:	ffe00513          	li	a0,-2
   16088:	00068a63          	beqz	a3,1609c <__ascii_mbtowc+0x2c>
   1608c:	00064783          	lbu	a5,0(a2)
   16090:	00f5a023          	sw	a5,0(a1)
   16094:	00064503          	lbu	a0,0(a2)
   16098:	00a03533          	snez	a0,a0
   1609c:	01010113          	addi	sp,sp,16
   160a0:	00008067          	ret
   160a4:	00000513          	li	a0,0
   160a8:	02060063          	beqz	a2,160c8 <__ascii_mbtowc+0x58>
   160ac:	ffe00513          	li	a0,-2
   160b0:	00068c63          	beqz	a3,160c8 <__ascii_mbtowc+0x58>
   160b4:	00064783          	lbu	a5,0(a2)
   160b8:	00f5a023          	sw	a5,0(a1)
   160bc:	00064503          	lbu	a0,0(a2)
   160c0:	00a03533          	snez	a0,a0
   160c4:	00008067          	ret
   160c8:	00008067          	ret

000160cc <memchr>:
   160cc:	0ff5f593          	andi	a1,a1,255
   160d0:	00c50633          	add	a2,a0,a2
   160d4:	00c51663          	bne	a0,a2,160e0 <memchr+0x14>
   160d8:	00000513          	li	a0,0
   160dc:	00008067          	ret
   160e0:	00054783          	lbu	a5,0(a0)
   160e4:	feb78ce3          	beq	a5,a1,160dc <memchr+0x10>
   160e8:	00150513          	addi	a0,a0,1
   160ec:	fe9ff06f          	j	160d4 <memchr+0x8>

000160f0 <memcpy>:
   160f0:	00a5c7b3          	xor	a5,a1,a0
   160f4:	0037f793          	andi	a5,a5,3
   160f8:	00c50733          	add	a4,a0,a2
   160fc:	00079663          	bnez	a5,16108 <memcpy+0x18>
   16100:	00300793          	li	a5,3
   16104:	02c7e463          	bltu	a5,a2,1612c <memcpy+0x3c>
   16108:	00050793          	mv	a5,a0
   1610c:	00e56c63          	bltu	a0,a4,16124 <memcpy+0x34>
   16110:	00008067          	ret
   16114:	0005c683          	lbu	a3,0(a1)
   16118:	00178793          	addi	a5,a5,1
   1611c:	00158593          	addi	a1,a1,1
   16120:	fed78fa3          	sb	a3,-1(a5)
   16124:	fee7e8e3          	bltu	a5,a4,16114 <memcpy+0x24>
   16128:	00008067          	ret
   1612c:	00357793          	andi	a5,a0,3
   16130:	08079263          	bnez	a5,161b4 <memcpy+0xc4>
   16134:	00050793          	mv	a5,a0
   16138:	ffc77693          	andi	a3,a4,-4
   1613c:	fe068613          	addi	a2,a3,-32
   16140:	08c7f663          	bleu	a2,a5,161cc <memcpy+0xdc>
   16144:	0005a383          	lw	t2,0(a1)
   16148:	0045a283          	lw	t0,4(a1)
   1614c:	0085af83          	lw	t6,8(a1)
   16150:	00c5af03          	lw	t5,12(a1)
   16154:	0105ae83          	lw	t4,16(a1)
   16158:	0145ae03          	lw	t3,20(a1)
   1615c:	0185a303          	lw	t1,24(a1)
   16160:	01c5a883          	lw	a7,28(a1)
   16164:	02458593          	addi	a1,a1,36
   16168:	02478793          	addi	a5,a5,36
   1616c:	ffc5a803          	lw	a6,-4(a1)
   16170:	fc77ae23          	sw	t2,-36(a5)
   16174:	fe57a023          	sw	t0,-32(a5)
   16178:	fff7a223          	sw	t6,-28(a5)
   1617c:	ffe7a423          	sw	t5,-24(a5)
   16180:	ffd7a623          	sw	t4,-20(a5)
   16184:	ffc7a823          	sw	t3,-16(a5)
   16188:	fe67aa23          	sw	t1,-12(a5)
   1618c:	ff17ac23          	sw	a7,-8(a5)
   16190:	ff07ae23          	sw	a6,-4(a5)
   16194:	fadff06f          	j	16140 <memcpy+0x50>
   16198:	0005c683          	lbu	a3,0(a1)
   1619c:	00178793          	addi	a5,a5,1
   161a0:	00158593          	addi	a1,a1,1
   161a4:	fed78fa3          	sb	a3,-1(a5)
   161a8:	0037f693          	andi	a3,a5,3
   161ac:	fe0696e3          	bnez	a3,16198 <memcpy+0xa8>
   161b0:	f89ff06f          	j	16138 <memcpy+0x48>
   161b4:	00050793          	mv	a5,a0
   161b8:	ff1ff06f          	j	161a8 <memcpy+0xb8>
   161bc:	0005a603          	lw	a2,0(a1)
   161c0:	00478793          	addi	a5,a5,4
   161c4:	00458593          	addi	a1,a1,4
   161c8:	fec7ae23          	sw	a2,-4(a5)
   161cc:	fed7e8e3          	bltu	a5,a3,161bc <memcpy+0xcc>
   161d0:	f4e7eae3          	bltu	a5,a4,16124 <memcpy+0x34>
   161d4:	00008067          	ret

000161d8 <memmove>:
   161d8:	00c50733          	add	a4,a0,a2
   161dc:	00a5e863          	bltu	a1,a0,161ec <memmove+0x14>
   161e0:	00050793          	mv	a5,a0
   161e4:	02e79a63          	bne	a5,a4,16218 <memmove+0x40>
   161e8:	00008067          	ret
   161ec:	00c587b3          	add	a5,a1,a2
   161f0:	40f60633          	sub	a2,a2,a5
   161f4:	fef576e3          	bleu	a5,a0,161e0 <memmove+0x8>
   161f8:	00c786b3          	add	a3,a5,a2
   161fc:	00069463          	bnez	a3,16204 <memmove+0x2c>
   16200:	00008067          	ret
   16204:	fff78793          	addi	a5,a5,-1
   16208:	0007c683          	lbu	a3,0(a5)
   1620c:	fff70713          	addi	a4,a4,-1
   16210:	00d70023          	sb	a3,0(a4)
   16214:	fe5ff06f          	j	161f8 <memmove+0x20>
   16218:	00158593          	addi	a1,a1,1
   1621c:	fff5c683          	lbu	a3,-1(a1)
   16220:	00178793          	addi	a5,a5,1
   16224:	fed78fa3          	sb	a3,-1(a5)
   16228:	fbdff06f          	j	161e4 <memmove+0xc>

0001622c <__malloc_lock>:
   1622c:	00008067          	ret

00016230 <__malloc_unlock>:
   16230:	00008067          	ret

00016234 <_Balloc>:
   16234:	04c52783          	lw	a5,76(a0)
   16238:	ff010113          	addi	sp,sp,-16
   1623c:	00912223          	sw	s1,4(sp)
   16240:	01212023          	sw	s2,0(sp)
   16244:	00112623          	sw	ra,12(sp)
   16248:	00812423          	sw	s0,8(sp)
   1624c:	00050493          	mv	s1,a0
   16250:	00058913          	mv	s2,a1
   16254:	04078263          	beqz	a5,16298 <_Balloc+0x64>
   16258:	04c4a703          	lw	a4,76(s1)
   1625c:	00291793          	slli	a5,s2,0x2
   16260:	00f707b3          	add	a5,a4,a5
   16264:	0007a503          	lw	a0,0(a5)
   16268:	06051063          	bnez	a0,162c8 <_Balloc+0x94>
   1626c:	00100413          	li	s0,1
   16270:	01241433          	sll	s0,s0,s2
   16274:	00540613          	addi	a2,s0,5
   16278:	00261613          	slli	a2,a2,0x2
   1627c:	00100593          	li	a1,1
   16280:	00048513          	mv	a0,s1
   16284:	6b4040ef          	jal	ra,1a938 <_calloc_r>
   16288:	02050263          	beqz	a0,162ac <_Balloc+0x78>
   1628c:	01252223          	sw	s2,4(a0)
   16290:	00852423          	sw	s0,8(a0)
   16294:	03c0006f          	j	162d0 <_Balloc+0x9c>
   16298:	02100613          	li	a2,33
   1629c:	00400593          	li	a1,4
   162a0:	698040ef          	jal	ra,1a938 <_calloc_r>
   162a4:	04a4a623          	sw	a0,76(s1)
   162a8:	fa0518e3          	bnez	a0,16258 <_Balloc+0x24>
   162ac:	00000513          	li	a0,0
   162b0:	00c12083          	lw	ra,12(sp)
   162b4:	00812403          	lw	s0,8(sp)
   162b8:	00412483          	lw	s1,4(sp)
   162bc:	00012903          	lw	s2,0(sp)
   162c0:	01010113          	addi	sp,sp,16
   162c4:	00008067          	ret
   162c8:	00052703          	lw	a4,0(a0)
   162cc:	00e7a023          	sw	a4,0(a5)
   162d0:	00052823          	sw	zero,16(a0)
   162d4:	00052623          	sw	zero,12(a0)
   162d8:	fd9ff06f          	j	162b0 <_Balloc+0x7c>

000162dc <_Bfree>:
   162dc:	02058063          	beqz	a1,162fc <_Bfree+0x20>
   162e0:	0045a783          	lw	a5,4(a1)
   162e4:	00279713          	slli	a4,a5,0x2
   162e8:	04c52783          	lw	a5,76(a0)
   162ec:	00e787b3          	add	a5,a5,a4
   162f0:	0007a703          	lw	a4,0(a5)
   162f4:	00e5a023          	sw	a4,0(a1)
   162f8:	00b7a023          	sw	a1,0(a5)
   162fc:	00008067          	ret

00016300 <__multadd>:
   16300:	fd010113          	addi	sp,sp,-48
   16304:	01312e23          	sw	s3,28(sp)
   16308:	00050993          	mv	s3,a0
   1630c:	00010537          	lui	a0,0x10
   16310:	02812423          	sw	s0,40(sp)
   16314:	02912223          	sw	s1,36(sp)
   16318:	00058413          	mv	s0,a1
   1631c:	0105a483          	lw	s1,16(a1)
   16320:	02112623          	sw	ra,44(sp)
   16324:	03212023          	sw	s2,32(sp)
   16328:	01458593          	addi	a1,a1,20
   1632c:	00000813          	li	a6,0
   16330:	fff50513          	addi	a0,a0,-1 # ffff <_start-0x75>
   16334:	0005a783          	lw	a5,0(a1)
   16338:	00458593          	addi	a1,a1,4
   1633c:	00180813          	addi	a6,a6,1
   16340:	00a7f733          	and	a4,a5,a0
   16344:	02c70733          	mul	a4,a4,a2
   16348:	0107d793          	srli	a5,a5,0x10
   1634c:	02c787b3          	mul	a5,a5,a2
   16350:	00d70733          	add	a4,a4,a3
   16354:	01075693          	srli	a3,a4,0x10
   16358:	00a77733          	and	a4,a4,a0
   1635c:	00d787b3          	add	a5,a5,a3
   16360:	0107d693          	srli	a3,a5,0x10
   16364:	01079793          	slli	a5,a5,0x10
   16368:	00e787b3          	add	a5,a5,a4
   1636c:	fef5ae23          	sw	a5,-4(a1)
   16370:	fc9842e3          	blt	a6,s1,16334 <__multadd+0x34>
   16374:	06068463          	beqz	a3,163dc <__multadd+0xdc>
   16378:	00842783          	lw	a5,8(s0)
   1637c:	04f4c463          	blt	s1,a5,163c4 <__multadd+0xc4>
   16380:	00442583          	lw	a1,4(s0)
   16384:	00098513          	mv	a0,s3
   16388:	00d12623          	sw	a3,12(sp)
   1638c:	00158593          	addi	a1,a1,1
   16390:	ea5ff0ef          	jal	ra,16234 <_Balloc>
   16394:	01042603          	lw	a2,16(s0)
   16398:	00c40593          	addi	a1,s0,12
   1639c:	00050913          	mv	s2,a0
   163a0:	00260613          	addi	a2,a2,2
   163a4:	00261613          	slli	a2,a2,0x2
   163a8:	00c50513          	addi	a0,a0,12
   163ac:	d45ff0ef          	jal	ra,160f0 <memcpy>
   163b0:	00040593          	mv	a1,s0
   163b4:	00098513          	mv	a0,s3
   163b8:	f25ff0ef          	jal	ra,162dc <_Bfree>
   163bc:	00c12683          	lw	a3,12(sp)
   163c0:	00090413          	mv	s0,s2
   163c4:	00448793          	addi	a5,s1,4
   163c8:	00279793          	slli	a5,a5,0x2
   163cc:	00f407b3          	add	a5,s0,a5
   163d0:	00d7a223          	sw	a3,4(a5)
   163d4:	00148493          	addi	s1,s1,1
   163d8:	00942823          	sw	s1,16(s0)
   163dc:	00040513          	mv	a0,s0
   163e0:	02c12083          	lw	ra,44(sp)
   163e4:	02812403          	lw	s0,40(sp)
   163e8:	02412483          	lw	s1,36(sp)
   163ec:	02012903          	lw	s2,32(sp)
   163f0:	01c12983          	lw	s3,28(sp)
   163f4:	03010113          	addi	sp,sp,48
   163f8:	00008067          	ret

000163fc <__s2b>:
   163fc:	fd010113          	addi	sp,sp,-48
   16400:	00868793          	addi	a5,a3,8
   16404:	01512a23          	sw	s5,20(sp)
   16408:	00068a93          	mv	s5,a3
   1640c:	00900693          	li	a3,9
   16410:	02812423          	sw	s0,40(sp)
   16414:	02912223          	sw	s1,36(sp)
   16418:	01412c23          	sw	s4,24(sp)
   1641c:	00058413          	mv	s0,a1
   16420:	02d7c7b3          	div	a5,a5,a3
   16424:	02112623          	sw	ra,44(sp)
   16428:	03212023          	sw	s2,32(sp)
   1642c:	01312e23          	sw	s3,28(sp)
   16430:	00050a13          	mv	s4,a0
   16434:	00060493          	mv	s1,a2
   16438:	00100693          	li	a3,1
   1643c:	00000593          	li	a1,0
   16440:	08f6c663          	blt	a3,a5,164cc <__s2b+0xd0>
   16444:	000a0513          	mv	a0,s4
   16448:	00e12623          	sw	a4,12(sp)
   1644c:	de9ff0ef          	jal	ra,16234 <_Balloc>
   16450:	00c12703          	lw	a4,12(sp)
   16454:	00100793          	li	a5,1
   16458:	00f52823          	sw	a5,16(a0)
   1645c:	00e52a23          	sw	a4,20(a0)
   16460:	00900793          	li	a5,9
   16464:	0697da63          	ble	s1,a5,164d8 <__s2b+0xdc>
   16468:	00940913          	addi	s2,s0,9
   1646c:	00090993          	mv	s3,s2
   16470:	00940433          	add	s0,s0,s1
   16474:	00198993          	addi	s3,s3,1
   16478:	fff9c683          	lbu	a3,-1(s3)
   1647c:	00050593          	mv	a1,a0
   16480:	00a00613          	li	a2,10
   16484:	fd068693          	addi	a3,a3,-48
   16488:	000a0513          	mv	a0,s4
   1648c:	e75ff0ef          	jal	ra,16300 <__multadd>
   16490:	fe8992e3          	bne	s3,s0,16474 <__s2b+0x78>
   16494:	00990433          	add	s0,s2,s1
   16498:	ff840413          	addi	s0,s0,-8
   1649c:	408484b3          	sub	s1,s1,s0
   164a0:	009407b3          	add	a5,s0,s1
   164a4:	0557c063          	blt	a5,s5,164e4 <__s2b+0xe8>
   164a8:	02c12083          	lw	ra,44(sp)
   164ac:	02812403          	lw	s0,40(sp)
   164b0:	02412483          	lw	s1,36(sp)
   164b4:	02012903          	lw	s2,32(sp)
   164b8:	01c12983          	lw	s3,28(sp)
   164bc:	01812a03          	lw	s4,24(sp)
   164c0:	01412a83          	lw	s5,20(sp)
   164c4:	03010113          	addi	sp,sp,48
   164c8:	00008067          	ret
   164cc:	00169693          	slli	a3,a3,0x1
   164d0:	00158593          	addi	a1,a1,1
   164d4:	f6dff06f          	j	16440 <__s2b+0x44>
   164d8:	00a40413          	addi	s0,s0,10
   164dc:	00900493          	li	s1,9
   164e0:	fbdff06f          	j	1649c <__s2b+0xa0>
   164e4:	00140413          	addi	s0,s0,1
   164e8:	fff44683          	lbu	a3,-1(s0)
   164ec:	00050593          	mv	a1,a0
   164f0:	00a00613          	li	a2,10
   164f4:	fd068693          	addi	a3,a3,-48
   164f8:	000a0513          	mv	a0,s4
   164fc:	e05ff0ef          	jal	ra,16300 <__multadd>
   16500:	fa1ff06f          	j	164a0 <__s2b+0xa4>

00016504 <__hi0bits>:
   16504:	ffff0737          	lui	a4,0xffff0
   16508:	00e57733          	and	a4,a0,a4
   1650c:	00050793          	mv	a5,a0
   16510:	00000513          	li	a0,0
   16514:	00071663          	bnez	a4,16520 <__hi0bits+0x1c>
   16518:	01079793          	slli	a5,a5,0x10
   1651c:	01000513          	li	a0,16
   16520:	ff000737          	lui	a4,0xff000
   16524:	00e7f733          	and	a4,a5,a4
   16528:	00071663          	bnez	a4,16534 <__hi0bits+0x30>
   1652c:	00850513          	addi	a0,a0,8
   16530:	00879793          	slli	a5,a5,0x8
   16534:	f0000737          	lui	a4,0xf0000
   16538:	00e7f733          	and	a4,a5,a4
   1653c:	00071663          	bnez	a4,16548 <__hi0bits+0x44>
   16540:	00450513          	addi	a0,a0,4
   16544:	00479793          	slli	a5,a5,0x4
   16548:	c0000737          	lui	a4,0xc0000
   1654c:	00e7f733          	and	a4,a5,a4
   16550:	00071663          	bnez	a4,1655c <__hi0bits+0x58>
   16554:	00250513          	addi	a0,a0,2
   16558:	00279793          	slli	a5,a5,0x2
   1655c:	0007cc63          	bltz	a5,16574 <__hi0bits+0x70>
   16560:	00179713          	slli	a4,a5,0x1
   16564:	00075663          	bgez	a4,16570 <__hi0bits+0x6c>
   16568:	00150513          	addi	a0,a0,1
   1656c:	00008067          	ret
   16570:	02000513          	li	a0,32
   16574:	00008067          	ret

00016578 <__lo0bits>:
   16578:	00052783          	lw	a5,0(a0)
   1657c:	0077f713          	andi	a4,a5,7
   16580:	02070e63          	beqz	a4,165bc <__lo0bits+0x44>
   16584:	0017f693          	andi	a3,a5,1
   16588:	00000713          	li	a4,0
   1658c:	00069c63          	bnez	a3,165a4 <__lo0bits+0x2c>
   16590:	0027f713          	andi	a4,a5,2
   16594:	00070c63          	beqz	a4,165ac <__lo0bits+0x34>
   16598:	0017d793          	srli	a5,a5,0x1
   1659c:	00f52023          	sw	a5,0(a0)
   165a0:	00100713          	li	a4,1
   165a4:	00070513          	mv	a0,a4
   165a8:	00008067          	ret
   165ac:	0027d793          	srli	a5,a5,0x2
   165b0:	00f52023          	sw	a5,0(a0)
   165b4:	00200713          	li	a4,2
   165b8:	fedff06f          	j	165a4 <__lo0bits+0x2c>
   165bc:	01079693          	slli	a3,a5,0x10
   165c0:	0106d693          	srli	a3,a3,0x10
   165c4:	00000713          	li	a4,0
   165c8:	00069663          	bnez	a3,165d4 <__lo0bits+0x5c>
   165cc:	0107d793          	srli	a5,a5,0x10
   165d0:	01000713          	li	a4,16
   165d4:	0ff7f693          	andi	a3,a5,255
   165d8:	00069663          	bnez	a3,165e4 <__lo0bits+0x6c>
   165dc:	00870713          	addi	a4,a4,8 # c0000008 <__global_pointer$+0xbffdce60>
   165e0:	0087d793          	srli	a5,a5,0x8
   165e4:	00f7f693          	andi	a3,a5,15
   165e8:	00069663          	bnez	a3,165f4 <__lo0bits+0x7c>
   165ec:	00470713          	addi	a4,a4,4
   165f0:	0047d793          	srli	a5,a5,0x4
   165f4:	0037f693          	andi	a3,a5,3
   165f8:	00069663          	bnez	a3,16604 <__lo0bits+0x8c>
   165fc:	00270713          	addi	a4,a4,2
   16600:	0027d793          	srli	a5,a5,0x2
   16604:	0017f693          	andi	a3,a5,1
   16608:	00069863          	bnez	a3,16618 <__lo0bits+0xa0>
   1660c:	0017d793          	srli	a5,a5,0x1
   16610:	00078863          	beqz	a5,16620 <__lo0bits+0xa8>
   16614:	00170713          	addi	a4,a4,1
   16618:	00f52023          	sw	a5,0(a0)
   1661c:	f89ff06f          	j	165a4 <__lo0bits+0x2c>
   16620:	02000713          	li	a4,32
   16624:	f81ff06f          	j	165a4 <__lo0bits+0x2c>

00016628 <__i2b>:
   16628:	ff010113          	addi	sp,sp,-16
   1662c:	00812423          	sw	s0,8(sp)
   16630:	00058413          	mv	s0,a1
   16634:	00100593          	li	a1,1
   16638:	00112623          	sw	ra,12(sp)
   1663c:	bf9ff0ef          	jal	ra,16234 <_Balloc>
   16640:	00852a23          	sw	s0,20(a0)
   16644:	00c12083          	lw	ra,12(sp)
   16648:	00812403          	lw	s0,8(sp)
   1664c:	00100713          	li	a4,1
   16650:	00e52823          	sw	a4,16(a0)
   16654:	01010113          	addi	sp,sp,16
   16658:	00008067          	ret

0001665c <__multiply>:
   1665c:	0105a703          	lw	a4,16(a1)
   16660:	01062783          	lw	a5,16(a2)
   16664:	fd010113          	addi	sp,sp,-48
   16668:	02912223          	sw	s1,36(sp)
   1666c:	02112623          	sw	ra,44(sp)
   16670:	02812423          	sw	s0,40(sp)
   16674:	03212023          	sw	s2,32(sp)
   16678:	01312e23          	sw	s3,28(sp)
   1667c:	00058493          	mv	s1,a1
   16680:	00f75663          	ble	a5,a4,1668c <__multiply+0x30>
   16684:	00060493          	mv	s1,a2
   16688:	00058613          	mv	a2,a1
   1668c:	0104a983          	lw	s3,16(s1)
   16690:	01062903          	lw	s2,16(a2)
   16694:	0084a783          	lw	a5,8(s1)
   16698:	0044a583          	lw	a1,4(s1)
   1669c:	01298433          	add	s0,s3,s2
   166a0:	0087d463          	ble	s0,a5,166a8 <__multiply+0x4c>
   166a4:	00158593          	addi	a1,a1,1
   166a8:	00c12623          	sw	a2,12(sp)
   166ac:	b89ff0ef          	jal	ra,16234 <_Balloc>
   166b0:	00c12603          	lw	a2,12(sp)
   166b4:	01450813          	addi	a6,a0,20
   166b8:	00241313          	slli	t1,s0,0x2
   166bc:	00680333          	add	t1,a6,t1
   166c0:	00080793          	mv	a5,a6
   166c4:	0467ec63          	bltu	a5,t1,1671c <__multiply+0xc0>
   166c8:	01448593          	addi	a1,s1,20
   166cc:	00299893          	slli	a7,s3,0x2
   166d0:	01460613          	addi	a2,a2,20
   166d4:	00291e13          	slli	t3,s2,0x2
   166d8:	000106b7          	lui	a3,0x10
   166dc:	011588b3          	add	a7,a1,a7
   166e0:	01c60e33          	add	t3,a2,t3
   166e4:	fff68693          	addi	a3,a3,-1 # ffff <_start-0x75>
   166e8:	05c66063          	bltu	a2,t3,16728 <__multiply+0xcc>
   166ec:	00805863          	blez	s0,166fc <__multiply+0xa0>
   166f0:	ffc30313          	addi	t1,t1,-4
   166f4:	00032783          	lw	a5,0(t1)
   166f8:	12078663          	beqz	a5,16824 <__multiply+0x1c8>
   166fc:	00852823          	sw	s0,16(a0)
   16700:	02c12083          	lw	ra,44(sp)
   16704:	02812403          	lw	s0,40(sp)
   16708:	02412483          	lw	s1,36(sp)
   1670c:	02012903          	lw	s2,32(sp)
   16710:	01c12983          	lw	s3,28(sp)
   16714:	03010113          	addi	sp,sp,48
   16718:	00008067          	ret
   1671c:	0007a023          	sw	zero,0(a5)
   16720:	00478793          	addi	a5,a5,4
   16724:	fa1ff06f          	j	166c4 <__multiply+0x68>
   16728:	00062f03          	lw	t5,0(a2)
   1672c:	00df7f33          	and	t5,t5,a3
   16730:	060f0463          	beqz	t5,16798 <__multiply+0x13c>
   16734:	00080f93          	mv	t6,a6
   16738:	00058293          	mv	t0,a1
   1673c:	00000493          	li	s1,0
   16740:	0002a703          	lw	a4,0(t0) # 10444 <memset+0xb4>
   16744:	000fa383          	lw	t2,0(t6)
   16748:	00428293          	addi	t0,t0,4
   1674c:	00d77eb3          	and	t4,a4,a3
   16750:	03ee8eb3          	mul	t4,t4,t5
   16754:	00d3f7b3          	and	a5,t2,a3
   16758:	0103d393          	srli	t2,t2,0x10
   1675c:	00fe8eb3          	add	t4,t4,a5
   16760:	01075793          	srli	a5,a4,0x10
   16764:	03e787b3          	mul	a5,a5,t5
   16768:	009e8eb3          	add	t4,t4,s1
   1676c:	010ed713          	srli	a4,t4,0x10
   16770:	00defeb3          	and	t4,t4,a3
   16774:	007787b3          	add	a5,a5,t2
   16778:	00e787b3          	add	a5,a5,a4
   1677c:	0107d493          	srli	s1,a5,0x10
   16780:	01079793          	slli	a5,a5,0x10
   16784:	004f8713          	addi	a4,t6,4
   16788:	01d7e7b3          	or	a5,a5,t4
   1678c:	fef72e23          	sw	a5,-4(a4)
   16790:	0912e263          	bltu	t0,a7,16814 <__multiply+0x1b8>
   16794:	009fa223          	sw	s1,4(t6)
   16798:	00265283          	lhu	t0,2(a2)
   1679c:	06028663          	beqz	t0,16808 <__multiply+0x1ac>
   167a0:	00082783          	lw	a5,0(a6)
   167a4:	00080e93          	mv	t4,a6
   167a8:	00058f13          	mv	t5,a1
   167ac:	00000f93          	li	t6,0
   167b0:	000f2703          	lw	a4,0(t5)
   167b4:	002ed383          	lhu	t2,2(t4)
   167b8:	00d7f7b3          	and	a5,a5,a3
   167bc:	00d77733          	and	a4,a4,a3
   167c0:	02570733          	mul	a4,a4,t0
   167c4:	004f0f13          	addi	t5,t5,4
   167c8:	00770733          	add	a4,a4,t2
   167cc:	01f70733          	add	a4,a4,t6
   167d0:	01071f93          	slli	t6,a4,0x10
   167d4:	00ffe7b3          	or	a5,t6,a5
   167d8:	004e8393          	addi	t2,t4,4
   167dc:	fef3ae23          	sw	a5,-4(t2)
   167e0:	ffef5783          	lhu	a5,-2(t5)
   167e4:	004eaf83          	lw	t6,4(t4)
   167e8:	01075713          	srli	a4,a4,0x10
   167ec:	025787b3          	mul	a5,a5,t0
   167f0:	00dfffb3          	and	t6,t6,a3
   167f4:	01f787b3          	add	a5,a5,t6
   167f8:	00e787b3          	add	a5,a5,a4
   167fc:	0107df93          	srli	t6,a5,0x10
   16800:	011f6e63          	bltu	t5,a7,1681c <__multiply+0x1c0>
   16804:	00fea223          	sw	a5,4(t4)
   16808:	00460613          	addi	a2,a2,4
   1680c:	00480813          	addi	a6,a6,4
   16810:	ed9ff06f          	j	166e8 <__multiply+0x8c>
   16814:	00070f93          	mv	t6,a4
   16818:	f29ff06f          	j	16740 <__multiply+0xe4>
   1681c:	00038e93          	mv	t4,t2
   16820:	f91ff06f          	j	167b0 <__multiply+0x154>
   16824:	fff40413          	addi	s0,s0,-1
   16828:	ec5ff06f          	j	166ec <__multiply+0x90>

0001682c <__pow5mult>:
   1682c:	fe010113          	addi	sp,sp,-32
   16830:	00912a23          	sw	s1,20(sp)
   16834:	01212823          	sw	s2,16(sp)
   16838:	01312623          	sw	s3,12(sp)
   1683c:	00112e23          	sw	ra,28(sp)
   16840:	00812c23          	sw	s0,24(sp)
   16844:	01412423          	sw	s4,8(sp)
   16848:	00367793          	andi	a5,a2,3
   1684c:	00050913          	mv	s2,a0
   16850:	00060493          	mv	s1,a2
   16854:	00058993          	mv	s3,a1
   16858:	02078463          	beqz	a5,16880 <__pow5mult+0x54>
   1685c:	fff78793          	addi	a5,a5,-1
   16860:	00021737          	lui	a4,0x21
   16864:	d1070713          	addi	a4,a4,-752 # 20d10 <p05.3228>
   16868:	00279793          	slli	a5,a5,0x2
   1686c:	00f707b3          	add	a5,a4,a5
   16870:	0007a603          	lw	a2,0(a5)
   16874:	00000693          	li	a3,0
   16878:	a89ff0ef          	jal	ra,16300 <__multadd>
   1687c:	00050993          	mv	s3,a0
   16880:	4024d493          	srai	s1,s1,0x2
   16884:	08048063          	beqz	s1,16904 <__pow5mult+0xd8>
   16888:	04892403          	lw	s0,72(s2)
   1688c:	00041e63          	bnez	s0,168a8 <__pow5mult+0x7c>
   16890:	27100593          	li	a1,625
   16894:	00090513          	mv	a0,s2
   16898:	d91ff0ef          	jal	ra,16628 <__i2b>
   1689c:	04a92423          	sw	a0,72(s2)
   168a0:	00050413          	mv	s0,a0
   168a4:	00052023          	sw	zero,0(a0)
   168a8:	0014f793          	andi	a5,s1,1
   168ac:	02078463          	beqz	a5,168d4 <__pow5mult+0xa8>
   168b0:	00098593          	mv	a1,s3
   168b4:	00040613          	mv	a2,s0
   168b8:	00090513          	mv	a0,s2
   168bc:	da1ff0ef          	jal	ra,1665c <__multiply>
   168c0:	00050a13          	mv	s4,a0
   168c4:	00098593          	mv	a1,s3
   168c8:	00090513          	mv	a0,s2
   168cc:	a11ff0ef          	jal	ra,162dc <_Bfree>
   168d0:	000a0993          	mv	s3,s4
   168d4:	4014d493          	srai	s1,s1,0x1
   168d8:	02048663          	beqz	s1,16904 <__pow5mult+0xd8>
   168dc:	00042503          	lw	a0,0(s0)
   168e0:	00051e63          	bnez	a0,168fc <__pow5mult+0xd0>
   168e4:	00040613          	mv	a2,s0
   168e8:	00040593          	mv	a1,s0
   168ec:	00090513          	mv	a0,s2
   168f0:	d6dff0ef          	jal	ra,1665c <__multiply>
   168f4:	00a42023          	sw	a0,0(s0)
   168f8:	00052023          	sw	zero,0(a0)
   168fc:	00050413          	mv	s0,a0
   16900:	fa9ff06f          	j	168a8 <__pow5mult+0x7c>
   16904:	01c12083          	lw	ra,28(sp)
   16908:	01812403          	lw	s0,24(sp)
   1690c:	00098513          	mv	a0,s3
   16910:	01412483          	lw	s1,20(sp)
   16914:	01012903          	lw	s2,16(sp)
   16918:	00c12983          	lw	s3,12(sp)
   1691c:	00812a03          	lw	s4,8(sp)
   16920:	02010113          	addi	sp,sp,32
   16924:	00008067          	ret

00016928 <__lshift>:
   16928:	fd010113          	addi	sp,sp,-48
   1692c:	02912223          	sw	s1,36(sp)
   16930:	00058493          	mv	s1,a1
   16934:	01312e23          	sw	s3,28(sp)
   16938:	0104a983          	lw	s3,16(s1)
   1693c:	02812423          	sw	s0,40(sp)
   16940:	0045a583          	lw	a1,4(a1)
   16944:	40565413          	srai	s0,a2,0x5
   16948:	0084a783          	lw	a5,8(s1)
   1694c:	013409b3          	add	s3,s0,s3
   16950:	03212023          	sw	s2,32(sp)
   16954:	01512a23          	sw	s5,20(sp)
   16958:	02112623          	sw	ra,44(sp)
   1695c:	01412c23          	sw	s4,24(sp)
   16960:	00050a93          	mv	s5,a0
   16964:	00198913          	addi	s2,s3,1
   16968:	0d27c663          	blt	a5,s2,16a34 <__lshift+0x10c>
   1696c:	000a8513          	mv	a0,s5
   16970:	00c12623          	sw	a2,12(sp)
   16974:	8c1ff0ef          	jal	ra,16234 <_Balloc>
   16978:	00c12603          	lw	a2,12(sp)
   1697c:	01450793          	addi	a5,a0,20
   16980:	00050a13          	mv	s4,a0
   16984:	00078693          	mv	a3,a5
   16988:	00000713          	li	a4,0
   1698c:	00468693          	addi	a3,a3,4
   16990:	0a874863          	blt	a4,s0,16a40 <__lshift+0x118>
   16994:	00045463          	bgez	s0,1699c <__lshift+0x74>
   16998:	00000413          	li	s0,0
   1699c:	0104a683          	lw	a3,16(s1)
   169a0:	00241413          	slli	s0,s0,0x2
   169a4:	00878733          	add	a4,a5,s0
   169a8:	00269693          	slli	a3,a3,0x2
   169ac:	01448793          	addi	a5,s1,20
   169b0:	01f67613          	andi	a2,a2,31
   169b4:	00d786b3          	add	a3,a5,a3
   169b8:	08060e63          	beqz	a2,16a54 <__lshift+0x12c>
   169bc:	02000813          	li	a6,32
   169c0:	40c80833          	sub	a6,a6,a2
   169c4:	00000593          	li	a1,0
   169c8:	0007a503          	lw	a0,0(a5)
   169cc:	00470893          	addi	a7,a4,4
   169d0:	00478793          	addi	a5,a5,4
   169d4:	00c51533          	sll	a0,a0,a2
   169d8:	00b565b3          	or	a1,a0,a1
   169dc:	feb8ae23          	sw	a1,-4(a7)
   169e0:	ffc7a583          	lw	a1,-4(a5)
   169e4:	0105d5b3          	srl	a1,a1,a6
   169e8:	06d7e263          	bltu	a5,a3,16a4c <__lshift+0x124>
   169ec:	00b72223          	sw	a1,4(a4)
   169f0:	00058463          	beqz	a1,169f8 <__lshift+0xd0>
   169f4:	00298913          	addi	s2,s3,2
   169f8:	fff90913          	addi	s2,s2,-1
   169fc:	012a2823          	sw	s2,16(s4)
   16a00:	000a8513          	mv	a0,s5
   16a04:	00048593          	mv	a1,s1
   16a08:	8d5ff0ef          	jal	ra,162dc <_Bfree>
   16a0c:	02c12083          	lw	ra,44(sp)
   16a10:	02812403          	lw	s0,40(sp)
   16a14:	000a0513          	mv	a0,s4
   16a18:	02412483          	lw	s1,36(sp)
   16a1c:	02012903          	lw	s2,32(sp)
   16a20:	01c12983          	lw	s3,28(sp)
   16a24:	01812a03          	lw	s4,24(sp)
   16a28:	01412a83          	lw	s5,20(sp)
   16a2c:	03010113          	addi	sp,sp,48
   16a30:	00008067          	ret
   16a34:	00158593          	addi	a1,a1,1
   16a38:	00179793          	slli	a5,a5,0x1
   16a3c:	f2dff06f          	j	16968 <__lshift+0x40>
   16a40:	fe06ae23          	sw	zero,-4(a3)
   16a44:	00170713          	addi	a4,a4,1
   16a48:	f45ff06f          	j	1698c <__lshift+0x64>
   16a4c:	00088713          	mv	a4,a7
   16a50:	f79ff06f          	j	169c8 <__lshift+0xa0>
   16a54:	00478793          	addi	a5,a5,4
   16a58:	ffc7a603          	lw	a2,-4(a5)
   16a5c:	00470713          	addi	a4,a4,4
   16a60:	fec72e23          	sw	a2,-4(a4)
   16a64:	fed7e8e3          	bltu	a5,a3,16a54 <__lshift+0x12c>
   16a68:	f91ff06f          	j	169f8 <__lshift+0xd0>

00016a6c <__mcmp>:
   16a6c:	01052783          	lw	a5,16(a0)
   16a70:	0105a703          	lw	a4,16(a1)
   16a74:	40e787b3          	sub	a5,a5,a4
   16a78:	02079c63          	bnez	a5,16ab0 <__mcmp+0x44>
   16a7c:	00271713          	slli	a4,a4,0x2
   16a80:	01450513          	addi	a0,a0,20
   16a84:	01458593          	addi	a1,a1,20
   16a88:	00e506b3          	add	a3,a0,a4
   16a8c:	00e585b3          	add	a1,a1,a4
   16a90:	ffc68693          	addi	a3,a3,-4
   16a94:	ffc58593          	addi	a1,a1,-4
   16a98:	0006a603          	lw	a2,0(a3)
   16a9c:	0005a703          	lw	a4,0(a1)
   16aa0:	00e60c63          	beq	a2,a4,16ab8 <__mcmp+0x4c>
   16aa4:	fff00793          	li	a5,-1
   16aa8:	00e66463          	bltu	a2,a4,16ab0 <__mcmp+0x44>
   16aac:	00100793          	li	a5,1
   16ab0:	00078513          	mv	a0,a5
   16ab4:	00008067          	ret
   16ab8:	fcd56ce3          	bltu	a0,a3,16a90 <__mcmp+0x24>
   16abc:	ff5ff06f          	j	16ab0 <__mcmp+0x44>

00016ac0 <__mdiff>:
   16ac0:	fe010113          	addi	sp,sp,-32
   16ac4:	00912a23          	sw	s1,20(sp)
   16ac8:	00058493          	mv	s1,a1
   16acc:	01312623          	sw	s3,12(sp)
   16ad0:	00060593          	mv	a1,a2
   16ad4:	00050993          	mv	s3,a0
   16ad8:	00048513          	mv	a0,s1
   16adc:	00812c23          	sw	s0,24(sp)
   16ae0:	00112e23          	sw	ra,28(sp)
   16ae4:	01212823          	sw	s2,16(sp)
   16ae8:	00060413          	mv	s0,a2
   16aec:	f81ff0ef          	jal	ra,16a6c <__mcmp>
   16af0:	02051c63          	bnez	a0,16b28 <__mdiff+0x68>
   16af4:	00000593          	li	a1,0
   16af8:	00098513          	mv	a0,s3
   16afc:	f38ff0ef          	jal	ra,16234 <_Balloc>
   16b00:	00100793          	li	a5,1
   16b04:	00f52823          	sw	a5,16(a0)
   16b08:	00052a23          	sw	zero,20(a0)
   16b0c:	01c12083          	lw	ra,28(sp)
   16b10:	01812403          	lw	s0,24(sp)
   16b14:	01412483          	lw	s1,20(sp)
   16b18:	01012903          	lw	s2,16(sp)
   16b1c:	00c12983          	lw	s3,12(sp)
   16b20:	02010113          	addi	sp,sp,32
   16b24:	00008067          	ret
   16b28:	00100913          	li	s2,1
   16b2c:	00054a63          	bltz	a0,16b40 <__mdiff+0x80>
   16b30:	00040793          	mv	a5,s0
   16b34:	00000913          	li	s2,0
   16b38:	00048413          	mv	s0,s1
   16b3c:	00078493          	mv	s1,a5
   16b40:	00442583          	lw	a1,4(s0)
   16b44:	00098513          	mv	a0,s3
   16b48:	eecff0ef          	jal	ra,16234 <_Balloc>
   16b4c:	01042303          	lw	t1,16(s0)
   16b50:	0104a883          	lw	a7,16(s1)
   16b54:	01440613          	addi	a2,s0,20
   16b58:	00231e13          	slli	t3,t1,0x2
   16b5c:	01448813          	addi	a6,s1,20
   16b60:	00289893          	slli	a7,a7,0x2
   16b64:	00010eb7          	lui	t4,0x10
   16b68:	01252623          	sw	s2,12(a0)
   16b6c:	01c60e33          	add	t3,a2,t3
   16b70:	011808b3          	add	a7,a6,a7
   16b74:	01450693          	addi	a3,a0,20
   16b78:	00000f13          	li	t5,0
   16b7c:	fffe8e93          	addi	t4,t4,-1 # ffff <_start-0x75>
   16b80:	00062703          	lw	a4,0(a2)
   16b84:	00082f83          	lw	t6,0(a6)
   16b88:	00468693          	addi	a3,a3,4
   16b8c:	01d775b3          	and	a1,a4,t4
   16b90:	01dff7b3          	and	a5,t6,t4
   16b94:	01e585b3          	add	a1,a1,t5
   16b98:	40f585b3          	sub	a1,a1,a5
   16b9c:	010fdf93          	srli	t6,t6,0x10
   16ba0:	01075793          	srli	a5,a4,0x10
   16ba4:	41f787b3          	sub	a5,a5,t6
   16ba8:	4105d713          	srai	a4,a1,0x10
   16bac:	00e787b3          	add	a5,a5,a4
   16bb0:	4107df13          	srai	t5,a5,0x10
   16bb4:	01d5f5b3          	and	a1,a1,t4
   16bb8:	01079793          	slli	a5,a5,0x10
   16bbc:	00b7e7b3          	or	a5,a5,a1
   16bc0:	00480813          	addi	a6,a6,4
   16bc4:	fef6ae23          	sw	a5,-4(a3)
   16bc8:	00460613          	addi	a2,a2,4
   16bcc:	fb186ae3          	bltu	a6,a7,16b80 <__mdiff+0xc0>
   16bd0:	000105b7          	lui	a1,0x10
   16bd4:	fff58593          	addi	a1,a1,-1 # ffff <_start-0x75>
   16bd8:	01c66c63          	bltu	a2,t3,16bf0 <__mdiff+0x130>
   16bdc:	ffc68693          	addi	a3,a3,-4
   16be0:	0006a783          	lw	a5,0(a3)
   16be4:	04078263          	beqz	a5,16c28 <__mdiff+0x168>
   16be8:	00652823          	sw	t1,16(a0)
   16bec:	f21ff06f          	j	16b0c <__mdiff+0x4c>
   16bf0:	00062783          	lw	a5,0(a2)
   16bf4:	00468693          	addi	a3,a3,4
   16bf8:	00460613          	addi	a2,a2,4
   16bfc:	00b7f733          	and	a4,a5,a1
   16c00:	01e70733          	add	a4,a4,t5
   16c04:	41075813          	srai	a6,a4,0x10
   16c08:	0107d793          	srli	a5,a5,0x10
   16c0c:	010787b3          	add	a5,a5,a6
   16c10:	4107df13          	srai	t5,a5,0x10
   16c14:	00b77733          	and	a4,a4,a1
   16c18:	01079793          	slli	a5,a5,0x10
   16c1c:	00e7e7b3          	or	a5,a5,a4
   16c20:	fef6ae23          	sw	a5,-4(a3)
   16c24:	fb5ff06f          	j	16bd8 <__mdiff+0x118>
   16c28:	fff30313          	addi	t1,t1,-1
   16c2c:	fb1ff06f          	j	16bdc <__mdiff+0x11c>

00016c30 <__ulp>:
   16c30:	7ff007b7          	lui	a5,0x7ff00
   16c34:	00b7f5b3          	and	a1,a5,a1
   16c38:	fcc007b7          	lui	a5,0xfcc00
   16c3c:	00f585b3          	add	a1,a1,a5
   16c40:	00b05863          	blez	a1,16c50 <__ulp+0x20>
   16c44:	00000793          	li	a5,0
   16c48:	00078513          	mv	a0,a5
   16c4c:	00008067          	ret
   16c50:	40b005b3          	neg	a1,a1
   16c54:	4145d793          	srai	a5,a1,0x14
   16c58:	01300713          	li	a4,19
   16c5c:	00f74863          	blt	a4,a5,16c6c <__ulp+0x3c>
   16c60:	000805b7          	lui	a1,0x80
   16c64:	40f5d5b3          	sra	a1,a1,a5
   16c68:	fddff06f          	j	16c44 <__ulp+0x14>
   16c6c:	fec78793          	addi	a5,a5,-20 # fcbfffec <__global_pointer$+0xfcbdce44>
   16c70:	01e00693          	li	a3,30
   16c74:	00000593          	li	a1,0
   16c78:	00100713          	li	a4,1
   16c7c:	00f6c663          	blt	a3,a5,16c88 <__ulp+0x58>
   16c80:	fff7c793          	not	a5,a5
   16c84:	00f71733          	sll	a4,a4,a5
   16c88:	00070793          	mv	a5,a4
   16c8c:	fbdff06f          	j	16c48 <__ulp+0x18>

00016c90 <__b2d>:
   16c90:	fd010113          	addi	sp,sp,-48
   16c94:	02912223          	sw	s1,36(sp)
   16c98:	01052483          	lw	s1,16(a0)
   16c9c:	01312e23          	sw	s3,28(sp)
   16ca0:	01450993          	addi	s3,a0,20
   16ca4:	00249493          	slli	s1,s1,0x2
   16ca8:	009984b3          	add	s1,s3,s1
   16cac:	02812423          	sw	s0,40(sp)
   16cb0:	ffc4a403          	lw	s0,-4(s1)
   16cb4:	03212023          	sw	s2,32(sp)
   16cb8:	00b12623          	sw	a1,12(sp)
   16cbc:	00040513          	mv	a0,s0
   16cc0:	02112623          	sw	ra,44(sp)
   16cc4:	841ff0ef          	jal	ra,16504 <__hi0bits>
   16cc8:	00c12583          	lw	a1,12(sp)
   16ccc:	02000793          	li	a5,32
   16cd0:	40a787b3          	sub	a5,a5,a0
   16cd4:	00f5a023          	sw	a5,0(a1) # 80000 <__global_pointer$+0x5ce58>
   16cd8:	00a00793          	li	a5,10
   16cdc:	ffc48913          	addi	s2,s1,-4
   16ce0:	04a7cc63          	blt	a5,a0,16d38 <__b2d+0xa8>
   16ce4:	00b00793          	li	a5,11
   16ce8:	40a787b3          	sub	a5,a5,a0
   16cec:	3ff00737          	lui	a4,0x3ff00
   16cf0:	00f456b3          	srl	a3,s0,a5
   16cf4:	00e6e6b3          	or	a3,a3,a4
   16cf8:	00000713          	li	a4,0
   16cfc:	0129f463          	bleu	s2,s3,16d04 <__b2d+0x74>
   16d00:	ff84a703          	lw	a4,-8(s1)
   16d04:	01550513          	addi	a0,a0,21
   16d08:	00a41533          	sll	a0,s0,a0
   16d0c:	00f757b3          	srl	a5,a4,a5
   16d10:	00f567b3          	or	a5,a0,a5
   16d14:	02c12083          	lw	ra,44(sp)
   16d18:	02812403          	lw	s0,40(sp)
   16d1c:	02412483          	lw	s1,36(sp)
   16d20:	02012903          	lw	s2,32(sp)
   16d24:	01c12983          	lw	s3,28(sp)
   16d28:	00078513          	mv	a0,a5
   16d2c:	00068593          	mv	a1,a3
   16d30:	03010113          	addi	sp,sp,48
   16d34:	00008067          	ret
   16d38:	00000793          	li	a5,0
   16d3c:	0129f663          	bleu	s2,s3,16d48 <__b2d+0xb8>
   16d40:	ff84a783          	lw	a5,-8(s1)
   16d44:	ff848913          	addi	s2,s1,-8
   16d48:	ff550513          	addi	a0,a0,-11
   16d4c:	02050e63          	beqz	a0,16d88 <__b2d+0xf8>
   16d50:	02000713          	li	a4,32
   16d54:	40a70633          	sub	a2,a4,a0
   16d58:	00a41433          	sll	s0,s0,a0
   16d5c:	3ff00737          	lui	a4,0x3ff00
   16d60:	00e46433          	or	s0,s0,a4
   16d64:	00c7d6b3          	srl	a3,a5,a2
   16d68:	00d466b3          	or	a3,s0,a3
   16d6c:	00000713          	li	a4,0
   16d70:	0129f463          	bleu	s2,s3,16d78 <__b2d+0xe8>
   16d74:	ffc92703          	lw	a4,-4(s2)
   16d78:	00a797b3          	sll	a5,a5,a0
   16d7c:	00c75733          	srl	a4,a4,a2
   16d80:	00e7e7b3          	or	a5,a5,a4
   16d84:	f91ff06f          	j	16d14 <__b2d+0x84>
   16d88:	3ff006b7          	lui	a3,0x3ff00
   16d8c:	00d466b3          	or	a3,s0,a3
   16d90:	f85ff06f          	j	16d14 <__b2d+0x84>

00016d94 <__d2b>:
   16d94:	fd010113          	addi	sp,sp,-48
   16d98:	02812423          	sw	s0,40(sp)
   16d9c:	00058413          	mv	s0,a1
   16da0:	00100593          	li	a1,1
   16da4:	02912223          	sw	s1,36(sp)
   16da8:	03212023          	sw	s2,32(sp)
   16dac:	00060493          	mv	s1,a2
   16db0:	01312e23          	sw	s3,28(sp)
   16db4:	01412c23          	sw	s4,24(sp)
   16db8:	00070913          	mv	s2,a4
   16dbc:	02112623          	sw	ra,44(sp)
   16dc0:	00068a13          	mv	s4,a3
   16dc4:	c70ff0ef          	jal	ra,16234 <_Balloc>
   16dc8:	00100737          	lui	a4,0x100
   16dcc:	fff70793          	addi	a5,a4,-1 # fffff <__global_pointer$+0xdce57>
   16dd0:	0097f7b3          	and	a5,a5,s1
   16dd4:	0144d493          	srli	s1,s1,0x14
   16dd8:	7ff4f493          	andi	s1,s1,2047
   16ddc:	00050993          	mv	s3,a0
   16de0:	08049a63          	bnez	s1,16e74 <__d2b+0xe0>
   16de4:	00f12623          	sw	a5,12(sp)
   16de8:	08040e63          	beqz	s0,16e84 <__d2b+0xf0>
   16dec:	00810513          	addi	a0,sp,8
   16df0:	00812423          	sw	s0,8(sp)
   16df4:	f84ff0ef          	jal	ra,16578 <__lo0bits>
   16df8:	00812683          	lw	a3,8(sp)
   16dfc:	08050063          	beqz	a0,16e7c <__d2b+0xe8>
   16e00:	00c12703          	lw	a4,12(sp)
   16e04:	02000793          	li	a5,32
   16e08:	40a787b3          	sub	a5,a5,a0
   16e0c:	00f717b3          	sll	a5,a4,a5
   16e10:	00d7e7b3          	or	a5,a5,a3
   16e14:	00a75733          	srl	a4,a4,a0
   16e18:	00f9aa23          	sw	a5,20(s3)
   16e1c:	00e12623          	sw	a4,12(sp)
   16e20:	00c12403          	lw	s0,12(sp)
   16e24:	0089ac23          	sw	s0,24(s3)
   16e28:	00803433          	snez	s0,s0
   16e2c:	00140413          	addi	s0,s0,1
   16e30:	0089a823          	sw	s0,16(s3)
   16e34:	06048a63          	beqz	s1,16ea8 <__d2b+0x114>
   16e38:	bcd48493          	addi	s1,s1,-1075
   16e3c:	00a484b3          	add	s1,s1,a0
   16e40:	03500793          	li	a5,53
   16e44:	009a2023          	sw	s1,0(s4)
   16e48:	40a78533          	sub	a0,a5,a0
   16e4c:	00a92023          	sw	a0,0(s2)
   16e50:	02c12083          	lw	ra,44(sp)
   16e54:	02812403          	lw	s0,40(sp)
   16e58:	00098513          	mv	a0,s3
   16e5c:	02412483          	lw	s1,36(sp)
   16e60:	02012903          	lw	s2,32(sp)
   16e64:	01c12983          	lw	s3,28(sp)
   16e68:	01812a03          	lw	s4,24(sp)
   16e6c:	03010113          	addi	sp,sp,48
   16e70:	00008067          	ret
   16e74:	00e7e7b3          	or	a5,a5,a4
   16e78:	f6dff06f          	j	16de4 <__d2b+0x50>
   16e7c:	00d9aa23          	sw	a3,20(s3)
   16e80:	fa1ff06f          	j	16e20 <__d2b+0x8c>
   16e84:	00c10513          	addi	a0,sp,12
   16e88:	ef0ff0ef          	jal	ra,16578 <__lo0bits>
   16e8c:	00c12783          	lw	a5,12(sp)
   16e90:	02050513          	addi	a0,a0,32
   16e94:	00100413          	li	s0,1
   16e98:	00f9aa23          	sw	a5,20(s3)
   16e9c:	00100793          	li	a5,1
   16ea0:	00f9a823          	sw	a5,16(s3)
   16ea4:	f91ff06f          	j	16e34 <__d2b+0xa0>
   16ea8:	00241793          	slli	a5,s0,0x2
   16eac:	bce50513          	addi	a0,a0,-1074
   16eb0:	00f987b3          	add	a5,s3,a5
   16eb4:	00aa2023          	sw	a0,0(s4)
   16eb8:	0107a503          	lw	a0,16(a5)
   16ebc:	00541413          	slli	s0,s0,0x5
   16ec0:	e44ff0ef          	jal	ra,16504 <__hi0bits>
   16ec4:	40a40433          	sub	s0,s0,a0
   16ec8:	00892023          	sw	s0,0(s2)
   16ecc:	f85ff06f          	j	16e50 <__d2b+0xbc>

00016ed0 <__ratio>:
   16ed0:	fd010113          	addi	sp,sp,-48
   16ed4:	03212023          	sw	s2,32(sp)
   16ed8:	00058913          	mv	s2,a1
   16edc:	00810593          	addi	a1,sp,8
   16ee0:	02112623          	sw	ra,44(sp)
   16ee4:	02812423          	sw	s0,40(sp)
   16ee8:	02912223          	sw	s1,36(sp)
   16eec:	01312e23          	sw	s3,28(sp)
   16ef0:	01412c23          	sw	s4,24(sp)
   16ef4:	00050a13          	mv	s4,a0
   16ef8:	d99ff0ef          	jal	ra,16c90 <__b2d>
   16efc:	00050993          	mv	s3,a0
   16f00:	00058493          	mv	s1,a1
   16f04:	00058413          	mv	s0,a1
   16f08:	00090513          	mv	a0,s2
   16f0c:	00c10593          	addi	a1,sp,12
   16f10:	d81ff0ef          	jal	ra,16c90 <__b2d>
   16f14:	01092783          	lw	a5,16(s2)
   16f18:	010a2703          	lw	a4,16(s4)
   16f1c:	00812683          	lw	a3,8(sp)
   16f20:	40f70733          	sub	a4,a4,a5
   16f24:	00c12783          	lw	a5,12(sp)
   16f28:	00571713          	slli	a4,a4,0x5
   16f2c:	40f686b3          	sub	a3,a3,a5
   16f30:	00d707b3          	add	a5,a4,a3
   16f34:	04f05463          	blez	a5,16f7c <__ratio+0xac>
   16f38:	01479793          	slli	a5,a5,0x14
   16f3c:	00058613          	mv	a2,a1
   16f40:	00978433          	add	s0,a5,s1
   16f44:	00060713          	mv	a4,a2
   16f48:	00040593          	mv	a1,s0
   16f4c:	00050613          	mv	a2,a0
   16f50:	00070693          	mv	a3,a4
   16f54:	00098513          	mv	a0,s3
   16f58:	32d050ef          	jal	ra,1ca84 <__divdf3>
   16f5c:	02c12083          	lw	ra,44(sp)
   16f60:	02812403          	lw	s0,40(sp)
   16f64:	02412483          	lw	s1,36(sp)
   16f68:	02012903          	lw	s2,32(sp)
   16f6c:	01c12983          	lw	s3,28(sp)
   16f70:	01812a03          	lw	s4,24(sp)
   16f74:	03010113          	addi	sp,sp,48
   16f78:	00008067          	ret
   16f7c:	fff00737          	lui	a4,0xfff00
   16f80:	02e787b3          	mul	a5,a5,a4
   16f84:	00b78633          	add	a2,a5,a1
   16f88:	fbdff06f          	j	16f44 <__ratio+0x74>

00016f8c <_mprec_log10>:
   16f8c:	ff010113          	addi	sp,sp,-16
   16f90:	00812423          	sw	s0,8(sp)
   16f94:	00112623          	sw	ra,12(sp)
   16f98:	01212223          	sw	s2,4(sp)
   16f9c:	01312023          	sw	s3,0(sp)
   16fa0:	01700793          	li	a5,23
   16fa4:	00050413          	mv	s0,a0
   16fa8:	02a7ca63          	blt	a5,a0,16fdc <_mprec_log10+0x50>
   16fac:	000217b7          	lui	a5,0x21
   16fb0:	00351413          	slli	s0,a0,0x3
   16fb4:	d1078793          	addi	a5,a5,-752 # 20d10 <p05.3228>
   16fb8:	00878433          	add	s0,a5,s0
   16fbc:	01042503          	lw	a0,16(s0)
   16fc0:	01442583          	lw	a1,20(s0)
   16fc4:	00c12083          	lw	ra,12(sp)
   16fc8:	00812403          	lw	s0,8(sp)
   16fcc:	00412903          	lw	s2,4(sp)
   16fd0:	00012983          	lw	s3,0(sp)
   16fd4:	01010113          	addi	sp,sp,16
   16fd8:	00008067          	ret
   16fdc:	000237b7          	lui	a5,0x23
   16fe0:	9a87a503          	lw	a0,-1624(a5) # 229a8 <__TMC_END__+0x4>
   16fe4:	9ac7a583          	lw	a1,-1620(a5)
   16fe8:	000237b7          	lui	a5,0x23
   16fec:	9b07a903          	lw	s2,-1616(a5) # 229b0 <__TMC_END__+0xc>
   16ff0:	9b47a983          	lw	s3,-1612(a5)
   16ff4:	00090613          	mv	a2,s2
   16ff8:	00098693          	mv	a3,s3
   16ffc:	fff40413          	addi	s0,s0,-1
   17000:	160060ef          	jal	ra,1d160 <__muldf3>
   17004:	fe0418e3          	bnez	s0,16ff4 <_mprec_log10+0x68>
   17008:	fbdff06f          	j	16fc4 <_mprec_log10+0x38>

0001700c <__copybits>:
   1700c:	fff58793          	addi	a5,a1,-1
   17010:	01062703          	lw	a4,16(a2)
   17014:	4057d793          	srai	a5,a5,0x5
   17018:	00178793          	addi	a5,a5,1
   1701c:	00279793          	slli	a5,a5,0x2
   17020:	01460693          	addi	a3,a2,20
   17024:	00271713          	slli	a4,a4,0x2
   17028:	00f507b3          	add	a5,a0,a5
   1702c:	00e68733          	add	a4,a3,a4
   17030:	00e6e663          	bltu	a3,a4,1703c <__copybits+0x30>
   17034:	00f56e63          	bltu	a0,a5,17050 <__copybits+0x44>
   17038:	00008067          	ret
   1703c:	00468693          	addi	a3,a3,4 # 3ff00004 <__global_pointer$+0x3fedce5c>
   17040:	ffc6a603          	lw	a2,-4(a3)
   17044:	00450513          	addi	a0,a0,4
   17048:	fec52e23          	sw	a2,-4(a0)
   1704c:	fe5ff06f          	j	17030 <__copybits+0x24>
   17050:	00450513          	addi	a0,a0,4
   17054:	fe052e23          	sw	zero,-4(a0)
   17058:	fddff06f          	j	17034 <__copybits+0x28>

0001705c <__any_on>:
   1705c:	01052683          	lw	a3,16(a0)
   17060:	4055d793          	srai	a5,a1,0x5
   17064:	01450713          	addi	a4,a0,20
   17068:	04f6c063          	blt	a3,a5,170a8 <__any_on+0x4c>
   1706c:	02d7d463          	ble	a3,a5,17094 <__any_on+0x38>
   17070:	01f5f593          	andi	a1,a1,31
   17074:	02058063          	beqz	a1,17094 <__any_on+0x38>
   17078:	00279693          	slli	a3,a5,0x2
   1707c:	00d706b3          	add	a3,a4,a3
   17080:	0006a603          	lw	a2,0(a3)
   17084:	00100513          	li	a0,1
   17088:	00b656b3          	srl	a3,a2,a1
   1708c:	00b695b3          	sll	a1,a3,a1
   17090:	02b61863          	bne	a2,a1,170c0 <__any_on+0x64>
   17094:	00279793          	slli	a5,a5,0x2
   17098:	00f707b3          	add	a5,a4,a5
   1709c:	00f76a63          	bltu	a4,a5,170b0 <__any_on+0x54>
   170a0:	00000513          	li	a0,0
   170a4:	00008067          	ret
   170a8:	00068793          	mv	a5,a3
   170ac:	fe9ff06f          	j	17094 <__any_on+0x38>
   170b0:	ffc78793          	addi	a5,a5,-4
   170b4:	0007a683          	lw	a3,0(a5)
   170b8:	fe0682e3          	beqz	a3,1709c <__any_on+0x40>
   170bc:	00100513          	li	a0,1
   170c0:	00008067          	ret

000170c4 <_realloc_r>:
   170c4:	fc010113          	addi	sp,sp,-64
   170c8:	02812c23          	sw	s0,56(sp)
   170cc:	02112e23          	sw	ra,60(sp)
   170d0:	00058413          	mv	s0,a1
   170d4:	02912a23          	sw	s1,52(sp)
   170d8:	03212823          	sw	s2,48(sp)
   170dc:	03312623          	sw	s3,44(sp)
   170e0:	03412423          	sw	s4,40(sp)
   170e4:	03512223          	sw	s5,36(sp)
   170e8:	03612023          	sw	s6,32(sp)
   170ec:	01712e23          	sw	s7,28(sp)
   170f0:	01812c23          	sw	s8,24(sp)
   170f4:	00060593          	mv	a1,a2
   170f8:	02041a63          	bnez	s0,1712c <_realloc_r+0x68>
   170fc:	03812403          	lw	s0,56(sp)
   17100:	03c12083          	lw	ra,60(sp)
   17104:	03412483          	lw	s1,52(sp)
   17108:	03012903          	lw	s2,48(sp)
   1710c:	02c12983          	lw	s3,44(sp)
   17110:	02812a03          	lw	s4,40(sp)
   17114:	02412a83          	lw	s5,36(sp)
   17118:	02012b03          	lw	s6,32(sp)
   1711c:	01c12b83          	lw	s7,28(sp)
   17120:	01812c03          	lw	s8,24(sp)
   17124:	04010113          	addi	sp,sp,64
   17128:	8e9fe06f          	j	15a10 <_malloc_r>
   1712c:	00050a93          	mv	s5,a0
   17130:	00c12623          	sw	a2,12(sp)
   17134:	8f8ff0ef          	jal	ra,1622c <__malloc_lock>
   17138:	00c12583          	lw	a1,12(sp)
   1713c:	ffc42683          	lw	a3,-4(s0)
   17140:	01600793          	li	a5,22
   17144:	00b58993          	addi	s3,a1,11
   17148:	ff840b93          	addi	s7,s0,-8
   1714c:	ffc6f913          	andi	s2,a3,-4
   17150:	0537f663          	bleu	s3,a5,1719c <_realloc_r+0xd8>
   17154:	ff89fb13          	andi	s6,s3,-8
   17158:	040b5463          	bgez	s6,171a0 <_realloc_r+0xdc>
   1715c:	00c00793          	li	a5,12
   17160:	00faa023          	sw	a5,0(s5)
   17164:	00000a13          	li	s4,0
   17168:	03c12083          	lw	ra,60(sp)
   1716c:	03812403          	lw	s0,56(sp)
   17170:	000a0513          	mv	a0,s4
   17174:	03412483          	lw	s1,52(sp)
   17178:	03012903          	lw	s2,48(sp)
   1717c:	02c12983          	lw	s3,44(sp)
   17180:	02812a03          	lw	s4,40(sp)
   17184:	02412a83          	lw	s5,36(sp)
   17188:	02012b03          	lw	s6,32(sp)
   1718c:	01c12b83          	lw	s7,28(sp)
   17190:	01812c03          	lw	s8,24(sp)
   17194:	04010113          	addi	sp,sp,64
   17198:	00008067          	ret
   1719c:	01000b13          	li	s6,16
   171a0:	fabb6ee3          	bltu	s6,a1,1715c <_realloc_r+0x98>
   171a4:	45695c63          	ble	s6,s2,175fc <_realloc_r+0x538>
   171a8:	00022c37          	lui	s8,0x22
   171ac:	59cc0713          	addi	a4,s8,1436 # 2259c <__malloc_av_>
   171b0:	00872603          	lw	a2,8(a4) # fff00008 <__global_pointer$+0xffedce60>
   171b4:	012b87b3          	add	a5,s7,s2
   171b8:	0047a703          	lw	a4,4(a5)
   171bc:	59cc0c13          	addi	s8,s8,1436
   171c0:	00f60c63          	beq	a2,a5,171d8 <_realloc_r+0x114>
   171c4:	ffe77513          	andi	a0,a4,-2
   171c8:	00a78533          	add	a0,a5,a0
   171cc:	00452503          	lw	a0,4(a0)
   171d0:	00157513          	andi	a0,a0,1
   171d4:	0a051a63          	bnez	a0,17288 <_realloc_r+0x1c4>
   171d8:	ffc77713          	andi	a4,a4,-4
   171dc:	00e909b3          	add	s3,s2,a4
   171e0:	04f61063          	bne	a2,a5,17220 <_realloc_r+0x15c>
   171e4:	010b0513          	addi	a0,s6,16
   171e8:	0aa9c463          	blt	s3,a0,17290 <_realloc_r+0x1cc>
   171ec:	016b8bb3          	add	s7,s7,s6
   171f0:	416989b3          	sub	s3,s3,s6
   171f4:	017c2423          	sw	s7,8(s8)
   171f8:	0019e993          	ori	s3,s3,1
   171fc:	013ba223          	sw	s3,4(s7)
   17200:	ffc42983          	lw	s3,-4(s0)
   17204:	000a8513          	mv	a0,s5
   17208:	00040a13          	mv	s4,s0
   1720c:	0019f993          	andi	s3,s3,1
   17210:	0169e9b3          	or	s3,s3,s6
   17214:	ff342e23          	sw	s3,-4(s0)
   17218:	818ff0ef          	jal	ra,16230 <__malloc_unlock>
   1721c:	f4dff06f          	j	17168 <_realloc_r+0xa4>
   17220:	0769c863          	blt	s3,s6,17290 <_realloc_r+0x1cc>
   17224:	00c7a703          	lw	a4,12(a5)
   17228:	0087a783          	lw	a5,8(a5)
   1722c:	00e7a623          	sw	a4,12(a5)
   17230:	00f72423          	sw	a5,8(a4)
   17234:	004ba703          	lw	a4,4(s7)
   17238:	416986b3          	sub	a3,s3,s6
   1723c:	00f00613          	li	a2,15
   17240:	00177713          	andi	a4,a4,1
   17244:	013b87b3          	add	a5,s7,s3
   17248:	3ad67e63          	bleu	a3,a2,17604 <_realloc_r+0x540>
   1724c:	00eb69b3          	or	s3,s6,a4
   17250:	013ba223          	sw	s3,4(s7)
   17254:	016b85b3          	add	a1,s7,s6
   17258:	0016e693          	ori	a3,a3,1
   1725c:	00d5a223          	sw	a3,4(a1)
   17260:	0047a703          	lw	a4,4(a5)
   17264:	00858593          	addi	a1,a1,8
   17268:	000a8513          	mv	a0,s5
   1726c:	00176713          	ori	a4,a4,1
   17270:	00e7a223          	sw	a4,4(a5)
   17274:	cddfb0ef          	jal	ra,12f50 <_free_r>
   17278:	000a8513          	mv	a0,s5
   1727c:	fb5fe0ef          	jal	ra,16230 <__malloc_unlock>
   17280:	008b8a13          	addi	s4,s7,8
   17284:	ee5ff06f          	j	17168 <_realloc_r+0xa4>
   17288:	00000713          	li	a4,0
   1728c:	00000793          	li	a5,0
   17290:	0016f693          	andi	a3,a3,1
   17294:	28069263          	bnez	a3,17518 <_realloc_r+0x454>
   17298:	ff842483          	lw	s1,-8(s0)
   1729c:	409b84b3          	sub	s1,s7,s1
   172a0:	0044aa03          	lw	s4,4(s1)
   172a4:	ffca7a13          	andi	s4,s4,-4
   172a8:	012a0a33          	add	s4,s4,s2
   172ac:	1a078c63          	beqz	a5,17464 <_realloc_r+0x3a0>
   172b0:	014709b3          	add	s3,a4,s4
   172b4:	0ef61663          	bne	a2,a5,173a0 <_realloc_r+0x2dc>
   172b8:	010b0793          	addi	a5,s6,16
   172bc:	1af9c463          	blt	s3,a5,17464 <_realloc_r+0x3a0>
   172c0:	0084a703          	lw	a4,8(s1)
   172c4:	00c4a783          	lw	a5,12(s1)
   172c8:	ffc90613          	addi	a2,s2,-4
   172cc:	00848a13          	addi	s4,s1,8
   172d0:	00f72623          	sw	a5,12(a4)
   172d4:	00e7a423          	sw	a4,8(a5)
   172d8:	02400713          	li	a4,36
   172dc:	0ac76a63          	bltu	a4,a2,17390 <_realloc_r+0x2cc>
   172e0:	01300693          	li	a3,19
   172e4:	000a0793          	mv	a5,s4
   172e8:	02c6f263          	bleu	a2,a3,1730c <_realloc_r+0x248>
   172ec:	00042783          	lw	a5,0(s0)
   172f0:	00f4a423          	sw	a5,8(s1)
   172f4:	00442783          	lw	a5,4(s0)
   172f8:	00f4a623          	sw	a5,12(s1)
   172fc:	01b00793          	li	a5,27
   17300:	04c7ea63          	bltu	a5,a2,17354 <_realloc_r+0x290>
   17304:	00840413          	addi	s0,s0,8
   17308:	01048793          	addi	a5,s1,16
   1730c:	00042703          	lw	a4,0(s0)
   17310:	00e7a023          	sw	a4,0(a5)
   17314:	00442703          	lw	a4,4(s0)
   17318:	00e7a223          	sw	a4,4(a5)
   1731c:	00842703          	lw	a4,8(s0)
   17320:	00e7a423          	sw	a4,8(a5)
   17324:	016487b3          	add	a5,s1,s6
   17328:	416989b3          	sub	s3,s3,s6
   1732c:	00fc2423          	sw	a5,8(s8)
   17330:	0019e993          	ori	s3,s3,1
   17334:	0137a223          	sw	s3,4(a5)
   17338:	0044a783          	lw	a5,4(s1)
   1733c:	0017f793          	andi	a5,a5,1
   17340:	0167e9b3          	or	s3,a5,s6
   17344:	0134a223          	sw	s3,4(s1)
   17348:	000a8513          	mv	a0,s5
   1734c:	ee5fe0ef          	jal	ra,16230 <__malloc_unlock>
   17350:	e19ff06f          	j	17168 <_realloc_r+0xa4>
   17354:	00842783          	lw	a5,8(s0)
   17358:	00f4a823          	sw	a5,16(s1)
   1735c:	00c42783          	lw	a5,12(s0)
   17360:	00f4aa23          	sw	a5,20(s1)
   17364:	00e60863          	beq	a2,a4,17374 <_realloc_r+0x2b0>
   17368:	01040413          	addi	s0,s0,16
   1736c:	01848793          	addi	a5,s1,24
   17370:	f9dff06f          	j	1730c <_realloc_r+0x248>
   17374:	01042783          	lw	a5,16(s0)
   17378:	01840413          	addi	s0,s0,24
   1737c:	00f4ac23          	sw	a5,24(s1)
   17380:	ffc42703          	lw	a4,-4(s0)
   17384:	02048793          	addi	a5,s1,32
   17388:	00e4ae23          	sw	a4,28(s1)
   1738c:	f81ff06f          	j	1730c <_realloc_r+0x248>
   17390:	00040593          	mv	a1,s0
   17394:	000a0513          	mv	a0,s4
   17398:	e41fe0ef          	jal	ra,161d8 <memmove>
   1739c:	f89ff06f          	j	17324 <_realloc_r+0x260>
   173a0:	0d69c263          	blt	s3,s6,17464 <_realloc_r+0x3a0>
   173a4:	00c7a703          	lw	a4,12(a5)
   173a8:	0087a783          	lw	a5,8(a5)
   173ac:	ffc90613          	addi	a2,s2,-4
   173b0:	00848513          	addi	a0,s1,8
   173b4:	00e7a623          	sw	a4,12(a5)
   173b8:	00f72423          	sw	a5,8(a4)
   173bc:	0084a703          	lw	a4,8(s1)
   173c0:	00c4a783          	lw	a5,12(s1)
   173c4:	00f72623          	sw	a5,12(a4)
   173c8:	00e7a423          	sw	a4,8(a5)
   173cc:	02400793          	li	a5,36
   173d0:	08c7e463          	bltu	a5,a2,17458 <_realloc_r+0x394>
   173d4:	01300713          	li	a4,19
   173d8:	02c77263          	bleu	a2,a4,173fc <_realloc_r+0x338>
   173dc:	00042703          	lw	a4,0(s0)
   173e0:	00e4a423          	sw	a4,8(s1)
   173e4:	00442703          	lw	a4,4(s0)
   173e8:	00e4a623          	sw	a4,12(s1)
   173ec:	01b00713          	li	a4,27
   173f0:	02c76663          	bltu	a4,a2,1741c <_realloc_r+0x358>
   173f4:	00840413          	addi	s0,s0,8
   173f8:	01048513          	addi	a0,s1,16
   173fc:	00042783          	lw	a5,0(s0)
   17400:	00f52023          	sw	a5,0(a0)
   17404:	00442783          	lw	a5,4(s0)
   17408:	00f52223          	sw	a5,4(a0)
   1740c:	00842783          	lw	a5,8(s0)
   17410:	00f52423          	sw	a5,8(a0)
   17414:	00048b93          	mv	s7,s1
   17418:	e1dff06f          	j	17234 <_realloc_r+0x170>
   1741c:	00842703          	lw	a4,8(s0)
   17420:	00e4a823          	sw	a4,16(s1)
   17424:	00c42703          	lw	a4,12(s0)
   17428:	00e4aa23          	sw	a4,20(s1)
   1742c:	00f60863          	beq	a2,a5,1743c <_realloc_r+0x378>
   17430:	01040413          	addi	s0,s0,16
   17434:	01848513          	addi	a0,s1,24
   17438:	fc5ff06f          	j	173fc <_realloc_r+0x338>
   1743c:	01042783          	lw	a5,16(s0)
   17440:	02048513          	addi	a0,s1,32
   17444:	01840413          	addi	s0,s0,24
   17448:	00f4ac23          	sw	a5,24(s1)
   1744c:	ffc42783          	lw	a5,-4(s0)
   17450:	00f4ae23          	sw	a5,28(s1)
   17454:	fa9ff06f          	j	173fc <_realloc_r+0x338>
   17458:	00040593          	mv	a1,s0
   1745c:	d7dfe0ef          	jal	ra,161d8 <memmove>
   17460:	fb5ff06f          	j	17414 <_realloc_r+0x350>
   17464:	0b6a4a63          	blt	s4,s6,17518 <_realloc_r+0x454>
   17468:	00c4a783          	lw	a5,12(s1)
   1746c:	0084a703          	lw	a4,8(s1)
   17470:	ffc90613          	addi	a2,s2,-4
   17474:	00848513          	addi	a0,s1,8
   17478:	00f72623          	sw	a5,12(a4)
   1747c:	00e7a423          	sw	a4,8(a5)
   17480:	02400793          	li	a5,36
   17484:	08c7e463          	bltu	a5,a2,1750c <_realloc_r+0x448>
   17488:	01300713          	li	a4,19
   1748c:	02c77263          	bleu	a2,a4,174b0 <_realloc_r+0x3ec>
   17490:	00042703          	lw	a4,0(s0)
   17494:	00e4a423          	sw	a4,8(s1)
   17498:	00442703          	lw	a4,4(s0)
   1749c:	00e4a623          	sw	a4,12(s1)
   174a0:	01b00713          	li	a4,27
   174a4:	02c76663          	bltu	a4,a2,174d0 <_realloc_r+0x40c>
   174a8:	00840413          	addi	s0,s0,8
   174ac:	01048513          	addi	a0,s1,16
   174b0:	00042783          	lw	a5,0(s0)
   174b4:	00f52023          	sw	a5,0(a0)
   174b8:	00442783          	lw	a5,4(s0)
   174bc:	00f52223          	sw	a5,4(a0)
   174c0:	00842783          	lw	a5,8(s0)
   174c4:	00f52423          	sw	a5,8(a0)
   174c8:	000a0993          	mv	s3,s4
   174cc:	f49ff06f          	j	17414 <_realloc_r+0x350>
   174d0:	00842703          	lw	a4,8(s0)
   174d4:	00e4a823          	sw	a4,16(s1)
   174d8:	00c42703          	lw	a4,12(s0)
   174dc:	00e4aa23          	sw	a4,20(s1)
   174e0:	00f60863          	beq	a2,a5,174f0 <_realloc_r+0x42c>
   174e4:	01040413          	addi	s0,s0,16
   174e8:	01848513          	addi	a0,s1,24
   174ec:	fc5ff06f          	j	174b0 <_realloc_r+0x3ec>
   174f0:	01042783          	lw	a5,16(s0)
   174f4:	02048513          	addi	a0,s1,32
   174f8:	01840413          	addi	s0,s0,24
   174fc:	00f4ac23          	sw	a5,24(s1)
   17500:	ffc42783          	lw	a5,-4(s0)
   17504:	00f4ae23          	sw	a5,28(s1)
   17508:	fa9ff06f          	j	174b0 <_realloc_r+0x3ec>
   1750c:	00040593          	mv	a1,s0
   17510:	cc9fe0ef          	jal	ra,161d8 <memmove>
   17514:	fb5ff06f          	j	174c8 <_realloc_r+0x404>
   17518:	000a8513          	mv	a0,s5
   1751c:	cf4fe0ef          	jal	ra,15a10 <_malloc_r>
   17520:	00050a13          	mv	s4,a0
   17524:	e20502e3          	beqz	a0,17348 <_realloc_r+0x284>
   17528:	ffc42783          	lw	a5,-4(s0)
   1752c:	ff850713          	addi	a4,a0,-8
   17530:	ffe7f793          	andi	a5,a5,-2
   17534:	00fb87b3          	add	a5,s7,a5
   17538:	00e79a63          	bne	a5,a4,1754c <_realloc_r+0x488>
   1753c:	ffc52983          	lw	s3,-4(a0)
   17540:	ffc9f993          	andi	s3,s3,-4
   17544:	012989b3          	add	s3,s3,s2
   17548:	cedff06f          	j	17234 <_realloc_r+0x170>
   1754c:	ffc90613          	addi	a2,s2,-4
   17550:	02400793          	li	a5,36
   17554:	08c7ee63          	bltu	a5,a2,175f0 <_realloc_r+0x52c>
   17558:	01300713          	li	a4,19
   1755c:	08c77463          	bleu	a2,a4,175e4 <_realloc_r+0x520>
   17560:	00042703          	lw	a4,0(s0)
   17564:	00e52023          	sw	a4,0(a0)
   17568:	00442703          	lw	a4,4(s0)
   1756c:	00e52223          	sw	a4,4(a0)
   17570:	01b00713          	li	a4,27
   17574:	02c76a63          	bltu	a4,a2,175a8 <_realloc_r+0x4e4>
   17578:	00840713          	addi	a4,s0,8
   1757c:	00850793          	addi	a5,a0,8
   17580:	00072683          	lw	a3,0(a4)
   17584:	00d7a023          	sw	a3,0(a5)
   17588:	00472683          	lw	a3,4(a4)
   1758c:	00d7a223          	sw	a3,4(a5)
   17590:	00872703          	lw	a4,8(a4)
   17594:	00e7a423          	sw	a4,8(a5)
   17598:	00040593          	mv	a1,s0
   1759c:	000a8513          	mv	a0,s5
   175a0:	9b1fb0ef          	jal	ra,12f50 <_free_r>
   175a4:	da5ff06f          	j	17348 <_realloc_r+0x284>
   175a8:	00842703          	lw	a4,8(s0)
   175ac:	00e52423          	sw	a4,8(a0)
   175b0:	00c42703          	lw	a4,12(s0)
   175b4:	00e52623          	sw	a4,12(a0)
   175b8:	00f60863          	beq	a2,a5,175c8 <_realloc_r+0x504>
   175bc:	01040713          	addi	a4,s0,16
   175c0:	01050793          	addi	a5,a0,16
   175c4:	fbdff06f          	j	17580 <_realloc_r+0x4bc>
   175c8:	01042783          	lw	a5,16(s0)
   175cc:	01840713          	addi	a4,s0,24
   175d0:	00f52823          	sw	a5,16(a0)
   175d4:	01442683          	lw	a3,20(s0)
   175d8:	01850793          	addi	a5,a0,24
   175dc:	00d52a23          	sw	a3,20(a0)
   175e0:	fa1ff06f          	j	17580 <_realloc_r+0x4bc>
   175e4:	00050793          	mv	a5,a0
   175e8:	00040713          	mv	a4,s0
   175ec:	f95ff06f          	j	17580 <_realloc_r+0x4bc>
   175f0:	00040593          	mv	a1,s0
   175f4:	be5fe0ef          	jal	ra,161d8 <memmove>
   175f8:	fa1ff06f          	j	17598 <_realloc_r+0x4d4>
   175fc:	00090993          	mv	s3,s2
   17600:	c35ff06f          	j	17234 <_realloc_r+0x170>
   17604:	00e9e9b3          	or	s3,s3,a4
   17608:	013ba223          	sw	s3,4(s7)
   1760c:	0047a703          	lw	a4,4(a5)
   17610:	00176713          	ori	a4,a4,1
   17614:	00e7a223          	sw	a4,4(a5)
   17618:	c61ff06f          	j	17278 <_realloc_r+0x1b4>

0001761c <_sbrk_r>:
   1761c:	ff010113          	addi	sp,sp,-16
   17620:	00812423          	sw	s0,8(sp)
   17624:	00912223          	sw	s1,4(sp)
   17628:	00050493          	mv	s1,a0
   1762c:	00058513          	mv	a0,a1
   17630:	00112623          	sw	ra,12(sp)
   17634:	8801a223          	sw	zero,-1916(gp) # 22a2c <errno>
   17638:	281040ef          	jal	ra,1c0b8 <_sbrk>
   1763c:	fff00793          	li	a5,-1
   17640:	00f51863          	bne	a0,a5,17650 <_sbrk_r+0x34>
   17644:	8841a783          	lw	a5,-1916(gp) # 22a2c <errno>
   17648:	00078463          	beqz	a5,17650 <_sbrk_r+0x34>
   1764c:	00f4a023          	sw	a5,0(s1)
   17650:	00c12083          	lw	ra,12(sp)
   17654:	00812403          	lw	s0,8(sp)
   17658:	00412483          	lw	s1,4(sp)
   1765c:	01010113          	addi	sp,sp,16
   17660:	00008067          	ret

00017664 <frexp>:
   17664:	ff010113          	addi	sp,sp,-16
   17668:	00912223          	sw	s1,4(sp)
   1766c:	800004b7          	lui	s1,0x80000
   17670:	00812423          	sw	s0,8(sp)
   17674:	00112623          	sw	ra,12(sp)
   17678:	fff4c493          	not	s1,s1
   1767c:	00b4f733          	and	a4,s1,a1
   17680:	00062023          	sw	zero,0(a2)
   17684:	7ff00837          	lui	a6,0x7ff00
   17688:	00050693          	mv	a3,a0
   1768c:	00058793          	mv	a5,a1
   17690:	00060413          	mv	s0,a2
   17694:	07075263          	ble	a6,a4,176f8 <frexp+0x94>
   17698:	00a76833          	or	a6,a4,a0
   1769c:	04080e63          	beqz	a6,176f8 <frexp+0x94>
   176a0:	001007b7          	lui	a5,0x100
   176a4:	00058613          	mv	a2,a1
   176a8:	02f75463          	ble	a5,a4,176d0 <frexp+0x6c>
   176ac:	000237b7          	lui	a5,0x23
   176b0:	9b87a603          	lw	a2,-1608(a5) # 229b8 <__TMC_END__+0x14>
   176b4:	9bc7a683          	lw	a3,-1604(a5)
   176b8:	2a9050ef          	jal	ra,1d160 <__muldf3>
   176bc:	fca00793          	li	a5,-54
   176c0:	00050693          	mv	a3,a0
   176c4:	00058613          	mv	a2,a1
   176c8:	00b4f733          	and	a4,s1,a1
   176cc:	00f42023          	sw	a5,0(s0)
   176d0:	00042783          	lw	a5,0(s0)
   176d4:	41475713          	srai	a4,a4,0x14
   176d8:	c0270713          	addi	a4,a4,-1022
   176dc:	00e78733          	add	a4,a5,a4
   176e0:	801007b7          	lui	a5,0x80100
   176e4:	fff78793          	addi	a5,a5,-1 # 800fffff <__global_pointer$+0x800dce57>
   176e8:	00f67633          	and	a2,a2,a5
   176ec:	3fe007b7          	lui	a5,0x3fe00
   176f0:	00e42023          	sw	a4,0(s0)
   176f4:	00f667b3          	or	a5,a2,a5
   176f8:	00c12083          	lw	ra,12(sp)
   176fc:	00812403          	lw	s0,8(sp)
   17700:	00412483          	lw	s1,4(sp)
   17704:	00068513          	mv	a0,a3
   17708:	00078593          	mv	a1,a5
   1770c:	01010113          	addi	sp,sp,16
   17710:	00008067          	ret

00017714 <_sprintf_r>:
   17714:	f6010113          	addi	sp,sp,-160
   17718:	08f12a23          	sw	a5,148(sp)
   1771c:	800007b7          	lui	a5,0x80000
   17720:	fff7c793          	not	a5,a5
   17724:	00f12e23          	sw	a5,28(sp)
   17728:	00f12823          	sw	a5,16(sp)
   1772c:	ffff07b7          	lui	a5,0xffff0
   17730:	08d12623          	sw	a3,140(sp)
   17734:	00b12423          	sw	a1,8(sp)
   17738:	00b12c23          	sw	a1,24(sp)
   1773c:	20878793          	addi	a5,a5,520 # ffff0208 <__global_pointer$+0xfffcd060>
   17740:	08c10693          	addi	a3,sp,140
   17744:	00810593          	addi	a1,sp,8
   17748:	06112e23          	sw	ra,124(sp)
   1774c:	00f12a23          	sw	a5,20(sp)
   17750:	08e12823          	sw	a4,144(sp)
   17754:	09012c23          	sw	a6,152(sp)
   17758:	09112e23          	sw	a7,156(sp)
   1775c:	00d12223          	sw	a3,4(sp)
   17760:	3a4000ef          	jal	ra,17b04 <_svfprintf_r>
   17764:	00812783          	lw	a5,8(sp)
   17768:	00078023          	sb	zero,0(a5)
   1776c:	07c12083          	lw	ra,124(sp)
   17770:	0a010113          	addi	sp,sp,160
   17774:	00008067          	ret

00017778 <sprintf>:
   17778:	f6010113          	addi	sp,sp,-160
   1777c:	08f12a23          	sw	a5,148(sp)
   17780:	800007b7          	lui	a5,0x80000
   17784:	fff7c793          	not	a5,a5
   17788:	00f12e23          	sw	a5,28(sp)
   1778c:	00f12823          	sw	a5,16(sp)
   17790:	ffff07b7          	lui	a5,0xffff0
   17794:	20878793          	addi	a5,a5,520 # ffff0208 <__global_pointer$+0xfffcd060>
   17798:	00f12a23          	sw	a5,20(sp)
   1779c:	00a12423          	sw	a0,8(sp)
   177a0:	00a12c23          	sw	a0,24(sp)
   177a4:	8201a503          	lw	a0,-2016(gp) # 229c8 <_impure_ptr>
   177a8:	08c12423          	sw	a2,136(sp)
   177ac:	08d12623          	sw	a3,140(sp)
   177b0:	00058613          	mv	a2,a1
   177b4:	08810693          	addi	a3,sp,136
   177b8:	00810593          	addi	a1,sp,8
   177bc:	06112e23          	sw	ra,124(sp)
   177c0:	08e12823          	sw	a4,144(sp)
   177c4:	09012c23          	sw	a6,152(sp)
   177c8:	09112e23          	sw	a7,156(sp)
   177cc:	00d12223          	sw	a3,4(sp)
   177d0:	334000ef          	jal	ra,17b04 <_svfprintf_r>
   177d4:	00812783          	lw	a5,8(sp)
   177d8:	00078023          	sb	zero,0(a5)
   177dc:	07c12083          	lw	ra,124(sp)
   177e0:	0a010113          	addi	sp,sp,160
   177e4:	00008067          	ret

000177e8 <__sread>:
   177e8:	ff010113          	addi	sp,sp,-16
   177ec:	00812423          	sw	s0,8(sp)
   177f0:	00058413          	mv	s0,a1
   177f4:	00e59583          	lh	a1,14(a1)
   177f8:	00112623          	sw	ra,12(sp)
   177fc:	580030ef          	jal	ra,1ad7c <_read_r>
   17800:	02054063          	bltz	a0,17820 <__sread+0x38>
   17804:	05042783          	lw	a5,80(s0)
   17808:	00a787b3          	add	a5,a5,a0
   1780c:	04f42823          	sw	a5,80(s0)
   17810:	00c12083          	lw	ra,12(sp)
   17814:	00812403          	lw	s0,8(sp)
   17818:	01010113          	addi	sp,sp,16
   1781c:	00008067          	ret
   17820:	00c45783          	lhu	a5,12(s0)
   17824:	fffff737          	lui	a4,0xfffff
   17828:	fff70713          	addi	a4,a4,-1 # ffffefff <__global_pointer$+0xfffdbe57>
   1782c:	00e7f7b3          	and	a5,a5,a4
   17830:	00f41623          	sh	a5,12(s0)
   17834:	fddff06f          	j	17810 <__sread+0x28>

00017838 <__seofread>:
   17838:	00000513          	li	a0,0
   1783c:	00008067          	ret

00017840 <__swrite>:
   17840:	00c5d783          	lhu	a5,12(a1)
   17844:	fe010113          	addi	sp,sp,-32
   17848:	00812c23          	sw	s0,24(sp)
   1784c:	00912a23          	sw	s1,20(sp)
   17850:	01212823          	sw	s2,16(sp)
   17854:	01312623          	sw	s3,12(sp)
   17858:	00112e23          	sw	ra,28(sp)
   1785c:	1007f793          	andi	a5,a5,256
   17860:	00050493          	mv	s1,a0
   17864:	00058413          	mv	s0,a1
   17868:	00060913          	mv	s2,a2
   1786c:	00068993          	mv	s3,a3
   17870:	00078a63          	beqz	a5,17884 <__swrite+0x44>
   17874:	00e59583          	lh	a1,14(a1)
   17878:	00200693          	li	a3,2
   1787c:	00000613          	li	a2,0
   17880:	4ac030ef          	jal	ra,1ad2c <_lseek_r>
   17884:	00c45783          	lhu	a5,12(s0)
   17888:	fffff737          	lui	a4,0xfffff
   1788c:	fff70713          	addi	a4,a4,-1 # ffffefff <__global_pointer$+0xfffdbe57>
   17890:	00e7f7b3          	and	a5,a5,a4
   17894:	00f41623          	sh	a5,12(s0)
   17898:	00e41583          	lh	a1,14(s0)
   1789c:	01812403          	lw	s0,24(sp)
   178a0:	01c12083          	lw	ra,28(sp)
   178a4:	00098693          	mv	a3,s3
   178a8:	00090613          	mv	a2,s2
   178ac:	00c12983          	lw	s3,12(sp)
   178b0:	01012903          	lw	s2,16(sp)
   178b4:	00048513          	mv	a0,s1
   178b8:	01412483          	lw	s1,20(sp)
   178bc:	02010113          	addi	sp,sp,32
   178c0:	0280306f          	j	1a8e8 <_write_r>

000178c4 <__sseek>:
   178c4:	ff010113          	addi	sp,sp,-16
   178c8:	00812423          	sw	s0,8(sp)
   178cc:	00058413          	mv	s0,a1
   178d0:	00e59583          	lh	a1,14(a1)
   178d4:	00112623          	sw	ra,12(sp)
   178d8:	454030ef          	jal	ra,1ad2c <_lseek_r>
   178dc:	fff00793          	li	a5,-1
   178e0:	00c45703          	lhu	a4,12(s0)
   178e4:	02f51263          	bne	a0,a5,17908 <__sseek+0x44>
   178e8:	fffff7b7          	lui	a5,0xfffff
   178ec:	fff78793          	addi	a5,a5,-1 # ffffefff <__global_pointer$+0xfffdbe57>
   178f0:	00e7f7b3          	and	a5,a5,a4
   178f4:	00f41623          	sh	a5,12(s0)
   178f8:	00c12083          	lw	ra,12(sp)
   178fc:	00812403          	lw	s0,8(sp)
   17900:	01010113          	addi	sp,sp,16
   17904:	00008067          	ret
   17908:	000017b7          	lui	a5,0x1
   1790c:	00f767b3          	or	a5,a4,a5
   17910:	00f41623          	sh	a5,12(s0)
   17914:	04a42823          	sw	a0,80(s0)
   17918:	fe1ff06f          	j	178f8 <__sseek+0x34>

0001791c <__sclose>:
   1791c:	00e59583          	lh	a1,14(a1)
   17920:	0b40306f          	j	1a9d4 <_close_r>

00017924 <strcmp>:
   17924:	00b56733          	or	a4,a0,a1
   17928:	fff00393          	li	t2,-1
   1792c:	00377713          	andi	a4,a4,3
   17930:	10071063          	bnez	a4,17a30 <strcmp+0x10c>
   17934:	7f7f87b7          	lui	a5,0x7f7f8
   17938:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__global_pointer$+0x7f7d4dd7>
   1793c:	00052603          	lw	a2,0(a0)
   17940:	0005a683          	lw	a3,0(a1)
   17944:	00f672b3          	and	t0,a2,a5
   17948:	00f66333          	or	t1,a2,a5
   1794c:	00f282b3          	add	t0,t0,a5
   17950:	0062e2b3          	or	t0,t0,t1
   17954:	10729263          	bne	t0,t2,17a58 <strcmp+0x134>
   17958:	08d61663          	bne	a2,a3,179e4 <strcmp+0xc0>
   1795c:	00452603          	lw	a2,4(a0)
   17960:	0045a683          	lw	a3,4(a1)
   17964:	00f672b3          	and	t0,a2,a5
   17968:	00f66333          	or	t1,a2,a5
   1796c:	00f282b3          	add	t0,t0,a5
   17970:	0062e2b3          	or	t0,t0,t1
   17974:	0c729e63          	bne	t0,t2,17a50 <strcmp+0x12c>
   17978:	06d61663          	bne	a2,a3,179e4 <strcmp+0xc0>
   1797c:	00852603          	lw	a2,8(a0)
   17980:	0085a683          	lw	a3,8(a1)
   17984:	00f672b3          	and	t0,a2,a5
   17988:	00f66333          	or	t1,a2,a5
   1798c:	00f282b3          	add	t0,t0,a5
   17990:	0062e2b3          	or	t0,t0,t1
   17994:	0c729863          	bne	t0,t2,17a64 <strcmp+0x140>
   17998:	04d61663          	bne	a2,a3,179e4 <strcmp+0xc0>
   1799c:	00c52603          	lw	a2,12(a0)
   179a0:	00c5a683          	lw	a3,12(a1)
   179a4:	00f672b3          	and	t0,a2,a5
   179a8:	00f66333          	or	t1,a2,a5
   179ac:	00f282b3          	add	t0,t0,a5
   179b0:	0062e2b3          	or	t0,t0,t1
   179b4:	0c729263          	bne	t0,t2,17a78 <strcmp+0x154>
   179b8:	02d61663          	bne	a2,a3,179e4 <strcmp+0xc0>
   179bc:	01052603          	lw	a2,16(a0)
   179c0:	0105a683          	lw	a3,16(a1)
   179c4:	00f672b3          	and	t0,a2,a5
   179c8:	00f66333          	or	t1,a2,a5
   179cc:	00f282b3          	add	t0,t0,a5
   179d0:	0062e2b3          	or	t0,t0,t1
   179d4:	0a729c63          	bne	t0,t2,17a8c <strcmp+0x168>
   179d8:	01450513          	addi	a0,a0,20
   179dc:	01458593          	addi	a1,a1,20
   179e0:	f4d60ee3          	beq	a2,a3,1793c <strcmp+0x18>
   179e4:	01061713          	slli	a4,a2,0x10
   179e8:	01069793          	slli	a5,a3,0x10
   179ec:	00f71e63          	bne	a4,a5,17a08 <strcmp+0xe4>
   179f0:	01065713          	srli	a4,a2,0x10
   179f4:	0106d793          	srli	a5,a3,0x10
   179f8:	40f70533          	sub	a0,a4,a5
   179fc:	0ff57593          	andi	a1,a0,255
   17a00:	02059063          	bnez	a1,17a20 <strcmp+0xfc>
   17a04:	00008067          	ret
   17a08:	01075713          	srli	a4,a4,0x10
   17a0c:	0107d793          	srli	a5,a5,0x10
   17a10:	40f70533          	sub	a0,a4,a5
   17a14:	0ff57593          	andi	a1,a0,255
   17a18:	00059463          	bnez	a1,17a20 <strcmp+0xfc>
   17a1c:	00008067          	ret
   17a20:	0ff77713          	andi	a4,a4,255
   17a24:	0ff7f793          	andi	a5,a5,255
   17a28:	40f70533          	sub	a0,a4,a5
   17a2c:	00008067          	ret
   17a30:	00054603          	lbu	a2,0(a0)
   17a34:	0005c683          	lbu	a3,0(a1)
   17a38:	00150513          	addi	a0,a0,1
   17a3c:	00158593          	addi	a1,a1,1
   17a40:	00d61463          	bne	a2,a3,17a48 <strcmp+0x124>
   17a44:	fe0616e3          	bnez	a2,17a30 <strcmp+0x10c>
   17a48:	40d60533          	sub	a0,a2,a3
   17a4c:	00008067          	ret
   17a50:	00450513          	addi	a0,a0,4
   17a54:	00458593          	addi	a1,a1,4
   17a58:	fcd61ce3          	bne	a2,a3,17a30 <strcmp+0x10c>
   17a5c:	00000513          	li	a0,0
   17a60:	00008067          	ret
   17a64:	00850513          	addi	a0,a0,8
   17a68:	00858593          	addi	a1,a1,8
   17a6c:	fcd612e3          	bne	a2,a3,17a30 <strcmp+0x10c>
   17a70:	00000513          	li	a0,0
   17a74:	00008067          	ret
   17a78:	00c50513          	addi	a0,a0,12
   17a7c:	00c58593          	addi	a1,a1,12
   17a80:	fad618e3          	bne	a2,a3,17a30 <strcmp+0x10c>
   17a84:	00000513          	li	a0,0
   17a88:	00008067          	ret
   17a8c:	01050513          	addi	a0,a0,16
   17a90:	01058593          	addi	a1,a1,16
   17a94:	f8d61ee3          	bne	a2,a3,17a30 <strcmp+0x10c>
   17a98:	00000513          	li	a0,0
   17a9c:	00008067          	ret

00017aa0 <strcpy>:
   17aa0:	00050793          	mv	a5,a0
   17aa4:	0005c703          	lbu	a4,0(a1)
   17aa8:	00178793          	addi	a5,a5,1
   17aac:	00158593          	addi	a1,a1,1
   17ab0:	fee78fa3          	sb	a4,-1(a5)
   17ab4:	fe0718e3          	bnez	a4,17aa4 <strcpy+0x4>
   17ab8:	00008067          	ret

00017abc <strncpy>:
   17abc:	00050713          	mv	a4,a0
   17ac0:	00061463          	bnez	a2,17ac8 <strncpy+0xc>
   17ac4:	00008067          	ret
   17ac8:	00158593          	addi	a1,a1,1
   17acc:	fff5c683          	lbu	a3,-1(a1)
   17ad0:	00170793          	addi	a5,a4,1
   17ad4:	fff60813          	addi	a6,a2,-1
   17ad8:	fed78fa3          	sb	a3,-1(a5)
   17adc:	00069863          	bnez	a3,17aec <strncpy+0x30>
   17ae0:	00c70733          	add	a4,a4,a2
   17ae4:	00e79a63          	bne	a5,a4,17af8 <strncpy+0x3c>
   17ae8:	00008067          	ret
   17aec:	00078713          	mv	a4,a5
   17af0:	00080613          	mv	a2,a6
   17af4:	fcdff06f          	j	17ac0 <strncpy+0x4>
   17af8:	00178793          	addi	a5,a5,1
   17afc:	fe078fa3          	sb	zero,-1(a5)
   17b00:	fe5ff06f          	j	17ae4 <strncpy+0x28>

00017b04 <_svfprintf_r>:
   17b04:	e2010113          	addi	sp,sp,-480
   17b08:	1c112e23          	sw	ra,476(sp)
   17b0c:	1c912a23          	sw	s1,468(sp)
   17b10:	1d212823          	sw	s2,464(sp)
   17b14:	1d312623          	sw	s3,460(sp)
   17b18:	1d512223          	sw	s5,452(sp)
   17b1c:	00058993          	mv	s3,a1
   17b20:	00060493          	mv	s1,a2
   17b24:	00068a93          	mv	s5,a3
   17b28:	1c812c23          	sw	s0,472(sp)
   17b2c:	1d412423          	sw	s4,456(sp)
   17b30:	1d612023          	sw	s6,448(sp)
   17b34:	1b712e23          	sw	s7,444(sp)
   17b38:	1b812c23          	sw	s8,440(sp)
   17b3c:	1b912a23          	sw	s9,436(sp)
   17b40:	1ba12823          	sw	s10,432(sp)
   17b44:	1bb12623          	sw	s11,428(sp)
   17b48:	00050913          	mv	s2,a0
   17b4c:	c3dfd0ef          	jal	ra,15788 <_localeconv_r>
   17b50:	00052783          	lw	a5,0(a0)
   17b54:	00078513          	mv	a0,a5
   17b58:	02f12a23          	sw	a5,52(sp)
   17b5c:	a71f80ef          	jal	ra,105cc <strlen>
   17b60:	00c9d783          	lhu	a5,12(s3)
   17b64:	02a12023          	sw	a0,32(sp)
   17b68:	0e012023          	sw	zero,224(sp)
   17b6c:	0e012223          	sw	zero,228(sp)
   17b70:	0e012423          	sw	zero,232(sp)
   17b74:	0e012623          	sw	zero,236(sp)
   17b78:	0807f793          	andi	a5,a5,128
   17b7c:	04078063          	beqz	a5,17bbc <_svfprintf_r+0xb8>
   17b80:	0109a783          	lw	a5,16(s3)
   17b84:	02079c63          	bnez	a5,17bbc <_svfprintf_r+0xb8>
   17b88:	04000593          	li	a1,64
   17b8c:	00090513          	mv	a0,s2
   17b90:	e81fd0ef          	jal	ra,15a10 <_malloc_r>
   17b94:	00a9a023          	sw	a0,0(s3)
   17b98:	00a9a823          	sw	a0,16(s3)
   17b9c:	00051c63          	bnez	a0,17bb4 <_svfprintf_r+0xb0>
   17ba0:	00c00793          	li	a5,12
   17ba4:	00f92023          	sw	a5,0(s2)
   17ba8:	fff00793          	li	a5,-1
   17bac:	02f12223          	sw	a5,36(sp)
   17bb0:	5a00006f          	j	18150 <_svfprintf_r+0x64c>
   17bb4:	04000793          	li	a5,64
   17bb8:	00f9aa23          	sw	a5,20(s3)
   17bbc:	000217b7          	lui	a5,0x21
   17bc0:	e3878793          	addi	a5,a5,-456 # 20e38 <__mprec_bigtens+0x28>
   17bc4:	04f12623          	sw	a5,76(sp)
   17bc8:	000217b7          	lui	a5,0x21
   17bcc:	0fc10893          	addi	a7,sp,252
   17bd0:	fb478793          	addi	a5,a5,-76 # 20fb4 <zeroes.4390>
   17bd4:	0d112a23          	sw	a7,212(sp)
   17bd8:	0c012e23          	sw	zero,220(sp)
   17bdc:	0c012c23          	sw	zero,216(sp)
   17be0:	00000a13          	li	s4,0
   17be4:	04012023          	sw	zero,64(sp)
   17be8:	02012e23          	sw	zero,60(sp)
   17bec:	00012823          	sw	zero,16(sp)
   17bf0:	02012823          	sw	zero,48(sp)
   17bf4:	02012c23          	sw	zero,56(sp)
   17bf8:	02012223          	sw	zero,36(sp)
   17bfc:	00f12a23          	sw	a5,20(sp)
   17c00:	00048413          	mv	s0,s1
   17c04:	02500713          	li	a4,37
   17c08:	00044783          	lbu	a5,0(s0)
   17c0c:	00078463          	beqz	a5,17c14 <_svfprintf_r+0x110>
   17c10:	0ce79063          	bne	a5,a4,17cd0 <_svfprintf_r+0x1cc>
   17c14:	40940b33          	sub	s6,s0,s1
   17c18:	040b0a63          	beqz	s6,17c6c <_svfprintf_r+0x168>
   17c1c:	0dc12783          	lw	a5,220(sp)
   17c20:	0098a023          	sw	s1,0(a7)
   17c24:	0168a223          	sw	s6,4(a7)
   17c28:	016787b3          	add	a5,a5,s6
   17c2c:	0cf12e23          	sw	a5,220(sp)
   17c30:	0d812783          	lw	a5,216(sp)
   17c34:	00700713          	li	a4,7
   17c38:	00888893          	addi	a7,a7,8
   17c3c:	00178793          	addi	a5,a5,1
   17c40:	0cf12c23          	sw	a5,216(sp)
   17c44:	00f75e63          	ble	a5,a4,17c60 <_svfprintf_r+0x15c>
   17c48:	0d410613          	addi	a2,sp,212
   17c4c:	00098593          	mv	a1,s3
   17c50:	00090513          	mv	a0,s2
   17c54:	2c4030ef          	jal	ra,1af18 <__ssprint_r>
   17c58:	4e051663          	bnez	a0,18144 <_svfprintf_r+0x640>
   17c5c:	0fc10893          	addi	a7,sp,252
   17c60:	02412783          	lw	a5,36(sp)
   17c64:	016787b3          	add	a5,a5,s6
   17c68:	02f12223          	sw	a5,36(sp)
   17c6c:	00044783          	lbu	a5,0(s0)
   17c70:	00079463          	bnez	a5,17c78 <_svfprintf_r+0x174>
   17c74:	5ad0106f          	j	19a20 <_svfprintf_r+0x1f1c>
   17c78:	00140793          	addi	a5,s0,1
   17c7c:	00f12e23          	sw	a5,28(sp)
   17c80:	0a010ba3          	sb	zero,183(sp)
   17c84:	fff00b13          	li	s6,-1
   17c88:	02012423          	sw	zero,40(sp)
   17c8c:	00000413          	li	s0,0
   17c90:	00a00c13          	li	s8,10
   17c94:	02a00b93          	li	s7,42
   17c98:	05a00613          	li	a2,90
   17c9c:	00900713          	li	a4,9
   17ca0:	01c12783          	lw	a5,28(sp)
   17ca4:	0007cd03          	lbu	s10,0(a5)
   17ca8:	00178793          	addi	a5,a5,1
   17cac:	00f12e23          	sw	a5,28(sp)
   17cb0:	fe0d0793          	addi	a5,s10,-32
   17cb4:	00f67463          	bleu	a5,a2,17cbc <_svfprintf_r+0x1b8>
   17cb8:	29c0106f          	j	18f54 <_svfprintf_r+0x1450>
   17cbc:	04c12683          	lw	a3,76(sp)
   17cc0:	00279793          	slli	a5,a5,0x2
   17cc4:	00d787b3          	add	a5,a5,a3
   17cc8:	0007a783          	lw	a5,0(a5)
   17ccc:	00078067          	jr	a5
   17cd0:	00140413          	addi	s0,s0,1
   17cd4:	f35ff06f          	j	17c08 <_svfprintf_r+0x104>
   17cd8:	000217b7          	lui	a5,0x21
   17cdc:	a6c78793          	addi	a5,a5,-1428 # 20a6c <zeroes.4405+0x34>
   17ce0:	04f12023          	sw	a5,64(sp)
   17ce4:	02047793          	andi	a5,s0,32
   17ce8:	00079463          	bnez	a5,17cf0 <_svfprintf_r+0x1ec>
   17cec:	0840106f          	j	18d70 <_svfprintf_r+0x126c>
   17cf0:	007a8a93          	addi	s5,s5,7
   17cf4:	ff8afa93          	andi	s5,s5,-8
   17cf8:	000aac03          	lw	s8,0(s5)
   17cfc:	004aac83          	lw	s9,4(s5)
   17d00:	008a8793          	addi	a5,s5,8
   17d04:	00f12c23          	sw	a5,24(sp)
   17d08:	00147793          	andi	a5,s0,1
   17d0c:	00078e63          	beqz	a5,17d28 <_svfprintf_r+0x224>
   17d10:	019c67b3          	or	a5,s8,s9
   17d14:	00078a63          	beqz	a5,17d28 <_svfprintf_r+0x224>
   17d18:	03000793          	li	a5,48
   17d1c:	0af10c23          	sb	a5,184(sp)
   17d20:	0ba10ca3          	sb	s10,185(sp)
   17d24:	00246413          	ori	s0,s0,2
   17d28:	bff47413          	andi	s0,s0,-1025
   17d2c:	00200793          	li	a5,2
   17d30:	4510006f          	j	18980 <_svfprintf_r+0xe7c>
   17d34:	00090513          	mv	a0,s2
   17d38:	01112623          	sw	a7,12(sp)
   17d3c:	a4dfd0ef          	jal	ra,15788 <_localeconv_r>
   17d40:	00452783          	lw	a5,4(a0)
   17d44:	00078513          	mv	a0,a5
   17d48:	02f12c23          	sw	a5,56(sp)
   17d4c:	881f80ef          	jal	ra,105cc <strlen>
   17d50:	02a12823          	sw	a0,48(sp)
   17d54:	00090513          	mv	a0,s2
   17d58:	a31fd0ef          	jal	ra,15788 <_localeconv_r>
   17d5c:	00852783          	lw	a5,8(a0)
   17d60:	00c12883          	lw	a7,12(sp)
   17d64:	00f12823          	sw	a5,16(sp)
   17d68:	03012783          	lw	a5,48(sp)
   17d6c:	f20786e3          	beqz	a5,17c98 <_svfprintf_r+0x194>
   17d70:	01012783          	lw	a5,16(sp)
   17d74:	f20782e3          	beqz	a5,17c98 <_svfprintf_r+0x194>
   17d78:	0007c783          	lbu	a5,0(a5)
   17d7c:	f0078ee3          	beqz	a5,17c98 <_svfprintf_r+0x194>
   17d80:	40046413          	ori	s0,s0,1024
   17d84:	f15ff06f          	j	17c98 <_svfprintf_r+0x194>
   17d88:	0b714783          	lbu	a5,183(sp)
   17d8c:	f00796e3          	bnez	a5,17c98 <_svfprintf_r+0x194>
   17d90:	02000793          	li	a5,32
   17d94:	0af10ba3          	sb	a5,183(sp)
   17d98:	f01ff06f          	j	17c98 <_svfprintf_r+0x194>
   17d9c:	00146413          	ori	s0,s0,1
   17da0:	ef9ff06f          	j	17c98 <_svfprintf_r+0x194>
   17da4:	000aa783          	lw	a5,0(s5)
   17da8:	004a8a93          	addi	s5,s5,4
   17dac:	02f12423          	sw	a5,40(sp)
   17db0:	ee07d4e3          	bgez	a5,17c98 <_svfprintf_r+0x194>
   17db4:	40f007b3          	neg	a5,a5
   17db8:	02f12423          	sw	a5,40(sp)
   17dbc:	00446413          	ori	s0,s0,4
   17dc0:	ed9ff06f          	j	17c98 <_svfprintf_r+0x194>
   17dc4:	02b00793          	li	a5,43
   17dc8:	fcdff06f          	j	17d94 <_svfprintf_r+0x290>
   17dcc:	01c12683          	lw	a3,28(sp)
   17dd0:	01c12783          	lw	a5,28(sp)
   17dd4:	0006cd03          	lbu	s10,0(a3)
   17dd8:	00178793          	addi	a5,a5,1
   17ddc:	037d1e63          	bne	s10,s7,17e18 <_svfprintf_r+0x314>
   17de0:	000aab03          	lw	s6,0(s5)
   17de4:	004a8713          	addi	a4,s5,4
   17de8:	000b5463          	bgez	s6,17df0 <_svfprintf_r+0x2ec>
   17dec:	fff00b13          	li	s6,-1
   17df0:	00070a93          	mv	s5,a4
   17df4:	00f12e23          	sw	a5,28(sp)
   17df8:	ea1ff06f          	j	17c98 <_svfprintf_r+0x194>
   17dfc:	038b0333          	mul	t1,s6,s8
   17e00:	00178793          	addi	a5,a5,1
   17e04:	fff7cd03          	lbu	s10,-1(a5)
   17e08:	00d30b33          	add	s6,t1,a3
   17e0c:	fd0d0693          	addi	a3,s10,-48
   17e10:	fed776e3          	bleu	a3,a4,17dfc <_svfprintf_r+0x2f8>
   17e14:	e99ff06f          	j	17cac <_svfprintf_r+0x1a8>
   17e18:	00000b13          	li	s6,0
   17e1c:	ff1ff06f          	j	17e0c <_svfprintf_r+0x308>
   17e20:	08046413          	ori	s0,s0,128
   17e24:	e75ff06f          	j	17c98 <_svfprintf_r+0x194>
   17e28:	01c12783          	lw	a5,28(sp)
   17e2c:	02012423          	sw	zero,40(sp)
   17e30:	02812683          	lw	a3,40(sp)
   17e34:	fd0d0d13          	addi	s10,s10,-48
   17e38:	00178793          	addi	a5,a5,1
   17e3c:	038686b3          	mul	a3,a3,s8
   17e40:	00dd06b3          	add	a3,s10,a3
   17e44:	fff7cd03          	lbu	s10,-1(a5)
   17e48:	02d12423          	sw	a3,40(sp)
   17e4c:	fd0d0693          	addi	a3,s10,-48
   17e50:	fed770e3          	bleu	a3,a4,17e30 <_svfprintf_r+0x32c>
   17e54:	e59ff06f          	j	17cac <_svfprintf_r+0x1a8>
   17e58:	00846413          	ori	s0,s0,8
   17e5c:	e3dff06f          	j	17c98 <_svfprintf_r+0x194>
   17e60:	01c12783          	lw	a5,28(sp)
   17e64:	0007c703          	lbu	a4,0(a5)
   17e68:	06800793          	li	a5,104
   17e6c:	00f71c63          	bne	a4,a5,17e84 <_svfprintf_r+0x380>
   17e70:	01c12783          	lw	a5,28(sp)
   17e74:	20046413          	ori	s0,s0,512
   17e78:	00178793          	addi	a5,a5,1
   17e7c:	00f12e23          	sw	a5,28(sp)
   17e80:	e19ff06f          	j	17c98 <_svfprintf_r+0x194>
   17e84:	04046413          	ori	s0,s0,64
   17e88:	e11ff06f          	j	17c98 <_svfprintf_r+0x194>
   17e8c:	01c12783          	lw	a5,28(sp)
   17e90:	0007c703          	lbu	a4,0(a5)
   17e94:	06c00793          	li	a5,108
   17e98:	00f71c63          	bne	a4,a5,17eb0 <_svfprintf_r+0x3ac>
   17e9c:	01c12783          	lw	a5,28(sp)
   17ea0:	00178793          	addi	a5,a5,1
   17ea4:	00f12e23          	sw	a5,28(sp)
   17ea8:	02046413          	ori	s0,s0,32
   17eac:	dedff06f          	j	17c98 <_svfprintf_r+0x194>
   17eb0:	01046413          	ori	s0,s0,16
   17eb4:	de5ff06f          	j	17c98 <_svfprintf_r+0x194>
   17eb8:	004a8793          	addi	a5,s5,4
   17ebc:	00f12c23          	sw	a5,24(sp)
   17ec0:	000aa783          	lw	a5,0(s5)
   17ec4:	0a010ba3          	sb	zero,183(sp)
   17ec8:	12f10e23          	sb	a5,316(sp)
   17ecc:	00012623          	sw	zero,12(sp)
   17ed0:	00100b13          	li	s6,1
   17ed4:	00000a93          	li	s5,0
   17ed8:	00000c13          	li	s8,0
   17edc:	00000b93          	li	s7,0
   17ee0:	00000c93          	li	s9,0
   17ee4:	13c10493          	addi	s1,sp,316
   17ee8:	3a10006f          	j	18a88 <_svfprintf_r+0xf84>
   17eec:	01046413          	ori	s0,s0,16
   17ef0:	02047793          	andi	a5,s0,32
   17ef4:	04078e63          	beqz	a5,17f50 <_svfprintf_r+0x44c>
   17ef8:	007a8a93          	addi	s5,s5,7
   17efc:	ff8afa93          	andi	s5,s5,-8
   17f00:	000aac03          	lw	s8,0(s5)
   17f04:	004aac83          	lw	s9,4(s5)
   17f08:	008a8793          	addi	a5,s5,8
   17f0c:	00f12c23          	sw	a5,24(sp)
   17f10:	000cde63          	bgez	s9,17f2c <_svfprintf_r+0x428>
   17f14:	41800c33          	neg	s8,s8
   17f18:	018037b3          	snez	a5,s8
   17f1c:	41900cb3          	neg	s9,s9
   17f20:	40fc8cb3          	sub	s9,s9,a5
   17f24:	02d00793          	li	a5,45
   17f28:	0af10ba3          	sb	a5,183(sp)
   17f2c:	fff00793          	li	a5,-1
   17f30:	66fb1ee3          	bne	s6,a5,18dac <_svfprintf_r+0x12a8>
   17f34:	700c90e3          	bnez	s9,18e34 <_svfprintf_r+0x1330>
   17f38:	00900793          	li	a5,9
   17f3c:	6f87ece3          	bltu	a5,s8,18e34 <_svfprintf_r+0x1330>
   17f40:	030c0c13          	addi	s8,s8,48
   17f44:	19810fa3          	sb	s8,415(sp)
   17f48:	19f10493          	addi	s1,sp,415
   17f4c:	6c10006f          	j	18e0c <_svfprintf_r+0x1308>
   17f50:	004a8793          	addi	a5,s5,4
   17f54:	00f12c23          	sw	a5,24(sp)
   17f58:	01047793          	andi	a5,s0,16
   17f5c:	00078863          	beqz	a5,17f6c <_svfprintf_r+0x468>
   17f60:	000aac03          	lw	s8,0(s5)
   17f64:	41fc5c93          	srai	s9,s8,0x1f
   17f68:	fa9ff06f          	j	17f10 <_svfprintf_r+0x40c>
   17f6c:	04047793          	andi	a5,s0,64
   17f70:	000aac03          	lw	s8,0(s5)
   17f74:	00078863          	beqz	a5,17f84 <_svfprintf_r+0x480>
   17f78:	010c1c13          	slli	s8,s8,0x10
   17f7c:	410c5c13          	srai	s8,s8,0x10
   17f80:	fe5ff06f          	j	17f64 <_svfprintf_r+0x460>
   17f84:	20047793          	andi	a5,s0,512
   17f88:	fc078ee3          	beqz	a5,17f64 <_svfprintf_r+0x460>
   17f8c:	018c1c13          	slli	s8,s8,0x18
   17f90:	418c5c13          	srai	s8,s8,0x18
   17f94:	fd1ff06f          	j	17f64 <_svfprintf_r+0x460>
   17f98:	00847793          	andi	a5,s0,8
   17f9c:	0a078e63          	beqz	a5,18058 <_svfprintf_r+0x554>
   17fa0:	004a8793          	addi	a5,s5,4
   17fa4:	00f12c23          	sw	a5,24(sp)
   17fa8:	000aa783          	lw	a5,0(s5)
   17fac:	0007a603          	lw	a2,0(a5)
   17fb0:	0047a683          	lw	a3,4(a5)
   17fb4:	0087a703          	lw	a4,8(a5)
   17fb8:	00c7a783          	lw	a5,12(a5)
   17fbc:	0ec12023          	sw	a2,224(sp)
   17fc0:	0ed12223          	sw	a3,228(sp)
   17fc4:	0ee12423          	sw	a4,232(sp)
   17fc8:	0ef12623          	sw	a5,236(sp)
   17fcc:	0e010513          	addi	a0,sp,224
   17fd0:	01112623          	sw	a7,12(sp)
   17fd4:	f48fd0ef          	jal	ra,1571c <_ldcheck>
   17fd8:	0aa12e23          	sw	a0,188(sp)
   17fdc:	00200793          	li	a5,2
   17fe0:	00c12883          	lw	a7,12(sp)
   17fe4:	0cf51663          	bne	a0,a5,180b0 <_svfprintf_r+0x5ac>
   17fe8:	0e012783          	lw	a5,224(sp)
   17fec:	09010593          	addi	a1,sp,144
   17ff0:	0a010513          	addi	a0,sp,160
   17ff4:	0af12023          	sw	a5,160(sp)
   17ff8:	0e412783          	lw	a5,228(sp)
   17ffc:	08012823          	sw	zero,144(sp)
   18000:	08012a23          	sw	zero,148(sp)
   18004:	0af12223          	sw	a5,164(sp)
   18008:	0e812783          	lw	a5,232(sp)
   1800c:	08012c23          	sw	zero,152(sp)
   18010:	08012e23          	sw	zero,156(sp)
   18014:	0af12423          	sw	a5,168(sp)
   18018:	0ec12783          	lw	a5,236(sp)
   1801c:	0af12623          	sw	a5,172(sp)
   18020:	145050ef          	jal	ra,1d964 <__letf2>
   18024:	00c12883          	lw	a7,12(sp)
   18028:	00055663          	bgez	a0,18034 <_svfprintf_r+0x530>
   1802c:	02d00793          	li	a5,45
   18030:	0af10ba3          	sb	a5,183(sp)
   18034:	04700793          	li	a5,71
   18038:	07a7c663          	blt	a5,s10,180a4 <_svfprintf_r+0x5a0>
   1803c:	000214b7          	lui	s1,0x21
   18040:	a4848493          	addi	s1,s1,-1464 # 20a48 <zeroes.4405+0x10>
   18044:	f7f47413          	andi	s0,s0,-129
   18048:	00012623          	sw	zero,12(sp)
   1804c:	00300b13          	li	s6,3
   18050:	00000a93          	li	s5,0
   18054:	5c90006f          	j	18e1c <_svfprintf_r+0x1318>
   18058:	007a8a93          	addi	s5,s5,7
   1805c:	ff8afa93          	andi	s5,s5,-8
   18060:	000aa583          	lw	a1,0(s5)
   18064:	004aa603          	lw	a2,4(s5)
   18068:	008a8793          	addi	a5,s5,8
   1806c:	0a010513          	addi	a0,sp,160
   18070:	01112623          	sw	a7,12(sp)
   18074:	00f12c23          	sw	a5,24(sp)
   18078:	22c080ef          	jal	ra,202a4 <__extenddftf2>
   1807c:	0a012783          	lw	a5,160(sp)
   18080:	00c12883          	lw	a7,12(sp)
   18084:	0ef12023          	sw	a5,224(sp)
   18088:	0a412783          	lw	a5,164(sp)
   1808c:	0ef12223          	sw	a5,228(sp)
   18090:	0a812783          	lw	a5,168(sp)
   18094:	0ef12423          	sw	a5,232(sp)
   18098:	0ac12783          	lw	a5,172(sp)
   1809c:	0ef12623          	sw	a5,236(sp)
   180a0:	f2dff06f          	j	17fcc <_svfprintf_r+0x4c8>
   180a4:	000214b7          	lui	s1,0x21
   180a8:	a4c48493          	addi	s1,s1,-1460 # 20a4c <zeroes.4405+0x14>
   180ac:	f99ff06f          	j	18044 <_svfprintf_r+0x540>
   180b0:	00100793          	li	a5,1
   180b4:	02f51a63          	bne	a0,a5,180e8 <_svfprintf_r+0x5e4>
   180b8:	0ec12783          	lw	a5,236(sp)
   180bc:	0007d663          	bgez	a5,180c8 <_svfprintf_r+0x5c4>
   180c0:	02d00793          	li	a5,45
   180c4:	0af10ba3          	sb	a5,183(sp)
   180c8:	04700793          	li	a5,71
   180cc:	01a7c863          	blt	a5,s10,180dc <_svfprintf_r+0x5d8>
   180d0:	000214b7          	lui	s1,0x21
   180d4:	a5048493          	addi	s1,s1,-1456 # 20a50 <zeroes.4405+0x18>
   180d8:	f6dff06f          	j	18044 <_svfprintf_r+0x540>
   180dc:	000214b7          	lui	s1,0x21
   180e0:	a5448493          	addi	s1,s1,-1452 # 20a54 <zeroes.4405+0x1c>
   180e4:	f61ff06f          	j	18044 <_svfprintf_r+0x540>
   180e8:	fdfd7b93          	andi	s7,s10,-33
   180ec:	04100793          	li	a5,65
   180f0:	0afb9063          	bne	s7,a5,18190 <_svfprintf_r+0x68c>
   180f4:	03000793          	li	a5,48
   180f8:	0af10c23          	sb	a5,184(sp)
   180fc:	06100713          	li	a4,97
   18100:	05800793          	li	a5,88
   18104:	00ed1463          	bne	s10,a4,1810c <_svfprintf_r+0x608>
   18108:	07800793          	li	a5,120
   1810c:	0af10ca3          	sb	a5,185(sp)
   18110:	06300793          	li	a5,99
   18114:	00246413          	ori	s0,s0,2
   18118:	4f67d263          	ble	s6,a5,185fc <_svfprintf_r+0xaf8>
   1811c:	001b0593          	addi	a1,s6,1
   18120:	00090513          	mv	a0,s2
   18124:	01112623          	sw	a7,12(sp)
   18128:	8e9fd0ef          	jal	ra,15a10 <_malloc_r>
   1812c:	00050493          	mv	s1,a0
   18130:	00c12883          	lw	a7,12(sp)
   18134:	4c051a63          	bnez	a0,18608 <_svfprintf_r+0xb04>
   18138:	00c9d783          	lhu	a5,12(s3)
   1813c:	0407e793          	ori	a5,a5,64
   18140:	00f99623          	sh	a5,12(s3)
   18144:	00c9d783          	lhu	a5,12(s3)
   18148:	0407f793          	andi	a5,a5,64
   1814c:	a4079ee3          	bnez	a5,17ba8 <_svfprintf_r+0xa4>
   18150:	1dc12083          	lw	ra,476(sp)
   18154:	1d812403          	lw	s0,472(sp)
   18158:	02412503          	lw	a0,36(sp)
   1815c:	1d412483          	lw	s1,468(sp)
   18160:	1d012903          	lw	s2,464(sp)
   18164:	1cc12983          	lw	s3,460(sp)
   18168:	1c812a03          	lw	s4,456(sp)
   1816c:	1c412a83          	lw	s5,452(sp)
   18170:	1c012b03          	lw	s6,448(sp)
   18174:	1bc12b83          	lw	s7,444(sp)
   18178:	1b812c03          	lw	s8,440(sp)
   1817c:	1b412c83          	lw	s9,436(sp)
   18180:	1b012d03          	lw	s10,432(sp)
   18184:	1ac12d83          	lw	s11,428(sp)
   18188:	1e010113          	addi	sp,sp,480
   1818c:	00008067          	ret
   18190:	fff00793          	li	a5,-1
   18194:	46fb0e63          	beq	s6,a5,18610 <_svfprintf_r+0xb0c>
   18198:	04700793          	li	a5,71
   1819c:	00012623          	sw	zero,12(sp)
   181a0:	00fb9463          	bne	s7,a5,181a8 <_svfprintf_r+0x6a4>
   181a4:	460b0c63          	beqz	s6,1861c <_svfprintf_r+0xb18>
   181a8:	0ec12a83          	lw	s5,236(sp)
   181ac:	10046793          	ori	a5,s0,256
   181b0:	02f12623          	sw	a5,44(sp)
   181b4:	04012223          	sw	zero,68(sp)
   181b8:	0e012e03          	lw	t3,224(sp)
   181bc:	0e412d83          	lw	s11,228(sp)
   181c0:	0e812c83          	lw	s9,232(sp)
   181c4:	000ada63          	bgez	s5,181d8 <_svfprintf_r+0x6d4>
   181c8:	800007b7          	lui	a5,0x80000
   181cc:	0157cab3          	xor	s5,a5,s5
   181d0:	02d00793          	li	a5,45
   181d4:	04f12223          	sw	a5,68(sp)
   181d8:	04100793          	li	a5,65
   181dc:	48fb9a63          	bne	s7,a5,18670 <_svfprintf_r+0xb6c>
   181e0:	0a010513          	addi	a0,sp,160
   181e4:	05112c23          	sw	a7,88(sp)
   181e8:	0bc12023          	sw	t3,160(sp)
   181ec:	0b912423          	sw	s9,168(sp)
   181f0:	0bb12223          	sw	s11,164(sp)
   181f4:	0b512623          	sw	s5,172(sp)
   181f8:	2d0080ef          	jal	ra,204c8 <__trunctfdf2>
   181fc:	0bc10613          	addi	a2,sp,188
   18200:	c64ff0ef          	jal	ra,17664 <frexp>
   18204:	00058613          	mv	a2,a1
   18208:	00050593          	mv	a1,a0
   1820c:	0a010513          	addi	a0,sp,160
   18210:	094080ef          	jal	ra,202a4 <__extenddftf2>
   18214:	0a012783          	lw	a5,160(sp)
   18218:	07010613          	addi	a2,sp,112
   1821c:	08010593          	addi	a1,sp,128
   18220:	08f12023          	sw	a5,128(sp)
   18224:	0a412783          	lw	a5,164(sp)
   18228:	09010513          	addi	a0,sp,144
   1822c:	06012823          	sw	zero,112(sp)
   18230:	08f12223          	sw	a5,132(sp)
   18234:	0a812783          	lw	a5,168(sp)
   18238:	06012a23          	sw	zero,116(sp)
   1823c:	06012c23          	sw	zero,120(sp)
   18240:	08f12423          	sw	a5,136(sp)
   18244:	0ac12783          	lw	a5,172(sp)
   18248:	08f12623          	sw	a5,140(sp)
   1824c:	3ffc07b7          	lui	a5,0x3ffc0
   18250:	06f12e23          	sw	a5,124(sp)
   18254:	071050ef          	jal	ra,1dac4 <__multf3>
   18258:	09012803          	lw	a6,144(sp)
   1825c:	09412603          	lw	a2,148(sp)
   18260:	09812683          	lw	a3,152(sp)
   18264:	09c12c83          	lw	s9,156(sp)
   18268:	09010593          	addi	a1,sp,144
   1826c:	0a010513          	addi	a0,sp,160
   18270:	0b012023          	sw	a6,160(sp)
   18274:	05012a23          	sw	a6,84(sp)
   18278:	0ac12223          	sw	a2,164(sp)
   1827c:	04c12823          	sw	a2,80(sp)
   18280:	0ad12423          	sw	a3,168(sp)
   18284:	04d12423          	sw	a3,72(sp)
   18288:	0b912623          	sw	s9,172(sp)
   1828c:	08012823          	sw	zero,144(sp)
   18290:	08012a23          	sw	zero,148(sp)
   18294:	08012c23          	sw	zero,152(sp)
   18298:	08012e23          	sw	zero,156(sp)
   1829c:	49c050ef          	jal	ra,1d738 <__eqtf2>
   182a0:	04812683          	lw	a3,72(sp)
   182a4:	05012603          	lw	a2,80(sp)
   182a8:	05412803          	lw	a6,84(sp)
   182ac:	05812883          	lw	a7,88(sp)
   182b0:	00051663          	bnez	a0,182bc <_svfprintf_r+0x7b8>
   182b4:	00100713          	li	a4,1
   182b8:	0ae12e23          	sw	a4,188(sp)
   182bc:	06100713          	li	a4,97
   182c0:	36ed1463          	bne	s10,a4,18628 <_svfprintf_r+0xb24>
   182c4:	00021a37          	lui	s4,0x21
   182c8:	a58a0a13          	addi	s4,s4,-1448 # 20a58 <zeroes.4405+0x20>
   182cc:	fffb0e13          	addi	t3,s6,-1
   182d0:	00048d93          	mv	s11,s1
   182d4:	400307b7          	lui	a5,0x40030
   182d8:	09010593          	addi	a1,sp,144
   182dc:	08c12a23          	sw	a2,148(sp)
   182e0:	0a010513          	addi	a0,sp,160
   182e4:	08010613          	addi	a2,sp,128
   182e8:	05112c23          	sw	a7,88(sp)
   182ec:	05c12a23          	sw	t3,84(sp)
   182f0:	09012823          	sw	a6,144(sp)
   182f4:	08f12623          	sw	a5,140(sp)
   182f8:	08d12c23          	sw	a3,152(sp)
   182fc:	09912e23          	sw	s9,156(sp)
   18300:	08012023          	sw	zero,128(sp)
   18304:	08012223          	sw	zero,132(sp)
   18308:	08012423          	sw	zero,136(sp)
   1830c:	7b8050ef          	jal	ra,1dac4 <__multf3>
   18310:	0a012603          	lw	a2,160(sp)
   18314:	0a412683          	lw	a3,164(sp)
   18318:	0a010513          	addi	a0,sp,160
   1831c:	04c12823          	sw	a2,80(sp)
   18320:	04d12423          	sw	a3,72(sp)
   18324:	49d070ef          	jal	ra,1ffc0 <__fixtfsi>
   18328:	00050593          	mv	a1,a0
   1832c:	00050a93          	mv	s5,a0
   18330:	0a010513          	addi	a0,sp,160
   18334:	0a812c83          	lw	s9,168(sp)
   18338:	0ac12c03          	lw	s8,172(sp)
   1833c:	5e9070ef          	jal	ra,20124 <__floatsitf>
   18340:	0a012783          	lw	a5,160(sp)
   18344:	05012603          	lw	a2,80(sp)
   18348:	04812683          	lw	a3,72(sp)
   1834c:	06f12823          	sw	a5,112(sp)
   18350:	0a412783          	lw	a5,164(sp)
   18354:	08c12023          	sw	a2,128(sp)
   18358:	08010593          	addi	a1,sp,128
   1835c:	06f12a23          	sw	a5,116(sp)
   18360:	0a812783          	lw	a5,168(sp)
   18364:	07010613          	addi	a2,sp,112
   18368:	09010513          	addi	a0,sp,144
   1836c:	06f12c23          	sw	a5,120(sp)
   18370:	0ac12783          	lw	a5,172(sp)
   18374:	09912423          	sw	s9,136(sp)
   18378:	09812623          	sw	s8,140(sp)
   1837c:	06f12e23          	sw	a5,124(sp)
   18380:	08d12223          	sw	a3,132(sp)
   18384:	77c060ef          	jal	ra,1eb00 <__subtf3>
   18388:	015a05b3          	add	a1,s4,s5
   1838c:	0005c583          	lbu	a1,0(a1)
   18390:	05412e03          	lw	t3,84(sp)
   18394:	09c12c03          	lw	s8,156(sp)
   18398:	001d8d93          	addi	s11,s11,1
   1839c:	09012283          	lw	t0,144(sp)
   183a0:	09412f83          	lw	t6,148(sp)
   183a4:	09812f03          	lw	t5,152(sp)
   183a8:	05c12423          	sw	t3,72(sp)
   183ac:	febd8fa3          	sb	a1,-1(s11)
   183b0:	fff00793          	li	a5,-1
   183b4:	000c0c93          	mv	s9,s8
   183b8:	05812883          	lw	a7,88(sp)
   183bc:	06fe0c63          	beq	t3,a5,18434 <_svfprintf_r+0x930>
   183c0:	fffe0e13          	addi	t3,t3,-1
   183c4:	09010593          	addi	a1,sp,144
   183c8:	0a010513          	addi	a0,sp,160
   183cc:	07e12623          	sw	t5,108(sp)
   183d0:	07f12423          	sw	t6,104(sp)
   183d4:	06512223          	sw	t0,100(sp)
   183d8:	07112023          	sw	a7,96(sp)
   183dc:	05c12e23          	sw	t3,92(sp)
   183e0:	0a512023          	sw	t0,160(sp)
   183e4:	04512c23          	sw	t0,88(sp)
   183e8:	0bf12223          	sw	t6,164(sp)
   183ec:	05f12a23          	sw	t6,84(sp)
   183f0:	0be12423          	sw	t5,168(sp)
   183f4:	05e12823          	sw	t5,80(sp)
   183f8:	0b812623          	sw	s8,172(sp)
   183fc:	08012823          	sw	zero,144(sp)
   18400:	08012a23          	sw	zero,148(sp)
   18404:	08012c23          	sw	zero,152(sp)
   18408:	08012e23          	sw	zero,156(sp)
   1840c:	32c050ef          	jal	ra,1d738 <__eqtf2>
   18410:	05012683          	lw	a3,80(sp)
   18414:	05412603          	lw	a2,84(sp)
   18418:	05812803          	lw	a6,88(sp)
   1841c:	05c12e03          	lw	t3,92(sp)
   18420:	06012883          	lw	a7,96(sp)
   18424:	06412283          	lw	t0,100(sp)
   18428:	06812f83          	lw	t6,104(sp)
   1842c:	06c12f03          	lw	t5,108(sp)
   18430:	ea0512e3          	bnez	a0,182d4 <_svfprintf_r+0x7d0>
   18434:	3ffe0cb7          	lui	s9,0x3ffe0
   18438:	09010593          	addi	a1,sp,144
   1843c:	0a010513          	addi	a0,sp,160
   18440:	05112823          	sw	a7,80(sp)
   18444:	0a512023          	sw	t0,160(sp)
   18448:	04512e23          	sw	t0,92(sp)
   1844c:	0bf12223          	sw	t6,164(sp)
   18450:	05f12c23          	sw	t6,88(sp)
   18454:	0be12423          	sw	t5,168(sp)
   18458:	05e12a23          	sw	t5,84(sp)
   1845c:	0b812623          	sw	s8,172(sp)
   18460:	08012823          	sw	zero,144(sp)
   18464:	08012a23          	sw	zero,148(sp)
   18468:	08012c23          	sw	zero,152(sp)
   1846c:	09912e23          	sw	s9,156(sp)
   18470:	394050ef          	jal	ra,1d804 <__getf2>
   18474:	05012883          	lw	a7,80(sp)
   18478:	04a04663          	bgtz	a0,184c4 <_svfprintf_r+0x9c0>
   1847c:	05c12283          	lw	t0,92(sp)
   18480:	05812f83          	lw	t6,88(sp)
   18484:	05412f03          	lw	t5,84(sp)
   18488:	09010593          	addi	a1,sp,144
   1848c:	0a010513          	addi	a0,sp,160
   18490:	0a512023          	sw	t0,160(sp)
   18494:	0bf12223          	sw	t6,164(sp)
   18498:	0be12423          	sw	t5,168(sp)
   1849c:	0b812623          	sw	s8,172(sp)
   184a0:	08012823          	sw	zero,144(sp)
   184a4:	08012a23          	sw	zero,148(sp)
   184a8:	08012c23          	sw	zero,152(sp)
   184ac:	09912e23          	sw	s9,156(sp)
   184b0:	288050ef          	jal	ra,1d738 <__eqtf2>
   184b4:	05012883          	lw	a7,80(sp)
   184b8:	1a051263          	bnez	a0,1865c <_svfprintf_r+0xb58>
   184bc:	001afa93          	andi	s5,s5,1
   184c0:	180a8e63          	beqz	s5,1865c <_svfprintf_r+0xb58>
   184c4:	00fa4603          	lbu	a2,15(s4)
   184c8:	0db12623          	sw	s11,204(sp)
   184cc:	03000593          	li	a1,48
   184d0:	0cc12683          	lw	a3,204(sp)
   184d4:	fff68793          	addi	a5,a3,-1
   184d8:	0cf12623          	sw	a5,204(sp)
   184dc:	fff6c783          	lbu	a5,-1(a3)
   184e0:	14c78a63          	beq	a5,a2,18634 <_svfprintf_r+0xb30>
   184e4:	03900613          	li	a2,57
   184e8:	14c79a63          	bne	a5,a2,1863c <_svfprintf_r+0xb38>
   184ec:	00aa4783          	lbu	a5,10(s4)
   184f0:	fef68fa3          	sb	a5,-1(a3)
   184f4:	000d8a13          	mv	s4,s11
   184f8:	04700713          	li	a4,71
   184fc:	409a0a33          	sub	s4,s4,s1
   18500:	0bc12c83          	lw	s9,188(sp)
   18504:	2aeb9863          	bne	s7,a4,187b4 <_svfprintf_r+0xcb0>
   18508:	ffd00713          	li	a4,-3
   1850c:	00ecc463          	blt	s9,a4,18514 <_svfprintf_r+0xa10>
   18510:	339b5463          	ble	s9,s6,18838 <_svfprintf_r+0xd34>
   18514:	ffed0d13          	addi	s10,s10,-2
   18518:	fffc8693          	addi	a3,s9,-1 # 3ffdffff <__global_pointer$+0x3ffbce57>
   1851c:	0ad12e23          	sw	a3,188(sp)
   18520:	fdfd7613          	andi	a2,s10,-33
   18524:	04100513          	li	a0,65
   18528:	0ffd7713          	andi	a4,s10,255
   1852c:	00000593          	li	a1,0
   18530:	00a61863          	bne	a2,a0,18540 <_svfprintf_r+0xa3c>
   18534:	00f70713          	addi	a4,a4,15
   18538:	0ff77713          	andi	a4,a4,255
   1853c:	00100593          	li	a1,1
   18540:	0ce10223          	sb	a4,196(sp)
   18544:	02b00793          	li	a5,43
   18548:	0006d863          	bgez	a3,18558 <_svfprintf_r+0xa54>
   1854c:	00100693          	li	a3,1
   18550:	419686b3          	sub	a3,a3,s9
   18554:	02d00793          	li	a5,45
   18558:	0cf102a3          	sb	a5,197(sp)
   1855c:	00900793          	li	a5,9
   18560:	28d7de63          	ble	a3,a5,187fc <_svfprintf_r+0xcf8>
   18564:	0d310713          	addi	a4,sp,211
   18568:	00070513          	mv	a0,a4
   1856c:	00a00593          	li	a1,10
   18570:	00900813          	li	a6,9
   18574:	02b6e7b3          	rem	a5,a3,a1
   18578:	fff70613          	addi	a2,a4,-1
   1857c:	02b6c6b3          	div	a3,a3,a1
   18580:	03078793          	addi	a5,a5,48 # 40030030 <__global_pointer$+0x4000ce88>
   18584:	fef70fa3          	sb	a5,-1(a4)
   18588:	24d84c63          	blt	a6,a3,187e0 <_svfprintf_r+0xcdc>
   1858c:	03068793          	addi	a5,a3,48
   18590:	fef60fa3          	sb	a5,-1(a2)
   18594:	ffe70713          	addi	a4,a4,-2
   18598:	0c610613          	addi	a2,sp,198
   1859c:	24a76663          	bltu	a4,a0,187e8 <_svfprintf_r+0xce4>
   185a0:	0c410793          	addi	a5,sp,196
   185a4:	40f607b3          	sub	a5,a2,a5
   185a8:	02f12e23          	sw	a5,60(sp)
   185ac:	01478b33          	add	s6,a5,s4
   185b0:	00100793          	li	a5,1
   185b4:	0147c663          	blt	a5,s4,185c0 <_svfprintf_r+0xabc>
   185b8:	00147793          	andi	a5,s0,1
   185bc:	00078663          	beqz	a5,185c8 <_svfprintf_r+0xac4>
   185c0:	02012783          	lw	a5,32(sp)
   185c4:	00fb0b33          	add	s6,s6,a5
   185c8:	bff47413          	andi	s0,s0,-1025
   185cc:	10046793          	ori	a5,s0,256
   185d0:	02f12623          	sw	a5,44(sp)
   185d4:	00000c13          	li	s8,0
   185d8:	00000b93          	li	s7,0
   185dc:	00000c93          	li	s9,0
   185e0:	04412783          	lw	a5,68(sp)
   185e4:	00078663          	beqz	a5,185f0 <_svfprintf_r+0xaec>
   185e8:	02d00713          	li	a4,45
   185ec:	0ae10ba3          	sb	a4,183(sp)
   185f0:	02c12403          	lw	s0,44(sp)
   185f4:	00000a93          	li	s5,0
   185f8:	4900006f          	j	18a88 <_svfprintf_r+0xf84>
   185fc:	00012623          	sw	zero,12(sp)
   18600:	13c10493          	addi	s1,sp,316
   18604:	ba5ff06f          	j	181a8 <_svfprintf_r+0x6a4>
   18608:	00a12623          	sw	a0,12(sp)
   1860c:	b9dff06f          	j	181a8 <_svfprintf_r+0x6a4>
   18610:	00012623          	sw	zero,12(sp)
   18614:	00600b13          	li	s6,6
   18618:	b91ff06f          	j	181a8 <_svfprintf_r+0x6a4>
   1861c:	01612623          	sw	s6,12(sp)
   18620:	00100b13          	li	s6,1
   18624:	b85ff06f          	j	181a8 <_svfprintf_r+0x6a4>
   18628:	00021a37          	lui	s4,0x21
   1862c:	a6ca0a13          	addi	s4,s4,-1428 # 20a6c <zeroes.4405+0x34>
   18630:	c9dff06f          	j	182cc <_svfprintf_r+0x7c8>
   18634:	feb68fa3          	sb	a1,-1(a3)
   18638:	e99ff06f          	j	184d0 <_svfprintf_r+0x9cc>
   1863c:	00178793          	addi	a5,a5,1
   18640:	0ff7f793          	andi	a5,a5,255
   18644:	eadff06f          	j	184f0 <_svfprintf_r+0x9ec>
   18648:	001a0a13          	addi	s4,s4,1
   1864c:	feea0fa3          	sb	a4,-1(s4)
   18650:	414c07b3          	sub	a5,s8,s4
   18654:	fe07dae3          	bgez	a5,18648 <_svfprintf_r+0xb44>
   18658:	ea1ff06f          	j	184f8 <_svfprintf_r+0x9f4>
   1865c:	04812783          	lw	a5,72(sp)
   18660:	000d8a13          	mv	s4,s11
   18664:	03000713          	li	a4,48
   18668:	00fd8c33          	add	s8,s11,a5
   1866c:	fe5ff06f          	j	18650 <_svfprintf_r+0xb4c>
   18670:	04600793          	li	a5,70
   18674:	00fb8e63          	beq	s7,a5,18690 <_svfprintf_r+0xb8c>
   18678:	04500793          	li	a5,69
   1867c:	001b0c13          	addi	s8,s6,1
   18680:	00fb8463          	beq	s7,a5,18688 <_svfprintf_r+0xb84>
   18684:	000b0c13          	mv	s8,s6
   18688:	00200613          	li	a2,2
   1868c:	00c0006f          	j	18698 <_svfprintf_r+0xb94>
   18690:	000b0c13          	mv	s8,s6
   18694:	00300613          	li	a2,3
   18698:	0c010793          	addi	a5,sp,192
   1869c:	0cc10813          	addi	a6,sp,204
   186a0:	0bc10713          	addi	a4,sp,188
   186a4:	000c0693          	mv	a3,s8
   186a8:	0a010593          	addi	a1,sp,160
   186ac:	00090513          	mv	a0,s2
   186b0:	05112823          	sw	a7,80(sp)
   186b4:	0bc12023          	sw	t3,160(sp)
   186b8:	05c12423          	sw	t3,72(sp)
   186bc:	0bb12223          	sw	s11,164(sp)
   186c0:	0b912423          	sw	s9,168(sp)
   186c4:	0b512623          	sw	s5,172(sp)
   186c8:	c08fc0ef          	jal	ra,14ad0 <_ldtoa_r>
   186cc:	04700793          	li	a5,71
   186d0:	00050493          	mv	s1,a0
   186d4:	04812e03          	lw	t3,72(sp)
   186d8:	05012883          	lw	a7,80(sp)
   186dc:	00fb9663          	bne	s7,a5,186e8 <_svfprintf_r+0xbe4>
   186e0:	00147793          	andi	a5,s0,1
   186e4:	0a078863          	beqz	a5,18794 <_svfprintf_r+0xc90>
   186e8:	04600793          	li	a5,70
   186ec:	01848a33          	add	s4,s1,s8
   186f0:	06fb9263          	bne	s7,a5,18754 <_svfprintf_r+0xc50>
   186f4:	0004c703          	lbu	a4,0(s1)
   186f8:	03000793          	li	a5,48
   186fc:	04f71863          	bne	a4,a5,1874c <_svfprintf_r+0xc48>
   18700:	09010593          	addi	a1,sp,144
   18704:	0a010513          	addi	a0,sp,160
   18708:	05112823          	sw	a7,80(sp)
   1870c:	0bc12023          	sw	t3,160(sp)
   18710:	05c12423          	sw	t3,72(sp)
   18714:	0bb12223          	sw	s11,164(sp)
   18718:	0b912423          	sw	s9,168(sp)
   1871c:	0b512623          	sw	s5,172(sp)
   18720:	08012823          	sw	zero,144(sp)
   18724:	08012a23          	sw	zero,148(sp)
   18728:	08012c23          	sw	zero,152(sp)
   1872c:	08012e23          	sw	zero,156(sp)
   18730:	008050ef          	jal	ra,1d738 <__eqtf2>
   18734:	04812e03          	lw	t3,72(sp)
   18738:	05012883          	lw	a7,80(sp)
   1873c:	00050863          	beqz	a0,1874c <_svfprintf_r+0xc48>
   18740:	00100793          	li	a5,1
   18744:	41878c33          	sub	s8,a5,s8
   18748:	0b812e23          	sw	s8,188(sp)
   1874c:	0bc12783          	lw	a5,188(sp)
   18750:	00fa0a33          	add	s4,s4,a5
   18754:	09010593          	addi	a1,sp,144
   18758:	0a010513          	addi	a0,sp,160
   1875c:	05112423          	sw	a7,72(sp)
   18760:	0bc12023          	sw	t3,160(sp)
   18764:	0bb12223          	sw	s11,164(sp)
   18768:	0b912423          	sw	s9,168(sp)
   1876c:	0b512623          	sw	s5,172(sp)
   18770:	08012823          	sw	zero,144(sp)
   18774:	08012a23          	sw	zero,148(sp)
   18778:	08012c23          	sw	zero,152(sp)
   1877c:	08012e23          	sw	zero,156(sp)
   18780:	7b9040ef          	jal	ra,1d738 <__eqtf2>
   18784:	04812883          	lw	a7,72(sp)
   18788:	03000713          	li	a4,48
   1878c:	00051e63          	bnez	a0,187a8 <_svfprintf_r+0xca4>
   18790:	0d412623          	sw	s4,204(sp)
   18794:	0cc12a03          	lw	s4,204(sp)
   18798:	d61ff06f          	j	184f8 <_svfprintf_r+0x9f4>
   1879c:	00178693          	addi	a3,a5,1
   187a0:	0cd12623          	sw	a3,204(sp)
   187a4:	00e78023          	sb	a4,0(a5)
   187a8:	0cc12783          	lw	a5,204(sp)
   187ac:	ff47e8e3          	bltu	a5,s4,1879c <_svfprintf_r+0xc98>
   187b0:	fe5ff06f          	j	18794 <_svfprintf_r+0xc90>
   187b4:	04600713          	li	a4,70
   187b8:	d6eb90e3          	bne	s7,a4,18518 <_svfprintf_r+0xa14>
   187bc:	07905263          	blez	s9,18820 <_svfprintf_r+0xd1c>
   187c0:	000b1663          	bnez	s6,187cc <_svfprintf_r+0xcc8>
   187c4:	00147713          	andi	a4,s0,1
   187c8:	0c070263          	beqz	a4,1888c <_svfprintf_r+0xd88>
   187cc:	02012783          	lw	a5,32(sp)
   187d0:	00fc8733          	add	a4,s9,a5
   187d4:	00eb0b33          	add	s6,s6,a4
   187d8:	06600d13          	li	s10,102
   187dc:	0940006f          	j	18870 <_svfprintf_r+0xd6c>
   187e0:	00060713          	mv	a4,a2
   187e4:	d91ff06f          	j	18574 <_svfprintf_r+0xa70>
   187e8:	00170713          	addi	a4,a4,1
   187ec:	fff74783          	lbu	a5,-1(a4)
   187f0:	00160613          	addi	a2,a2,1
   187f4:	fef60fa3          	sb	a5,-1(a2)
   187f8:	da5ff06f          	j	1859c <_svfprintf_r+0xa98>
   187fc:	0c610713          	addi	a4,sp,198
   18800:	00059863          	bnez	a1,18810 <_svfprintf_r+0xd0c>
   18804:	03000793          	li	a5,48
   18808:	0cf10323          	sb	a5,198(sp)
   1880c:	0c710713          	addi	a4,sp,199
   18810:	03068793          	addi	a5,a3,48
   18814:	00170613          	addi	a2,a4,1
   18818:	00f70023          	sb	a5,0(a4)
   1881c:	d85ff06f          	j	185a0 <_svfprintf_r+0xa9c>
   18820:	000b1663          	bnez	s6,1882c <_svfprintf_r+0xd28>
   18824:	00147713          	andi	a4,s0,1
   18828:	06070663          	beqz	a4,18894 <_svfprintf_r+0xd90>
   1882c:	02012783          	lw	a5,32(sp)
   18830:	00178713          	addi	a4,a5,1
   18834:	fa1ff06f          	j	187d4 <_svfprintf_r+0xcd0>
   18838:	034cc063          	blt	s9,s4,18858 <_svfprintf_r+0xd54>
   1883c:	00147713          	andi	a4,s0,1
   18840:	000c8b13          	mv	s6,s9
   18844:	00070663          	beqz	a4,18850 <_svfprintf_r+0xd4c>
   18848:	02012783          	lw	a5,32(sp)
   1884c:	00fc8b33          	add	s6,s9,a5
   18850:	06700d13          	li	s10,103
   18854:	01c0006f          	j	18870 <_svfprintf_r+0xd6c>
   18858:	02012783          	lw	a5,32(sp)
   1885c:	06700d13          	li	s10,103
   18860:	00fa0b33          	add	s6,s4,a5
   18864:	01904663          	bgtz	s9,18870 <_svfprintf_r+0xd6c>
   18868:	419b0333          	sub	t1,s6,s9
   1886c:	00130b13          	addi	s6,t1,1
   18870:	40047b93          	andi	s7,s0,1024
   18874:	00000c13          	li	s8,0
   18878:	d60b84e3          	beqz	s7,185e0 <_svfprintf_r+0xadc>
   1887c:	00000b93          	li	s7,0
   18880:	d79050e3          	blez	s9,185e0 <_svfprintf_r+0xadc>
   18884:	0ff00693          	li	a3,255
   18888:	0380006f          	j	188c0 <_svfprintf_r+0xdbc>
   1888c:	000c8b13          	mv	s6,s9
   18890:	f49ff06f          	j	187d8 <_svfprintf_r+0xcd4>
   18894:	06600d13          	li	s10,102
   18898:	00100b13          	li	s6,1
   1889c:	fd5ff06f          	j	18870 <_svfprintf_r+0xd6c>
   188a0:	03975663          	ble	s9,a4,188cc <_svfprintf_r+0xdc8>
   188a4:	01012783          	lw	a5,16(sp)
   188a8:	40ec8cb3          	sub	s9,s9,a4
   188ac:	0017c703          	lbu	a4,1(a5)
   188b0:	02070863          	beqz	a4,188e0 <_svfprintf_r+0xddc>
   188b4:	00178793          	addi	a5,a5,1
   188b8:	001b8b93          	addi	s7,s7,1
   188bc:	00f12823          	sw	a5,16(sp)
   188c0:	01012783          	lw	a5,16(sp)
   188c4:	0007c703          	lbu	a4,0(a5)
   188c8:	fcd71ce3          	bne	a4,a3,188a0 <_svfprintf_r+0xd9c>
   188cc:	03012783          	lw	a5,48(sp)
   188d0:	018b8733          	add	a4,s7,s8
   188d4:	02f70733          	mul	a4,a4,a5
   188d8:	01670b33          	add	s6,a4,s6
   188dc:	d05ff06f          	j	185e0 <_svfprintf_r+0xadc>
   188e0:	001c0c13          	addi	s8,s8,1
   188e4:	fddff06f          	j	188c0 <_svfprintf_r+0xdbc>
   188e8:	004a8713          	addi	a4,s5,4
   188ec:	00e12c23          	sw	a4,24(sp)
   188f0:	02047713          	andi	a4,s0,32
   188f4:	000aa783          	lw	a5,0(s5)
   188f8:	02070063          	beqz	a4,18918 <_svfprintf_r+0xe14>
   188fc:	02412703          	lw	a4,36(sp)
   18900:	00e7a023          	sw	a4,0(a5)
   18904:	41f75713          	srai	a4,a4,0x1f
   18908:	00e7a223          	sw	a4,4(a5)
   1890c:	01812a83          	lw	s5,24(sp)
   18910:	01c12483          	lw	s1,28(sp)
   18914:	aecff06f          	j	17c00 <_svfprintf_r+0xfc>
   18918:	01047713          	andi	a4,s0,16
   1891c:	00070863          	beqz	a4,1892c <_svfprintf_r+0xe28>
   18920:	02412703          	lw	a4,36(sp)
   18924:	00e7a023          	sw	a4,0(a5)
   18928:	fe5ff06f          	j	1890c <_svfprintf_r+0xe08>
   1892c:	04047713          	andi	a4,s0,64
   18930:	00070863          	beqz	a4,18940 <_svfprintf_r+0xe3c>
   18934:	02415703          	lhu	a4,36(sp)
   18938:	00e79023          	sh	a4,0(a5)
   1893c:	fd1ff06f          	j	1890c <_svfprintf_r+0xe08>
   18940:	20047413          	andi	s0,s0,512
   18944:	fc040ee3          	beqz	s0,18920 <_svfprintf_r+0xe1c>
   18948:	02414703          	lbu	a4,36(sp)
   1894c:	00e78023          	sb	a4,0(a5)
   18950:	fbdff06f          	j	1890c <_svfprintf_r+0xe08>
   18954:	01046413          	ori	s0,s0,16
   18958:	02047793          	andi	a5,s0,32
   1895c:	04078863          	beqz	a5,189ac <_svfprintf_r+0xea8>
   18960:	007a8a93          	addi	s5,s5,7
   18964:	ff8afa93          	andi	s5,s5,-8
   18968:	000aac03          	lw	s8,0(s5)
   1896c:	004aac83          	lw	s9,4(s5)
   18970:	008a8793          	addi	a5,s5,8
   18974:	00f12c23          	sw	a5,24(sp)
   18978:	bff47413          	andi	s0,s0,-1025
   1897c:	00000793          	li	a5,0
   18980:	0a010ba3          	sb	zero,183(sp)
   18984:	fff00713          	li	a4,-1
   18988:	42eb0863          	beq	s6,a4,18db8 <_svfprintf_r+0x12b4>
   1898c:	00040713          	mv	a4,s0
   18990:	019c66b3          	or	a3,s8,s9
   18994:	f7f47413          	andi	s0,s0,-129
   18998:	42069063          	bnez	a3,18db8 <_svfprintf_r+0x12b4>
   1899c:	580b0e63          	beqz	s6,18f38 <_svfprintf_r+0x1434>
   189a0:	00100713          	li	a4,1
   189a4:	40e79e63          	bne	a5,a4,18dc0 <_svfprintf_r+0x12bc>
   189a8:	d98ff06f          	j	17f40 <_svfprintf_r+0x43c>
   189ac:	004a8793          	addi	a5,s5,4
   189b0:	00f12c23          	sw	a5,24(sp)
   189b4:	01047793          	andi	a5,s0,16
   189b8:	00078663          	beqz	a5,189c4 <_svfprintf_r+0xec0>
   189bc:	000aac03          	lw	s8,0(s5)
   189c0:	0100006f          	j	189d0 <_svfprintf_r+0xecc>
   189c4:	04047793          	andi	a5,s0,64
   189c8:	00078863          	beqz	a5,189d8 <_svfprintf_r+0xed4>
   189cc:	000adc03          	lhu	s8,0(s5)
   189d0:	00000c93          	li	s9,0
   189d4:	fa5ff06f          	j	18978 <_svfprintf_r+0xe74>
   189d8:	20047793          	andi	a5,s0,512
   189dc:	fe0780e3          	beqz	a5,189bc <_svfprintf_r+0xeb8>
   189e0:	000acc03          	lbu	s8,0(s5)
   189e4:	fedff06f          	j	189d0 <_svfprintf_r+0xecc>
   189e8:	004a8793          	addi	a5,s5,4
   189ec:	00f12c23          	sw	a5,24(sp)
   189f0:	ffff87b7          	lui	a5,0xffff8
   189f4:	8307c793          	xori	a5,a5,-2000
   189f8:	0af11c23          	sh	a5,184(sp)
   189fc:	000217b7          	lui	a5,0x21
   18a00:	a5878793          	addi	a5,a5,-1448 # 20a58 <zeroes.4405+0x20>
   18a04:	04f12023          	sw	a5,64(sp)
   18a08:	000aac03          	lw	s8,0(s5)
   18a0c:	00000c93          	li	s9,0
   18a10:	00246413          	ori	s0,s0,2
   18a14:	00200793          	li	a5,2
   18a18:	07800d13          	li	s10,120
   18a1c:	f65ff06f          	j	18980 <_svfprintf_r+0xe7c>
   18a20:	004a8793          	addi	a5,s5,4
   18a24:	00f12c23          	sw	a5,24(sp)
   18a28:	0a010ba3          	sb	zero,183(sp)
   18a2c:	fff00793          	li	a5,-1
   18a30:	03112623          	sw	a7,44(sp)
   18a34:	000aa483          	lw	s1,0(s5)
   18a38:	02fb0663          	beq	s6,a5,18a64 <_svfprintf_r+0xf60>
   18a3c:	000b0613          	mv	a2,s6
   18a40:	00000593          	li	a1,0
   18a44:	00048513          	mv	a0,s1
   18a48:	e84fd0ef          	jal	ra,160cc <memchr>
   18a4c:	00a12623          	sw	a0,12(sp)
   18a50:	02c12883          	lw	a7,44(sp)
   18a54:	de050e63          	beqz	a0,18050 <_svfprintf_r+0x54c>
   18a58:	40950b33          	sub	s6,a0,s1
   18a5c:	00012623          	sw	zero,12(sp)
   18a60:	df0ff06f          	j	18050 <_svfprintf_r+0x54c>
   18a64:	00048513          	mv	a0,s1
   18a68:	b65f70ef          	jal	ra,105cc <strlen>
   18a6c:	02c12883          	lw	a7,44(sp)
   18a70:	00050b13          	mv	s6,a0
   18a74:	00012623          	sw	zero,12(sp)
   18a78:	00000a93          	li	s5,0
   18a7c:	00000c13          	li	s8,0
   18a80:	00000b93          	li	s7,0
   18a84:	00000c93          	li	s9,0
   18a88:	03512623          	sw	s5,44(sp)
   18a8c:	016ad463          	ble	s6,s5,18a94 <_svfprintf_r+0xf90>
   18a90:	03612623          	sw	s6,44(sp)
   18a94:	0b714703          	lbu	a4,183(sp)
   18a98:	00070863          	beqz	a4,18aa8 <_svfprintf_r+0xfa4>
   18a9c:	02c12783          	lw	a5,44(sp)
   18aa0:	00178793          	addi	a5,a5,1
   18aa4:	02f12623          	sw	a5,44(sp)
   18aa8:	00247d93          	andi	s11,s0,2
   18aac:	000d8863          	beqz	s11,18abc <_svfprintf_r+0xfb8>
   18ab0:	02c12783          	lw	a5,44(sp)
   18ab4:	00278793          	addi	a5,a5,2
   18ab8:	02f12623          	sw	a5,44(sp)
   18abc:	08447793          	andi	a5,s0,132
   18ac0:	04f12223          	sw	a5,68(sp)
   18ac4:	06079863          	bnez	a5,18b34 <_svfprintf_r+0x1030>
   18ac8:	02812783          	lw	a5,40(sp)
   18acc:	02c12703          	lw	a4,44(sp)
   18ad0:	40e78e33          	sub	t3,a5,a4
   18ad4:	07c05063          	blez	t3,18b34 <_svfprintf_r+0x1030>
   18ad8:	00021eb7          	lui	t4,0x21
   18adc:	01000f13          	li	t5,16
   18ae0:	fa4e8e93          	addi	t4,t4,-92 # 20fa4 <blanks.4389>
   18ae4:	00700f93          	li	t6,7
   18ae8:	0d812683          	lw	a3,216(sp)
   18aec:	01d8a023          	sw	t4,0(a7)
   18af0:	0dc12703          	lw	a4,220(sp)
   18af4:	00168693          	addi	a3,a3,1
   18af8:	00888613          	addi	a2,a7,8
   18afc:	47cf4663          	blt	t5,t3,18f68 <_svfprintf_r+0x1464>
   18b00:	00ee0733          	add	a4,t3,a4
   18b04:	01c8a223          	sw	t3,4(a7)
   18b08:	0ce12e23          	sw	a4,220(sp)
   18b0c:	0cd12c23          	sw	a3,216(sp)
   18b10:	00700713          	li	a4,7
   18b14:	00060893          	mv	a7,a2
   18b18:	00d75e63          	ble	a3,a4,18b34 <_svfprintf_r+0x1030>
   18b1c:	0d410613          	addi	a2,sp,212
   18b20:	00098593          	mv	a1,s3
   18b24:	00090513          	mv	a0,s2
   18b28:	3f0020ef          	jal	ra,1af18 <__ssprint_r>
   18b2c:	680518e3          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   18b30:	0fc10893          	addi	a7,sp,252
   18b34:	0b714703          	lbu	a4,183(sp)
   18b38:	04070863          	beqz	a4,18b88 <_svfprintf_r+0x1084>
   18b3c:	0b710713          	addi	a4,sp,183
   18b40:	00e8a023          	sw	a4,0(a7)
   18b44:	00100713          	li	a4,1
   18b48:	00e8a223          	sw	a4,4(a7)
   18b4c:	0dc12703          	lw	a4,220(sp)
   18b50:	00700693          	li	a3,7
   18b54:	00888893          	addi	a7,a7,8
   18b58:	00170713          	addi	a4,a4,1
   18b5c:	0ce12e23          	sw	a4,220(sp)
   18b60:	0d812703          	lw	a4,216(sp)
   18b64:	00170713          	addi	a4,a4,1
   18b68:	0ce12c23          	sw	a4,216(sp)
   18b6c:	00e6de63          	ble	a4,a3,18b88 <_svfprintf_r+0x1084>
   18b70:	0d410613          	addi	a2,sp,212
   18b74:	00098593          	mv	a1,s3
   18b78:	00090513          	mv	a0,s2
   18b7c:	39c020ef          	jal	ra,1af18 <__ssprint_r>
   18b80:	62051ee3          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   18b84:	0fc10893          	addi	a7,sp,252
   18b88:	040d8863          	beqz	s11,18bd8 <_svfprintf_r+0x10d4>
   18b8c:	0b810713          	addi	a4,sp,184
   18b90:	00e8a023          	sw	a4,0(a7)
   18b94:	00200713          	li	a4,2
   18b98:	00e8a223          	sw	a4,4(a7)
   18b9c:	0dc12703          	lw	a4,220(sp)
   18ba0:	00700693          	li	a3,7
   18ba4:	00888893          	addi	a7,a7,8
   18ba8:	00270713          	addi	a4,a4,2
   18bac:	0ce12e23          	sw	a4,220(sp)
   18bb0:	0d812703          	lw	a4,216(sp)
   18bb4:	00170713          	addi	a4,a4,1
   18bb8:	0ce12c23          	sw	a4,216(sp)
   18bbc:	00e6de63          	ble	a4,a3,18bd8 <_svfprintf_r+0x10d4>
   18bc0:	0d410613          	addi	a2,sp,212
   18bc4:	00098593          	mv	a1,s3
   18bc8:	00090513          	mv	a0,s2
   18bcc:	34c020ef          	jal	ra,1af18 <__ssprint_r>
   18bd0:	5e0516e3          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   18bd4:	0fc10893          	addi	a7,sp,252
   18bd8:	04412783          	lw	a5,68(sp)
   18bdc:	08000713          	li	a4,128
   18be0:	06e79663          	bne	a5,a4,18c4c <_svfprintf_r+0x1148>
   18be4:	02812783          	lw	a5,40(sp)
   18be8:	02c12703          	lw	a4,44(sp)
   18bec:	40e78db3          	sub	s11,a5,a4
   18bf0:	05b05e63          	blez	s11,18c4c <_svfprintf_r+0x1148>
   18bf4:	01000793          	li	a5,16
   18bf8:	00700e13          	li	t3,7
   18bfc:	0d812703          	lw	a4,216(sp)
   18c00:	0dc12683          	lw	a3,220(sp)
   18c04:	00888613          	addi	a2,a7,8
   18c08:	00170713          	addi	a4,a4,1
   18c0c:	3bb7ca63          	blt	a5,s11,18fc0 <_svfprintf_r+0x14bc>
   18c10:	01412783          	lw	a5,20(sp)
   18c14:	01b8a223          	sw	s11,4(a7)
   18c18:	00dd8db3          	add	s11,s11,a3
   18c1c:	00f8a023          	sw	a5,0(a7)
   18c20:	0db12e23          	sw	s11,220(sp)
   18c24:	0ce12c23          	sw	a4,216(sp)
   18c28:	00700693          	li	a3,7
   18c2c:	00060893          	mv	a7,a2
   18c30:	00e6de63          	ble	a4,a3,18c4c <_svfprintf_r+0x1148>
   18c34:	0d410613          	addi	a2,sp,212
   18c38:	00098593          	mv	a1,s3
   18c3c:	00090513          	mv	a0,s2
   18c40:	2d8020ef          	jal	ra,1af18 <__ssprint_r>
   18c44:	56051ce3          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   18c48:	0fc10893          	addi	a7,sp,252
   18c4c:	416a8ab3          	sub	s5,s5,s6
   18c50:	05505e63          	blez	s5,18cac <_svfprintf_r+0x11a8>
   18c54:	01000d93          	li	s11,16
   18c58:	00700813          	li	a6,7
   18c5c:	01412783          	lw	a5,20(sp)
   18c60:	0d812703          	lw	a4,216(sp)
   18c64:	0dc12683          	lw	a3,220(sp)
   18c68:	00f8a023          	sw	a5,0(a7)
   18c6c:	00170713          	addi	a4,a4,1
   18c70:	00888613          	addi	a2,a7,8
   18c74:	395dce63          	blt	s11,s5,19010 <_svfprintf_r+0x150c>
   18c78:	0158a223          	sw	s5,4(a7)
   18c7c:	00da8ab3          	add	s5,s5,a3
   18c80:	0d512e23          	sw	s5,220(sp)
   18c84:	0ce12c23          	sw	a4,216(sp)
   18c88:	00700693          	li	a3,7
   18c8c:	00060893          	mv	a7,a2
   18c90:	00e6de63          	ble	a4,a3,18cac <_svfprintf_r+0x11a8>
   18c94:	0d410613          	addi	a2,sp,212
   18c98:	00098593          	mv	a1,s3
   18c9c:	00090513          	mv	a0,s2
   18ca0:	278020ef          	jal	ra,1af18 <__ssprint_r>
   18ca4:	50051ce3          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   18ca8:	0fc10893          	addi	a7,sp,252
   18cac:	10047713          	andi	a4,s0,256
   18cb0:	0dc12d83          	lw	s11,220(sp)
   18cb4:	38071e63          	bnez	a4,19050 <_svfprintf_r+0x154c>
   18cb8:	01bb0333          	add	t1,s6,s11
   18cbc:	0098a023          	sw	s1,0(a7)
   18cc0:	0168a223          	sw	s6,4(a7)
   18cc4:	0c612e23          	sw	t1,220(sp)
   18cc8:	0d812783          	lw	a5,216(sp)
   18ccc:	00700713          	li	a4,7
   18cd0:	00888893          	addi	a7,a7,8
   18cd4:	00178793          	addi	a5,a5,1
   18cd8:	0cf12c23          	sw	a5,216(sp)
   18cdc:	4af75c63          	ble	a5,a4,19194 <_svfprintf_r+0x1690>
   18ce0:	0d410613          	addi	a2,sp,212
   18ce4:	00098593          	mv	a1,s3
   18ce8:	00090513          	mv	a0,s2
   18cec:	22c020ef          	jal	ra,1af18 <__ssprint_r>
   18cf0:	4c0516e3          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   18cf4:	0fc10893          	addi	a7,sp,252
   18cf8:	49c0006f          	j	19194 <_svfprintf_r+0x1690>
   18cfc:	01046413          	ori	s0,s0,16
   18d00:	02047793          	andi	a5,s0,32
   18d04:	02078263          	beqz	a5,18d28 <_svfprintf_r+0x1224>
   18d08:	007a8a93          	addi	s5,s5,7
   18d0c:	ff8afa93          	andi	s5,s5,-8
   18d10:	000aac03          	lw	s8,0(s5)
   18d14:	004aac83          	lw	s9,4(s5)
   18d18:	008a8793          	addi	a5,s5,8
   18d1c:	00f12c23          	sw	a5,24(sp)
   18d20:	00100793          	li	a5,1
   18d24:	c5dff06f          	j	18980 <_svfprintf_r+0xe7c>
   18d28:	004a8793          	addi	a5,s5,4
   18d2c:	00f12c23          	sw	a5,24(sp)
   18d30:	01047793          	andi	a5,s0,16
   18d34:	00078663          	beqz	a5,18d40 <_svfprintf_r+0x123c>
   18d38:	000aac03          	lw	s8,0(s5)
   18d3c:	0100006f          	j	18d4c <_svfprintf_r+0x1248>
   18d40:	04047793          	andi	a5,s0,64
   18d44:	00078863          	beqz	a5,18d54 <_svfprintf_r+0x1250>
   18d48:	000adc03          	lhu	s8,0(s5)
   18d4c:	00000c93          	li	s9,0
   18d50:	fd1ff06f          	j	18d20 <_svfprintf_r+0x121c>
   18d54:	20047793          	andi	a5,s0,512
   18d58:	fe0780e3          	beqz	a5,18d38 <_svfprintf_r+0x1234>
   18d5c:	000acc03          	lbu	s8,0(s5)
   18d60:	fedff06f          	j	18d4c <_svfprintf_r+0x1248>
   18d64:	000217b7          	lui	a5,0x21
   18d68:	a5878793          	addi	a5,a5,-1448 # 20a58 <zeroes.4405+0x20>
   18d6c:	f75fe06f          	j	17ce0 <_svfprintf_r+0x1dc>
   18d70:	004a8793          	addi	a5,s5,4
   18d74:	00f12c23          	sw	a5,24(sp)
   18d78:	01047793          	andi	a5,s0,16
   18d7c:	00078663          	beqz	a5,18d88 <_svfprintf_r+0x1284>
   18d80:	000aac03          	lw	s8,0(s5)
   18d84:	0100006f          	j	18d94 <_svfprintf_r+0x1290>
   18d88:	04047793          	andi	a5,s0,64
   18d8c:	00078863          	beqz	a5,18d9c <_svfprintf_r+0x1298>
   18d90:	000adc03          	lhu	s8,0(s5)
   18d94:	00000c93          	li	s9,0
   18d98:	f71fe06f          	j	17d08 <_svfprintf_r+0x204>
   18d9c:	20047793          	andi	a5,s0,512
   18da0:	fe0780e3          	beqz	a5,18d80 <_svfprintf_r+0x127c>
   18da4:	000acc03          	lbu	s8,0(s5)
   18da8:	fedff06f          	j	18d94 <_svfprintf_r+0x1290>
   18dac:	00040713          	mv	a4,s0
   18db0:	00100793          	li	a5,1
   18db4:	bddff06f          	j	18990 <_svfprintf_r+0xe8c>
   18db8:	00100713          	li	a4,1
   18dbc:	96e78c63          	beq	a5,a4,17f34 <_svfprintf_r+0x430>
   18dc0:	00200713          	li	a4,2
   18dc4:	12e78e63          	beq	a5,a4,18f00 <_svfprintf_r+0x13fc>
   18dc8:	1a010793          	addi	a5,sp,416
   18dcc:	01dc9693          	slli	a3,s9,0x1d
   18dd0:	007c7713          	andi	a4,s8,7
   18dd4:	003c5c13          	srli	s8,s8,0x3
   18dd8:	03070713          	addi	a4,a4,48
   18ddc:	0186ec33          	or	s8,a3,s8
   18de0:	003cdc93          	srli	s9,s9,0x3
   18de4:	fee78fa3          	sb	a4,-1(a5)
   18de8:	019c66b3          	or	a3,s8,s9
   18dec:	fff78493          	addi	s1,a5,-1
   18df0:	02069e63          	bnez	a3,18e2c <_svfprintf_r+0x1328>
   18df4:	00147693          	andi	a3,s0,1
   18df8:	00068a63          	beqz	a3,18e0c <_svfprintf_r+0x1308>
   18dfc:	03000693          	li	a3,48
   18e00:	00d70663          	beq	a4,a3,18e0c <_svfprintf_r+0x1308>
   18e04:	fed48fa3          	sb	a3,-1(s1)
   18e08:	ffe78493          	addi	s1,a5,-2
   18e0c:	1a010793          	addi	a5,sp,416
   18e10:	000b0a93          	mv	s5,s6
   18e14:	00012623          	sw	zero,12(sp)
   18e18:	40978b33          	sub	s6,a5,s1
   18e1c:	00000c13          	li	s8,0
   18e20:	00000b93          	li	s7,0
   18e24:	00000c93          	li	s9,0
   18e28:	c61ff06f          	j	18a88 <_svfprintf_r+0xf84>
   18e2c:	00048793          	mv	a5,s1
   18e30:	f9dff06f          	j	18dcc <_svfprintf_r+0x12c8>
   18e34:	00000a13          	li	s4,0
   18e38:	1a010d93          	addi	s11,sp,416
   18e3c:	40047a93          	andi	s5,s0,1024
   18e40:	00900b93          	li	s7,9
   18e44:	00a00613          	li	a2,10
   18e48:	00000693          	li	a3,0
   18e4c:	000c0513          	mv	a0,s8
   18e50:	000c8593          	mv	a1,s9
   18e54:	01112623          	sw	a7,12(sp)
   18e58:	01d030ef          	jal	ra,1c674 <__umoddi3>
   18e5c:	03050513          	addi	a0,a0,48
   18e60:	fead8fa3          	sb	a0,-1(s11)
   18e64:	fffd8493          	addi	s1,s11,-1
   18e68:	001a0a13          	addi	s4,s4,1
   18e6c:	00c12883          	lw	a7,12(sp)
   18e70:	040a8e63          	beqz	s5,18ecc <_svfprintf_r+0x13c8>
   18e74:	01012783          	lw	a5,16(sp)
   18e78:	0007c783          	lbu	a5,0(a5)
   18e7c:	04fa1863          	bne	s4,a5,18ecc <_svfprintf_r+0x13c8>
   18e80:	0ff00793          	li	a5,255
   18e84:	04fa0463          	beq	s4,a5,18ecc <_svfprintf_r+0x13c8>
   18e88:	000c9463          	bnez	s9,18e90 <_svfprintf_r+0x138c>
   18e8c:	058bf063          	bleu	s8,s7,18ecc <_svfprintf_r+0x13c8>
   18e90:	03012783          	lw	a5,48(sp)
   18e94:	03812583          	lw	a1,56(sp)
   18e98:	01112623          	sw	a7,12(sp)
   18e9c:	40f484b3          	sub	s1,s1,a5
   18ea0:	00078613          	mv	a2,a5
   18ea4:	00048513          	mv	a0,s1
   18ea8:	c15fe0ef          	jal	ra,17abc <strncpy>
   18eac:	01012783          	lw	a5,16(sp)
   18eb0:	00000a13          	li	s4,0
   18eb4:	00c12883          	lw	a7,12(sp)
   18eb8:	0017c783          	lbu	a5,1(a5)
   18ebc:	00078863          	beqz	a5,18ecc <_svfprintf_r+0x13c8>
   18ec0:	01012783          	lw	a5,16(sp)
   18ec4:	00178793          	addi	a5,a5,1
   18ec8:	00f12823          	sw	a5,16(sp)
   18ecc:	000c0513          	mv	a0,s8
   18ed0:	000c8593          	mv	a1,s9
   18ed4:	00a00613          	li	a2,10
   18ed8:	00000693          	li	a3,0
   18edc:	01112623          	sw	a7,12(sp)
   18ee0:	360030ef          	jal	ra,1c240 <__udivdi3>
   18ee4:	00058c93          	mv	s9,a1
   18ee8:	00a5e5b3          	or	a1,a1,a0
   18eec:	00050c13          	mv	s8,a0
   18ef0:	00c12883          	lw	a7,12(sp)
   18ef4:	f0058ce3          	beqz	a1,18e0c <_svfprintf_r+0x1308>
   18ef8:	00048d93          	mv	s11,s1
   18efc:	f49ff06f          	j	18e44 <_svfprintf_r+0x1340>
   18f00:	1a010493          	addi	s1,sp,416
   18f04:	04012703          	lw	a4,64(sp)
   18f08:	00fc7793          	andi	a5,s8,15
   18f0c:	fff48493          	addi	s1,s1,-1
   18f10:	00f707b3          	add	a5,a4,a5
   18f14:	0007c783          	lbu	a5,0(a5)
   18f18:	004c5c13          	srli	s8,s8,0x4
   18f1c:	00f48023          	sb	a5,0(s1)
   18f20:	01cc9793          	slli	a5,s9,0x1c
   18f24:	0187ec33          	or	s8,a5,s8
   18f28:	004cdc93          	srli	s9,s9,0x4
   18f2c:	019c67b3          	or	a5,s8,s9
   18f30:	fc079ae3          	bnez	a5,18f04 <_svfprintf_r+0x1400>
   18f34:	ed9ff06f          	j	18e0c <_svfprintf_r+0x1308>
   18f38:	1a010493          	addi	s1,sp,416
   18f3c:	ec0798e3          	bnez	a5,18e0c <_svfprintf_r+0x1308>
   18f40:	00177713          	andi	a4,a4,1
   18f44:	ec0704e3          	beqz	a4,18e0c <_svfprintf_r+0x1308>
   18f48:	03000793          	li	a5,48
   18f4c:	18f10fa3          	sb	a5,415(sp)
   18f50:	ff9fe06f          	j	17f48 <_svfprintf_r+0x444>
   18f54:	2c0d06e3          	beqz	s10,19a20 <_svfprintf_r+0x1f1c>
   18f58:	13a10e23          	sb	s10,316(sp)
   18f5c:	0a010ba3          	sb	zero,183(sp)
   18f60:	01512c23          	sw	s5,24(sp)
   18f64:	f69fe06f          	j	17ecc <_svfprintf_r+0x3c8>
   18f68:	01070713          	addi	a4,a4,16
   18f6c:	01e8a223          	sw	t5,4(a7)
   18f70:	0ce12e23          	sw	a4,220(sp)
   18f74:	0cd12c23          	sw	a3,216(sp)
   18f78:	02dfde63          	ble	a3,t6,18fb4 <_svfprintf_r+0x14b0>
   18f7c:	0d410613          	addi	a2,sp,212
   18f80:	00098593          	mv	a1,s3
   18f84:	00090513          	mv	a0,s2
   18f88:	05f12c23          	sw	t6,88(sp)
   18f8c:	05d12a23          	sw	t4,84(sp)
   18f90:	05e12823          	sw	t5,80(sp)
   18f94:	05c12423          	sw	t3,72(sp)
   18f98:	781010ef          	jal	ra,1af18 <__ssprint_r>
   18f9c:	220510e3          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   18fa0:	05812f83          	lw	t6,88(sp)
   18fa4:	05412e83          	lw	t4,84(sp)
   18fa8:	05012f03          	lw	t5,80(sp)
   18fac:	04812e03          	lw	t3,72(sp)
   18fb0:	0fc10613          	addi	a2,sp,252
   18fb4:	ff0e0e13          	addi	t3,t3,-16
   18fb8:	00060893          	mv	a7,a2
   18fbc:	b2dff06f          	j	18ae8 <_svfprintf_r+0xfe4>
   18fc0:	01412583          	lw	a1,20(sp)
   18fc4:	01068693          	addi	a3,a3,16
   18fc8:	00f8a223          	sw	a5,4(a7)
   18fcc:	00b8a023          	sw	a1,0(a7)
   18fd0:	0cd12e23          	sw	a3,220(sp)
   18fd4:	0ce12c23          	sw	a4,216(sp)
   18fd8:	02ee5663          	ble	a4,t3,19004 <_svfprintf_r+0x1500>
   18fdc:	0d410613          	addi	a2,sp,212
   18fe0:	00098593          	mv	a1,s3
   18fe4:	00090513          	mv	a0,s2
   18fe8:	05c12423          	sw	t3,72(sp)
   18fec:	04f12223          	sw	a5,68(sp)
   18ff0:	729010ef          	jal	ra,1af18 <__ssprint_r>
   18ff4:	1c0514e3          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   18ff8:	04812e03          	lw	t3,72(sp)
   18ffc:	04412783          	lw	a5,68(sp)
   19000:	0fc10613          	addi	a2,sp,252
   19004:	ff0d8d93          	addi	s11,s11,-16
   19008:	00060893          	mv	a7,a2
   1900c:	bf1ff06f          	j	18bfc <_svfprintf_r+0x10f8>
   19010:	01068693          	addi	a3,a3,16
   19014:	01b8a223          	sw	s11,4(a7)
   19018:	0cd12e23          	sw	a3,220(sp)
   1901c:	0ce12c23          	sw	a4,216(sp)
   19020:	02e85263          	ble	a4,a6,19044 <_svfprintf_r+0x1540>
   19024:	0d410613          	addi	a2,sp,212
   19028:	00098593          	mv	a1,s3
   1902c:	00090513          	mv	a0,s2
   19030:	05012223          	sw	a6,68(sp)
   19034:	6e5010ef          	jal	ra,1af18 <__ssprint_r>
   19038:	180512e3          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   1903c:	04412803          	lw	a6,68(sp)
   19040:	0fc10613          	addi	a2,sp,252
   19044:	ff0a8a93          	addi	s5,s5,-16
   19048:	00060893          	mv	a7,a2
   1904c:	c11ff06f          	j	18c5c <_svfprintf_r+0x1158>
   19050:	06500713          	li	a4,101
   19054:	71a75263          	ble	s10,a4,19758 <_svfprintf_r+0x1c54>
   19058:	0e012703          	lw	a4,224(sp)
   1905c:	09010593          	addi	a1,sp,144
   19060:	0a010513          	addi	a0,sp,160
   19064:	0ae12023          	sw	a4,160(sp)
   19068:	0e412703          	lw	a4,228(sp)
   1906c:	05112223          	sw	a7,68(sp)
   19070:	08012823          	sw	zero,144(sp)
   19074:	0ae12223          	sw	a4,164(sp)
   19078:	0e812703          	lw	a4,232(sp)
   1907c:	08012a23          	sw	zero,148(sp)
   19080:	08012c23          	sw	zero,152(sp)
   19084:	0ae12423          	sw	a4,168(sp)
   19088:	0ec12703          	lw	a4,236(sp)
   1908c:	08012e23          	sw	zero,156(sp)
   19090:	0ae12623          	sw	a4,172(sp)
   19094:	6a4040ef          	jal	ra,1d738 <__eqtf2>
   19098:	04412883          	lw	a7,68(sp)
   1909c:	18051263          	bnez	a0,19220 <_svfprintf_r+0x171c>
   190a0:	000217b7          	lui	a5,0x21
   190a4:	a8078793          	addi	a5,a5,-1408 # 20a80 <zeroes.4405+0x48>
   190a8:	00f8a023          	sw	a5,0(a7)
   190ac:	00100793          	li	a5,1
   190b0:	00f8a223          	sw	a5,4(a7)
   190b4:	0d812783          	lw	a5,216(sp)
   190b8:	001d8d93          	addi	s11,s11,1
   190bc:	0db12e23          	sw	s11,220(sp)
   190c0:	00178793          	addi	a5,a5,1
   190c4:	0cf12c23          	sw	a5,216(sp)
   190c8:	00700713          	li	a4,7
   190cc:	00888893          	addi	a7,a7,8
   190d0:	00f75e63          	ble	a5,a4,190ec <_svfprintf_r+0x15e8>
   190d4:	0d410613          	addi	a2,sp,212
   190d8:	00098593          	mv	a1,s3
   190dc:	00090513          	mv	a0,s2
   190e0:	639010ef          	jal	ra,1af18 <__ssprint_r>
   190e4:	0c051ce3          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   190e8:	0fc10893          	addi	a7,sp,252
   190ec:	0bc12783          	lw	a5,188(sp)
   190f0:	0147c663          	blt	a5,s4,190fc <_svfprintf_r+0x15f8>
   190f4:	00147793          	andi	a5,s0,1
   190f8:	08078e63          	beqz	a5,19194 <_svfprintf_r+0x1690>
   190fc:	03412783          	lw	a5,52(sp)
   19100:	02012703          	lw	a4,32(sp)
   19104:	00888893          	addi	a7,a7,8
   19108:	fef8ac23          	sw	a5,-8(a7)
   1910c:	02012783          	lw	a5,32(sp)
   19110:	fef8ae23          	sw	a5,-4(a7)
   19114:	0dc12783          	lw	a5,220(sp)
   19118:	00e787b3          	add	a5,a5,a4
   1911c:	0cf12e23          	sw	a5,220(sp)
   19120:	0d812783          	lw	a5,216(sp)
   19124:	00700713          	li	a4,7
   19128:	00178793          	addi	a5,a5,1
   1912c:	0cf12c23          	sw	a5,216(sp)
   19130:	00f75e63          	ble	a5,a4,1914c <_svfprintf_r+0x1648>
   19134:	0d410613          	addi	a2,sp,212
   19138:	00098593          	mv	a1,s3
   1913c:	00090513          	mv	a0,s2
   19140:	5d9010ef          	jal	ra,1af18 <__ssprint_r>
   19144:	06051ce3          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   19148:	0fc10893          	addi	a7,sp,252
   1914c:	fffa0493          	addi	s1,s4,-1
   19150:	04905263          	blez	s1,19194 <_svfprintf_r+0x1690>
   19154:	01000a93          	li	s5,16
   19158:	00700b93          	li	s7,7
   1915c:	01412603          	lw	a2,20(sp)
   19160:	0d812783          	lw	a5,216(sp)
   19164:	0dc12703          	lw	a4,220(sp)
   19168:	00c8a023          	sw	a2,0(a7)
   1916c:	00178793          	addi	a5,a5,1
   19170:	00888693          	addi	a3,a7,8
   19174:	069aca63          	blt	s5,s1,191e8 <_svfprintf_r+0x16e4>
   19178:	0098a223          	sw	s1,4(a7)
   1917c:	00e484b3          	add	s1,s1,a4
   19180:	0c912e23          	sw	s1,220(sp)
   19184:	0cf12c23          	sw	a5,216(sp)
   19188:	00700713          	li	a4,7
   1918c:	00068893          	mv	a7,a3
   19190:	b4f748e3          	blt	a4,a5,18ce0 <_svfprintf_r+0x11dc>
   19194:	00447413          	andi	s0,s0,4
   19198:	7c041263          	bnez	s0,1995c <_svfprintf_r+0x1e58>
   1919c:	02812d03          	lw	s10,40(sp)
   191a0:	02c12783          	lw	a5,44(sp)
   191a4:	00fd5463          	ble	a5,s10,191ac <_svfprintf_r+0x16a8>
   191a8:	00078d13          	mv	s10,a5
   191ac:	02412783          	lw	a5,36(sp)
   191b0:	01a787b3          	add	a5,a5,s10
   191b4:	02f12223          	sw	a5,36(sp)
   191b8:	0dc12783          	lw	a5,220(sp)
   191bc:	00078c63          	beqz	a5,191d4 <_svfprintf_r+0x16d0>
   191c0:	0d410613          	addi	a2,sp,212
   191c4:	00098593          	mv	a1,s3
   191c8:	00090513          	mv	a0,s2
   191cc:	54d010ef          	jal	ra,1af18 <__ssprint_r>
   191d0:	7e051663          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   191d4:	00c12783          	lw	a5,12(sp)
   191d8:	0c012c23          	sw	zero,216(sp)
   191dc:	02079ae3          	bnez	a5,19a10 <_svfprintf_r+0x1f0c>
   191e0:	0fc10893          	addi	a7,sp,252
   191e4:	f28ff06f          	j	1890c <_svfprintf_r+0xe08>
   191e8:	01070713          	addi	a4,a4,16
   191ec:	0158a223          	sw	s5,4(a7)
   191f0:	0ce12e23          	sw	a4,220(sp)
   191f4:	0cf12c23          	sw	a5,216(sp)
   191f8:	00fbde63          	ble	a5,s7,19214 <_svfprintf_r+0x1710>
   191fc:	0d410613          	addi	a2,sp,212
   19200:	00098593          	mv	a1,s3
   19204:	00090513          	mv	a0,s2
   19208:	511010ef          	jal	ra,1af18 <__ssprint_r>
   1920c:	7a051863          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   19210:	0fc10693          	addi	a3,sp,252
   19214:	ff048493          	addi	s1,s1,-16
   19218:	00068893          	mv	a7,a3
   1921c:	f41ff06f          	j	1915c <_svfprintf_r+0x1658>
   19220:	0bc12703          	lw	a4,188(sp)
   19224:	16e04463          	bgtz	a4,1938c <_svfprintf_r+0x1888>
   19228:	000217b7          	lui	a5,0x21
   1922c:	a8078793          	addi	a5,a5,-1408 # 20a80 <zeroes.4405+0x48>
   19230:	00f8a023          	sw	a5,0(a7)
   19234:	00100793          	li	a5,1
   19238:	00f8a223          	sw	a5,4(a7)
   1923c:	0d812783          	lw	a5,216(sp)
   19240:	001d8d93          	addi	s11,s11,1
   19244:	0db12e23          	sw	s11,220(sp)
   19248:	00178793          	addi	a5,a5,1
   1924c:	0cf12c23          	sw	a5,216(sp)
   19250:	00700713          	li	a4,7
   19254:	00888893          	addi	a7,a7,8
   19258:	00f75e63          	ble	a5,a4,19274 <_svfprintf_r+0x1770>
   1925c:	0d410613          	addi	a2,sp,212
   19260:	00098593          	mv	a1,s3
   19264:	00090513          	mv	a0,s2
   19268:	4b1010ef          	jal	ra,1af18 <__ssprint_r>
   1926c:	74051863          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   19270:	0fc10893          	addi	a7,sp,252
   19274:	0bc12783          	lw	a5,188(sp)
   19278:	00079863          	bnez	a5,19288 <_svfprintf_r+0x1784>
   1927c:	000a1663          	bnez	s4,19288 <_svfprintf_r+0x1784>
   19280:	00147793          	andi	a5,s0,1
   19284:	f00788e3          	beqz	a5,19194 <_svfprintf_r+0x1690>
   19288:	03412783          	lw	a5,52(sp)
   1928c:	02012703          	lw	a4,32(sp)
   19290:	00888893          	addi	a7,a7,8
   19294:	fef8ac23          	sw	a5,-8(a7)
   19298:	02012783          	lw	a5,32(sp)
   1929c:	fef8ae23          	sw	a5,-4(a7)
   192a0:	0dc12783          	lw	a5,220(sp)
   192a4:	00e787b3          	add	a5,a5,a4
   192a8:	0cf12e23          	sw	a5,220(sp)
   192ac:	0d812783          	lw	a5,216(sp)
   192b0:	00700713          	li	a4,7
   192b4:	00178793          	addi	a5,a5,1
   192b8:	0cf12c23          	sw	a5,216(sp)
   192bc:	00f75e63          	ble	a5,a4,192d8 <_svfprintf_r+0x17d4>
   192c0:	0d410613          	addi	a2,sp,212
   192c4:	00098593          	mv	a1,s3
   192c8:	00090513          	mv	a0,s2
   192cc:	44d010ef          	jal	ra,1af18 <__ssprint_r>
   192d0:	6e051663          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   192d4:	0fc10893          	addi	a7,sp,252
   192d8:	0bc12a83          	lw	s5,188(sp)
   192dc:	060ad063          	bgez	s5,1933c <_svfprintf_r+0x1838>
   192e0:	41500ab3          	neg	s5,s5
   192e4:	00088713          	mv	a4,a7
   192e8:	01000b93          	li	s7,16
   192ec:	00700c13          	li	s8,7
   192f0:	01412603          	lw	a2,20(sp)
   192f4:	0d812783          	lw	a5,216(sp)
   192f8:	0dc12683          	lw	a3,220(sp)
   192fc:	00c72023          	sw	a2,0(a4)
   19300:	00178793          	addi	a5,a5,1
   19304:	00888893          	addi	a7,a7,8
   19308:	055bc663          	blt	s7,s5,19354 <_svfprintf_r+0x1850>
   1930c:	01572223          	sw	s5,4(a4)
   19310:	00da8ab3          	add	s5,s5,a3
   19314:	0d512e23          	sw	s5,220(sp)
   19318:	0cf12c23          	sw	a5,216(sp)
   1931c:	00700713          	li	a4,7
   19320:	00f75e63          	ble	a5,a4,1933c <_svfprintf_r+0x1838>
   19324:	0d410613          	addi	a2,sp,212
   19328:	00098593          	mv	a1,s3
   1932c:	00090513          	mv	a0,s2
   19330:	3e9010ef          	jal	ra,1af18 <__ssprint_r>
   19334:	68051463          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   19338:	0fc10893          	addi	a7,sp,252
   1933c:	0dc12783          	lw	a5,220(sp)
   19340:	0098a023          	sw	s1,0(a7)
   19344:	0148a223          	sw	s4,4(a7)
   19348:	014787b3          	add	a5,a5,s4
   1934c:	0cf12e23          	sw	a5,220(sp)
   19350:	979ff06f          	j	18cc8 <_svfprintf_r+0x11c4>
   19354:	01068693          	addi	a3,a3,16
   19358:	01772223          	sw	s7,4(a4)
   1935c:	0cd12e23          	sw	a3,220(sp)
   19360:	0cf12c23          	sw	a5,216(sp)
   19364:	00fc5e63          	ble	a5,s8,19380 <_svfprintf_r+0x187c>
   19368:	0d410613          	addi	a2,sp,212
   1936c:	00098593          	mv	a1,s3
   19370:	00090513          	mv	a0,s2
   19374:	3a5010ef          	jal	ra,1af18 <__ssprint_r>
   19378:	64051263          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   1937c:	0fc10893          	addi	a7,sp,252
   19380:	ff0a8a93          	addi	s5,s5,-16
   19384:	00088713          	mv	a4,a7
   19388:	f69ff06f          	j	192f0 <_svfprintf_r+0x17ec>
   1938c:	000c8a93          	mv	s5,s9
   19390:	019a5463          	ble	s9,s4,19398 <_svfprintf_r+0x1894>
   19394:	000a0a93          	mv	s5,s4
   19398:	05505263          	blez	s5,193dc <_svfprintf_r+0x18d8>
   1939c:	0d812703          	lw	a4,216(sp)
   193a0:	01ba8db3          	add	s11,s5,s11
   193a4:	0098a023          	sw	s1,0(a7)
   193a8:	00170713          	addi	a4,a4,1
   193ac:	0158a223          	sw	s5,4(a7)
   193b0:	0db12e23          	sw	s11,220(sp)
   193b4:	0ce12c23          	sw	a4,216(sp)
   193b8:	00700693          	li	a3,7
   193bc:	00888893          	addi	a7,a7,8
   193c0:	00e6de63          	ble	a4,a3,193dc <_svfprintf_r+0x18d8>
   193c4:	0d410613          	addi	a2,sp,212
   193c8:	00098593          	mv	a1,s3
   193cc:	00090513          	mv	a0,s2
   193d0:	349010ef          	jal	ra,1af18 <__ssprint_r>
   193d4:	5e051463          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   193d8:	0fc10893          	addi	a7,sp,252
   193dc:	000ad463          	bgez	s5,193e4 <_svfprintf_r+0x18e0>
   193e0:	00000a93          	li	s5,0
   193e4:	415c8ab3          	sub	s5,s9,s5
   193e8:	05505e63          	blez	s5,19444 <_svfprintf_r+0x1940>
   193ec:	01000d13          	li	s10,16
   193f0:	00700d93          	li	s11,7
   193f4:	01412783          	lw	a5,20(sp)
   193f8:	0d812703          	lw	a4,216(sp)
   193fc:	0dc12683          	lw	a3,220(sp)
   19400:	00f8a023          	sw	a5,0(a7)
   19404:	00170713          	addi	a4,a4,1
   19408:	00888613          	addi	a2,a7,8
   1940c:	195d4c63          	blt	s10,s5,195a4 <_svfprintf_r+0x1aa0>
   19410:	0158a223          	sw	s5,4(a7)
   19414:	00da8ab3          	add	s5,s5,a3
   19418:	0d512e23          	sw	s5,220(sp)
   1941c:	0ce12c23          	sw	a4,216(sp)
   19420:	00700693          	li	a3,7
   19424:	00060893          	mv	a7,a2
   19428:	00e6de63          	ble	a4,a3,19444 <_svfprintf_r+0x1940>
   1942c:	0d410613          	addi	a2,sp,212
   19430:	00098593          	mv	a1,s3
   19434:	00090513          	mv	a0,s2
   19438:	2e1010ef          	jal	ra,1af18 <__ssprint_r>
   1943c:	58051063          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   19440:	0fc10893          	addi	a7,sp,252
   19444:	40047793          	andi	a5,s0,1024
   19448:	01948ab3          	add	s5,s1,s9
   1944c:	02078063          	beqz	a5,1946c <_svfprintf_r+0x1968>
   19450:	00700d13          	li	s10,7
   19454:	01448db3          	add	s11,s1,s4
   19458:	180b9263          	bnez	s7,195dc <_svfprintf_r+0x1ad8>
   1945c:	180c1263          	bnez	s8,195e0 <_svfprintf_r+0x1adc>
   19460:	014487b3          	add	a5,s1,s4
   19464:	0157f463          	bleu	s5,a5,1946c <_svfprintf_r+0x1968>
   19468:	00078a93          	mv	s5,a5
   1946c:	0bc12783          	lw	a5,188(sp)
   19470:	0147c663          	blt	a5,s4,1947c <_svfprintf_r+0x1978>
   19474:	00147793          	andi	a5,s0,1
   19478:	04078a63          	beqz	a5,194cc <_svfprintf_r+0x19c8>
   1947c:	03412783          	lw	a5,52(sp)
   19480:	02012703          	lw	a4,32(sp)
   19484:	00888893          	addi	a7,a7,8
   19488:	fef8ac23          	sw	a5,-8(a7)
   1948c:	02012783          	lw	a5,32(sp)
   19490:	fef8ae23          	sw	a5,-4(a7)
   19494:	0dc12783          	lw	a5,220(sp)
   19498:	00e787b3          	add	a5,a5,a4
   1949c:	0cf12e23          	sw	a5,220(sp)
   194a0:	0d812783          	lw	a5,216(sp)
   194a4:	00700713          	li	a4,7
   194a8:	00178793          	addi	a5,a5,1
   194ac:	0cf12c23          	sw	a5,216(sp)
   194b0:	00f75e63          	ble	a5,a4,194cc <_svfprintf_r+0x19c8>
   194b4:	0d410613          	addi	a2,sp,212
   194b8:	00098593          	mv	a1,s3
   194bc:	00090513          	mv	a0,s2
   194c0:	259010ef          	jal	ra,1af18 <__ssprint_r>
   194c4:	4e051c63          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   194c8:	0fc10893          	addi	a7,sp,252
   194cc:	014484b3          	add	s1,s1,s4
   194d0:	415487b3          	sub	a5,s1,s5
   194d4:	0bc12483          	lw	s1,188(sp)
   194d8:	409a04b3          	sub	s1,s4,s1
   194dc:	0097d463          	ble	s1,a5,194e4 <_svfprintf_r+0x19e0>
   194e0:	00078493          	mv	s1,a5
   194e4:	04905463          	blez	s1,1952c <_svfprintf_r+0x1a28>
   194e8:	0dc12783          	lw	a5,220(sp)
   194ec:	0158a023          	sw	s5,0(a7)
   194f0:	0098a223          	sw	s1,4(a7)
   194f4:	00f487b3          	add	a5,s1,a5
   194f8:	0cf12e23          	sw	a5,220(sp)
   194fc:	0d812783          	lw	a5,216(sp)
   19500:	00700713          	li	a4,7
   19504:	00888893          	addi	a7,a7,8
   19508:	00178793          	addi	a5,a5,1
   1950c:	0cf12c23          	sw	a5,216(sp)
   19510:	00f75e63          	ble	a5,a4,1952c <_svfprintf_r+0x1a28>
   19514:	0d410613          	addi	a2,sp,212
   19518:	00098593          	mv	a1,s3
   1951c:	00090513          	mv	a0,s2
   19520:	1f9010ef          	jal	ra,1af18 <__ssprint_r>
   19524:	48051c63          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   19528:	0fc10893          	addi	a7,sp,252
   1952c:	00048793          	mv	a5,s1
   19530:	0004d463          	bgez	s1,19538 <_svfprintf_r+0x1a34>
   19534:	00000793          	li	a5,0
   19538:	0bc12483          	lw	s1,188(sp)
   1953c:	409a04b3          	sub	s1,s4,s1
   19540:	40f484b3          	sub	s1,s1,a5
   19544:	c49058e3          	blez	s1,19194 <_svfprintf_r+0x1690>
   19548:	01000a93          	li	s5,16
   1954c:	00700b93          	li	s7,7
   19550:	01412603          	lw	a2,20(sp)
   19554:	0d812783          	lw	a5,216(sp)
   19558:	0dc12703          	lw	a4,220(sp)
   1955c:	00c8a023          	sw	a2,0(a7)
   19560:	00178793          	addi	a5,a5,1
   19564:	00888693          	addi	a3,a7,8
   19568:	c09ad8e3          	ble	s1,s5,19178 <_svfprintf_r+0x1674>
   1956c:	01070713          	addi	a4,a4,16
   19570:	0158a223          	sw	s5,4(a7)
   19574:	0ce12e23          	sw	a4,220(sp)
   19578:	0cf12c23          	sw	a5,216(sp)
   1957c:	00fbde63          	ble	a5,s7,19598 <_svfprintf_r+0x1a94>
   19580:	0d410613          	addi	a2,sp,212
   19584:	00098593          	mv	a1,s3
   19588:	00090513          	mv	a0,s2
   1958c:	18d010ef          	jal	ra,1af18 <__ssprint_r>
   19590:	42051663          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   19594:	0fc10693          	addi	a3,sp,252
   19598:	ff048493          	addi	s1,s1,-16
   1959c:	00068893          	mv	a7,a3
   195a0:	fb1ff06f          	j	19550 <_svfprintf_r+0x1a4c>
   195a4:	01068693          	addi	a3,a3,16
   195a8:	01a8a223          	sw	s10,4(a7)
   195ac:	0cd12e23          	sw	a3,220(sp)
   195b0:	0ce12c23          	sw	a4,216(sp)
   195b4:	00edde63          	ble	a4,s11,195d0 <_svfprintf_r+0x1acc>
   195b8:	0d410613          	addi	a2,sp,212
   195bc:	00098593          	mv	a1,s3
   195c0:	00090513          	mv	a0,s2
   195c4:	155010ef          	jal	ra,1af18 <__ssprint_r>
   195c8:	3e051a63          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   195cc:	0fc10613          	addi	a2,sp,252
   195d0:	ff0a8a93          	addi	s5,s5,-16
   195d4:	00060893          	mv	a7,a2
   195d8:	e1dff06f          	j	193f4 <_svfprintf_r+0x18f0>
   195dc:	0c0c0e63          	beqz	s8,196b8 <_svfprintf_r+0x1bb4>
   195e0:	fffc0c13          	addi	s8,s8,-1
   195e4:	03812783          	lw	a5,56(sp)
   195e8:	03012703          	lw	a4,48(sp)
   195ec:	00888893          	addi	a7,a7,8
   195f0:	fef8ac23          	sw	a5,-8(a7)
   195f4:	03012783          	lw	a5,48(sp)
   195f8:	fef8ae23          	sw	a5,-4(a7)
   195fc:	0dc12783          	lw	a5,220(sp)
   19600:	00e787b3          	add	a5,a5,a4
   19604:	0cf12e23          	sw	a5,220(sp)
   19608:	0d812783          	lw	a5,216(sp)
   1960c:	00178793          	addi	a5,a5,1
   19610:	0cf12c23          	sw	a5,216(sp)
   19614:	00fd5e63          	ble	a5,s10,19630 <_svfprintf_r+0x1b2c>
   19618:	0d410613          	addi	a2,sp,212
   1961c:	00098593          	mv	a1,s3
   19620:	00090513          	mv	a0,s2
   19624:	0f5010ef          	jal	ra,1af18 <__ssprint_r>
   19628:	38051a63          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   1962c:	0fc10893          	addi	a7,sp,252
   19630:	01012783          	lw	a5,16(sp)
   19634:	415d8733          	sub	a4,s11,s5
   19638:	0007cb03          	lbu	s6,0(a5)
   1963c:	01675463          	ble	s6,a4,19644 <_svfprintf_r+0x1b40>
   19640:	00070b13          	mv	s6,a4
   19644:	05605263          	blez	s6,19688 <_svfprintf_r+0x1b84>
   19648:	0dc12703          	lw	a4,220(sp)
   1964c:	0158a023          	sw	s5,0(a7)
   19650:	0168a223          	sw	s6,4(a7)
   19654:	00eb0733          	add	a4,s6,a4
   19658:	0ce12e23          	sw	a4,220(sp)
   1965c:	0d812703          	lw	a4,216(sp)
   19660:	00888893          	addi	a7,a7,8
   19664:	00170713          	addi	a4,a4,1
   19668:	0ce12c23          	sw	a4,216(sp)
   1966c:	00ed5e63          	ble	a4,s10,19688 <_svfprintf_r+0x1b84>
   19670:	0d410613          	addi	a2,sp,212
   19674:	00098593          	mv	a1,s3
   19678:	00090513          	mv	a0,s2
   1967c:	09d010ef          	jal	ra,1af18 <__ssprint_r>
   19680:	32051e63          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   19684:	0fc10893          	addi	a7,sp,252
   19688:	000b0713          	mv	a4,s6
   1968c:	000b5463          	bgez	s6,19694 <_svfprintf_r+0x1b90>
   19690:	00000713          	li	a4,0
   19694:	01012783          	lw	a5,16(sp)
   19698:	01000813          	li	a6,16
   1969c:	0007c783          	lbu	a5,0(a5)
   196a0:	40e78b33          	sub	s6,a5,a4
   196a4:	07604263          	bgtz	s6,19708 <_svfprintf_r+0x1c04>
   196a8:	01012783          	lw	a5,16(sp)
   196ac:	0007c783          	lbu	a5,0(a5)
   196b0:	00fa8ab3          	add	s5,s5,a5
   196b4:	da5ff06f          	j	19458 <_svfprintf_r+0x1954>
   196b8:	01012783          	lw	a5,16(sp)
   196bc:	fffb8b93          	addi	s7,s7,-1
   196c0:	fff78793          	addi	a5,a5,-1
   196c4:	00f12823          	sw	a5,16(sp)
   196c8:	f1dff06f          	j	195e4 <_svfprintf_r+0x1ae0>
   196cc:	01068693          	addi	a3,a3,16
   196d0:	0108a223          	sw	a6,4(a7)
   196d4:	0cd12e23          	sw	a3,220(sp)
   196d8:	0ce12c23          	sw	a4,216(sp)
   196dc:	02ed5263          	ble	a4,s10,19700 <_svfprintf_r+0x1bfc>
   196e0:	0d410613          	addi	a2,sp,212
   196e4:	00098593          	mv	a1,s3
   196e8:	00090513          	mv	a0,s2
   196ec:	05012223          	sw	a6,68(sp)
   196f0:	029010ef          	jal	ra,1af18 <__ssprint_r>
   196f4:	2c051463          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   196f8:	04412803          	lw	a6,68(sp)
   196fc:	0fc10613          	addi	a2,sp,252
   19700:	ff0b0b13          	addi	s6,s6,-16
   19704:	00060893          	mv	a7,a2
   19708:	01412783          	lw	a5,20(sp)
   1970c:	0d812703          	lw	a4,216(sp)
   19710:	0dc12683          	lw	a3,220(sp)
   19714:	00f8a023          	sw	a5,0(a7)
   19718:	00170713          	addi	a4,a4,1
   1971c:	00888613          	addi	a2,a7,8
   19720:	fb6846e3          	blt	a6,s6,196cc <_svfprintf_r+0x1bc8>
   19724:	00db07b3          	add	a5,s6,a3
   19728:	0168a223          	sw	s6,4(a7)
   1972c:	0cf12e23          	sw	a5,220(sp)
   19730:	0ce12c23          	sw	a4,216(sp)
   19734:	00060893          	mv	a7,a2
   19738:	f6ed58e3          	ble	a4,s10,196a8 <_svfprintf_r+0x1ba4>
   1973c:	0d410613          	addi	a2,sp,212
   19740:	00098593          	mv	a1,s3
   19744:	00090513          	mv	a0,s2
   19748:	7d0010ef          	jal	ra,1af18 <__ssprint_r>
   1974c:	26051863          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   19750:	0fc10893          	addi	a7,sp,252
   19754:	f55ff06f          	j	196a8 <_svfprintf_r+0x1ba4>
   19758:	0d812783          	lw	a5,216(sp)
   1975c:	00100713          	li	a4,1
   19760:	0098a023          	sw	s1,0(a7)
   19764:	001d8d93          	addi	s11,s11,1
   19768:	00178793          	addi	a5,a5,1
   1976c:	00888b93          	addi	s7,a7,8
   19770:	01474663          	blt	a4,s4,1977c <_svfprintf_r+0x1c78>
   19774:	00147693          	andi	a3,s0,1
   19778:	1c068663          	beqz	a3,19944 <_svfprintf_r+0x1e40>
   1977c:	00100713          	li	a4,1
   19780:	00e8a223          	sw	a4,4(a7)
   19784:	0db12e23          	sw	s11,220(sp)
   19788:	0cf12c23          	sw	a5,216(sp)
   1978c:	00700713          	li	a4,7
   19790:	00f75e63          	ble	a5,a4,197ac <_svfprintf_r+0x1ca8>
   19794:	0d410613          	addi	a2,sp,212
   19798:	00098593          	mv	a1,s3
   1979c:	00090513          	mv	a0,s2
   197a0:	778010ef          	jal	ra,1af18 <__ssprint_r>
   197a4:	20051c63          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   197a8:	0fc10b93          	addi	s7,sp,252
   197ac:	03412783          	lw	a5,52(sp)
   197b0:	02012703          	lw	a4,32(sp)
   197b4:	008b8b93          	addi	s7,s7,8
   197b8:	fefbac23          	sw	a5,-8(s7)
   197bc:	02012783          	lw	a5,32(sp)
   197c0:	fefbae23          	sw	a5,-4(s7)
   197c4:	0dc12783          	lw	a5,220(sp)
   197c8:	00e787b3          	add	a5,a5,a4
   197cc:	0cf12e23          	sw	a5,220(sp)
   197d0:	0d812783          	lw	a5,216(sp)
   197d4:	00700713          	li	a4,7
   197d8:	00178793          	addi	a5,a5,1
   197dc:	0cf12c23          	sw	a5,216(sp)
   197e0:	00f75e63          	ble	a5,a4,197fc <_svfprintf_r+0x1cf8>
   197e4:	0d410613          	addi	a2,sp,212
   197e8:	00098593          	mv	a1,s3
   197ec:	00090513          	mv	a0,s2
   197f0:	728010ef          	jal	ra,1af18 <__ssprint_r>
   197f4:	1c051463          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   197f8:	0fc10b93          	addi	s7,sp,252
   197fc:	0e012783          	lw	a5,224(sp)
   19800:	09010593          	addi	a1,sp,144
   19804:	0a010513          	addi	a0,sp,160
   19808:	0af12023          	sw	a5,160(sp)
   1980c:	0e412783          	lw	a5,228(sp)
   19810:	fffa0a93          	addi	s5,s4,-1
   19814:	08012823          	sw	zero,144(sp)
   19818:	0af12223          	sw	a5,164(sp)
   1981c:	0e812783          	lw	a5,232(sp)
   19820:	08012a23          	sw	zero,148(sp)
   19824:	08012c23          	sw	zero,152(sp)
   19828:	0af12423          	sw	a5,168(sp)
   1982c:	0ec12783          	lw	a5,236(sp)
   19830:	08012e23          	sw	zero,156(sp)
   19834:	0af12623          	sw	a5,172(sp)
   19838:	701030ef          	jal	ra,1d738 <__eqtf2>
   1983c:	08050663          	beqz	a0,198c8 <_svfprintf_r+0x1dc4>
   19840:	0dc12783          	lw	a5,220(sp)
   19844:	0d812703          	lw	a4,216(sp)
   19848:	00148493          	addi	s1,s1,1
   1984c:	fff78793          	addi	a5,a5,-1
   19850:	014787b3          	add	a5,a5,s4
   19854:	00170713          	addi	a4,a4,1
   19858:	009ba023          	sw	s1,0(s7)
   1985c:	015ba223          	sw	s5,4(s7)
   19860:	0cf12e23          	sw	a5,220(sp)
   19864:	0ce12c23          	sw	a4,216(sp)
   19868:	00700793          	li	a5,7
   1986c:	008b8b93          	addi	s7,s7,8
   19870:	00e7de63          	ble	a4,a5,1988c <_svfprintf_r+0x1d88>
   19874:	0d410613          	addi	a2,sp,212
   19878:	00098593          	mv	a1,s3
   1987c:	00090513          	mv	a0,s2
   19880:	698010ef          	jal	ra,1af18 <__ssprint_r>
   19884:	12051c63          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   19888:	0fc10b93          	addi	s7,sp,252
   1988c:	0c410793          	addi	a5,sp,196
   19890:	00fba023          	sw	a5,0(s7)
   19894:	03c12783          	lw	a5,60(sp)
   19898:	03c12703          	lw	a4,60(sp)
   1989c:	008b8893          	addi	a7,s7,8
   198a0:	00fba223          	sw	a5,4(s7)
   198a4:	0dc12783          	lw	a5,220(sp)
   198a8:	00e787b3          	add	a5,a5,a4
   198ac:	0cf12e23          	sw	a5,220(sp)
   198b0:	0d812783          	lw	a5,216(sp)
   198b4:	00700713          	li	a4,7
   198b8:	00178793          	addi	a5,a5,1
   198bc:	0cf12c23          	sw	a5,216(sp)
   198c0:	8cf75ae3          	ble	a5,a4,19194 <_svfprintf_r+0x1690>
   198c4:	c1cff06f          	j	18ce0 <_svfprintf_r+0x11dc>
   198c8:	fd5052e3          	blez	s5,1988c <_svfprintf_r+0x1d88>
   198cc:	01000493          	li	s1,16
   198d0:	00700c13          	li	s8,7
   198d4:	01412603          	lw	a2,20(sp)
   198d8:	0d812703          	lw	a4,216(sp)
   198dc:	0dc12783          	lw	a5,220(sp)
   198e0:	00cba023          	sw	a2,0(s7)
   198e4:	00170713          	addi	a4,a4,1
   198e8:	008b8693          	addi	a3,s7,8
   198ec:	0354c063          	blt	s1,s5,1990c <_svfprintf_r+0x1e08>
   198f0:	00fa87b3          	add	a5,s5,a5
   198f4:	015ba223          	sw	s5,4(s7)
   198f8:	0cf12e23          	sw	a5,220(sp)
   198fc:	0ce12c23          	sw	a4,216(sp)
   19900:	00700793          	li	a5,7
   19904:	00068b93          	mv	s7,a3
   19908:	f69ff06f          	j	19870 <_svfprintf_r+0x1d6c>
   1990c:	01078793          	addi	a5,a5,16
   19910:	009ba223          	sw	s1,4(s7)
   19914:	0cf12e23          	sw	a5,220(sp)
   19918:	0ce12c23          	sw	a4,216(sp)
   1991c:	00ec5e63          	ble	a4,s8,19938 <_svfprintf_r+0x1e34>
   19920:	0d410613          	addi	a2,sp,212
   19924:	00098593          	mv	a1,s3
   19928:	00090513          	mv	a0,s2
   1992c:	5ec010ef          	jal	ra,1af18 <__ssprint_r>
   19930:	08051663          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   19934:	0fc10693          	addi	a3,sp,252
   19938:	ff0a8a93          	addi	s5,s5,-16
   1993c:	00068b93          	mv	s7,a3
   19940:	f95ff06f          	j	198d4 <_svfprintf_r+0x1dd0>
   19944:	00e8a223          	sw	a4,4(a7)
   19948:	0db12e23          	sw	s11,220(sp)
   1994c:	0cf12c23          	sw	a5,216(sp)
   19950:	00700713          	li	a4,7
   19954:	f2f75ce3          	ble	a5,a4,1988c <_svfprintf_r+0x1d88>
   19958:	f1dff06f          	j	19874 <_svfprintf_r+0x1d70>
   1995c:	02812783          	lw	a5,40(sp)
   19960:	02c12703          	lw	a4,44(sp)
   19964:	40e78433          	sub	s0,a5,a4
   19968:	82805ae3          	blez	s0,1919c <_svfprintf_r+0x1698>
   1996c:	000214b7          	lui	s1,0x21
   19970:	01000a93          	li	s5,16
   19974:	fa448493          	addi	s1,s1,-92 # 20fa4 <blanks.4389>
   19978:	00700b93          	li	s7,7
   1997c:	0d812783          	lw	a5,216(sp)
   19980:	0098a023          	sw	s1,0(a7)
   19984:	0dc12703          	lw	a4,220(sp)
   19988:	00178793          	addi	a5,a5,1
   1998c:	048ac663          	blt	s5,s0,199d8 <_svfprintf_r+0x1ed4>
   19990:	0088a223          	sw	s0,4(a7)
   19994:	00e40433          	add	s0,s0,a4
   19998:	0c812e23          	sw	s0,220(sp)
   1999c:	0cf12c23          	sw	a5,216(sp)
   199a0:	00700713          	li	a4,7
   199a4:	fef75c63          	ble	a5,a4,1919c <_svfprintf_r+0x1698>
   199a8:	0d410613          	addi	a2,sp,212
   199ac:	00098593          	mv	a1,s3
   199b0:	00090513          	mv	a0,s2
   199b4:	564010ef          	jal	ra,1af18 <__ssprint_r>
   199b8:	fe050263          	beqz	a0,1919c <_svfprintf_r+0x1698>
   199bc:	00c12783          	lw	a5,12(sp)
   199c0:	00079463          	bnez	a5,199c8 <_svfprintf_r+0x1ec4>
   199c4:	f80fe06f          	j	18144 <_svfprintf_r+0x640>
   199c8:	00078593          	mv	a1,a5
   199cc:	00090513          	mv	a0,s2
   199d0:	d80f90ef          	jal	ra,12f50 <_free_r>
   199d4:	f70fe06f          	j	18144 <_svfprintf_r+0x640>
   199d8:	01070713          	addi	a4,a4,16
   199dc:	0158a223          	sw	s5,4(a7)
   199e0:	0ce12e23          	sw	a4,220(sp)
   199e4:	0cf12c23          	sw	a5,216(sp)
   199e8:	00888893          	addi	a7,a7,8
   199ec:	00fbde63          	ble	a5,s7,19a08 <_svfprintf_r+0x1f04>
   199f0:	0d410613          	addi	a2,sp,212
   199f4:	00098593          	mv	a1,s3
   199f8:	00090513          	mv	a0,s2
   199fc:	51c010ef          	jal	ra,1af18 <__ssprint_r>
   19a00:	fa051ee3          	bnez	a0,199bc <_svfprintf_r+0x1eb8>
   19a04:	0fc10893          	addi	a7,sp,252
   19a08:	ff040413          	addi	s0,s0,-16
   19a0c:	f71ff06f          	j	1997c <_svfprintf_r+0x1e78>
   19a10:	00c12583          	lw	a1,12(sp)
   19a14:	00090513          	mv	a0,s2
   19a18:	d38f90ef          	jal	ra,12f50 <_free_r>
   19a1c:	fc4ff06f          	j	191e0 <_svfprintf_r+0x16dc>
   19a20:	0dc12783          	lw	a5,220(sp)
   19a24:	00079463          	bnez	a5,19a2c <_svfprintf_r+0x1f28>
   19a28:	f1cfe06f          	j	18144 <_svfprintf_r+0x640>
   19a2c:	0d410613          	addi	a2,sp,212
   19a30:	00098593          	mv	a1,s3
   19a34:	00090513          	mv	a0,s2
   19a38:	4e0010ef          	jal	ra,1af18 <__ssprint_r>
   19a3c:	f08fe06f          	j	18144 <_svfprintf_r+0x640>

00019a40 <__sprint_r>:
   19a40:	00862783          	lw	a5,8(a2)
   19a44:	fd010113          	addi	sp,sp,-48
   19a48:	02812423          	sw	s0,40(sp)
   19a4c:	02112623          	sw	ra,44(sp)
   19a50:	02912223          	sw	s1,36(sp)
   19a54:	03212023          	sw	s2,32(sp)
   19a58:	01312e23          	sw	s3,28(sp)
   19a5c:	01412c23          	sw	s4,24(sp)
   19a60:	01512a23          	sw	s5,20(sp)
   19a64:	01612823          	sw	s6,16(sp)
   19a68:	01712623          	sw	s7,12(sp)
   19a6c:	01812423          	sw	s8,8(sp)
   19a70:	00060413          	mv	s0,a2
   19a74:	02079e63          	bnez	a5,19ab0 <__sprint_r+0x70>
   19a78:	00062223          	sw	zero,4(a2)
   19a7c:	00000513          	li	a0,0
   19a80:	02c12083          	lw	ra,44(sp)
   19a84:	02812403          	lw	s0,40(sp)
   19a88:	02412483          	lw	s1,36(sp)
   19a8c:	02012903          	lw	s2,32(sp)
   19a90:	01c12983          	lw	s3,28(sp)
   19a94:	01812a03          	lw	s4,24(sp)
   19a98:	01412a83          	lw	s5,20(sp)
   19a9c:	01012b03          	lw	s6,16(sp)
   19aa0:	00c12b83          	lw	s7,12(sp)
   19aa4:	00812c03          	lw	s8,8(sp)
   19aa8:	03010113          	addi	sp,sp,48
   19aac:	00008067          	ret
   19ab0:	0645a783          	lw	a5,100(a1)
   19ab4:	00058913          	mv	s2,a1
   19ab8:	01279713          	slli	a4,a5,0x12
   19abc:	06075a63          	bgez	a4,19b30 <__sprint_r+0xf0>
   19ac0:	00062483          	lw	s1,0(a2)
   19ac4:	00050a13          	mv	s4,a0
   19ac8:	fff00b93          	li	s7,-1
   19acc:	00842783          	lw	a5,8(s0)
   19ad0:	00079a63          	bnez	a5,19ae4 <__sprint_r+0xa4>
   19ad4:	00000513          	li	a0,0
   19ad8:	00042423          	sw	zero,8(s0)
   19adc:	00042223          	sw	zero,4(s0)
   19ae0:	fa1ff06f          	j	19a80 <__sprint_r+0x40>
   19ae4:	0044a983          	lw	s3,4(s1)
   19ae8:	0004ab03          	lw	s6,0(s1)
   19aec:	00000a93          	li	s5,0
   19af0:	0029dc13          	srli	s8,s3,0x2
   19af4:	018ace63          	blt	s5,s8,19b10 <__sprint_r+0xd0>
   19af8:	00842783          	lw	a5,8(s0)
   19afc:	ffc9f993          	andi	s3,s3,-4
   19b00:	00848493          	addi	s1,s1,8
   19b04:	413789b3          	sub	s3,a5,s3
   19b08:	01342423          	sw	s3,8(s0)
   19b0c:	fc1ff06f          	j	19acc <__sprint_r+0x8c>
   19b10:	000b2583          	lw	a1,0(s6)
   19b14:	00090613          	mv	a2,s2
   19b18:	000a0513          	mv	a0,s4
   19b1c:	0fc010ef          	jal	ra,1ac18 <_fputwc_r>
   19b20:	004b0b13          	addi	s6,s6,4
   19b24:	01750a63          	beq	a0,s7,19b38 <__sprint_r+0xf8>
   19b28:	001a8a93          	addi	s5,s5,1
   19b2c:	fc9ff06f          	j	19af4 <__sprint_r+0xb4>
   19b30:	e7cf90ef          	jal	ra,131ac <__sfvwrite_r>
   19b34:	fa5ff06f          	j	19ad8 <__sprint_r+0x98>
   19b38:	fff00513          	li	a0,-1
   19b3c:	f9dff06f          	j	19ad8 <__sprint_r+0x98>

00019b40 <_vfiprintf_r>:
   19b40:	ed010113          	addi	sp,sp,-304
   19b44:	12812423          	sw	s0,296(sp)
   19b48:	13212023          	sw	s2,288(sp)
   19b4c:	11312e23          	sw	s3,284(sp)
   19b50:	11412c23          	sw	s4,280(sp)
   19b54:	12112623          	sw	ra,300(sp)
   19b58:	12912223          	sw	s1,292(sp)
   19b5c:	11512a23          	sw	s5,276(sp)
   19b60:	11612823          	sw	s6,272(sp)
   19b64:	11712623          	sw	s7,268(sp)
   19b68:	11812423          	sw	s8,264(sp)
   19b6c:	11912223          	sw	s9,260(sp)
   19b70:	11a12023          	sw	s10,256(sp)
   19b74:	0fb12e23          	sw	s11,252(sp)
   19b78:	00050993          	mv	s3,a0
   19b7c:	00058413          	mv	s0,a1
   19b80:	00060a13          	mv	s4,a2
   19b84:	00068913          	mv	s2,a3
   19b88:	00050863          	beqz	a0,19b98 <_vfiprintf_r+0x58>
   19b8c:	03852783          	lw	a5,56(a0)
   19b90:	00079463          	bnez	a5,19b98 <_vfiprintf_r+0x58>
   19b94:	910f90ef          	jal	ra,12ca4 <__sinit>
   19b98:	00c41783          	lh	a5,12(s0)
   19b9c:	01279713          	slli	a4,a5,0x12
   19ba0:	02074263          	bltz	a4,19bc4 <_vfiprintf_r+0x84>
   19ba4:	000026b7          	lui	a3,0x2
   19ba8:	06442703          	lw	a4,100(s0)
   19bac:	00d7e7b3          	or	a5,a5,a3
   19bb0:	00f41623          	sh	a5,12(s0)
   19bb4:	ffffe7b7          	lui	a5,0xffffe
   19bb8:	fff78793          	addi	a5,a5,-1 # ffffdfff <__global_pointer$+0xfffdae57>
   19bbc:	00f777b3          	and	a5,a4,a5
   19bc0:	06f42223          	sw	a5,100(s0)
   19bc4:	00c45783          	lhu	a5,12(s0)
   19bc8:	0087f793          	andi	a5,a5,8
   19bcc:	06078e63          	beqz	a5,19c48 <_vfiprintf_r+0x108>
   19bd0:	01042783          	lw	a5,16(s0)
   19bd4:	06078a63          	beqz	a5,19c48 <_vfiprintf_r+0x108>
   19bd8:	00c45783          	lhu	a5,12(s0)
   19bdc:	00a00713          	li	a4,10
   19be0:	01a7f793          	andi	a5,a5,26
   19be4:	06e79e63          	bne	a5,a4,19c60 <_vfiprintf_r+0x120>
   19be8:	00e41783          	lh	a5,14(s0)
   19bec:	0607ca63          	bltz	a5,19c60 <_vfiprintf_r+0x120>
   19bf0:	00090693          	mv	a3,s2
   19bf4:	000a0613          	mv	a2,s4
   19bf8:	00040593          	mv	a1,s0
   19bfc:	00098513          	mv	a0,s3
   19c00:	3e1000ef          	jal	ra,1a7e0 <__sbprintf>
   19c04:	00050b93          	mv	s7,a0
   19c08:	12c12083          	lw	ra,300(sp)
   19c0c:	12812403          	lw	s0,296(sp)
   19c10:	000b8513          	mv	a0,s7
   19c14:	12412483          	lw	s1,292(sp)
   19c18:	12012903          	lw	s2,288(sp)
   19c1c:	11c12983          	lw	s3,284(sp)
   19c20:	11812a03          	lw	s4,280(sp)
   19c24:	11412a83          	lw	s5,276(sp)
   19c28:	11012b03          	lw	s6,272(sp)
   19c2c:	10c12b83          	lw	s7,268(sp)
   19c30:	10812c03          	lw	s8,264(sp)
   19c34:	10412c83          	lw	s9,260(sp)
   19c38:	10012d03          	lw	s10,256(sp)
   19c3c:	0fc12d83          	lw	s11,252(sp)
   19c40:	13010113          	addi	sp,sp,304
   19c44:	00008067          	ret
   19c48:	00040593          	mv	a1,s0
   19c4c:	00098513          	mv	a0,s3
   19c50:	a01f80ef          	jal	ra,12650 <__swsetup_r>
   19c54:	f80502e3          	beqz	a0,19bd8 <_vfiprintf_r+0x98>
   19c58:	fff00b93          	li	s7,-1
   19c5c:	fadff06f          	j	19c08 <_vfiprintf_r+0xc8>
   19c60:	000217b7          	lui	a5,0x21
   19c64:	fc478793          	addi	a5,a5,-60 # 20fc4 <zeroes.4390+0x10>
   19c68:	00f12e23          	sw	a5,28(sp)
   19c6c:	000217b7          	lui	a5,0x21
   19c70:	04c10b13          	addi	s6,sp,76
   19c74:	14078793          	addi	a5,a5,320 # 21140 <zeroes.4381>
   19c78:	05612023          	sw	s6,64(sp)
   19c7c:	04012423          	sw	zero,72(sp)
   19c80:	04012223          	sw	zero,68(sp)
   19c84:	000b0713          	mv	a4,s6
   19c88:	00012423          	sw	zero,8(sp)
   19c8c:	00012223          	sw	zero,4(sp)
   19c90:	00012623          	sw	zero,12(sp)
   19c94:	00012a23          	sw	zero,20(sp)
   19c98:	00000b93          	li	s7,0
   19c9c:	00f12823          	sw	a5,16(sp)
   19ca0:	000a0493          	mv	s1,s4
   19ca4:	02500693          	li	a3,37
   19ca8:	0004c783          	lbu	a5,0(s1)
   19cac:	00078463          	beqz	a5,19cb4 <_vfiprintf_r+0x174>
   19cb0:	0ad79263          	bne	a5,a3,19d54 <_vfiprintf_r+0x214>
   19cb4:	41448ab3          	sub	s5,s1,s4
   19cb8:	040a8663          	beqz	s5,19d04 <_vfiprintf_r+0x1c4>
   19cbc:	04812783          	lw	a5,72(sp)
   19cc0:	01472023          	sw	s4,0(a4)
   19cc4:	01572223          	sw	s5,4(a4)
   19cc8:	015787b3          	add	a5,a5,s5
   19ccc:	04f12423          	sw	a5,72(sp)
   19cd0:	04412783          	lw	a5,68(sp)
   19cd4:	00700693          	li	a3,7
   19cd8:	00870713          	addi	a4,a4,8
   19cdc:	00178793          	addi	a5,a5,1
   19ce0:	04f12223          	sw	a5,68(sp)
   19ce4:	00f6de63          	ble	a5,a3,19d00 <_vfiprintf_r+0x1c0>
   19ce8:	04010613          	addi	a2,sp,64
   19cec:	00040593          	mv	a1,s0
   19cf0:	00098513          	mv	a0,s3
   19cf4:	d4dff0ef          	jal	ra,19a40 <__sprint_r>
   19cf8:	260518e3          	bnez	a0,1a768 <_vfiprintf_r+0xc28>
   19cfc:	000b0713          	mv	a4,s6
   19d00:	015b8bb3          	add	s7,s7,s5
   19d04:	0004c783          	lbu	a5,0(s1)
   19d08:	2a0784e3          	beqz	a5,1a7b0 <_vfiprintf_r+0xc70>
   19d0c:	00148a13          	addi	s4,s1,1
   19d10:	02010da3          	sb	zero,59(sp)
   19d14:	fff00493          	li	s1,-1
   19d18:	00000a93          	li	s5,0
   19d1c:	00000d13          	li	s10,0
   19d20:	00a00c13          	li	s8,10
   19d24:	02a00c93          	li	s9,42
   19d28:	05a00813          	li	a6,90
   19d2c:	00900593          	li	a1,9
   19d30:	000a4603          	lbu	a2,0(s4)
   19d34:	001a0a13          	addi	s4,s4,1
   19d38:	fe060693          	addi	a3,a2,-32
   19d3c:	0cd86ee3          	bltu	a6,a3,1a618 <_vfiprintf_r+0xad8>
   19d40:	01c12783          	lw	a5,28(sp)
   19d44:	00269693          	slli	a3,a3,0x2
   19d48:	00f686b3          	add	a3,a3,a5
   19d4c:	0006a683          	lw	a3,0(a3) # 2000 <_start-0xe074>
   19d50:	00068067          	jr	a3
   19d54:	00148493          	addi	s1,s1,1
   19d58:	f51ff06f          	j	19ca8 <_vfiprintf_r+0x168>
   19d5c:	000216b7          	lui	a3,0x21
   19d60:	a6c68793          	addi	a5,a3,-1428 # 20a6c <zeroes.4405+0x34>
   19d64:	00f12423          	sw	a5,8(sp)
   19d68:	020d7693          	andi	a3,s10,32
   19d6c:	6c068063          	beqz	a3,1a42c <_vfiprintf_r+0x8ec>
   19d70:	00790913          	addi	s2,s2,7
   19d74:	ff897913          	andi	s2,s2,-8
   19d78:	00092883          	lw	a7,0(s2)
   19d7c:	00492c83          	lw	s9,4(s2)
   19d80:	00890c13          	addi	s8,s2,8
   19d84:	001d7693          	andi	a3,s10,1
   19d88:	00068e63          	beqz	a3,19da4 <_vfiprintf_r+0x264>
   19d8c:	0198e6b3          	or	a3,a7,s9
   19d90:	00068a63          	beqz	a3,19da4 <_vfiprintf_r+0x264>
   19d94:	03000693          	li	a3,48
   19d98:	02d10e23          	sb	a3,60(sp)
   19d9c:	02c10ea3          	sb	a2,61(sp)
   19da0:	002d6d13          	ori	s10,s10,2
   19da4:	bffd7d13          	andi	s10,s10,-1025
   19da8:	31c0006f          	j	1a0c4 <_vfiprintf_r+0x584>
   19dac:	00098513          	mv	a0,s3
   19db0:	00e12023          	sw	a4,0(sp)
   19db4:	9d5fb0ef          	jal	ra,15788 <_localeconv_r>
   19db8:	00452783          	lw	a5,4(a0)
   19dbc:	00078513          	mv	a0,a5
   19dc0:	00f12a23          	sw	a5,20(sp)
   19dc4:	809f60ef          	jal	ra,105cc <strlen>
   19dc8:	00a12623          	sw	a0,12(sp)
   19dcc:	00098513          	mv	a0,s3
   19dd0:	9b9fb0ef          	jal	ra,15788 <_localeconv_r>
   19dd4:	00852783          	lw	a5,8(a0)
   19dd8:	00012703          	lw	a4,0(sp)
   19ddc:	00f12223          	sw	a5,4(sp)
   19de0:	00c12783          	lw	a5,12(sp)
   19de4:	f40782e3          	beqz	a5,19d28 <_vfiprintf_r+0x1e8>
   19de8:	00412783          	lw	a5,4(sp)
   19dec:	f2078ee3          	beqz	a5,19d28 <_vfiprintf_r+0x1e8>
   19df0:	0007c683          	lbu	a3,0(a5)
   19df4:	f2068ae3          	beqz	a3,19d28 <_vfiprintf_r+0x1e8>
   19df8:	400d6d13          	ori	s10,s10,1024
   19dfc:	f2dff06f          	j	19d28 <_vfiprintf_r+0x1e8>
   19e00:	03b14683          	lbu	a3,59(sp)
   19e04:	f20692e3          	bnez	a3,19d28 <_vfiprintf_r+0x1e8>
   19e08:	02000693          	li	a3,32
   19e0c:	02d10da3          	sb	a3,59(sp)
   19e10:	f19ff06f          	j	19d28 <_vfiprintf_r+0x1e8>
   19e14:	001d6d13          	ori	s10,s10,1
   19e18:	f11ff06f          	j	19d28 <_vfiprintf_r+0x1e8>
   19e1c:	00092a83          	lw	s5,0(s2)
   19e20:	00490913          	addi	s2,s2,4
   19e24:	f00ad2e3          	bgez	s5,19d28 <_vfiprintf_r+0x1e8>
   19e28:	41500ab3          	neg	s5,s5
   19e2c:	004d6d13          	ori	s10,s10,4
   19e30:	ef9ff06f          	j	19d28 <_vfiprintf_r+0x1e8>
   19e34:	02b00693          	li	a3,43
   19e38:	fd5ff06f          	j	19e0c <_vfiprintf_r+0x2cc>
   19e3c:	000a4603          	lbu	a2,0(s4)
   19e40:	001a0693          	addi	a3,s4,1
   19e44:	05961063          	bne	a2,s9,19e84 <_vfiprintf_r+0x344>
   19e48:	00092483          	lw	s1,0(s2)
   19e4c:	00490613          	addi	a2,s2,4
   19e50:	0004d463          	bgez	s1,19e58 <_vfiprintf_r+0x318>
   19e54:	fff00493          	li	s1,-1
   19e58:	00060913          	mv	s2,a2
   19e5c:	00068a13          	mv	s4,a3
   19e60:	ec9ff06f          	j	19d28 <_vfiprintf_r+0x1e8>
   19e64:	038484b3          	mul	s1,s1,s8
   19e68:	00168693          	addi	a3,a3,1
   19e6c:	fff6c603          	lbu	a2,-1(a3)
   19e70:	00a484b3          	add	s1,s1,a0
   19e74:	fd060513          	addi	a0,a2,-48
   19e78:	fea5f6e3          	bleu	a0,a1,19e64 <_vfiprintf_r+0x324>
   19e7c:	00068a13          	mv	s4,a3
   19e80:	eb9ff06f          	j	19d38 <_vfiprintf_r+0x1f8>
   19e84:	00000493          	li	s1,0
   19e88:	fedff06f          	j	19e74 <_vfiprintf_r+0x334>
   19e8c:	080d6d13          	ori	s10,s10,128
   19e90:	e99ff06f          	j	19d28 <_vfiprintf_r+0x1e8>
   19e94:	000a0693          	mv	a3,s4
   19e98:	00000a93          	li	s5,0
   19e9c:	038a8ab3          	mul	s5,s5,s8
   19ea0:	fd060613          	addi	a2,a2,-48
   19ea4:	00168693          	addi	a3,a3,1
   19ea8:	01560ab3          	add	s5,a2,s5
   19eac:	fff6c603          	lbu	a2,-1(a3)
   19eb0:	fd060513          	addi	a0,a2,-48
   19eb4:	fea5f4e3          	bleu	a0,a1,19e9c <_vfiprintf_r+0x35c>
   19eb8:	fc5ff06f          	j	19e7c <_vfiprintf_r+0x33c>
   19ebc:	000a4603          	lbu	a2,0(s4)
   19ec0:	06800693          	li	a3,104
   19ec4:	00d61863          	bne	a2,a3,19ed4 <_vfiprintf_r+0x394>
   19ec8:	001a0a13          	addi	s4,s4,1
   19ecc:	200d6d13          	ori	s10,s10,512
   19ed0:	e59ff06f          	j	19d28 <_vfiprintf_r+0x1e8>
   19ed4:	040d6d13          	ori	s10,s10,64
   19ed8:	e51ff06f          	j	19d28 <_vfiprintf_r+0x1e8>
   19edc:	000a4603          	lbu	a2,0(s4)
   19ee0:	06c00693          	li	a3,108
   19ee4:	00d61863          	bne	a2,a3,19ef4 <_vfiprintf_r+0x3b4>
   19ee8:	001a0a13          	addi	s4,s4,1
   19eec:	020d6d13          	ori	s10,s10,32
   19ef0:	e39ff06f          	j	19d28 <_vfiprintf_r+0x1e8>
   19ef4:	010d6d13          	ori	s10,s10,16
   19ef8:	e31ff06f          	j	19d28 <_vfiprintf_r+0x1e8>
   19efc:	00092683          	lw	a3,0(s2)
   19f00:	00490c13          	addi	s8,s2,4
   19f04:	02010da3          	sb	zero,59(sp)
   19f08:	08d10623          	sb	a3,140(sp)
   19f0c:	00100493          	li	s1,1
   19f10:	00000c93          	li	s9,0
   19f14:	08c10913          	addi	s2,sp,140
   19f18:	1ec0006f          	j	1a104 <_vfiprintf_r+0x5c4>
   19f1c:	010d6d13          	ori	s10,s10,16
   19f20:	020d7693          	andi	a3,s10,32
   19f24:	04068c63          	beqz	a3,19f7c <_vfiprintf_r+0x43c>
   19f28:	00790913          	addi	s2,s2,7
   19f2c:	ff897913          	andi	s2,s2,-8
   19f30:	00092883          	lw	a7,0(s2)
   19f34:	00492c83          	lw	s9,4(s2)
   19f38:	00890c13          	addi	s8,s2,8
   19f3c:	000cde63          	bgez	s9,19f58 <_vfiprintf_r+0x418>
   19f40:	411008b3          	neg	a7,a7
   19f44:	011036b3          	snez	a3,a7
   19f48:	41900333          	neg	t1,s9
   19f4c:	40d30cb3          	sub	s9,t1,a3
   19f50:	02d00693          	li	a3,45
   19f54:	02d10da3          	sb	a3,59(sp)
   19f58:	fff00693          	li	a3,-1
   19f5c:	50d49463          	bne	s1,a3,1a464 <_vfiprintf_r+0x924>
   19f60:	560c9e63          	bnez	s9,1a4dc <_vfiprintf_r+0x99c>
   19f64:	00900693          	li	a3,9
   19f68:	5716ea63          	bltu	a3,a7,1a4dc <_vfiprintf_r+0x99c>
   19f6c:	03088893          	addi	a7,a7,48
   19f70:	0f1107a3          	sb	a7,239(sp)
   19f74:	0ef10913          	addi	s2,sp,239
   19f78:	54c0006f          	j	1a4c4 <_vfiprintf_r+0x984>
   19f7c:	010d7693          	andi	a3,s10,16
   19f80:	00490c13          	addi	s8,s2,4
   19f84:	00068863          	beqz	a3,19f94 <_vfiprintf_r+0x454>
   19f88:	00092883          	lw	a7,0(s2)
   19f8c:	41f8dc93          	srai	s9,a7,0x1f
   19f90:	fadff06f          	j	19f3c <_vfiprintf_r+0x3fc>
   19f94:	040d7693          	andi	a3,s10,64
   19f98:	00092883          	lw	a7,0(s2)
   19f9c:	00068863          	beqz	a3,19fac <_vfiprintf_r+0x46c>
   19fa0:	01089893          	slli	a7,a7,0x10
   19fa4:	4108d893          	srai	a7,a7,0x10
   19fa8:	fe5ff06f          	j	19f8c <_vfiprintf_r+0x44c>
   19fac:	200d7693          	andi	a3,s10,512
   19fb0:	fc068ee3          	beqz	a3,19f8c <_vfiprintf_r+0x44c>
   19fb4:	01889893          	slli	a7,a7,0x18
   19fb8:	4188d893          	srai	a7,a7,0x18
   19fbc:	fd1ff06f          	j	19f8c <_vfiprintf_r+0x44c>
   19fc0:	020d7613          	andi	a2,s10,32
   19fc4:	00092683          	lw	a3,0(s2)
   19fc8:	00490913          	addi	s2,s2,4
   19fcc:	00060a63          	beqz	a2,19fe0 <_vfiprintf_r+0x4a0>
   19fd0:	41fbd793          	srai	a5,s7,0x1f
   19fd4:	0176a023          	sw	s7,0(a3)
   19fd8:	00f6a223          	sw	a5,4(a3)
   19fdc:	cc5ff06f          	j	19ca0 <_vfiprintf_r+0x160>
   19fe0:	010d7613          	andi	a2,s10,16
   19fe4:	00060663          	beqz	a2,19ff0 <_vfiprintf_r+0x4b0>
   19fe8:	0176a023          	sw	s7,0(a3)
   19fec:	cb5ff06f          	j	19ca0 <_vfiprintf_r+0x160>
   19ff0:	040d7613          	andi	a2,s10,64
   19ff4:	00060663          	beqz	a2,1a000 <_vfiprintf_r+0x4c0>
   19ff8:	01769023          	sh	s7,0(a3)
   19ffc:	ca5ff06f          	j	19ca0 <_vfiprintf_r+0x160>
   1a000:	200d7793          	andi	a5,s10,512
   1a004:	fe0782e3          	beqz	a5,19fe8 <_vfiprintf_r+0x4a8>
   1a008:	01768023          	sb	s7,0(a3)
   1a00c:	c95ff06f          	j	19ca0 <_vfiprintf_r+0x160>
   1a010:	010d6d13          	ori	s10,s10,16
   1a014:	020d7693          	andi	a3,s10,32
   1a018:	04068663          	beqz	a3,1a064 <_vfiprintf_r+0x524>
   1a01c:	00790913          	addi	s2,s2,7
   1a020:	ff897913          	andi	s2,s2,-8
   1a024:	00092883          	lw	a7,0(s2)
   1a028:	00492c83          	lw	s9,4(s2)
   1a02c:	00890c13          	addi	s8,s2,8
   1a030:	bffd7d13          	andi	s10,s10,-1025
   1a034:	00000693          	li	a3,0
   1a038:	02010da3          	sb	zero,59(sp)
   1a03c:	fff00613          	li	a2,-1
   1a040:	42c48863          	beq	s1,a2,1a470 <_vfiprintf_r+0x930>
   1a044:	000d0613          	mv	a2,s10
   1a048:	0198e5b3          	or	a1,a7,s9
   1a04c:	f7fd7d13          	andi	s10,s10,-129
   1a050:	42059063          	bnez	a1,1a470 <_vfiprintf_r+0x930>
   1a054:	5a048463          	beqz	s1,1a5fc <_vfiprintf_r+0xabc>
   1a058:	00100613          	li	a2,1
   1a05c:	40c69e63          	bne	a3,a2,1a478 <_vfiprintf_r+0x938>
   1a060:	f0dff06f          	j	19f6c <_vfiprintf_r+0x42c>
   1a064:	010d7693          	andi	a3,s10,16
   1a068:	00490c13          	addi	s8,s2,4
   1a06c:	00068663          	beqz	a3,1a078 <_vfiprintf_r+0x538>
   1a070:	00092883          	lw	a7,0(s2)
   1a074:	0100006f          	j	1a084 <_vfiprintf_r+0x544>
   1a078:	040d7693          	andi	a3,s10,64
   1a07c:	00068863          	beqz	a3,1a08c <_vfiprintf_r+0x54c>
   1a080:	00095883          	lhu	a7,0(s2)
   1a084:	00000c93          	li	s9,0
   1a088:	fa9ff06f          	j	1a030 <_vfiprintf_r+0x4f0>
   1a08c:	200d7693          	andi	a3,s10,512
   1a090:	fe0680e3          	beqz	a3,1a070 <_vfiprintf_r+0x530>
   1a094:	00094883          	lbu	a7,0(s2)
   1a098:	fedff06f          	j	1a084 <_vfiprintf_r+0x544>
   1a09c:	ffff86b7          	lui	a3,0xffff8
   1a0a0:	8306c693          	xori	a3,a3,-2000
   1a0a4:	02d11e23          	sh	a3,60(sp)
   1a0a8:	00092883          	lw	a7,0(s2)
   1a0ac:	000216b7          	lui	a3,0x21
   1a0b0:	a5868793          	addi	a5,a3,-1448 # 20a58 <zeroes.4405+0x20>
   1a0b4:	00490c13          	addi	s8,s2,4
   1a0b8:	00000c93          	li	s9,0
   1a0bc:	002d6d13          	ori	s10,s10,2
   1a0c0:	00f12423          	sw	a5,8(sp)
   1a0c4:	00200693          	li	a3,2
   1a0c8:	f71ff06f          	j	1a038 <_vfiprintf_r+0x4f8>
   1a0cc:	02010da3          	sb	zero,59(sp)
   1a0d0:	fff00693          	li	a3,-1
   1a0d4:	00e12023          	sw	a4,0(sp)
   1a0d8:	00490c13          	addi	s8,s2,4
   1a0dc:	00092903          	lw	s2,0(s2)
   1a0e0:	2cd48463          	beq	s1,a3,1a3a8 <_vfiprintf_r+0x868>
   1a0e4:	00048613          	mv	a2,s1
   1a0e8:	00000593          	li	a1,0
   1a0ec:	00090513          	mv	a0,s2
   1a0f0:	fddfb0ef          	jal	ra,160cc <memchr>
   1a0f4:	00000c93          	li	s9,0
   1a0f8:	00012703          	lw	a4,0(sp)
   1a0fc:	00050463          	beqz	a0,1a104 <_vfiprintf_r+0x5c4>
   1a100:	412504b3          	sub	s1,a0,s2
   1a104:	01912023          	sw	s9,0(sp)
   1a108:	009cd463          	ble	s1,s9,1a110 <_vfiprintf_r+0x5d0>
   1a10c:	00912023          	sw	s1,0(sp)
   1a110:	03b14683          	lbu	a3,59(sp)
   1a114:	00068863          	beqz	a3,1a124 <_vfiprintf_r+0x5e4>
   1a118:	00012783          	lw	a5,0(sp)
   1a11c:	00178793          	addi	a5,a5,1
   1a120:	00f12023          	sw	a5,0(sp)
   1a124:	002d7d93          	andi	s11,s10,2
   1a128:	000d8863          	beqz	s11,1a138 <_vfiprintf_r+0x5f8>
   1a12c:	00012783          	lw	a5,0(sp)
   1a130:	00278793          	addi	a5,a5,2
   1a134:	00f12023          	sw	a5,0(sp)
   1a138:	084d7793          	andi	a5,s10,132
   1a13c:	00f12c23          	sw	a5,24(sp)
   1a140:	06079663          	bnez	a5,1a1ac <_vfiprintf_r+0x66c>
   1a144:	00012783          	lw	a5,0(sp)
   1a148:	40fa86b3          	sub	a3,s5,a5
   1a14c:	06d05063          	blez	a3,1a1ac <_vfiprintf_r+0x66c>
   1a150:	000217b7          	lui	a5,0x21
   1a154:	01000893          	li	a7,16
   1a158:	13078813          	addi	a6,a5,304 # 21130 <blanks.4380>
   1a15c:	00700313          	li	t1,7
   1a160:	04412603          	lw	a2,68(sp)
   1a164:	01072023          	sw	a6,0(a4)
   1a168:	04812583          	lw	a1,72(sp)
   1a16c:	00160613          	addi	a2,a2,1
   1a170:	00870513          	addi	a0,a4,8
   1a174:	4ad8cc63          	blt	a7,a3,1a62c <_vfiprintf_r+0xaec>
   1a178:	00d72223          	sw	a3,4(a4)
   1a17c:	00b686b3          	add	a3,a3,a1
   1a180:	04d12423          	sw	a3,72(sp)
   1a184:	04c12223          	sw	a2,68(sp)
   1a188:	00700693          	li	a3,7
   1a18c:	00050713          	mv	a4,a0
   1a190:	00c6de63          	ble	a2,a3,1a1ac <_vfiprintf_r+0x66c>
   1a194:	04010613          	addi	a2,sp,64
   1a198:	00040593          	mv	a1,s0
   1a19c:	00098513          	mv	a0,s3
   1a1a0:	8a1ff0ef          	jal	ra,19a40 <__sprint_r>
   1a1a4:	5c051263          	bnez	a0,1a768 <_vfiprintf_r+0xc28>
   1a1a8:	000b0713          	mv	a4,s6
   1a1ac:	03b14683          	lbu	a3,59(sp)
   1a1b0:	04068863          	beqz	a3,1a200 <_vfiprintf_r+0x6c0>
   1a1b4:	03b10613          	addi	a2,sp,59
   1a1b8:	00c72023          	sw	a2,0(a4)
   1a1bc:	00100613          	li	a2,1
   1a1c0:	04412683          	lw	a3,68(sp)
   1a1c4:	00c72223          	sw	a2,4(a4)
   1a1c8:	04812603          	lw	a2,72(sp)
   1a1cc:	00168693          	addi	a3,a3,1
   1a1d0:	04d12223          	sw	a3,68(sp)
   1a1d4:	00160613          	addi	a2,a2,1
   1a1d8:	04c12423          	sw	a2,72(sp)
   1a1dc:	00700613          	li	a2,7
   1a1e0:	00870713          	addi	a4,a4,8
   1a1e4:	00d65e63          	ble	a3,a2,1a200 <_vfiprintf_r+0x6c0>
   1a1e8:	04010613          	addi	a2,sp,64
   1a1ec:	00040593          	mv	a1,s0
   1a1f0:	00098513          	mv	a0,s3
   1a1f4:	84dff0ef          	jal	ra,19a40 <__sprint_r>
   1a1f8:	56051863          	bnez	a0,1a768 <_vfiprintf_r+0xc28>
   1a1fc:	000b0713          	mv	a4,s6
   1a200:	040d8863          	beqz	s11,1a250 <_vfiprintf_r+0x710>
   1a204:	03c10613          	addi	a2,sp,60
   1a208:	00c72023          	sw	a2,0(a4)
   1a20c:	00200613          	li	a2,2
   1a210:	04412683          	lw	a3,68(sp)
   1a214:	00c72223          	sw	a2,4(a4)
   1a218:	04812603          	lw	a2,72(sp)
   1a21c:	00168693          	addi	a3,a3,1
   1a220:	04d12223          	sw	a3,68(sp)
   1a224:	00260613          	addi	a2,a2,2
   1a228:	04c12423          	sw	a2,72(sp)
   1a22c:	00700613          	li	a2,7
   1a230:	00870713          	addi	a4,a4,8
   1a234:	00d65e63          	ble	a3,a2,1a250 <_vfiprintf_r+0x710>
   1a238:	04010613          	addi	a2,sp,64
   1a23c:	00040593          	mv	a1,s0
   1a240:	00098513          	mv	a0,s3
   1a244:	ffcff0ef          	jal	ra,19a40 <__sprint_r>
   1a248:	52051063          	bnez	a0,1a768 <_vfiprintf_r+0xc28>
   1a24c:	000b0713          	mv	a4,s6
   1a250:	01812783          	lw	a5,24(sp)
   1a254:	08000693          	li	a3,128
   1a258:	06d79463          	bne	a5,a3,1a2c0 <_vfiprintf_r+0x780>
   1a25c:	00012783          	lw	a5,0(sp)
   1a260:	40fa8db3          	sub	s11,s5,a5
   1a264:	05b05e63          	blez	s11,1a2c0 <_vfiprintf_r+0x780>
   1a268:	01000813          	li	a6,16
   1a26c:	00700893          	li	a7,7
   1a270:	01012783          	lw	a5,16(sp)
   1a274:	04412683          	lw	a3,68(sp)
   1a278:	04812603          	lw	a2,72(sp)
   1a27c:	00f72023          	sw	a5,0(a4)
   1a280:	00168693          	addi	a3,a3,1
   1a284:	00870593          	addi	a1,a4,8
   1a288:	3fb84e63          	blt	a6,s11,1a684 <_vfiprintf_r+0xb44>
   1a28c:	01b72223          	sw	s11,4(a4)
   1a290:	00cd8db3          	add	s11,s11,a2
   1a294:	05b12423          	sw	s11,72(sp)
   1a298:	04d12223          	sw	a3,68(sp)
   1a29c:	00700613          	li	a2,7
   1a2a0:	00058713          	mv	a4,a1
   1a2a4:	00d65e63          	ble	a3,a2,1a2c0 <_vfiprintf_r+0x780>
   1a2a8:	04010613          	addi	a2,sp,64
   1a2ac:	00040593          	mv	a1,s0
   1a2b0:	00098513          	mv	a0,s3
   1a2b4:	f8cff0ef          	jal	ra,19a40 <__sprint_r>
   1a2b8:	4a051863          	bnez	a0,1a768 <_vfiprintf_r+0xc28>
   1a2bc:	000b0713          	mv	a4,s6
   1a2c0:	409c8cb3          	sub	s9,s9,s1
   1a2c4:	05905e63          	blez	s9,1a320 <_vfiprintf_r+0x7e0>
   1a2c8:	01000d93          	li	s11,16
   1a2cc:	00700813          	li	a6,7
   1a2d0:	01012783          	lw	a5,16(sp)
   1a2d4:	04412683          	lw	a3,68(sp)
   1a2d8:	04812603          	lw	a2,72(sp)
   1a2dc:	00f72023          	sw	a5,0(a4)
   1a2e0:	00168693          	addi	a3,a3,1
   1a2e4:	00870593          	addi	a1,a4,8
   1a2e8:	3f9dc263          	blt	s11,s9,1a6cc <_vfiprintf_r+0xb8c>
   1a2ec:	01972223          	sw	s9,4(a4)
   1a2f0:	00cc8cb3          	add	s9,s9,a2
   1a2f4:	05912423          	sw	s9,72(sp)
   1a2f8:	04d12223          	sw	a3,68(sp)
   1a2fc:	00700613          	li	a2,7
   1a300:	00058713          	mv	a4,a1
   1a304:	00d65e63          	ble	a3,a2,1a320 <_vfiprintf_r+0x7e0>
   1a308:	04010613          	addi	a2,sp,64
   1a30c:	00040593          	mv	a1,s0
   1a310:	00098513          	mv	a0,s3
   1a314:	f2cff0ef          	jal	ra,19a40 <__sprint_r>
   1a318:	44051863          	bnez	a0,1a768 <_vfiprintf_r+0xc28>
   1a31c:	000b0713          	mv	a4,s6
   1a320:	04812683          	lw	a3,72(sp)
   1a324:	00972223          	sw	s1,4(a4)
   1a328:	01272023          	sw	s2,0(a4)
   1a32c:	009684b3          	add	s1,a3,s1
   1a330:	04412683          	lw	a3,68(sp)
   1a334:	04912423          	sw	s1,72(sp)
   1a338:	00700613          	li	a2,7
   1a33c:	00168693          	addi	a3,a3,1
   1a340:	04d12223          	sw	a3,68(sp)
   1a344:	00870713          	addi	a4,a4,8
   1a348:	00d65e63          	ble	a3,a2,1a364 <_vfiprintf_r+0x824>
   1a34c:	04010613          	addi	a2,sp,64
   1a350:	00040593          	mv	a1,s0
   1a354:	00098513          	mv	a0,s3
   1a358:	ee8ff0ef          	jal	ra,19a40 <__sprint_r>
   1a35c:	40051663          	bnez	a0,1a768 <_vfiprintf_r+0xc28>
   1a360:	000b0713          	mv	a4,s6
   1a364:	004d7793          	andi	a5,s10,4
   1a368:	3a079263          	bnez	a5,1a70c <_vfiprintf_r+0xbcc>
   1a36c:	00012783          	lw	a5,0(sp)
   1a370:	00fad463          	ble	a5,s5,1a378 <_vfiprintf_r+0x838>
   1a374:	00078a93          	mv	s5,a5
   1a378:	04812783          	lw	a5,72(sp)
   1a37c:	015b8bb3          	add	s7,s7,s5
   1a380:	00078c63          	beqz	a5,1a398 <_vfiprintf_r+0x858>
   1a384:	04010613          	addi	a2,sp,64
   1a388:	00040593          	mv	a1,s0
   1a38c:	00098513          	mv	a0,s3
   1a390:	eb0ff0ef          	jal	ra,19a40 <__sprint_r>
   1a394:	3c051a63          	bnez	a0,1a768 <_vfiprintf_r+0xc28>
   1a398:	04012223          	sw	zero,68(sp)
   1a39c:	000c0913          	mv	s2,s8
   1a3a0:	000b0713          	mv	a4,s6
   1a3a4:	8fdff06f          	j	19ca0 <_vfiprintf_r+0x160>
   1a3a8:	00090513          	mv	a0,s2
   1a3ac:	a20f60ef          	jal	ra,105cc <strlen>
   1a3b0:	00050493          	mv	s1,a0
   1a3b4:	00000c93          	li	s9,0
   1a3b8:	00012703          	lw	a4,0(sp)
   1a3bc:	d49ff06f          	j	1a104 <_vfiprintf_r+0x5c4>
   1a3c0:	010d6d13          	ori	s10,s10,16
   1a3c4:	020d7693          	andi	a3,s10,32
   1a3c8:	02068063          	beqz	a3,1a3e8 <_vfiprintf_r+0x8a8>
   1a3cc:	00790913          	addi	s2,s2,7
   1a3d0:	ff897913          	andi	s2,s2,-8
   1a3d4:	00092883          	lw	a7,0(s2)
   1a3d8:	00492c83          	lw	s9,4(s2)
   1a3dc:	00890c13          	addi	s8,s2,8
   1a3e0:	00100693          	li	a3,1
   1a3e4:	c55ff06f          	j	1a038 <_vfiprintf_r+0x4f8>
   1a3e8:	010d7693          	andi	a3,s10,16
   1a3ec:	00490c13          	addi	s8,s2,4
   1a3f0:	00068663          	beqz	a3,1a3fc <_vfiprintf_r+0x8bc>
   1a3f4:	00092883          	lw	a7,0(s2)
   1a3f8:	0100006f          	j	1a408 <_vfiprintf_r+0x8c8>
   1a3fc:	040d7693          	andi	a3,s10,64
   1a400:	00068863          	beqz	a3,1a410 <_vfiprintf_r+0x8d0>
   1a404:	00095883          	lhu	a7,0(s2)
   1a408:	00000c93          	li	s9,0
   1a40c:	fd5ff06f          	j	1a3e0 <_vfiprintf_r+0x8a0>
   1a410:	200d7693          	andi	a3,s10,512
   1a414:	fe0680e3          	beqz	a3,1a3f4 <_vfiprintf_r+0x8b4>
   1a418:	00094883          	lbu	a7,0(s2)
   1a41c:	fedff06f          	j	1a408 <_vfiprintf_r+0x8c8>
   1a420:	000216b7          	lui	a3,0x21
   1a424:	a5868793          	addi	a5,a3,-1448 # 20a58 <zeroes.4405+0x20>
   1a428:	93dff06f          	j	19d64 <_vfiprintf_r+0x224>
   1a42c:	010d7693          	andi	a3,s10,16
   1a430:	00490c13          	addi	s8,s2,4
   1a434:	00068663          	beqz	a3,1a440 <_vfiprintf_r+0x900>
   1a438:	00092883          	lw	a7,0(s2)
   1a43c:	0100006f          	j	1a44c <_vfiprintf_r+0x90c>
   1a440:	040d7693          	andi	a3,s10,64
   1a444:	00068863          	beqz	a3,1a454 <_vfiprintf_r+0x914>
   1a448:	00095883          	lhu	a7,0(s2)
   1a44c:	00000c93          	li	s9,0
   1a450:	935ff06f          	j	19d84 <_vfiprintf_r+0x244>
   1a454:	200d7693          	andi	a3,s10,512
   1a458:	fe0680e3          	beqz	a3,1a438 <_vfiprintf_r+0x8f8>
   1a45c:	00094883          	lbu	a7,0(s2)
   1a460:	fedff06f          	j	1a44c <_vfiprintf_r+0x90c>
   1a464:	000d0613          	mv	a2,s10
   1a468:	00100693          	li	a3,1
   1a46c:	bddff06f          	j	1a048 <_vfiprintf_r+0x508>
   1a470:	00100613          	li	a2,1
   1a474:	aec686e3          	beq	a3,a2,19f60 <_vfiprintf_r+0x420>
   1a478:	00200613          	li	a2,2
   1a47c:	14c68463          	beq	a3,a2,1a5c4 <_vfiprintf_r+0xa84>
   1a480:	0f010693          	addi	a3,sp,240
   1a484:	01dc9593          	slli	a1,s9,0x1d
   1a488:	0078f613          	andi	a2,a7,7
   1a48c:	0038d893          	srli	a7,a7,0x3
   1a490:	03060613          	addi	a2,a2,48
   1a494:	0115e8b3          	or	a7,a1,a7
   1a498:	003cdc93          	srli	s9,s9,0x3
   1a49c:	fec68fa3          	sb	a2,-1(a3)
   1a4a0:	0198e5b3          	or	a1,a7,s9
   1a4a4:	fff68913          	addi	s2,a3,-1
   1a4a8:	02059663          	bnez	a1,1a4d4 <_vfiprintf_r+0x994>
   1a4ac:	001d7593          	andi	a1,s10,1
   1a4b0:	00058a63          	beqz	a1,1a4c4 <_vfiprintf_r+0x984>
   1a4b4:	03000593          	li	a1,48
   1a4b8:	00b60663          	beq	a2,a1,1a4c4 <_vfiprintf_r+0x984>
   1a4bc:	feb90fa3          	sb	a1,-1(s2)
   1a4c0:	ffe68913          	addi	s2,a3,-2
   1a4c4:	0f010793          	addi	a5,sp,240
   1a4c8:	00048c93          	mv	s9,s1
   1a4cc:	412784b3          	sub	s1,a5,s2
   1a4d0:	c35ff06f          	j	1a104 <_vfiprintf_r+0x5c4>
   1a4d4:	00090693          	mv	a3,s2
   1a4d8:	fadff06f          	j	1a484 <_vfiprintf_r+0x944>
   1a4dc:	400d7793          	andi	a5,s10,1024
   1a4e0:	00000d93          	li	s11,0
   1a4e4:	0f010e13          	addi	t3,sp,240
   1a4e8:	00f12023          	sw	a5,0(sp)
   1a4ec:	00088513          	mv	a0,a7
   1a4f0:	00a00613          	li	a2,10
   1a4f4:	00000693          	li	a3,0
   1a4f8:	000c8593          	mv	a1,s9
   1a4fc:	02e12223          	sw	a4,36(sp)
   1a500:	fffe0913          	addi	s2,t3,-1
   1a504:	03c12023          	sw	t3,32(sp)
   1a508:	01112c23          	sw	a7,24(sp)
   1a50c:	168020ef          	jal	ra,1c674 <__umoddi3>
   1a510:	02012e03          	lw	t3,32(sp)
   1a514:	00012783          	lw	a5,0(sp)
   1a518:	03050513          	addi	a0,a0,48
   1a51c:	feae0fa3          	sb	a0,-1(t3)
   1a520:	001d8d93          	addi	s11,s11,1
   1a524:	01812883          	lw	a7,24(sp)
   1a528:	02412703          	lw	a4,36(sp)
   1a52c:	06078263          	beqz	a5,1a590 <_vfiprintf_r+0xa50>
   1a530:	00412783          	lw	a5,4(sp)
   1a534:	0007c683          	lbu	a3,0(a5)
   1a538:	05b69c63          	bne	a3,s11,1a590 <_vfiprintf_r+0xa50>
   1a53c:	0ff00793          	li	a5,255
   1a540:	04fd8863          	beq	s11,a5,1a590 <_vfiprintf_r+0xa50>
   1a544:	000c9663          	bnez	s9,1a550 <_vfiprintf_r+0xa10>
   1a548:	00900793          	li	a5,9
   1a54c:	0517f263          	bleu	a7,a5,1a590 <_vfiprintf_r+0xa50>
   1a550:	00c12783          	lw	a5,12(sp)
   1a554:	01412583          	lw	a1,20(sp)
   1a558:	03112023          	sw	a7,32(sp)
   1a55c:	40f90933          	sub	s2,s2,a5
   1a560:	00078613          	mv	a2,a5
   1a564:	00090513          	mv	a0,s2
   1a568:	00e12c23          	sw	a4,24(sp)
   1a56c:	d50fd0ef          	jal	ra,17abc <strncpy>
   1a570:	00412783          	lw	a5,4(sp)
   1a574:	00000d93          	li	s11,0
   1a578:	01812703          	lw	a4,24(sp)
   1a57c:	0017c683          	lbu	a3,1(a5)
   1a580:	02012883          	lw	a7,32(sp)
   1a584:	00068663          	beqz	a3,1a590 <_vfiprintf_r+0xa50>
   1a588:	00178793          	addi	a5,a5,1
   1a58c:	00f12223          	sw	a5,4(sp)
   1a590:	00088513          	mv	a0,a7
   1a594:	000c8593          	mv	a1,s9
   1a598:	00a00613          	li	a2,10
   1a59c:	00000693          	li	a3,0
   1a5a0:	00e12c23          	sw	a4,24(sp)
   1a5a4:	49d010ef          	jal	ra,1c240 <__udivdi3>
   1a5a8:	00058c93          	mv	s9,a1
   1a5ac:	00a5e5b3          	or	a1,a1,a0
   1a5b0:	00050893          	mv	a7,a0
   1a5b4:	01812703          	lw	a4,24(sp)
   1a5b8:	f00586e3          	beqz	a1,1a4c4 <_vfiprintf_r+0x984>
   1a5bc:	00090e13          	mv	t3,s2
   1a5c0:	f2dff06f          	j	1a4ec <_vfiprintf_r+0x9ac>
   1a5c4:	0f010913          	addi	s2,sp,240
   1a5c8:	00812783          	lw	a5,8(sp)
   1a5cc:	00f8f693          	andi	a3,a7,15
   1a5d0:	fff90913          	addi	s2,s2,-1
   1a5d4:	00d786b3          	add	a3,a5,a3
   1a5d8:	0006c683          	lbu	a3,0(a3)
   1a5dc:	0048d893          	srli	a7,a7,0x4
   1a5e0:	00d90023          	sb	a3,0(s2)
   1a5e4:	01cc9693          	slli	a3,s9,0x1c
   1a5e8:	0116e8b3          	or	a7,a3,a7
   1a5ec:	004cdc93          	srli	s9,s9,0x4
   1a5f0:	0198e6b3          	or	a3,a7,s9
   1a5f4:	fc069ae3          	bnez	a3,1a5c8 <_vfiprintf_r+0xa88>
   1a5f8:	ecdff06f          	j	1a4c4 <_vfiprintf_r+0x984>
   1a5fc:	0f010913          	addi	s2,sp,240
   1a600:	ec0692e3          	bnez	a3,1a4c4 <_vfiprintf_r+0x984>
   1a604:	00167613          	andi	a2,a2,1
   1a608:	ea060ee3          	beqz	a2,1a4c4 <_vfiprintf_r+0x984>
   1a60c:	03000693          	li	a3,48
   1a610:	0ed107a3          	sb	a3,239(sp)
   1a614:	961ff06f          	j	19f74 <_vfiprintf_r+0x434>
   1a618:	18060c63          	beqz	a2,1a7b0 <_vfiprintf_r+0xc70>
   1a61c:	08c10623          	sb	a2,140(sp)
   1a620:	02010da3          	sb	zero,59(sp)
   1a624:	00090c13          	mv	s8,s2
   1a628:	8e5ff06f          	j	19f0c <_vfiprintf_r+0x3cc>
   1a62c:	01058593          	addi	a1,a1,16
   1a630:	01172223          	sw	a7,4(a4)
   1a634:	04b12423          	sw	a1,72(sp)
   1a638:	04c12223          	sw	a2,68(sp)
   1a63c:	02c35e63          	ble	a2,t1,1a678 <_vfiprintf_r+0xb38>
   1a640:	04010613          	addi	a2,sp,64
   1a644:	00040593          	mv	a1,s0
   1a648:	00098513          	mv	a0,s3
   1a64c:	02612623          	sw	t1,44(sp)
   1a650:	03012423          	sw	a6,40(sp)
   1a654:	03112223          	sw	a7,36(sp)
   1a658:	02d12023          	sw	a3,32(sp)
   1a65c:	be4ff0ef          	jal	ra,19a40 <__sprint_r>
   1a660:	10051463          	bnez	a0,1a768 <_vfiprintf_r+0xc28>
   1a664:	02c12303          	lw	t1,44(sp)
   1a668:	02812803          	lw	a6,40(sp)
   1a66c:	02412883          	lw	a7,36(sp)
   1a670:	02012683          	lw	a3,32(sp)
   1a674:	000b0513          	mv	a0,s6
   1a678:	ff068693          	addi	a3,a3,-16
   1a67c:	00050713          	mv	a4,a0
   1a680:	ae1ff06f          	j	1a160 <_vfiprintf_r+0x620>
   1a684:	01060613          	addi	a2,a2,16
   1a688:	01072223          	sw	a6,4(a4)
   1a68c:	04c12423          	sw	a2,72(sp)
   1a690:	04d12223          	sw	a3,68(sp)
   1a694:	02d8d663          	ble	a3,a7,1a6c0 <_vfiprintf_r+0xb80>
   1a698:	04010613          	addi	a2,sp,64
   1a69c:	00040593          	mv	a1,s0
   1a6a0:	00098513          	mv	a0,s3
   1a6a4:	03112023          	sw	a7,32(sp)
   1a6a8:	01012c23          	sw	a6,24(sp)
   1a6ac:	b94ff0ef          	jal	ra,19a40 <__sprint_r>
   1a6b0:	0a051c63          	bnez	a0,1a768 <_vfiprintf_r+0xc28>
   1a6b4:	02012883          	lw	a7,32(sp)
   1a6b8:	01812803          	lw	a6,24(sp)
   1a6bc:	000b0593          	mv	a1,s6
   1a6c0:	ff0d8d93          	addi	s11,s11,-16
   1a6c4:	00058713          	mv	a4,a1
   1a6c8:	ba9ff06f          	j	1a270 <_vfiprintf_r+0x730>
   1a6cc:	01060613          	addi	a2,a2,16
   1a6d0:	01b72223          	sw	s11,4(a4)
   1a6d4:	04c12423          	sw	a2,72(sp)
   1a6d8:	04d12223          	sw	a3,68(sp)
   1a6dc:	02d85263          	ble	a3,a6,1a700 <_vfiprintf_r+0xbc0>
   1a6e0:	04010613          	addi	a2,sp,64
   1a6e4:	00040593          	mv	a1,s0
   1a6e8:	00098513          	mv	a0,s3
   1a6ec:	01012c23          	sw	a6,24(sp)
   1a6f0:	b50ff0ef          	jal	ra,19a40 <__sprint_r>
   1a6f4:	06051a63          	bnez	a0,1a768 <_vfiprintf_r+0xc28>
   1a6f8:	01812803          	lw	a6,24(sp)
   1a6fc:	000b0593          	mv	a1,s6
   1a700:	ff0c8c93          	addi	s9,s9,-16
   1a704:	00058713          	mv	a4,a1
   1a708:	bc9ff06f          	j	1a2d0 <_vfiprintf_r+0x790>
   1a70c:	00012783          	lw	a5,0(sp)
   1a710:	40fa84b3          	sub	s1,s5,a5
   1a714:	c4905ce3          	blez	s1,1a36c <_vfiprintf_r+0x82c>
   1a718:	000217b7          	lui	a5,0x21
   1a71c:	01000c93          	li	s9,16
   1a720:	13078913          	addi	s2,a5,304 # 21130 <blanks.4380>
   1a724:	00700d93          	li	s11,7
   1a728:	04412783          	lw	a5,68(sp)
   1a72c:	01272023          	sw	s2,0(a4)
   1a730:	04812683          	lw	a3,72(sp)
   1a734:	00178793          	addi	a5,a5,1
   1a738:	049cc063          	blt	s9,s1,1a778 <_vfiprintf_r+0xc38>
   1a73c:	00972223          	sw	s1,4(a4)
   1a740:	00d484b3          	add	s1,s1,a3
   1a744:	04912423          	sw	s1,72(sp)
   1a748:	04f12223          	sw	a5,68(sp)
   1a74c:	00700713          	li	a4,7
   1a750:	c0f75ee3          	ble	a5,a4,1a36c <_vfiprintf_r+0x82c>
   1a754:	04010613          	addi	a2,sp,64
   1a758:	00040593          	mv	a1,s0
   1a75c:	00098513          	mv	a0,s3
   1a760:	ae0ff0ef          	jal	ra,19a40 <__sprint_r>
   1a764:	c00504e3          	beqz	a0,1a36c <_vfiprintf_r+0x82c>
   1a768:	00c45783          	lhu	a5,12(s0)
   1a76c:	0407f793          	andi	a5,a5,64
   1a770:	c8078c63          	beqz	a5,19c08 <_vfiprintf_r+0xc8>
   1a774:	ce4ff06f          	j	19c58 <_vfiprintf_r+0x118>
   1a778:	01068693          	addi	a3,a3,16
   1a77c:	01972223          	sw	s9,4(a4)
   1a780:	04d12423          	sw	a3,72(sp)
   1a784:	04f12223          	sw	a5,68(sp)
   1a788:	00870713          	addi	a4,a4,8
   1a78c:	00fdde63          	ble	a5,s11,1a7a8 <_vfiprintf_r+0xc68>
   1a790:	04010613          	addi	a2,sp,64
   1a794:	00040593          	mv	a1,s0
   1a798:	00098513          	mv	a0,s3
   1a79c:	aa4ff0ef          	jal	ra,19a40 <__sprint_r>
   1a7a0:	fc0514e3          	bnez	a0,1a768 <_vfiprintf_r+0xc28>
   1a7a4:	000b0713          	mv	a4,s6
   1a7a8:	ff048493          	addi	s1,s1,-16
   1a7ac:	f7dff06f          	j	1a728 <_vfiprintf_r+0xbe8>
   1a7b0:	04812783          	lw	a5,72(sp)
   1a7b4:	fa078ae3          	beqz	a5,1a768 <_vfiprintf_r+0xc28>
   1a7b8:	04010613          	addi	a2,sp,64
   1a7bc:	00040593          	mv	a1,s0
   1a7c0:	00098513          	mv	a0,s3
   1a7c4:	a7cff0ef          	jal	ra,19a40 <__sprint_r>
   1a7c8:	fa1ff06f          	j	1a768 <_vfiprintf_r+0xc28>

0001a7cc <vfiprintf>:
   1a7cc:	00060693          	mv	a3,a2
   1a7d0:	00058613          	mv	a2,a1
   1a7d4:	00050593          	mv	a1,a0
   1a7d8:	8201a503          	lw	a0,-2016(gp) # 229c8 <_impure_ptr>
   1a7dc:	b64ff06f          	j	19b40 <_vfiprintf_r>

0001a7e0 <__sbprintf>:
   1a7e0:	00c5d783          	lhu	a5,12(a1)
   1a7e4:	b8010113          	addi	sp,sp,-1152
   1a7e8:	46812c23          	sw	s0,1144(sp)
   1a7ec:	ffd7f793          	andi	a5,a5,-3
   1a7f0:	00f11a23          	sh	a5,20(sp)
   1a7f4:	0645a783          	lw	a5,100(a1)
   1a7f8:	00058413          	mv	s0,a1
   1a7fc:	46912a23          	sw	s1,1140(sp)
   1a800:	06f12623          	sw	a5,108(sp)
   1a804:	00e5d783          	lhu	a5,14(a1)
   1a808:	47212823          	sw	s2,1136(sp)
   1a80c:	46112e23          	sw	ra,1148(sp)
   1a810:	00f11b23          	sh	a5,22(sp)
   1a814:	01c5a783          	lw	a5,28(a1)
   1a818:	00050913          	mv	s2,a0
   1a81c:	02012023          	sw	zero,32(sp)
   1a820:	02f12223          	sw	a5,36(sp)
   1a824:	0245a783          	lw	a5,36(a1)
   1a828:	00810593          	addi	a1,sp,8
   1a82c:	02f12623          	sw	a5,44(sp)
   1a830:	07010793          	addi	a5,sp,112
   1a834:	00f12423          	sw	a5,8(sp)
   1a838:	00f12c23          	sw	a5,24(sp)
   1a83c:	40000793          	li	a5,1024
   1a840:	00f12823          	sw	a5,16(sp)
   1a844:	00f12e23          	sw	a5,28(sp)
   1a848:	af8ff0ef          	jal	ra,19b40 <_vfiprintf_r>
   1a84c:	00050493          	mv	s1,a0
   1a850:	00054c63          	bltz	a0,1a868 <__sbprintf+0x88>
   1a854:	00810593          	addi	a1,sp,8
   1a858:	00090513          	mv	a0,s2
   1a85c:	ab8f80ef          	jal	ra,12b14 <_fflush_r>
   1a860:	00050463          	beqz	a0,1a868 <__sbprintf+0x88>
   1a864:	fff00493          	li	s1,-1
   1a868:	01415783          	lhu	a5,20(sp)
   1a86c:	0407f793          	andi	a5,a5,64
   1a870:	00078863          	beqz	a5,1a880 <__sbprintf+0xa0>
   1a874:	00c45783          	lhu	a5,12(s0)
   1a878:	0407e793          	ori	a5,a5,64
   1a87c:	00f41623          	sh	a5,12(s0)
   1a880:	47c12083          	lw	ra,1148(sp)
   1a884:	47812403          	lw	s0,1144(sp)
   1a888:	00048513          	mv	a0,s1
   1a88c:	47012903          	lw	s2,1136(sp)
   1a890:	47412483          	lw	s1,1140(sp)
   1a894:	48010113          	addi	sp,sp,1152
   1a898:	00008067          	ret

0001a89c <_wctomb_r>:
   1a89c:	8201a783          	lw	a5,-2016(gp) # 229c8 <_impure_ptr>
   1a8a0:	0347a783          	lw	a5,52(a5)
   1a8a4:	00079663          	bnez	a5,1a8b0 <_wctomb_r+0x14>
   1a8a8:	000227b7          	lui	a5,0x22
   1a8ac:	43078793          	addi	a5,a5,1072 # 22430 <__global_locale>
   1a8b0:	0e07a303          	lw	t1,224(a5)
   1a8b4:	00030067          	jr	t1

0001a8b8 <__ascii_wctomb>:
   1a8b8:	02058463          	beqz	a1,1a8e0 <__ascii_wctomb+0x28>
   1a8bc:	0ff00793          	li	a5,255
   1a8c0:	00c7fa63          	bleu	a2,a5,1a8d4 <__ascii_wctomb+0x1c>
   1a8c4:	08a00793          	li	a5,138
   1a8c8:	00f52023          	sw	a5,0(a0)
   1a8cc:	fff00513          	li	a0,-1
   1a8d0:	00008067          	ret
   1a8d4:	00c58023          	sb	a2,0(a1)
   1a8d8:	00100513          	li	a0,1
   1a8dc:	00008067          	ret
   1a8e0:	00000513          	li	a0,0
   1a8e4:	00008067          	ret

0001a8e8 <_write_r>:
   1a8e8:	ff010113          	addi	sp,sp,-16
   1a8ec:	00812423          	sw	s0,8(sp)
   1a8f0:	00912223          	sw	s1,4(sp)
   1a8f4:	00050493          	mv	s1,a0
   1a8f8:	00058513          	mv	a0,a1
   1a8fc:	00060593          	mv	a1,a2
   1a900:	00068613          	mv	a2,a3
   1a904:	00112623          	sw	ra,12(sp)
   1a908:	8801a223          	sw	zero,-1916(gp) # 22a2c <errno>
   1a90c:	075010ef          	jal	ra,1c180 <_write>
   1a910:	fff00793          	li	a5,-1
   1a914:	00f51863          	bne	a0,a5,1a924 <_write_r+0x3c>
   1a918:	8841a783          	lw	a5,-1916(gp) # 22a2c <errno>
   1a91c:	00078463          	beqz	a5,1a924 <_write_r+0x3c>
   1a920:	00f4a023          	sw	a5,0(s1)
   1a924:	00c12083          	lw	ra,12(sp)
   1a928:	00812403          	lw	s0,8(sp)
   1a92c:	00412483          	lw	s1,4(sp)
   1a930:	01010113          	addi	sp,sp,16
   1a934:	00008067          	ret

0001a938 <_calloc_r>:
   1a938:	02c585b3          	mul	a1,a1,a2
   1a93c:	ff010113          	addi	sp,sp,-16
   1a940:	00812423          	sw	s0,8(sp)
   1a944:	00112623          	sw	ra,12(sp)
   1a948:	8c8fb0ef          	jal	ra,15a10 <_malloc_r>
   1a94c:	00050413          	mv	s0,a0
   1a950:	04050263          	beqz	a0,1a994 <_calloc_r+0x5c>
   1a954:	ffc52603          	lw	a2,-4(a0)
   1a958:	02400713          	li	a4,36
   1a95c:	ffc67613          	andi	a2,a2,-4
   1a960:	ffc60613          	addi	a2,a2,-4
   1a964:	06c76263          	bltu	a4,a2,1a9c8 <_calloc_r+0x90>
   1a968:	01300693          	li	a3,19
   1a96c:	00050793          	mv	a5,a0
   1a970:	00c6fc63          	bleu	a2,a3,1a988 <_calloc_r+0x50>
   1a974:	00052023          	sw	zero,0(a0)
   1a978:	00052223          	sw	zero,4(a0)
   1a97c:	01b00793          	li	a5,27
   1a980:	02c7e463          	bltu	a5,a2,1a9a8 <_calloc_r+0x70>
   1a984:	00850793          	addi	a5,a0,8
   1a988:	0007a023          	sw	zero,0(a5)
   1a98c:	0007a223          	sw	zero,4(a5)
   1a990:	0007a423          	sw	zero,8(a5)
   1a994:	00040513          	mv	a0,s0
   1a998:	00c12083          	lw	ra,12(sp)
   1a99c:	00812403          	lw	s0,8(sp)
   1a9a0:	01010113          	addi	sp,sp,16
   1a9a4:	00008067          	ret
   1a9a8:	00052423          	sw	zero,8(a0)
   1a9ac:	00052623          	sw	zero,12(a0)
   1a9b0:	01050793          	addi	a5,a0,16
   1a9b4:	fce61ae3          	bne	a2,a4,1a988 <_calloc_r+0x50>
   1a9b8:	00052823          	sw	zero,16(a0)
   1a9bc:	01850793          	addi	a5,a0,24
   1a9c0:	00052a23          	sw	zero,20(a0)
   1a9c4:	fc5ff06f          	j	1a988 <_calloc_r+0x50>
   1a9c8:	00000593          	li	a1,0
   1a9cc:	9c5f50ef          	jal	ra,10390 <memset>
   1a9d0:	fc5ff06f          	j	1a994 <_calloc_r+0x5c>

0001a9d4 <_close_r>:
   1a9d4:	ff010113          	addi	sp,sp,-16
   1a9d8:	00812423          	sw	s0,8(sp)
   1a9dc:	00912223          	sw	s1,4(sp)
   1a9e0:	00050493          	mv	s1,a0
   1a9e4:	00058513          	mv	a0,a1
   1a9e8:	00112623          	sw	ra,12(sp)
   1a9ec:	8801a223          	sw	zero,-1916(gp) # 22a2c <errno>
   1a9f0:	4fc010ef          	jal	ra,1beec <_close>
   1a9f4:	fff00793          	li	a5,-1
   1a9f8:	00f51863          	bne	a0,a5,1aa08 <_close_r+0x34>
   1a9fc:	8841a783          	lw	a5,-1916(gp) # 22a2c <errno>
   1aa00:	00078463          	beqz	a5,1aa08 <_close_r+0x34>
   1aa04:	00f4a023          	sw	a5,0(s1)
   1aa08:	00c12083          	lw	ra,12(sp)
   1aa0c:	00812403          	lw	s0,8(sp)
   1aa10:	00412483          	lw	s1,4(sp)
   1aa14:	01010113          	addi	sp,sp,16
   1aa18:	00008067          	ret

0001aa1c <_fclose_r>:
   1aa1c:	ff010113          	addi	sp,sp,-16
   1aa20:	00112623          	sw	ra,12(sp)
   1aa24:	00812423          	sw	s0,8(sp)
   1aa28:	00912223          	sw	s1,4(sp)
   1aa2c:	01212023          	sw	s2,0(sp)
   1aa30:	02059263          	bnez	a1,1aa54 <_fclose_r+0x38>
   1aa34:	00000913          	li	s2,0
   1aa38:	00c12083          	lw	ra,12(sp)
   1aa3c:	00812403          	lw	s0,8(sp)
   1aa40:	00090513          	mv	a0,s2
   1aa44:	00412483          	lw	s1,4(sp)
   1aa48:	00012903          	lw	s2,0(sp)
   1aa4c:	01010113          	addi	sp,sp,16
   1aa50:	00008067          	ret
   1aa54:	00050493          	mv	s1,a0
   1aa58:	00058413          	mv	s0,a1
   1aa5c:	00050863          	beqz	a0,1aa6c <_fclose_r+0x50>
   1aa60:	03852783          	lw	a5,56(a0)
   1aa64:	00079463          	bnez	a5,1aa6c <_fclose_r+0x50>
   1aa68:	a3cf80ef          	jal	ra,12ca4 <__sinit>
   1aa6c:	00c41783          	lh	a5,12(s0)
   1aa70:	fc0782e3          	beqz	a5,1aa34 <_fclose_r+0x18>
   1aa74:	00040593          	mv	a1,s0
   1aa78:	00048513          	mv	a0,s1
   1aa7c:	e91f70ef          	jal	ra,1290c <__sflush_r>
   1aa80:	02c42783          	lw	a5,44(s0)
   1aa84:	00050913          	mv	s2,a0
   1aa88:	00078c63          	beqz	a5,1aaa0 <_fclose_r+0x84>
   1aa8c:	01c42583          	lw	a1,28(s0)
   1aa90:	00048513          	mv	a0,s1
   1aa94:	000780e7          	jalr	a5
   1aa98:	00055463          	bgez	a0,1aaa0 <_fclose_r+0x84>
   1aa9c:	fff00913          	li	s2,-1
   1aaa0:	00c45783          	lhu	a5,12(s0)
   1aaa4:	0807f793          	andi	a5,a5,128
   1aaa8:	00078863          	beqz	a5,1aab8 <_fclose_r+0x9c>
   1aaac:	01042583          	lw	a1,16(s0)
   1aab0:	00048513          	mv	a0,s1
   1aab4:	c9cf80ef          	jal	ra,12f50 <_free_r>
   1aab8:	03042583          	lw	a1,48(s0)
   1aabc:	00058c63          	beqz	a1,1aad4 <_fclose_r+0xb8>
   1aac0:	04040793          	addi	a5,s0,64
   1aac4:	00f58663          	beq	a1,a5,1aad0 <_fclose_r+0xb4>
   1aac8:	00048513          	mv	a0,s1
   1aacc:	c84f80ef          	jal	ra,12f50 <_free_r>
   1aad0:	02042823          	sw	zero,48(s0)
   1aad4:	04442583          	lw	a1,68(s0)
   1aad8:	00058863          	beqz	a1,1aae8 <_fclose_r+0xcc>
   1aadc:	00048513          	mv	a0,s1
   1aae0:	c70f80ef          	jal	ra,12f50 <_free_r>
   1aae4:	04042223          	sw	zero,68(s0)
   1aae8:	b28f80ef          	jal	ra,12e10 <__sfp_lock_acquire>
   1aaec:	00041623          	sh	zero,12(s0)
   1aaf0:	b24f80ef          	jal	ra,12e14 <__sfp_lock_release>
   1aaf4:	f45ff06f          	j	1aa38 <_fclose_r+0x1c>

0001aaf8 <fclose>:
   1aaf8:	00050593          	mv	a1,a0
   1aafc:	8201a503          	lw	a0,-2016(gp) # 229c8 <_impure_ptr>
   1ab00:	f1dff06f          	j	1aa1c <_fclose_r>

0001ab04 <__fputwc>:
   1ab04:	fd010113          	addi	sp,sp,-48
   1ab08:	02812423          	sw	s0,40(sp)
   1ab0c:	02912223          	sw	s1,36(sp)
   1ab10:	01412c23          	sw	s4,24(sp)
   1ab14:	02112623          	sw	ra,44(sp)
   1ab18:	03212023          	sw	s2,32(sp)
   1ab1c:	01312e23          	sw	s3,28(sp)
   1ab20:	01512a23          	sw	s5,20(sp)
   1ab24:	01612823          	sw	s6,16(sp)
   1ab28:	00050a13          	mv	s4,a0
   1ab2c:	00058493          	mv	s1,a1
   1ab30:	00060413          	mv	s0,a2
   1ab34:	d01fa0ef          	jal	ra,15834 <__locale_mb_cur_max>
   1ab38:	00100793          	li	a5,1
   1ab3c:	04f51a63          	bne	a0,a5,1ab90 <__fputwc+0x8c>
   1ab40:	fff48793          	addi	a5,s1,-1
   1ab44:	0fe00713          	li	a4,254
   1ab48:	04f76463          	bltu	a4,a5,1ab90 <__fputwc+0x8c>
   1ab4c:	00910623          	sb	s1,12(sp)
   1ab50:	00100993          	li	s3,1
   1ab54:	00000913          	li	s2,0
   1ab58:	fff00a93          	li	s5,-1
   1ab5c:	00a00b13          	li	s6,10
   1ab60:	07391263          	bne	s2,s3,1abc4 <__fputwc+0xc0>
   1ab64:	00048513          	mv	a0,s1
   1ab68:	02c12083          	lw	ra,44(sp)
   1ab6c:	02812403          	lw	s0,40(sp)
   1ab70:	02412483          	lw	s1,36(sp)
   1ab74:	02012903          	lw	s2,32(sp)
   1ab78:	01c12983          	lw	s3,28(sp)
   1ab7c:	01812a03          	lw	s4,24(sp)
   1ab80:	01412a83          	lw	s5,20(sp)
   1ab84:	01012b03          	lw	s6,16(sp)
   1ab88:	03010113          	addi	sp,sp,48
   1ab8c:	00008067          	ret
   1ab90:	05c40693          	addi	a3,s0,92
   1ab94:	00048613          	mv	a2,s1
   1ab98:	00c10593          	addi	a1,sp,12
   1ab9c:	000a0513          	mv	a0,s4
   1aba0:	2b0010ef          	jal	ra,1be50 <_wcrtomb_r>
   1aba4:	fff00793          	li	a5,-1
   1aba8:	00050993          	mv	s3,a0
   1abac:	faf514e3          	bne	a0,a5,1ab54 <__fputwc+0x50>
   1abb0:	00c45783          	lhu	a5,12(s0)
   1abb4:	0407e793          	ori	a5,a5,64
   1abb8:	00f41623          	sh	a5,12(s0)
   1abbc:	fff00513          	li	a0,-1
   1abc0:	fa9ff06f          	j	1ab68 <__fputwc+0x64>
   1abc4:	00c10793          	addi	a5,sp,12
   1abc8:	012787b3          	add	a5,a5,s2
   1abcc:	0007c583          	lbu	a1,0(a5)
   1abd0:	00842783          	lw	a5,8(s0)
   1abd4:	fff78793          	addi	a5,a5,-1
   1abd8:	00f42423          	sw	a5,8(s0)
   1abdc:	0007d863          	bgez	a5,1abec <__fputwc+0xe8>
   1abe0:	01842703          	lw	a4,24(s0)
   1abe4:	02e7c063          	blt	a5,a4,1ac04 <__fputwc+0x100>
   1abe8:	01658e63          	beq	a1,s6,1ac04 <__fputwc+0x100>
   1abec:	00042783          	lw	a5,0(s0)
   1abf0:	00178713          	addi	a4,a5,1
   1abf4:	00e42023          	sw	a4,0(s0)
   1abf8:	00b78023          	sb	a1,0(a5)
   1abfc:	00190913          	addi	s2,s2,1
   1ac00:	f61ff06f          	j	1ab60 <__fputwc+0x5c>
   1ac04:	00040613          	mv	a2,s0
   1ac08:	000a0513          	mv	a0,s4
   1ac0c:	104010ef          	jal	ra,1bd10 <__swbuf_r>
   1ac10:	ff5516e3          	bne	a0,s5,1abfc <__fputwc+0xf8>
   1ac14:	fa9ff06f          	j	1abbc <__fputwc+0xb8>

0001ac18 <_fputwc_r>:
   1ac18:	00c61783          	lh	a5,12(a2)
   1ac1c:	01279713          	slli	a4,a5,0x12
   1ac20:	02074063          	bltz	a4,1ac40 <_fputwc_r+0x28>
   1ac24:	06462703          	lw	a4,100(a2)
   1ac28:	000026b7          	lui	a3,0x2
   1ac2c:	00d7e7b3          	or	a5,a5,a3
   1ac30:	00f61623          	sh	a5,12(a2)
   1ac34:	000027b7          	lui	a5,0x2
   1ac38:	00f767b3          	or	a5,a4,a5
   1ac3c:	06f62223          	sw	a5,100(a2)
   1ac40:	ec5ff06f          	j	1ab04 <__fputwc>

0001ac44 <fputwc>:
   1ac44:	fe010113          	addi	sp,sp,-32
   1ac48:	00812c23          	sw	s0,24(sp)
   1ac4c:	8201a403          	lw	s0,-2016(gp) # 229c8 <_impure_ptr>
   1ac50:	00912a23          	sw	s1,20(sp)
   1ac54:	00112e23          	sw	ra,28(sp)
   1ac58:	00050493          	mv	s1,a0
   1ac5c:	00058613          	mv	a2,a1
   1ac60:	00040e63          	beqz	s0,1ac7c <fputwc+0x38>
   1ac64:	03842783          	lw	a5,56(s0)
   1ac68:	00079a63          	bnez	a5,1ac7c <fputwc+0x38>
   1ac6c:	00040513          	mv	a0,s0
   1ac70:	00b12623          	sw	a1,12(sp)
   1ac74:	830f80ef          	jal	ra,12ca4 <__sinit>
   1ac78:	00c12603          	lw	a2,12(sp)
   1ac7c:	00040513          	mv	a0,s0
   1ac80:	01812403          	lw	s0,24(sp)
   1ac84:	01c12083          	lw	ra,28(sp)
   1ac88:	00048593          	mv	a1,s1
   1ac8c:	01412483          	lw	s1,20(sp)
   1ac90:	02010113          	addi	sp,sp,32
   1ac94:	f85ff06f          	j	1ac18 <_fputwc_r>

0001ac98 <_fstat_r>:
   1ac98:	ff010113          	addi	sp,sp,-16
   1ac9c:	00812423          	sw	s0,8(sp)
   1aca0:	00912223          	sw	s1,4(sp)
   1aca4:	00050493          	mv	s1,a0
   1aca8:	00058513          	mv	a0,a1
   1acac:	00060593          	mv	a1,a2
   1acb0:	00112623          	sw	ra,12(sp)
   1acb4:	8801a223          	sw	zero,-1916(gp) # 22a2c <errno>
   1acb8:	2cc010ef          	jal	ra,1bf84 <_fstat>
   1acbc:	fff00793          	li	a5,-1
   1acc0:	00f51863          	bne	a0,a5,1acd0 <_fstat_r+0x38>
   1acc4:	8841a783          	lw	a5,-1916(gp) # 22a2c <errno>
   1acc8:	00078463          	beqz	a5,1acd0 <_fstat_r+0x38>
   1accc:	00f4a023          	sw	a5,0(s1)
   1acd0:	00c12083          	lw	ra,12(sp)
   1acd4:	00812403          	lw	s0,8(sp)
   1acd8:	00412483          	lw	s1,4(sp)
   1acdc:	01010113          	addi	sp,sp,16
   1ace0:	00008067          	ret

0001ace4 <_isatty_r>:
   1ace4:	ff010113          	addi	sp,sp,-16
   1ace8:	00812423          	sw	s0,8(sp)
   1acec:	00912223          	sw	s1,4(sp)
   1acf0:	00050493          	mv	s1,a0
   1acf4:	00058513          	mv	a0,a1
   1acf8:	00112623          	sw	ra,12(sp)
   1acfc:	8801a223          	sw	zero,-1916(gp) # 22a2c <errno>
   1ad00:	2f0010ef          	jal	ra,1bff0 <_isatty>
   1ad04:	fff00793          	li	a5,-1
   1ad08:	00f51863          	bne	a0,a5,1ad18 <_isatty_r+0x34>
   1ad0c:	8841a783          	lw	a5,-1916(gp) # 22a2c <errno>
   1ad10:	00078463          	beqz	a5,1ad18 <_isatty_r+0x34>
   1ad14:	00f4a023          	sw	a5,0(s1)
   1ad18:	00c12083          	lw	ra,12(sp)
   1ad1c:	00812403          	lw	s0,8(sp)
   1ad20:	00412483          	lw	s1,4(sp)
   1ad24:	01010113          	addi	sp,sp,16
   1ad28:	00008067          	ret

0001ad2c <_lseek_r>:
   1ad2c:	ff010113          	addi	sp,sp,-16
   1ad30:	00812423          	sw	s0,8(sp)
   1ad34:	00912223          	sw	s1,4(sp)
   1ad38:	00050493          	mv	s1,a0
   1ad3c:	00058513          	mv	a0,a1
   1ad40:	00060593          	mv	a1,a2
   1ad44:	00068613          	mv	a2,a3
   1ad48:	00112623          	sw	ra,12(sp)
   1ad4c:	8801a223          	sw	zero,-1916(gp) # 22a2c <errno>
   1ad50:	2d0010ef          	jal	ra,1c020 <_lseek>
   1ad54:	fff00793          	li	a5,-1
   1ad58:	00f51863          	bne	a0,a5,1ad68 <_lseek_r+0x3c>
   1ad5c:	8841a783          	lw	a5,-1916(gp) # 22a2c <errno>
   1ad60:	00078463          	beqz	a5,1ad68 <_lseek_r+0x3c>
   1ad64:	00f4a023          	sw	a5,0(s1)
   1ad68:	00c12083          	lw	ra,12(sp)
   1ad6c:	00812403          	lw	s0,8(sp)
   1ad70:	00412483          	lw	s1,4(sp)
   1ad74:	01010113          	addi	sp,sp,16
   1ad78:	00008067          	ret

0001ad7c <_read_r>:
   1ad7c:	ff010113          	addi	sp,sp,-16
   1ad80:	00812423          	sw	s0,8(sp)
   1ad84:	00912223          	sw	s1,4(sp)
   1ad88:	00050493          	mv	s1,a0
   1ad8c:	00058513          	mv	a0,a1
   1ad90:	00060593          	mv	a1,a2
   1ad94:	00068613          	mv	a2,a3
   1ad98:	00112623          	sw	ra,12(sp)
   1ad9c:	8801a223          	sw	zero,-1916(gp) # 22a2c <errno>
   1ada0:	2cc010ef          	jal	ra,1c06c <_read>
   1ada4:	fff00793          	li	a5,-1
   1ada8:	00f51863          	bne	a0,a5,1adb8 <_read_r+0x3c>
   1adac:	8841a783          	lw	a5,-1916(gp) # 22a2c <errno>
   1adb0:	00078463          	beqz	a5,1adb8 <_read_r+0x3c>
   1adb4:	00f4a023          	sw	a5,0(s1)
   1adb8:	00c12083          	lw	ra,12(sp)
   1adbc:	00812403          	lw	s0,8(sp)
   1adc0:	00412483          	lw	s1,4(sp)
   1adc4:	01010113          	addi	sp,sp,16
   1adc8:	00008067          	ret

0001adcc <cleanup_glue>:
   1adcc:	ff010113          	addi	sp,sp,-16
   1add0:	00812423          	sw	s0,8(sp)
   1add4:	00058413          	mv	s0,a1
   1add8:	0005a583          	lw	a1,0(a1)
   1addc:	00912223          	sw	s1,4(sp)
   1ade0:	00112623          	sw	ra,12(sp)
   1ade4:	00050493          	mv	s1,a0
   1ade8:	00058463          	beqz	a1,1adf0 <cleanup_glue+0x24>
   1adec:	fe1ff0ef          	jal	ra,1adcc <cleanup_glue>
   1adf0:	00040593          	mv	a1,s0
   1adf4:	00812403          	lw	s0,8(sp)
   1adf8:	00c12083          	lw	ra,12(sp)
   1adfc:	00048513          	mv	a0,s1
   1ae00:	00412483          	lw	s1,4(sp)
   1ae04:	01010113          	addi	sp,sp,16
   1ae08:	948f806f          	j	12f50 <_free_r>

0001ae0c <_reclaim_reent>:
   1ae0c:	8201a783          	lw	a5,-2016(gp) # 229c8 <_impure_ptr>
   1ae10:	10a78263          	beq	a5,a0,1af14 <_reclaim_reent+0x108>
   1ae14:	04c52783          	lw	a5,76(a0)
   1ae18:	fe010113          	addi	sp,sp,-32
   1ae1c:	00812c23          	sw	s0,24(sp)
   1ae20:	00912a23          	sw	s1,20(sp)
   1ae24:	01212823          	sw	s2,16(sp)
   1ae28:	00112e23          	sw	ra,28(sp)
   1ae2c:	01312623          	sw	s3,12(sp)
   1ae30:	00050413          	mv	s0,a0
   1ae34:	00000493          	li	s1,0
   1ae38:	08000913          	li	s2,128
   1ae3c:	04079463          	bnez	a5,1ae84 <_reclaim_reent+0x78>
   1ae40:	04042583          	lw	a1,64(s0)
   1ae44:	00058663          	beqz	a1,1ae50 <_reclaim_reent+0x44>
   1ae48:	00040513          	mv	a0,s0
   1ae4c:	904f80ef          	jal	ra,12f50 <_free_r>
   1ae50:	14842583          	lw	a1,328(s0)
   1ae54:	04058c63          	beqz	a1,1aeac <_reclaim_reent+0xa0>
   1ae58:	14c40493          	addi	s1,s0,332
   1ae5c:	04958863          	beq	a1,s1,1aeac <_reclaim_reent+0xa0>
   1ae60:	0005a903          	lw	s2,0(a1)
   1ae64:	00040513          	mv	a0,s0
   1ae68:	8e8f80ef          	jal	ra,12f50 <_free_r>
   1ae6c:	00090593          	mv	a1,s2
   1ae70:	fedff06f          	j	1ae5c <_reclaim_reent+0x50>
   1ae74:	009585b3          	add	a1,a1,s1
   1ae78:	0005a583          	lw	a1,0(a1)
   1ae7c:	00059e63          	bnez	a1,1ae98 <_reclaim_reent+0x8c>
   1ae80:	00448493          	addi	s1,s1,4
   1ae84:	04c42583          	lw	a1,76(s0)
   1ae88:	ff2496e3          	bne	s1,s2,1ae74 <_reclaim_reent+0x68>
   1ae8c:	00040513          	mv	a0,s0
   1ae90:	8c0f80ef          	jal	ra,12f50 <_free_r>
   1ae94:	fadff06f          	j	1ae40 <_reclaim_reent+0x34>
   1ae98:	0005a983          	lw	s3,0(a1)
   1ae9c:	00040513          	mv	a0,s0
   1aea0:	8b0f80ef          	jal	ra,12f50 <_free_r>
   1aea4:	00098593          	mv	a1,s3
   1aea8:	fd5ff06f          	j	1ae7c <_reclaim_reent+0x70>
   1aeac:	05442583          	lw	a1,84(s0)
   1aeb0:	00058663          	beqz	a1,1aebc <_reclaim_reent+0xb0>
   1aeb4:	00040513          	mv	a0,s0
   1aeb8:	898f80ef          	jal	ra,12f50 <_free_r>
   1aebc:	03842783          	lw	a5,56(s0)
   1aec0:	02078c63          	beqz	a5,1aef8 <_reclaim_reent+0xec>
   1aec4:	03c42783          	lw	a5,60(s0)
   1aec8:	00040513          	mv	a0,s0
   1aecc:	000780e7          	jalr	a5
   1aed0:	2e042583          	lw	a1,736(s0)
   1aed4:	02058263          	beqz	a1,1aef8 <_reclaim_reent+0xec>
   1aed8:	00040513          	mv	a0,s0
   1aedc:	01812403          	lw	s0,24(sp)
   1aee0:	01c12083          	lw	ra,28(sp)
   1aee4:	01412483          	lw	s1,20(sp)
   1aee8:	01012903          	lw	s2,16(sp)
   1aeec:	00c12983          	lw	s3,12(sp)
   1aef0:	02010113          	addi	sp,sp,32
   1aef4:	ed9ff06f          	j	1adcc <cleanup_glue>
   1aef8:	01c12083          	lw	ra,28(sp)
   1aefc:	01812403          	lw	s0,24(sp)
   1af00:	01412483          	lw	s1,20(sp)
   1af04:	01012903          	lw	s2,16(sp)
   1af08:	00c12983          	lw	s3,12(sp)
   1af0c:	02010113          	addi	sp,sp,32
   1af10:	00008067          	ret
   1af14:	00008067          	ret

0001af18 <__ssprint_r>:
   1af18:	00862783          	lw	a5,8(a2)
   1af1c:	fd010113          	addi	sp,sp,-48
   1af20:	01312e23          	sw	s3,28(sp)
   1af24:	02112623          	sw	ra,44(sp)
   1af28:	02812423          	sw	s0,40(sp)
   1af2c:	02912223          	sw	s1,36(sp)
   1af30:	03212023          	sw	s2,32(sp)
   1af34:	01412c23          	sw	s4,24(sp)
   1af38:	01512a23          	sw	s5,20(sp)
   1af3c:	01612823          	sw	s6,16(sp)
   1af40:	01712623          	sw	s7,12(sp)
   1af44:	01812423          	sw	s8,8(sp)
   1af48:	01912223          	sw	s9,4(sp)
   1af4c:	01a12023          	sw	s10,0(sp)
   1af50:	00060993          	mv	s3,a2
   1af54:	12078463          	beqz	a5,1b07c <__ssprint_r+0x164>
   1af58:	00062a83          	lw	s5,0(a2)
   1af5c:	00050a13          	mv	s4,a0
   1af60:	00058413          	mv	s0,a1
   1af64:	00000b13          	li	s6,0
   1af68:	00000913          	li	s2,0
   1af6c:	00300b93          	li	s7,3
   1af70:	00200c13          	li	s8,2
   1af74:	08090063          	beqz	s2,1aff4 <__ssprint_r+0xdc>
   1af78:	00842d03          	lw	s10,8(s0)
   1af7c:	0da96063          	bltu	s2,s10,1b03c <__ssprint_r+0x124>
   1af80:	00c45783          	lhu	a5,12(s0)
   1af84:	4807f713          	andi	a4,a5,1152
   1af88:	0a070a63          	beqz	a4,1b03c <__ssprint_r+0x124>
   1af8c:	00042483          	lw	s1,0(s0)
   1af90:	01042583          	lw	a1,16(s0)
   1af94:	40b48cb3          	sub	s9,s1,a1
   1af98:	01442483          	lw	s1,20(s0)
   1af9c:	001c8713          	addi	a4,s9,1
   1afa0:	01270733          	add	a4,a4,s2
   1afa4:	029b84b3          	mul	s1,s7,s1
   1afa8:	0384c4b3          	div	s1,s1,s8
   1afac:	00e4f463          	bleu	a4,s1,1afb4 <__ssprint_r+0x9c>
   1afb0:	00070493          	mv	s1,a4
   1afb4:	4007f793          	andi	a5,a5,1024
   1afb8:	10078263          	beqz	a5,1b0bc <__ssprint_r+0x1a4>
   1afbc:	00048593          	mv	a1,s1
   1afc0:	000a0513          	mv	a0,s4
   1afc4:	a4dfa0ef          	jal	ra,15a10 <_malloc_r>
   1afc8:	00050d13          	mv	s10,a0
   1afcc:	02051c63          	bnez	a0,1b004 <__ssprint_r+0xec>
   1afd0:	00c00793          	li	a5,12
   1afd4:	00fa2023          	sw	a5,0(s4)
   1afd8:	00c45783          	lhu	a5,12(s0)
   1afdc:	fff00513          	li	a0,-1
   1afe0:	0407e793          	ori	a5,a5,64
   1afe4:	00f41623          	sh	a5,12(s0)
   1afe8:	0009a423          	sw	zero,8(s3)
   1afec:	0009a223          	sw	zero,4(s3)
   1aff0:	0940006f          	j	1b084 <__ssprint_r+0x16c>
   1aff4:	000aab03          	lw	s6,0(s5)
   1aff8:	004aa903          	lw	s2,4(s5)
   1affc:	008a8a93          	addi	s5,s5,8
   1b000:	f75ff06f          	j	1af74 <__ssprint_r+0x5c>
   1b004:	01042583          	lw	a1,16(s0)
   1b008:	000c8613          	mv	a2,s9
   1b00c:	8e4fb0ef          	jal	ra,160f0 <memcpy>
   1b010:	00c45783          	lhu	a5,12(s0)
   1b014:	b7f7f793          	andi	a5,a5,-1153
   1b018:	0807e793          	ori	a5,a5,128
   1b01c:	00f41623          	sh	a5,12(s0)
   1b020:	01a42823          	sw	s10,16(s0)
   1b024:	00942a23          	sw	s1,20(s0)
   1b028:	019d0d33          	add	s10,s10,s9
   1b02c:	419484b3          	sub	s1,s1,s9
   1b030:	01a42023          	sw	s10,0(s0)
   1b034:	00942423          	sw	s1,8(s0)
   1b038:	00090d13          	mv	s10,s2
   1b03c:	01a97463          	bleu	s10,s2,1b044 <__ssprint_r+0x12c>
   1b040:	00090d13          	mv	s10,s2
   1b044:	00042503          	lw	a0,0(s0)
   1b048:	000d0613          	mv	a2,s10
   1b04c:	000b0593          	mv	a1,s6
   1b050:	988fb0ef          	jal	ra,161d8 <memmove>
   1b054:	00842783          	lw	a5,8(s0)
   1b058:	41a787b3          	sub	a5,a5,s10
   1b05c:	00f42423          	sw	a5,8(s0)
   1b060:	00042783          	lw	a5,0(s0)
   1b064:	01a78d33          	add	s10,a5,s10
   1b068:	0089a783          	lw	a5,8(s3)
   1b06c:	01a42023          	sw	s10,0(s0)
   1b070:	41278933          	sub	s2,a5,s2
   1b074:	0129a423          	sw	s2,8(s3)
   1b078:	f6091ee3          	bnez	s2,1aff4 <__ssprint_r+0xdc>
   1b07c:	0009a223          	sw	zero,4(s3)
   1b080:	00000513          	li	a0,0
   1b084:	02c12083          	lw	ra,44(sp)
   1b088:	02812403          	lw	s0,40(sp)
   1b08c:	02412483          	lw	s1,36(sp)
   1b090:	02012903          	lw	s2,32(sp)
   1b094:	01c12983          	lw	s3,28(sp)
   1b098:	01812a03          	lw	s4,24(sp)
   1b09c:	01412a83          	lw	s5,20(sp)
   1b0a0:	01012b03          	lw	s6,16(sp)
   1b0a4:	00c12b83          	lw	s7,12(sp)
   1b0a8:	00812c03          	lw	s8,8(sp)
   1b0ac:	00412c83          	lw	s9,4(sp)
   1b0b0:	00012d03          	lw	s10,0(sp)
   1b0b4:	03010113          	addi	sp,sp,48
   1b0b8:	00008067          	ret
   1b0bc:	00048613          	mv	a2,s1
   1b0c0:	000a0513          	mv	a0,s4
   1b0c4:	800fc0ef          	jal	ra,170c4 <_realloc_r>
   1b0c8:	00050d13          	mv	s10,a0
   1b0cc:	f4051ae3          	bnez	a0,1b020 <__ssprint_r+0x108>
   1b0d0:	01042583          	lw	a1,16(s0)
   1b0d4:	000a0513          	mv	a0,s4
   1b0d8:	e79f70ef          	jal	ra,12f50 <_free_r>
   1b0dc:	ef5ff06f          	j	1afd0 <__ssprint_r+0xb8>

0001b0e0 <_svfiprintf_r>:
   1b0e0:	00c5d783          	lhu	a5,12(a1)
   1b0e4:	ed010113          	addi	sp,sp,-304
   1b0e8:	12912223          	sw	s1,292(sp)
   1b0ec:	13212023          	sw	s2,288(sp)
   1b0f0:	11312e23          	sw	s3,284(sp)
   1b0f4:	11512a23          	sw	s5,276(sp)
   1b0f8:	12112623          	sw	ra,300(sp)
   1b0fc:	12812423          	sw	s0,296(sp)
   1b100:	11412c23          	sw	s4,280(sp)
   1b104:	11612823          	sw	s6,272(sp)
   1b108:	11712623          	sw	s7,268(sp)
   1b10c:	11812423          	sw	s8,264(sp)
   1b110:	11912223          	sw	s9,260(sp)
   1b114:	11a12023          	sw	s10,256(sp)
   1b118:	0fb12e23          	sw	s11,252(sp)
   1b11c:	0807f793          	andi	a5,a5,128
   1b120:	00050a93          	mv	s5,a0
   1b124:	00058913          	mv	s2,a1
   1b128:	00060993          	mv	s3,a2
   1b12c:	00068493          	mv	s1,a3
   1b130:	02078c63          	beqz	a5,1b168 <_svfiprintf_r+0x88>
   1b134:	0105a783          	lw	a5,16(a1)
   1b138:	02079863          	bnez	a5,1b168 <_svfiprintf_r+0x88>
   1b13c:	04000593          	li	a1,64
   1b140:	8d1fa0ef          	jal	ra,15a10 <_malloc_r>
   1b144:	00a92023          	sw	a0,0(s2)
   1b148:	00a92823          	sw	a0,16(s2)
   1b14c:	00051a63          	bnez	a0,1b160 <_svfiprintf_r+0x80>
   1b150:	00c00793          	li	a5,12
   1b154:	00faa023          	sw	a5,0(s5)
   1b158:	fff00b93          	li	s7,-1
   1b15c:	3210006f          	j	1bc7c <_svfiprintf_r+0xb9c>
   1b160:	04000793          	li	a5,64
   1b164:	00f92a23          	sw	a5,20(s2)
   1b168:	000217b7          	lui	a5,0x21
   1b16c:	25478793          	addi	a5,a5,596 # 21254 <_ctype_+0x104>
   1b170:	00f12e23          	sw	a5,28(sp)
   1b174:	000217b7          	lui	a5,0x21
   1b178:	04c10b13          	addi	s6,sp,76
   1b17c:	3d078793          	addi	a5,a5,976 # 213d0 <zeroes.4367>
   1b180:	05612023          	sw	s6,64(sp)
   1b184:	04012423          	sw	zero,72(sp)
   1b188:	04012223          	sw	zero,68(sp)
   1b18c:	000b0713          	mv	a4,s6
   1b190:	00012423          	sw	zero,8(sp)
   1b194:	00012223          	sw	zero,4(sp)
   1b198:	00012623          	sw	zero,12(sp)
   1b19c:	00012a23          	sw	zero,20(sp)
   1b1a0:	00000b93          	li	s7,0
   1b1a4:	00f12823          	sw	a5,16(sp)
   1b1a8:	00098413          	mv	s0,s3
   1b1ac:	02500693          	li	a3,37
   1b1b0:	00044783          	lbu	a5,0(s0)
   1b1b4:	00078463          	beqz	a5,1b1bc <_svfiprintf_r+0xdc>
   1b1b8:	0ad79263          	bne	a5,a3,1b25c <_svfiprintf_r+0x17c>
   1b1bc:	41340a33          	sub	s4,s0,s3
   1b1c0:	040a0663          	beqz	s4,1b20c <_svfiprintf_r+0x12c>
   1b1c4:	04812783          	lw	a5,72(sp)
   1b1c8:	01372023          	sw	s3,0(a4)
   1b1cc:	01472223          	sw	s4,4(a4)
   1b1d0:	014787b3          	add	a5,a5,s4
   1b1d4:	04f12423          	sw	a5,72(sp)
   1b1d8:	04412783          	lw	a5,68(sp)
   1b1dc:	00700693          	li	a3,7
   1b1e0:	00870713          	addi	a4,a4,8
   1b1e4:	00178793          	addi	a5,a5,1
   1b1e8:	04f12223          	sw	a5,68(sp)
   1b1ec:	00f6de63          	ble	a5,a3,1b208 <_svfiprintf_r+0x128>
   1b1f0:	04010613          	addi	a2,sp,64
   1b1f4:	00090593          	mv	a1,s2
   1b1f8:	000a8513          	mv	a0,s5
   1b1fc:	d1dff0ef          	jal	ra,1af18 <__ssprint_r>
   1b200:	260518e3          	bnez	a0,1bc70 <_svfiprintf_r+0xb90>
   1b204:	000b0713          	mv	a4,s6
   1b208:	014b8bb3          	add	s7,s7,s4
   1b20c:	00044783          	lbu	a5,0(s0)
   1b210:	2e0782e3          	beqz	a5,1bcf4 <_svfiprintf_r+0xc14>
   1b214:	00140993          	addi	s3,s0,1
   1b218:	02010da3          	sb	zero,59(sp)
   1b21c:	fff00413          	li	s0,-1
   1b220:	00000a13          	li	s4,0
   1b224:	00000d13          	li	s10,0
   1b228:	00a00c13          	li	s8,10
   1b22c:	02a00c93          	li	s9,42
   1b230:	05a00813          	li	a6,90
   1b234:	00900593          	li	a1,9
   1b238:	0009c603          	lbu	a2,0(s3)
   1b23c:	00198993          	addi	s3,s3,1
   1b240:	fe060693          	addi	a3,a2,-32
   1b244:	0cd86ee3          	bltu	a6,a3,1bb20 <_svfiprintf_r+0xa40>
   1b248:	01c12783          	lw	a5,28(sp)
   1b24c:	00269693          	slli	a3,a3,0x2
   1b250:	00f686b3          	add	a3,a3,a5
   1b254:	0006a683          	lw	a3,0(a3) # 2000 <_start-0xe074>
   1b258:	00068067          	jr	a3
   1b25c:	00140413          	addi	s0,s0,1
   1b260:	f51ff06f          	j	1b1b0 <_svfiprintf_r+0xd0>
   1b264:	000216b7          	lui	a3,0x21
   1b268:	a6c68793          	addi	a5,a3,-1428 # 20a6c <zeroes.4405+0x34>
   1b26c:	00f12423          	sw	a5,8(sp)
   1b270:	020d7693          	andi	a3,s10,32
   1b274:	6c068063          	beqz	a3,1b934 <_svfiprintf_r+0x854>
   1b278:	00748493          	addi	s1,s1,7
   1b27c:	ff84f493          	andi	s1,s1,-8
   1b280:	0004a883          	lw	a7,0(s1)
   1b284:	0044ac83          	lw	s9,4(s1)
   1b288:	00848c13          	addi	s8,s1,8
   1b28c:	001d7693          	andi	a3,s10,1
   1b290:	00068e63          	beqz	a3,1b2ac <_svfiprintf_r+0x1cc>
   1b294:	0198e6b3          	or	a3,a7,s9
   1b298:	00068a63          	beqz	a3,1b2ac <_svfiprintf_r+0x1cc>
   1b29c:	03000693          	li	a3,48
   1b2a0:	02d10e23          	sb	a3,60(sp)
   1b2a4:	02c10ea3          	sb	a2,61(sp)
   1b2a8:	002d6d13          	ori	s10,s10,2
   1b2ac:	bffd7d13          	andi	s10,s10,-1025
   1b2b0:	31c0006f          	j	1b5cc <_svfiprintf_r+0x4ec>
   1b2b4:	000a8513          	mv	a0,s5
   1b2b8:	00e12023          	sw	a4,0(sp)
   1b2bc:	cccfa0ef          	jal	ra,15788 <_localeconv_r>
   1b2c0:	00452783          	lw	a5,4(a0)
   1b2c4:	00078513          	mv	a0,a5
   1b2c8:	00f12a23          	sw	a5,20(sp)
   1b2cc:	b00f50ef          	jal	ra,105cc <strlen>
   1b2d0:	00a12623          	sw	a0,12(sp)
   1b2d4:	000a8513          	mv	a0,s5
   1b2d8:	cb0fa0ef          	jal	ra,15788 <_localeconv_r>
   1b2dc:	00852783          	lw	a5,8(a0)
   1b2e0:	00012703          	lw	a4,0(sp)
   1b2e4:	00f12223          	sw	a5,4(sp)
   1b2e8:	00c12783          	lw	a5,12(sp)
   1b2ec:	f40782e3          	beqz	a5,1b230 <_svfiprintf_r+0x150>
   1b2f0:	00412783          	lw	a5,4(sp)
   1b2f4:	f2078ee3          	beqz	a5,1b230 <_svfiprintf_r+0x150>
   1b2f8:	0007c683          	lbu	a3,0(a5)
   1b2fc:	f2068ae3          	beqz	a3,1b230 <_svfiprintf_r+0x150>
   1b300:	400d6d13          	ori	s10,s10,1024
   1b304:	f2dff06f          	j	1b230 <_svfiprintf_r+0x150>
   1b308:	03b14683          	lbu	a3,59(sp)
   1b30c:	f20692e3          	bnez	a3,1b230 <_svfiprintf_r+0x150>
   1b310:	02000693          	li	a3,32
   1b314:	02d10da3          	sb	a3,59(sp)
   1b318:	f19ff06f          	j	1b230 <_svfiprintf_r+0x150>
   1b31c:	001d6d13          	ori	s10,s10,1
   1b320:	f11ff06f          	j	1b230 <_svfiprintf_r+0x150>
   1b324:	0004aa03          	lw	s4,0(s1)
   1b328:	00448493          	addi	s1,s1,4
   1b32c:	f00a52e3          	bgez	s4,1b230 <_svfiprintf_r+0x150>
   1b330:	41400a33          	neg	s4,s4
   1b334:	004d6d13          	ori	s10,s10,4
   1b338:	ef9ff06f          	j	1b230 <_svfiprintf_r+0x150>
   1b33c:	02b00693          	li	a3,43
   1b340:	fd5ff06f          	j	1b314 <_svfiprintf_r+0x234>
   1b344:	0009c603          	lbu	a2,0(s3)
   1b348:	00198693          	addi	a3,s3,1
   1b34c:	05961063          	bne	a2,s9,1b38c <_svfiprintf_r+0x2ac>
   1b350:	0004a403          	lw	s0,0(s1)
   1b354:	00448613          	addi	a2,s1,4
   1b358:	00045463          	bgez	s0,1b360 <_svfiprintf_r+0x280>
   1b35c:	fff00413          	li	s0,-1
   1b360:	00060493          	mv	s1,a2
   1b364:	00068993          	mv	s3,a3
   1b368:	ec9ff06f          	j	1b230 <_svfiprintf_r+0x150>
   1b36c:	03840433          	mul	s0,s0,s8
   1b370:	00168693          	addi	a3,a3,1
   1b374:	fff6c603          	lbu	a2,-1(a3)
   1b378:	00a40433          	add	s0,s0,a0
   1b37c:	fd060513          	addi	a0,a2,-48
   1b380:	fea5f6e3          	bleu	a0,a1,1b36c <_svfiprintf_r+0x28c>
   1b384:	00068993          	mv	s3,a3
   1b388:	eb9ff06f          	j	1b240 <_svfiprintf_r+0x160>
   1b38c:	00000413          	li	s0,0
   1b390:	fedff06f          	j	1b37c <_svfiprintf_r+0x29c>
   1b394:	080d6d13          	ori	s10,s10,128
   1b398:	e99ff06f          	j	1b230 <_svfiprintf_r+0x150>
   1b39c:	00098693          	mv	a3,s3
   1b3a0:	00000a13          	li	s4,0
   1b3a4:	038a0a33          	mul	s4,s4,s8
   1b3a8:	fd060613          	addi	a2,a2,-48
   1b3ac:	00168693          	addi	a3,a3,1
   1b3b0:	01460a33          	add	s4,a2,s4
   1b3b4:	fff6c603          	lbu	a2,-1(a3)
   1b3b8:	fd060513          	addi	a0,a2,-48
   1b3bc:	fea5f4e3          	bleu	a0,a1,1b3a4 <_svfiprintf_r+0x2c4>
   1b3c0:	fc5ff06f          	j	1b384 <_svfiprintf_r+0x2a4>
   1b3c4:	0009c603          	lbu	a2,0(s3)
   1b3c8:	06800693          	li	a3,104
   1b3cc:	00d61863          	bne	a2,a3,1b3dc <_svfiprintf_r+0x2fc>
   1b3d0:	00198993          	addi	s3,s3,1
   1b3d4:	200d6d13          	ori	s10,s10,512
   1b3d8:	e59ff06f          	j	1b230 <_svfiprintf_r+0x150>
   1b3dc:	040d6d13          	ori	s10,s10,64
   1b3e0:	e51ff06f          	j	1b230 <_svfiprintf_r+0x150>
   1b3e4:	0009c603          	lbu	a2,0(s3)
   1b3e8:	06c00693          	li	a3,108
   1b3ec:	00d61863          	bne	a2,a3,1b3fc <_svfiprintf_r+0x31c>
   1b3f0:	00198993          	addi	s3,s3,1
   1b3f4:	020d6d13          	ori	s10,s10,32
   1b3f8:	e39ff06f          	j	1b230 <_svfiprintf_r+0x150>
   1b3fc:	010d6d13          	ori	s10,s10,16
   1b400:	e31ff06f          	j	1b230 <_svfiprintf_r+0x150>
   1b404:	0004a683          	lw	a3,0(s1)
   1b408:	00448c13          	addi	s8,s1,4
   1b40c:	02010da3          	sb	zero,59(sp)
   1b410:	08d10623          	sb	a3,140(sp)
   1b414:	00100413          	li	s0,1
   1b418:	00000c93          	li	s9,0
   1b41c:	08c10493          	addi	s1,sp,140
   1b420:	1ec0006f          	j	1b60c <_svfiprintf_r+0x52c>
   1b424:	010d6d13          	ori	s10,s10,16
   1b428:	020d7693          	andi	a3,s10,32
   1b42c:	04068c63          	beqz	a3,1b484 <_svfiprintf_r+0x3a4>
   1b430:	00748493          	addi	s1,s1,7
   1b434:	ff84f493          	andi	s1,s1,-8
   1b438:	0004a883          	lw	a7,0(s1)
   1b43c:	0044ac83          	lw	s9,4(s1)
   1b440:	00848c13          	addi	s8,s1,8
   1b444:	000cde63          	bgez	s9,1b460 <_svfiprintf_r+0x380>
   1b448:	411008b3          	neg	a7,a7
   1b44c:	011036b3          	snez	a3,a7
   1b450:	41900333          	neg	t1,s9
   1b454:	40d30cb3          	sub	s9,t1,a3
   1b458:	02d00693          	li	a3,45
   1b45c:	02d10da3          	sb	a3,59(sp)
   1b460:	fff00693          	li	a3,-1
   1b464:	50d41463          	bne	s0,a3,1b96c <_svfiprintf_r+0x88c>
   1b468:	560c9e63          	bnez	s9,1b9e4 <_svfiprintf_r+0x904>
   1b46c:	00900693          	li	a3,9
   1b470:	5716ea63          	bltu	a3,a7,1b9e4 <_svfiprintf_r+0x904>
   1b474:	03088893          	addi	a7,a7,48
   1b478:	0f1107a3          	sb	a7,239(sp)
   1b47c:	0ef10493          	addi	s1,sp,239
   1b480:	54c0006f          	j	1b9cc <_svfiprintf_r+0x8ec>
   1b484:	010d7693          	andi	a3,s10,16
   1b488:	00448c13          	addi	s8,s1,4
   1b48c:	00068863          	beqz	a3,1b49c <_svfiprintf_r+0x3bc>
   1b490:	0004a883          	lw	a7,0(s1)
   1b494:	41f8dc93          	srai	s9,a7,0x1f
   1b498:	fadff06f          	j	1b444 <_svfiprintf_r+0x364>
   1b49c:	040d7693          	andi	a3,s10,64
   1b4a0:	0004a883          	lw	a7,0(s1)
   1b4a4:	00068863          	beqz	a3,1b4b4 <_svfiprintf_r+0x3d4>
   1b4a8:	01089893          	slli	a7,a7,0x10
   1b4ac:	4108d893          	srai	a7,a7,0x10
   1b4b0:	fe5ff06f          	j	1b494 <_svfiprintf_r+0x3b4>
   1b4b4:	200d7693          	andi	a3,s10,512
   1b4b8:	fc068ee3          	beqz	a3,1b494 <_svfiprintf_r+0x3b4>
   1b4bc:	01889893          	slli	a7,a7,0x18
   1b4c0:	4188d893          	srai	a7,a7,0x18
   1b4c4:	fd1ff06f          	j	1b494 <_svfiprintf_r+0x3b4>
   1b4c8:	020d7613          	andi	a2,s10,32
   1b4cc:	0004a683          	lw	a3,0(s1)
   1b4d0:	00448493          	addi	s1,s1,4
   1b4d4:	00060a63          	beqz	a2,1b4e8 <_svfiprintf_r+0x408>
   1b4d8:	41fbd793          	srai	a5,s7,0x1f
   1b4dc:	0176a023          	sw	s7,0(a3)
   1b4e0:	00f6a223          	sw	a5,4(a3)
   1b4e4:	cc5ff06f          	j	1b1a8 <_svfiprintf_r+0xc8>
   1b4e8:	010d7613          	andi	a2,s10,16
   1b4ec:	00060663          	beqz	a2,1b4f8 <_svfiprintf_r+0x418>
   1b4f0:	0176a023          	sw	s7,0(a3)
   1b4f4:	cb5ff06f          	j	1b1a8 <_svfiprintf_r+0xc8>
   1b4f8:	040d7613          	andi	a2,s10,64
   1b4fc:	00060663          	beqz	a2,1b508 <_svfiprintf_r+0x428>
   1b500:	01769023          	sh	s7,0(a3)
   1b504:	ca5ff06f          	j	1b1a8 <_svfiprintf_r+0xc8>
   1b508:	200d7793          	andi	a5,s10,512
   1b50c:	fe0782e3          	beqz	a5,1b4f0 <_svfiprintf_r+0x410>
   1b510:	01768023          	sb	s7,0(a3)
   1b514:	c95ff06f          	j	1b1a8 <_svfiprintf_r+0xc8>
   1b518:	010d6d13          	ori	s10,s10,16
   1b51c:	020d7693          	andi	a3,s10,32
   1b520:	04068663          	beqz	a3,1b56c <_svfiprintf_r+0x48c>
   1b524:	00748493          	addi	s1,s1,7
   1b528:	ff84f493          	andi	s1,s1,-8
   1b52c:	0004a883          	lw	a7,0(s1)
   1b530:	0044ac83          	lw	s9,4(s1)
   1b534:	00848c13          	addi	s8,s1,8
   1b538:	bffd7d13          	andi	s10,s10,-1025
   1b53c:	00000693          	li	a3,0
   1b540:	02010da3          	sb	zero,59(sp)
   1b544:	fff00613          	li	a2,-1
   1b548:	42c40863          	beq	s0,a2,1b978 <_svfiprintf_r+0x898>
   1b54c:	000d0613          	mv	a2,s10
   1b550:	0198e5b3          	or	a1,a7,s9
   1b554:	f7fd7d13          	andi	s10,s10,-129
   1b558:	42059063          	bnez	a1,1b978 <_svfiprintf_r+0x898>
   1b55c:	5a040463          	beqz	s0,1bb04 <_svfiprintf_r+0xa24>
   1b560:	00100613          	li	a2,1
   1b564:	40c69e63          	bne	a3,a2,1b980 <_svfiprintf_r+0x8a0>
   1b568:	f0dff06f          	j	1b474 <_svfiprintf_r+0x394>
   1b56c:	010d7693          	andi	a3,s10,16
   1b570:	00448c13          	addi	s8,s1,4
   1b574:	00068663          	beqz	a3,1b580 <_svfiprintf_r+0x4a0>
   1b578:	0004a883          	lw	a7,0(s1)
   1b57c:	0100006f          	j	1b58c <_svfiprintf_r+0x4ac>
   1b580:	040d7693          	andi	a3,s10,64
   1b584:	00068863          	beqz	a3,1b594 <_svfiprintf_r+0x4b4>
   1b588:	0004d883          	lhu	a7,0(s1)
   1b58c:	00000c93          	li	s9,0
   1b590:	fa9ff06f          	j	1b538 <_svfiprintf_r+0x458>
   1b594:	200d7693          	andi	a3,s10,512
   1b598:	fe0680e3          	beqz	a3,1b578 <_svfiprintf_r+0x498>
   1b59c:	0004c883          	lbu	a7,0(s1)
   1b5a0:	fedff06f          	j	1b58c <_svfiprintf_r+0x4ac>
   1b5a4:	ffff86b7          	lui	a3,0xffff8
   1b5a8:	8306c693          	xori	a3,a3,-2000
   1b5ac:	02d11e23          	sh	a3,60(sp)
   1b5b0:	0004a883          	lw	a7,0(s1)
   1b5b4:	000216b7          	lui	a3,0x21
   1b5b8:	a5868793          	addi	a5,a3,-1448 # 20a58 <zeroes.4405+0x20>
   1b5bc:	00448c13          	addi	s8,s1,4
   1b5c0:	00000c93          	li	s9,0
   1b5c4:	002d6d13          	ori	s10,s10,2
   1b5c8:	00f12423          	sw	a5,8(sp)
   1b5cc:	00200693          	li	a3,2
   1b5d0:	f71ff06f          	j	1b540 <_svfiprintf_r+0x460>
   1b5d4:	02010da3          	sb	zero,59(sp)
   1b5d8:	fff00693          	li	a3,-1
   1b5dc:	00e12023          	sw	a4,0(sp)
   1b5e0:	00448c13          	addi	s8,s1,4
   1b5e4:	0004a483          	lw	s1,0(s1)
   1b5e8:	2cd40463          	beq	s0,a3,1b8b0 <_svfiprintf_r+0x7d0>
   1b5ec:	00040613          	mv	a2,s0
   1b5f0:	00000593          	li	a1,0
   1b5f4:	00048513          	mv	a0,s1
   1b5f8:	ad5fa0ef          	jal	ra,160cc <memchr>
   1b5fc:	00000c93          	li	s9,0
   1b600:	00012703          	lw	a4,0(sp)
   1b604:	00050463          	beqz	a0,1b60c <_svfiprintf_r+0x52c>
   1b608:	40950433          	sub	s0,a0,s1
   1b60c:	01912023          	sw	s9,0(sp)
   1b610:	008cd463          	ble	s0,s9,1b618 <_svfiprintf_r+0x538>
   1b614:	00812023          	sw	s0,0(sp)
   1b618:	03b14683          	lbu	a3,59(sp)
   1b61c:	00068863          	beqz	a3,1b62c <_svfiprintf_r+0x54c>
   1b620:	00012783          	lw	a5,0(sp)
   1b624:	00178793          	addi	a5,a5,1
   1b628:	00f12023          	sw	a5,0(sp)
   1b62c:	002d7d93          	andi	s11,s10,2
   1b630:	000d8863          	beqz	s11,1b640 <_svfiprintf_r+0x560>
   1b634:	00012783          	lw	a5,0(sp)
   1b638:	00278793          	addi	a5,a5,2
   1b63c:	00f12023          	sw	a5,0(sp)
   1b640:	084d7793          	andi	a5,s10,132
   1b644:	00f12c23          	sw	a5,24(sp)
   1b648:	06079663          	bnez	a5,1b6b4 <_svfiprintf_r+0x5d4>
   1b64c:	00012783          	lw	a5,0(sp)
   1b650:	40fa06b3          	sub	a3,s4,a5
   1b654:	06d05063          	blez	a3,1b6b4 <_svfiprintf_r+0x5d4>
   1b658:	000217b7          	lui	a5,0x21
   1b65c:	01000893          	li	a7,16
   1b660:	3c078813          	addi	a6,a5,960 # 213c0 <blanks.4366>
   1b664:	00700313          	li	t1,7
   1b668:	04412603          	lw	a2,68(sp)
   1b66c:	01072023          	sw	a6,0(a4)
   1b670:	04812583          	lw	a1,72(sp)
   1b674:	00160613          	addi	a2,a2,1
   1b678:	00870513          	addi	a0,a4,8
   1b67c:	4ad8cc63          	blt	a7,a3,1bb34 <_svfiprintf_r+0xa54>
   1b680:	00d72223          	sw	a3,4(a4)
   1b684:	00b686b3          	add	a3,a3,a1
   1b688:	04d12423          	sw	a3,72(sp)
   1b68c:	04c12223          	sw	a2,68(sp)
   1b690:	00700693          	li	a3,7
   1b694:	00050713          	mv	a4,a0
   1b698:	00c6de63          	ble	a2,a3,1b6b4 <_svfiprintf_r+0x5d4>
   1b69c:	04010613          	addi	a2,sp,64
   1b6a0:	00090593          	mv	a1,s2
   1b6a4:	000a8513          	mv	a0,s5
   1b6a8:	871ff0ef          	jal	ra,1af18 <__ssprint_r>
   1b6ac:	5c051263          	bnez	a0,1bc70 <_svfiprintf_r+0xb90>
   1b6b0:	000b0713          	mv	a4,s6
   1b6b4:	03b14683          	lbu	a3,59(sp)
   1b6b8:	04068863          	beqz	a3,1b708 <_svfiprintf_r+0x628>
   1b6bc:	03b10613          	addi	a2,sp,59
   1b6c0:	00c72023          	sw	a2,0(a4)
   1b6c4:	00100613          	li	a2,1
   1b6c8:	04412683          	lw	a3,68(sp)
   1b6cc:	00c72223          	sw	a2,4(a4)
   1b6d0:	04812603          	lw	a2,72(sp)
   1b6d4:	00168693          	addi	a3,a3,1
   1b6d8:	04d12223          	sw	a3,68(sp)
   1b6dc:	00160613          	addi	a2,a2,1
   1b6e0:	04c12423          	sw	a2,72(sp)
   1b6e4:	00700613          	li	a2,7
   1b6e8:	00870713          	addi	a4,a4,8
   1b6ec:	00d65e63          	ble	a3,a2,1b708 <_svfiprintf_r+0x628>
   1b6f0:	04010613          	addi	a2,sp,64
   1b6f4:	00090593          	mv	a1,s2
   1b6f8:	000a8513          	mv	a0,s5
   1b6fc:	81dff0ef          	jal	ra,1af18 <__ssprint_r>
   1b700:	56051863          	bnez	a0,1bc70 <_svfiprintf_r+0xb90>
   1b704:	000b0713          	mv	a4,s6
   1b708:	040d8863          	beqz	s11,1b758 <_svfiprintf_r+0x678>
   1b70c:	03c10613          	addi	a2,sp,60
   1b710:	00c72023          	sw	a2,0(a4)
   1b714:	00200613          	li	a2,2
   1b718:	04412683          	lw	a3,68(sp)
   1b71c:	00c72223          	sw	a2,4(a4)
   1b720:	04812603          	lw	a2,72(sp)
   1b724:	00168693          	addi	a3,a3,1
   1b728:	04d12223          	sw	a3,68(sp)
   1b72c:	00260613          	addi	a2,a2,2
   1b730:	04c12423          	sw	a2,72(sp)
   1b734:	00700613          	li	a2,7
   1b738:	00870713          	addi	a4,a4,8
   1b73c:	00d65e63          	ble	a3,a2,1b758 <_svfiprintf_r+0x678>
   1b740:	04010613          	addi	a2,sp,64
   1b744:	00090593          	mv	a1,s2
   1b748:	000a8513          	mv	a0,s5
   1b74c:	fccff0ef          	jal	ra,1af18 <__ssprint_r>
   1b750:	52051063          	bnez	a0,1bc70 <_svfiprintf_r+0xb90>
   1b754:	000b0713          	mv	a4,s6
   1b758:	01812783          	lw	a5,24(sp)
   1b75c:	08000693          	li	a3,128
   1b760:	06d79463          	bne	a5,a3,1b7c8 <_svfiprintf_r+0x6e8>
   1b764:	00012783          	lw	a5,0(sp)
   1b768:	40fa0db3          	sub	s11,s4,a5
   1b76c:	05b05e63          	blez	s11,1b7c8 <_svfiprintf_r+0x6e8>
   1b770:	01000813          	li	a6,16
   1b774:	00700893          	li	a7,7
   1b778:	01012783          	lw	a5,16(sp)
   1b77c:	04412683          	lw	a3,68(sp)
   1b780:	04812603          	lw	a2,72(sp)
   1b784:	00f72023          	sw	a5,0(a4)
   1b788:	00168693          	addi	a3,a3,1
   1b78c:	00870593          	addi	a1,a4,8
   1b790:	3fb84e63          	blt	a6,s11,1bb8c <_svfiprintf_r+0xaac>
   1b794:	01b72223          	sw	s11,4(a4)
   1b798:	00cd8db3          	add	s11,s11,a2
   1b79c:	05b12423          	sw	s11,72(sp)
   1b7a0:	04d12223          	sw	a3,68(sp)
   1b7a4:	00700613          	li	a2,7
   1b7a8:	00058713          	mv	a4,a1
   1b7ac:	00d65e63          	ble	a3,a2,1b7c8 <_svfiprintf_r+0x6e8>
   1b7b0:	04010613          	addi	a2,sp,64
   1b7b4:	00090593          	mv	a1,s2
   1b7b8:	000a8513          	mv	a0,s5
   1b7bc:	f5cff0ef          	jal	ra,1af18 <__ssprint_r>
   1b7c0:	4a051863          	bnez	a0,1bc70 <_svfiprintf_r+0xb90>
   1b7c4:	000b0713          	mv	a4,s6
   1b7c8:	408c8cb3          	sub	s9,s9,s0
   1b7cc:	05905e63          	blez	s9,1b828 <_svfiprintf_r+0x748>
   1b7d0:	01000d93          	li	s11,16
   1b7d4:	00700813          	li	a6,7
   1b7d8:	01012783          	lw	a5,16(sp)
   1b7dc:	04412683          	lw	a3,68(sp)
   1b7e0:	04812603          	lw	a2,72(sp)
   1b7e4:	00f72023          	sw	a5,0(a4)
   1b7e8:	00168693          	addi	a3,a3,1
   1b7ec:	00870593          	addi	a1,a4,8
   1b7f0:	3f9dc263          	blt	s11,s9,1bbd4 <_svfiprintf_r+0xaf4>
   1b7f4:	01972223          	sw	s9,4(a4)
   1b7f8:	00cc8cb3          	add	s9,s9,a2
   1b7fc:	05912423          	sw	s9,72(sp)
   1b800:	04d12223          	sw	a3,68(sp)
   1b804:	00700613          	li	a2,7
   1b808:	00058713          	mv	a4,a1
   1b80c:	00d65e63          	ble	a3,a2,1b828 <_svfiprintf_r+0x748>
   1b810:	04010613          	addi	a2,sp,64
   1b814:	00090593          	mv	a1,s2
   1b818:	000a8513          	mv	a0,s5
   1b81c:	efcff0ef          	jal	ra,1af18 <__ssprint_r>
   1b820:	44051863          	bnez	a0,1bc70 <_svfiprintf_r+0xb90>
   1b824:	000b0713          	mv	a4,s6
   1b828:	04812683          	lw	a3,72(sp)
   1b82c:	00872223          	sw	s0,4(a4)
   1b830:	00972023          	sw	s1,0(a4)
   1b834:	00868433          	add	s0,a3,s0
   1b838:	04412683          	lw	a3,68(sp)
   1b83c:	04812423          	sw	s0,72(sp)
   1b840:	00700613          	li	a2,7
   1b844:	00168693          	addi	a3,a3,1
   1b848:	04d12223          	sw	a3,68(sp)
   1b84c:	00870713          	addi	a4,a4,8
   1b850:	00d65e63          	ble	a3,a2,1b86c <_svfiprintf_r+0x78c>
   1b854:	04010613          	addi	a2,sp,64
   1b858:	00090593          	mv	a1,s2
   1b85c:	000a8513          	mv	a0,s5
   1b860:	eb8ff0ef          	jal	ra,1af18 <__ssprint_r>
   1b864:	40051663          	bnez	a0,1bc70 <_svfiprintf_r+0xb90>
   1b868:	000b0713          	mv	a4,s6
   1b86c:	004d7793          	andi	a5,s10,4
   1b870:	3a079263          	bnez	a5,1bc14 <_svfiprintf_r+0xb34>
   1b874:	00012783          	lw	a5,0(sp)
   1b878:	00fa5463          	ble	a5,s4,1b880 <_svfiprintf_r+0x7a0>
   1b87c:	00078a13          	mv	s4,a5
   1b880:	04812783          	lw	a5,72(sp)
   1b884:	014b8bb3          	add	s7,s7,s4
   1b888:	00078c63          	beqz	a5,1b8a0 <_svfiprintf_r+0x7c0>
   1b88c:	04010613          	addi	a2,sp,64
   1b890:	00090593          	mv	a1,s2
   1b894:	000a8513          	mv	a0,s5
   1b898:	e80ff0ef          	jal	ra,1af18 <__ssprint_r>
   1b89c:	3c051a63          	bnez	a0,1bc70 <_svfiprintf_r+0xb90>
   1b8a0:	04012223          	sw	zero,68(sp)
   1b8a4:	000c0493          	mv	s1,s8
   1b8a8:	000b0713          	mv	a4,s6
   1b8ac:	8fdff06f          	j	1b1a8 <_svfiprintf_r+0xc8>
   1b8b0:	00048513          	mv	a0,s1
   1b8b4:	d19f40ef          	jal	ra,105cc <strlen>
   1b8b8:	00050413          	mv	s0,a0
   1b8bc:	00000c93          	li	s9,0
   1b8c0:	00012703          	lw	a4,0(sp)
   1b8c4:	d49ff06f          	j	1b60c <_svfiprintf_r+0x52c>
   1b8c8:	010d6d13          	ori	s10,s10,16
   1b8cc:	020d7693          	andi	a3,s10,32
   1b8d0:	02068063          	beqz	a3,1b8f0 <_svfiprintf_r+0x810>
   1b8d4:	00748493          	addi	s1,s1,7
   1b8d8:	ff84f493          	andi	s1,s1,-8
   1b8dc:	0004a883          	lw	a7,0(s1)
   1b8e0:	0044ac83          	lw	s9,4(s1)
   1b8e4:	00848c13          	addi	s8,s1,8
   1b8e8:	00100693          	li	a3,1
   1b8ec:	c55ff06f          	j	1b540 <_svfiprintf_r+0x460>
   1b8f0:	010d7693          	andi	a3,s10,16
   1b8f4:	00448c13          	addi	s8,s1,4
   1b8f8:	00068663          	beqz	a3,1b904 <_svfiprintf_r+0x824>
   1b8fc:	0004a883          	lw	a7,0(s1)
   1b900:	0100006f          	j	1b910 <_svfiprintf_r+0x830>
   1b904:	040d7693          	andi	a3,s10,64
   1b908:	00068863          	beqz	a3,1b918 <_svfiprintf_r+0x838>
   1b90c:	0004d883          	lhu	a7,0(s1)
   1b910:	00000c93          	li	s9,0
   1b914:	fd5ff06f          	j	1b8e8 <_svfiprintf_r+0x808>
   1b918:	200d7693          	andi	a3,s10,512
   1b91c:	fe0680e3          	beqz	a3,1b8fc <_svfiprintf_r+0x81c>
   1b920:	0004c883          	lbu	a7,0(s1)
   1b924:	fedff06f          	j	1b910 <_svfiprintf_r+0x830>
   1b928:	000216b7          	lui	a3,0x21
   1b92c:	a5868793          	addi	a5,a3,-1448 # 20a58 <zeroes.4405+0x20>
   1b930:	93dff06f          	j	1b26c <_svfiprintf_r+0x18c>
   1b934:	010d7693          	andi	a3,s10,16
   1b938:	00448c13          	addi	s8,s1,4
   1b93c:	00068663          	beqz	a3,1b948 <_svfiprintf_r+0x868>
   1b940:	0004a883          	lw	a7,0(s1)
   1b944:	0100006f          	j	1b954 <_svfiprintf_r+0x874>
   1b948:	040d7693          	andi	a3,s10,64
   1b94c:	00068863          	beqz	a3,1b95c <_svfiprintf_r+0x87c>
   1b950:	0004d883          	lhu	a7,0(s1)
   1b954:	00000c93          	li	s9,0
   1b958:	935ff06f          	j	1b28c <_svfiprintf_r+0x1ac>
   1b95c:	200d7693          	andi	a3,s10,512
   1b960:	fe0680e3          	beqz	a3,1b940 <_svfiprintf_r+0x860>
   1b964:	0004c883          	lbu	a7,0(s1)
   1b968:	fedff06f          	j	1b954 <_svfiprintf_r+0x874>
   1b96c:	000d0613          	mv	a2,s10
   1b970:	00100693          	li	a3,1
   1b974:	bddff06f          	j	1b550 <_svfiprintf_r+0x470>
   1b978:	00100613          	li	a2,1
   1b97c:	aec686e3          	beq	a3,a2,1b468 <_svfiprintf_r+0x388>
   1b980:	00200613          	li	a2,2
   1b984:	14c68463          	beq	a3,a2,1bacc <_svfiprintf_r+0x9ec>
   1b988:	0f010693          	addi	a3,sp,240
   1b98c:	01dc9593          	slli	a1,s9,0x1d
   1b990:	0078f613          	andi	a2,a7,7
   1b994:	0038d893          	srli	a7,a7,0x3
   1b998:	03060613          	addi	a2,a2,48
   1b99c:	0115e8b3          	or	a7,a1,a7
   1b9a0:	003cdc93          	srli	s9,s9,0x3
   1b9a4:	fec68fa3          	sb	a2,-1(a3)
   1b9a8:	0198e5b3          	or	a1,a7,s9
   1b9ac:	fff68493          	addi	s1,a3,-1
   1b9b0:	02059663          	bnez	a1,1b9dc <_svfiprintf_r+0x8fc>
   1b9b4:	001d7593          	andi	a1,s10,1
   1b9b8:	00058a63          	beqz	a1,1b9cc <_svfiprintf_r+0x8ec>
   1b9bc:	03000593          	li	a1,48
   1b9c0:	00b60663          	beq	a2,a1,1b9cc <_svfiprintf_r+0x8ec>
   1b9c4:	feb48fa3          	sb	a1,-1(s1)
   1b9c8:	ffe68493          	addi	s1,a3,-2
   1b9cc:	0f010793          	addi	a5,sp,240
   1b9d0:	00040c93          	mv	s9,s0
   1b9d4:	40978433          	sub	s0,a5,s1
   1b9d8:	c35ff06f          	j	1b60c <_svfiprintf_r+0x52c>
   1b9dc:	00048693          	mv	a3,s1
   1b9e0:	fadff06f          	j	1b98c <_svfiprintf_r+0x8ac>
   1b9e4:	400d7793          	andi	a5,s10,1024
   1b9e8:	00000d93          	li	s11,0
   1b9ec:	0f010e13          	addi	t3,sp,240
   1b9f0:	00f12023          	sw	a5,0(sp)
   1b9f4:	00088513          	mv	a0,a7
   1b9f8:	00a00613          	li	a2,10
   1b9fc:	00000693          	li	a3,0
   1ba00:	000c8593          	mv	a1,s9
   1ba04:	02e12223          	sw	a4,36(sp)
   1ba08:	fffe0493          	addi	s1,t3,-1
   1ba0c:	03c12023          	sw	t3,32(sp)
   1ba10:	01112c23          	sw	a7,24(sp)
   1ba14:	461000ef          	jal	ra,1c674 <__umoddi3>
   1ba18:	02012e03          	lw	t3,32(sp)
   1ba1c:	00012783          	lw	a5,0(sp)
   1ba20:	03050513          	addi	a0,a0,48
   1ba24:	feae0fa3          	sb	a0,-1(t3)
   1ba28:	001d8d93          	addi	s11,s11,1
   1ba2c:	01812883          	lw	a7,24(sp)
   1ba30:	02412703          	lw	a4,36(sp)
   1ba34:	06078263          	beqz	a5,1ba98 <_svfiprintf_r+0x9b8>
   1ba38:	00412783          	lw	a5,4(sp)
   1ba3c:	0007c683          	lbu	a3,0(a5)
   1ba40:	05b69c63          	bne	a3,s11,1ba98 <_svfiprintf_r+0x9b8>
   1ba44:	0ff00793          	li	a5,255
   1ba48:	04fd8863          	beq	s11,a5,1ba98 <_svfiprintf_r+0x9b8>
   1ba4c:	000c9663          	bnez	s9,1ba58 <_svfiprintf_r+0x978>
   1ba50:	00900793          	li	a5,9
   1ba54:	0517f263          	bleu	a7,a5,1ba98 <_svfiprintf_r+0x9b8>
   1ba58:	00c12783          	lw	a5,12(sp)
   1ba5c:	01412583          	lw	a1,20(sp)
   1ba60:	03112023          	sw	a7,32(sp)
   1ba64:	40f484b3          	sub	s1,s1,a5
   1ba68:	00078613          	mv	a2,a5
   1ba6c:	00048513          	mv	a0,s1
   1ba70:	00e12c23          	sw	a4,24(sp)
   1ba74:	848fc0ef          	jal	ra,17abc <strncpy>
   1ba78:	00412783          	lw	a5,4(sp)
   1ba7c:	00000d93          	li	s11,0
   1ba80:	01812703          	lw	a4,24(sp)
   1ba84:	0017c683          	lbu	a3,1(a5)
   1ba88:	02012883          	lw	a7,32(sp)
   1ba8c:	00068663          	beqz	a3,1ba98 <_svfiprintf_r+0x9b8>
   1ba90:	00178793          	addi	a5,a5,1
   1ba94:	00f12223          	sw	a5,4(sp)
   1ba98:	00088513          	mv	a0,a7
   1ba9c:	000c8593          	mv	a1,s9
   1baa0:	00a00613          	li	a2,10
   1baa4:	00000693          	li	a3,0
   1baa8:	00e12c23          	sw	a4,24(sp)
   1baac:	794000ef          	jal	ra,1c240 <__udivdi3>
   1bab0:	00058c93          	mv	s9,a1
   1bab4:	00a5e5b3          	or	a1,a1,a0
   1bab8:	00050893          	mv	a7,a0
   1babc:	01812703          	lw	a4,24(sp)
   1bac0:	f00586e3          	beqz	a1,1b9cc <_svfiprintf_r+0x8ec>
   1bac4:	00048e13          	mv	t3,s1
   1bac8:	f2dff06f          	j	1b9f4 <_svfiprintf_r+0x914>
   1bacc:	0f010493          	addi	s1,sp,240
   1bad0:	00812783          	lw	a5,8(sp)
   1bad4:	00f8f693          	andi	a3,a7,15
   1bad8:	fff48493          	addi	s1,s1,-1
   1badc:	00d786b3          	add	a3,a5,a3
   1bae0:	0006c683          	lbu	a3,0(a3)
   1bae4:	0048d893          	srli	a7,a7,0x4
   1bae8:	00d48023          	sb	a3,0(s1)
   1baec:	01cc9693          	slli	a3,s9,0x1c
   1baf0:	0116e8b3          	or	a7,a3,a7
   1baf4:	004cdc93          	srli	s9,s9,0x4
   1baf8:	0198e6b3          	or	a3,a7,s9
   1bafc:	fc069ae3          	bnez	a3,1bad0 <_svfiprintf_r+0x9f0>
   1bb00:	ecdff06f          	j	1b9cc <_svfiprintf_r+0x8ec>
   1bb04:	0f010493          	addi	s1,sp,240
   1bb08:	ec0692e3          	bnez	a3,1b9cc <_svfiprintf_r+0x8ec>
   1bb0c:	00167613          	andi	a2,a2,1
   1bb10:	ea060ee3          	beqz	a2,1b9cc <_svfiprintf_r+0x8ec>
   1bb14:	03000693          	li	a3,48
   1bb18:	0ed107a3          	sb	a3,239(sp)
   1bb1c:	961ff06f          	j	1b47c <_svfiprintf_r+0x39c>
   1bb20:	1c060a63          	beqz	a2,1bcf4 <_svfiprintf_r+0xc14>
   1bb24:	08c10623          	sb	a2,140(sp)
   1bb28:	02010da3          	sb	zero,59(sp)
   1bb2c:	00048c13          	mv	s8,s1
   1bb30:	8e5ff06f          	j	1b414 <_svfiprintf_r+0x334>
   1bb34:	01058593          	addi	a1,a1,16
   1bb38:	01172223          	sw	a7,4(a4)
   1bb3c:	04b12423          	sw	a1,72(sp)
   1bb40:	04c12223          	sw	a2,68(sp)
   1bb44:	02c35e63          	ble	a2,t1,1bb80 <_svfiprintf_r+0xaa0>
   1bb48:	04010613          	addi	a2,sp,64
   1bb4c:	00090593          	mv	a1,s2
   1bb50:	000a8513          	mv	a0,s5
   1bb54:	02612623          	sw	t1,44(sp)
   1bb58:	03012423          	sw	a6,40(sp)
   1bb5c:	03112223          	sw	a7,36(sp)
   1bb60:	02d12023          	sw	a3,32(sp)
   1bb64:	bb4ff0ef          	jal	ra,1af18 <__ssprint_r>
   1bb68:	10051463          	bnez	a0,1bc70 <_svfiprintf_r+0xb90>
   1bb6c:	02c12303          	lw	t1,44(sp)
   1bb70:	02812803          	lw	a6,40(sp)
   1bb74:	02412883          	lw	a7,36(sp)
   1bb78:	02012683          	lw	a3,32(sp)
   1bb7c:	000b0513          	mv	a0,s6
   1bb80:	ff068693          	addi	a3,a3,-16
   1bb84:	00050713          	mv	a4,a0
   1bb88:	ae1ff06f          	j	1b668 <_svfiprintf_r+0x588>
   1bb8c:	01060613          	addi	a2,a2,16
   1bb90:	01072223          	sw	a6,4(a4)
   1bb94:	04c12423          	sw	a2,72(sp)
   1bb98:	04d12223          	sw	a3,68(sp)
   1bb9c:	02d8d663          	ble	a3,a7,1bbc8 <_svfiprintf_r+0xae8>
   1bba0:	04010613          	addi	a2,sp,64
   1bba4:	00090593          	mv	a1,s2
   1bba8:	000a8513          	mv	a0,s5
   1bbac:	03112023          	sw	a7,32(sp)
   1bbb0:	01012c23          	sw	a6,24(sp)
   1bbb4:	b64ff0ef          	jal	ra,1af18 <__ssprint_r>
   1bbb8:	0a051c63          	bnez	a0,1bc70 <_svfiprintf_r+0xb90>
   1bbbc:	02012883          	lw	a7,32(sp)
   1bbc0:	01812803          	lw	a6,24(sp)
   1bbc4:	000b0593          	mv	a1,s6
   1bbc8:	ff0d8d93          	addi	s11,s11,-16
   1bbcc:	00058713          	mv	a4,a1
   1bbd0:	ba9ff06f          	j	1b778 <_svfiprintf_r+0x698>
   1bbd4:	01060613          	addi	a2,a2,16
   1bbd8:	01b72223          	sw	s11,4(a4)
   1bbdc:	04c12423          	sw	a2,72(sp)
   1bbe0:	04d12223          	sw	a3,68(sp)
   1bbe4:	02d85263          	ble	a3,a6,1bc08 <_svfiprintf_r+0xb28>
   1bbe8:	04010613          	addi	a2,sp,64
   1bbec:	00090593          	mv	a1,s2
   1bbf0:	000a8513          	mv	a0,s5
   1bbf4:	01012c23          	sw	a6,24(sp)
   1bbf8:	b20ff0ef          	jal	ra,1af18 <__ssprint_r>
   1bbfc:	06051a63          	bnez	a0,1bc70 <_svfiprintf_r+0xb90>
   1bc00:	01812803          	lw	a6,24(sp)
   1bc04:	000b0593          	mv	a1,s6
   1bc08:	ff0c8c93          	addi	s9,s9,-16
   1bc0c:	00058713          	mv	a4,a1
   1bc10:	bc9ff06f          	j	1b7d8 <_svfiprintf_r+0x6f8>
   1bc14:	00012783          	lw	a5,0(sp)
   1bc18:	40fa0433          	sub	s0,s4,a5
   1bc1c:	c4805ce3          	blez	s0,1b874 <_svfiprintf_r+0x794>
   1bc20:	000217b7          	lui	a5,0x21
   1bc24:	01000c93          	li	s9,16
   1bc28:	3c078493          	addi	s1,a5,960 # 213c0 <blanks.4366>
   1bc2c:	00700d93          	li	s11,7
   1bc30:	04412783          	lw	a5,68(sp)
   1bc34:	00972023          	sw	s1,0(a4)
   1bc38:	04812683          	lw	a3,72(sp)
   1bc3c:	00178793          	addi	a5,a5,1
   1bc40:	068cce63          	blt	s9,s0,1bcbc <_svfiprintf_r+0xbdc>
   1bc44:	00872223          	sw	s0,4(a4)
   1bc48:	00d40433          	add	s0,s0,a3
   1bc4c:	04812423          	sw	s0,72(sp)
   1bc50:	04f12223          	sw	a5,68(sp)
   1bc54:	00700713          	li	a4,7
   1bc58:	c0f75ee3          	ble	a5,a4,1b874 <_svfiprintf_r+0x794>
   1bc5c:	04010613          	addi	a2,sp,64
   1bc60:	00090593          	mv	a1,s2
   1bc64:	000a8513          	mv	a0,s5
   1bc68:	ab0ff0ef          	jal	ra,1af18 <__ssprint_r>
   1bc6c:	c00504e3          	beqz	a0,1b874 <_svfiprintf_r+0x794>
   1bc70:	00c95783          	lhu	a5,12(s2)
   1bc74:	0407f793          	andi	a5,a5,64
   1bc78:	ce079063          	bnez	a5,1b158 <_svfiprintf_r+0x78>
   1bc7c:	12c12083          	lw	ra,300(sp)
   1bc80:	12812403          	lw	s0,296(sp)
   1bc84:	000b8513          	mv	a0,s7
   1bc88:	12412483          	lw	s1,292(sp)
   1bc8c:	12012903          	lw	s2,288(sp)
   1bc90:	11c12983          	lw	s3,284(sp)
   1bc94:	11812a03          	lw	s4,280(sp)
   1bc98:	11412a83          	lw	s5,276(sp)
   1bc9c:	11012b03          	lw	s6,272(sp)
   1bca0:	10c12b83          	lw	s7,268(sp)
   1bca4:	10812c03          	lw	s8,264(sp)
   1bca8:	10412c83          	lw	s9,260(sp)
   1bcac:	10012d03          	lw	s10,256(sp)
   1bcb0:	0fc12d83          	lw	s11,252(sp)
   1bcb4:	13010113          	addi	sp,sp,304
   1bcb8:	00008067          	ret
   1bcbc:	01068693          	addi	a3,a3,16
   1bcc0:	01972223          	sw	s9,4(a4)
   1bcc4:	04d12423          	sw	a3,72(sp)
   1bcc8:	04f12223          	sw	a5,68(sp)
   1bccc:	00870713          	addi	a4,a4,8
   1bcd0:	00fdde63          	ble	a5,s11,1bcec <_svfiprintf_r+0xc0c>
   1bcd4:	04010613          	addi	a2,sp,64
   1bcd8:	00090593          	mv	a1,s2
   1bcdc:	000a8513          	mv	a0,s5
   1bce0:	a38ff0ef          	jal	ra,1af18 <__ssprint_r>
   1bce4:	f80516e3          	bnez	a0,1bc70 <_svfiprintf_r+0xb90>
   1bce8:	000b0713          	mv	a4,s6
   1bcec:	ff040413          	addi	s0,s0,-16
   1bcf0:	f41ff06f          	j	1bc30 <_svfiprintf_r+0xb50>
   1bcf4:	04812783          	lw	a5,72(sp)
   1bcf8:	f6078ce3          	beqz	a5,1bc70 <_svfiprintf_r+0xb90>
   1bcfc:	04010613          	addi	a2,sp,64
   1bd00:	00090593          	mv	a1,s2
   1bd04:	000a8513          	mv	a0,s5
   1bd08:	a10ff0ef          	jal	ra,1af18 <__ssprint_r>
   1bd0c:	f65ff06f          	j	1bc70 <_svfiprintf_r+0xb90>

0001bd10 <__swbuf_r>:
   1bd10:	fe010113          	addi	sp,sp,-32
   1bd14:	00812c23          	sw	s0,24(sp)
   1bd18:	00912a23          	sw	s1,20(sp)
   1bd1c:	01212823          	sw	s2,16(sp)
   1bd20:	00112e23          	sw	ra,28(sp)
   1bd24:	01312623          	sw	s3,12(sp)
   1bd28:	00050913          	mv	s2,a0
   1bd2c:	00058493          	mv	s1,a1
   1bd30:	00060413          	mv	s0,a2
   1bd34:	00050863          	beqz	a0,1bd44 <__swbuf_r+0x34>
   1bd38:	03852783          	lw	a5,56(a0)
   1bd3c:	00079463          	bnez	a5,1bd44 <__swbuf_r+0x34>
   1bd40:	f65f60ef          	jal	ra,12ca4 <__sinit>
   1bd44:	01842783          	lw	a5,24(s0)
   1bd48:	00f42423          	sw	a5,8(s0)
   1bd4c:	00c45783          	lhu	a5,12(s0)
   1bd50:	0087f793          	andi	a5,a5,8
   1bd54:	08078a63          	beqz	a5,1bde8 <__swbuf_r+0xd8>
   1bd58:	01042783          	lw	a5,16(s0)
   1bd5c:	08078663          	beqz	a5,1bde8 <__swbuf_r+0xd8>
   1bd60:	00c41783          	lh	a5,12(s0)
   1bd64:	0ff4f993          	andi	s3,s1,255
   1bd68:	0ff4f493          	andi	s1,s1,255
   1bd6c:	01279713          	slli	a4,a5,0x12
   1bd70:	0a075663          	bgez	a4,1be1c <__swbuf_r+0x10c>
   1bd74:	01042783          	lw	a5,16(s0)
   1bd78:	00042503          	lw	a0,0(s0)
   1bd7c:	40f50533          	sub	a0,a0,a5
   1bd80:	01442783          	lw	a5,20(s0)
   1bd84:	00f54a63          	blt	a0,a5,1bd98 <__swbuf_r+0x88>
   1bd88:	00040593          	mv	a1,s0
   1bd8c:	00090513          	mv	a0,s2
   1bd90:	d85f60ef          	jal	ra,12b14 <_fflush_r>
   1bd94:	06051263          	bnez	a0,1bdf8 <__swbuf_r+0xe8>
   1bd98:	00842783          	lw	a5,8(s0)
   1bd9c:	00150513          	addi	a0,a0,1
   1bda0:	fff78793          	addi	a5,a5,-1
   1bda4:	00f42423          	sw	a5,8(s0)
   1bda8:	00042783          	lw	a5,0(s0)
   1bdac:	00178713          	addi	a4,a5,1
   1bdb0:	00e42023          	sw	a4,0(s0)
   1bdb4:	01378023          	sb	s3,0(a5)
   1bdb8:	01442783          	lw	a5,20(s0)
   1bdbc:	00a78c63          	beq	a5,a0,1bdd4 <__swbuf_r+0xc4>
   1bdc0:	00c45783          	lhu	a5,12(s0)
   1bdc4:	0017f793          	andi	a5,a5,1
   1bdc8:	02078a63          	beqz	a5,1bdfc <__swbuf_r+0xec>
   1bdcc:	00a00793          	li	a5,10
   1bdd0:	02f49663          	bne	s1,a5,1bdfc <__swbuf_r+0xec>
   1bdd4:	00040593          	mv	a1,s0
   1bdd8:	00090513          	mv	a0,s2
   1bddc:	d39f60ef          	jal	ra,12b14 <_fflush_r>
   1bde0:	00050e63          	beqz	a0,1bdfc <__swbuf_r+0xec>
   1bde4:	0140006f          	j	1bdf8 <__swbuf_r+0xe8>
   1bde8:	00040593          	mv	a1,s0
   1bdec:	00090513          	mv	a0,s2
   1bdf0:	861f60ef          	jal	ra,12650 <__swsetup_r>
   1bdf4:	f60506e3          	beqz	a0,1bd60 <__swbuf_r+0x50>
   1bdf8:	fff00493          	li	s1,-1
   1bdfc:	01c12083          	lw	ra,28(sp)
   1be00:	01812403          	lw	s0,24(sp)
   1be04:	00048513          	mv	a0,s1
   1be08:	01012903          	lw	s2,16(sp)
   1be0c:	01412483          	lw	s1,20(sp)
   1be10:	00c12983          	lw	s3,12(sp)
   1be14:	02010113          	addi	sp,sp,32
   1be18:	00008067          	ret
   1be1c:	00002737          	lui	a4,0x2
   1be20:	00e7e7b3          	or	a5,a5,a4
   1be24:	00f41623          	sh	a5,12(s0)
   1be28:	06442783          	lw	a5,100(s0)
   1be2c:	ffffe737          	lui	a4,0xffffe
   1be30:	fff70713          	addi	a4,a4,-1 # ffffdfff <__global_pointer$+0xfffdae57>
   1be34:	00e7f7b3          	and	a5,a5,a4
   1be38:	06f42223          	sw	a5,100(s0)
   1be3c:	f39ff06f          	j	1bd74 <__swbuf_r+0x64>

0001be40 <__swbuf>:
   1be40:	00058613          	mv	a2,a1
   1be44:	00050593          	mv	a1,a0
   1be48:	8201a503          	lw	a0,-2016(gp) # 229c8 <_impure_ptr>
   1be4c:	ec5ff06f          	j	1bd10 <__swbuf_r>

0001be50 <_wcrtomb_r>:
   1be50:	8201a783          	lw	a5,-2016(gp) # 229c8 <_impure_ptr>
   1be54:	fe010113          	addi	sp,sp,-32
   1be58:	00812c23          	sw	s0,24(sp)
   1be5c:	00912a23          	sw	s1,20(sp)
   1be60:	00112e23          	sw	ra,28(sp)
   1be64:	00050413          	mv	s0,a0
   1be68:	00068493          	mv	s1,a3
   1be6c:	0347a783          	lw	a5,52(a5)
   1be70:	04059863          	bnez	a1,1bec0 <_wcrtomb_r+0x70>
   1be74:	00079663          	bnez	a5,1be80 <_wcrtomb_r+0x30>
   1be78:	000227b7          	lui	a5,0x22
   1be7c:	43078793          	addi	a5,a5,1072 # 22430 <__global_locale>
   1be80:	0e07a783          	lw	a5,224(a5)
   1be84:	00048693          	mv	a3,s1
   1be88:	00000613          	li	a2,0
   1be8c:	00410593          	addi	a1,sp,4
   1be90:	00040513          	mv	a0,s0
   1be94:	000780e7          	jalr	a5
   1be98:	fff00793          	li	a5,-1
   1be9c:	00f51863          	bne	a0,a5,1beac <_wcrtomb_r+0x5c>
   1bea0:	0004a023          	sw	zero,0(s1)
   1bea4:	08a00793          	li	a5,138
   1bea8:	00f42023          	sw	a5,0(s0)
   1beac:	01c12083          	lw	ra,28(sp)
   1beb0:	01812403          	lw	s0,24(sp)
   1beb4:	01412483          	lw	s1,20(sp)
   1beb8:	02010113          	addi	sp,sp,32
   1bebc:	00008067          	ret
   1bec0:	00079663          	bnez	a5,1becc <_wcrtomb_r+0x7c>
   1bec4:	000227b7          	lui	a5,0x22
   1bec8:	43078793          	addi	a5,a5,1072 # 22430 <__global_locale>
   1becc:	0e07a783          	lw	a5,224(a5)
   1bed0:	00048693          	mv	a3,s1
   1bed4:	fbdff06f          	j	1be90 <_wcrtomb_r+0x40>

0001bed8 <wcrtomb>:
   1bed8:	00060693          	mv	a3,a2
   1bedc:	00058613          	mv	a2,a1
   1bee0:	00050593          	mv	a1,a0
   1bee4:	8201a503          	lw	a0,-2016(gp) # 229c8 <_impure_ptr>
   1bee8:	f69ff06f          	j	1be50 <_wcrtomb_r>

0001beec <_close>:
   1beec:	ff010113          	addi	sp,sp,-16
   1bef0:	00112623          	sw	ra,12(sp)
   1bef4:	00812423          	sw	s0,8(sp)
   1bef8:	00000593          	li	a1,0
   1befc:	00000613          	li	a2,0
   1bf00:	00000693          	li	a3,0
   1bf04:	00000713          	li	a4,0
   1bf08:	00000793          	li	a5,0
   1bf0c:	03900893          	li	a7,57
   1bf10:	00000073          	ecall
   1bf14:	00050413          	mv	s0,a0
   1bf18:	00055a63          	bgez	a0,1bf2c <_close+0x40>
   1bf1c:	40800433          	neg	s0,s0
   1bf20:	318000ef          	jal	ra,1c238 <__errno>
   1bf24:	00852023          	sw	s0,0(a0)
   1bf28:	fff00413          	li	s0,-1
   1bf2c:	00040513          	mv	a0,s0
   1bf30:	00c12083          	lw	ra,12(sp)
   1bf34:	00812403          	lw	s0,8(sp)
   1bf38:	01010113          	addi	sp,sp,16
   1bf3c:	00008067          	ret

0001bf40 <_exit>:
   1bf40:	00000593          	li	a1,0
   1bf44:	00000613          	li	a2,0
   1bf48:	00000693          	li	a3,0
   1bf4c:	00000713          	li	a4,0
   1bf50:	00000793          	li	a5,0
   1bf54:	05d00893          	li	a7,93
   1bf58:	00000073          	ecall
   1bf5c:	02055263          	bgez	a0,1bf80 <_exit+0x40>
   1bf60:	ff010113          	addi	sp,sp,-16
   1bf64:	00812423          	sw	s0,8(sp)
   1bf68:	00050413          	mv	s0,a0
   1bf6c:	00112623          	sw	ra,12(sp)
   1bf70:	40800433          	neg	s0,s0
   1bf74:	2c4000ef          	jal	ra,1c238 <__errno>
   1bf78:	00852023          	sw	s0,0(a0)
   1bf7c:	0000006f          	j	1bf7c <_exit+0x3c>
   1bf80:	0000006f          	j	1bf80 <_exit+0x40>

0001bf84 <_fstat>:
   1bf84:	f8010113          	addi	sp,sp,-128
   1bf88:	06912a23          	sw	s1,116(sp)
   1bf8c:	06112e23          	sw	ra,124(sp)
   1bf90:	00058493          	mv	s1,a1
   1bf94:	06812c23          	sw	s0,120(sp)
   1bf98:	00810593          	addi	a1,sp,8
   1bf9c:	00000613          	li	a2,0
   1bfa0:	00000693          	li	a3,0
   1bfa4:	00000713          	li	a4,0
   1bfa8:	00000793          	li	a5,0
   1bfac:	05000893          	li	a7,80
   1bfb0:	00000073          	ecall
   1bfb4:	00050413          	mv	s0,a0
   1bfb8:	00055a63          	bgez	a0,1bfcc <_fstat+0x48>
   1bfbc:	40800433          	neg	s0,s0
   1bfc0:	278000ef          	jal	ra,1c238 <__errno>
   1bfc4:	00852023          	sw	s0,0(a0)
   1bfc8:	fff00413          	li	s0,-1
   1bfcc:	00048513          	mv	a0,s1
   1bfd0:	00810593          	addi	a1,sp,8
   1bfd4:	1f8000ef          	jal	ra,1c1cc <_conv_stat>
   1bfd8:	00040513          	mv	a0,s0
   1bfdc:	07c12083          	lw	ra,124(sp)
   1bfe0:	07812403          	lw	s0,120(sp)
   1bfe4:	07412483          	lw	s1,116(sp)
   1bfe8:	08010113          	addi	sp,sp,128
   1bfec:	00008067          	ret

0001bff0 <_isatty>:
   1bff0:	fb010113          	addi	sp,sp,-80
   1bff4:	00410593          	addi	a1,sp,4
   1bff8:	04112623          	sw	ra,76(sp)
   1bffc:	f89ff0ef          	jal	ra,1bf84 <_fstat>
   1c000:	fff00793          	li	a5,-1
   1c004:	00f50863          	beq	a0,a5,1c014 <_isatty+0x24>
   1c008:	00812503          	lw	a0,8(sp)
   1c00c:	00d55513          	srli	a0,a0,0xd
   1c010:	00157513          	andi	a0,a0,1
   1c014:	04c12083          	lw	ra,76(sp)
   1c018:	05010113          	addi	sp,sp,80
   1c01c:	00008067          	ret

0001c020 <_lseek>:
   1c020:	ff010113          	addi	sp,sp,-16
   1c024:	00112623          	sw	ra,12(sp)
   1c028:	00812423          	sw	s0,8(sp)
   1c02c:	00000693          	li	a3,0
   1c030:	00000713          	li	a4,0
   1c034:	00000793          	li	a5,0
   1c038:	03e00893          	li	a7,62
   1c03c:	00000073          	ecall
   1c040:	00050413          	mv	s0,a0
   1c044:	00055a63          	bgez	a0,1c058 <_lseek+0x38>
   1c048:	40800433          	neg	s0,s0
   1c04c:	1ec000ef          	jal	ra,1c238 <__errno>
   1c050:	00852023          	sw	s0,0(a0)
   1c054:	fff00413          	li	s0,-1
   1c058:	00040513          	mv	a0,s0
   1c05c:	00c12083          	lw	ra,12(sp)
   1c060:	00812403          	lw	s0,8(sp)
   1c064:	01010113          	addi	sp,sp,16
   1c068:	00008067          	ret

0001c06c <_read>:
   1c06c:	ff010113          	addi	sp,sp,-16
   1c070:	00112623          	sw	ra,12(sp)
   1c074:	00812423          	sw	s0,8(sp)
   1c078:	00000693          	li	a3,0
   1c07c:	00000713          	li	a4,0
   1c080:	00000793          	li	a5,0
   1c084:	03f00893          	li	a7,63
   1c088:	00000073          	ecall
   1c08c:	00050413          	mv	s0,a0
   1c090:	00055a63          	bgez	a0,1c0a4 <_read+0x38>
   1c094:	40800433          	neg	s0,s0
   1c098:	1a0000ef          	jal	ra,1c238 <__errno>
   1c09c:	00852023          	sw	s0,0(a0)
   1c0a0:	fff00413          	li	s0,-1
   1c0a4:	00040513          	mv	a0,s0
   1c0a8:	00c12083          	lw	ra,12(sp)
   1c0ac:	00812403          	lw	s0,8(sp)
   1c0b0:	01010113          	addi	sp,sp,16
   1c0b4:	00008067          	ret

0001c0b8 <_sbrk>:
   1c0b8:	ff010113          	addi	sp,sp,-16
   1c0bc:	00812423          	sw	s0,8(sp)
   1c0c0:	83c1a783          	lw	a5,-1988(gp) # 229e4 <heap_end.2474>
   1c0c4:	01212023          	sw	s2,0(sp)
   1c0c8:	00112623          	sw	ra,12(sp)
   1c0cc:	00912223          	sw	s1,4(sp)
   1c0d0:	00050913          	mv	s2,a0
   1c0d4:	04079a63          	bnez	a5,1c128 <_sbrk+0x70>
   1c0d8:	00000513          	li	a0,0
   1c0dc:	00000593          	li	a1,0
   1c0e0:	00000613          	li	a2,0
   1c0e4:	00000693          	li	a3,0
   1c0e8:	00000713          	li	a4,0
   1c0ec:	0d600893          	li	a7,214
   1c0f0:	00000073          	ecall
   1c0f4:	00050493          	mv	s1,a0
   1c0f8:	02055663          	bgez	a0,1c124 <_sbrk+0x6c>
   1c0fc:	13c000ef          	jal	ra,1c238 <__errno>
   1c100:	409004b3          	neg	s1,s1
   1c104:	00952023          	sw	s1,0(a0)
   1c108:	fff00513          	li	a0,-1
   1c10c:	00c12083          	lw	ra,12(sp)
   1c110:	00812403          	lw	s0,8(sp)
   1c114:	00412483          	lw	s1,4(sp)
   1c118:	00012903          	lw	s2,0(sp)
   1c11c:	01010113          	addi	sp,sp,16
   1c120:	00008067          	ret
   1c124:	82a1ae23          	sw	a0,-1988(gp) # 229e4 <heap_end.2474>
   1c128:	83c1a503          	lw	a0,-1988(gp) # 229e4 <heap_end.2474>
   1c12c:	00000593          	li	a1,0
   1c130:	00000613          	li	a2,0
   1c134:	00a90533          	add	a0,s2,a0
   1c138:	00000693          	li	a3,0
   1c13c:	00000713          	li	a4,0
   1c140:	00000793          	li	a5,0
   1c144:	0d600893          	li	a7,214
   1c148:	00000073          	ecall
   1c14c:	00050493          	mv	s1,a0
   1c150:	00055a63          	bgez	a0,1c164 <_sbrk+0xac>
   1c154:	409004b3          	neg	s1,s1
   1c158:	0e0000ef          	jal	ra,1c238 <__errno>
   1c15c:	00952023          	sw	s1,0(a0)
   1c160:	fff00493          	li	s1,-1
   1c164:	83c1a783          	lw	a5,-1988(gp) # 229e4 <heap_end.2474>
   1c168:	fff00513          	li	a0,-1
   1c16c:	00f90933          	add	s2,s2,a5
   1c170:	f9249ee3          	bne	s1,s2,1c10c <_sbrk+0x54>
   1c174:	8291ae23          	sw	s1,-1988(gp) # 229e4 <heap_end.2474>
   1c178:	00078513          	mv	a0,a5
   1c17c:	f91ff06f          	j	1c10c <_sbrk+0x54>

0001c180 <_write>:
   1c180:	ff010113          	addi	sp,sp,-16
   1c184:	00112623          	sw	ra,12(sp)
   1c188:	00812423          	sw	s0,8(sp)
   1c18c:	00000693          	li	a3,0
   1c190:	00000713          	li	a4,0
   1c194:	00000793          	li	a5,0
   1c198:	04000893          	li	a7,64
   1c19c:	00000073          	ecall
   1c1a0:	00050413          	mv	s0,a0
   1c1a4:	00055a63          	bgez	a0,1c1b8 <_write+0x38>
   1c1a8:	40800433          	neg	s0,s0
   1c1ac:	08c000ef          	jal	ra,1c238 <__errno>
   1c1b0:	00852023          	sw	s0,0(a0)
   1c1b4:	fff00413          	li	s0,-1
   1c1b8:	00040513          	mv	a0,s0
   1c1bc:	00c12083          	lw	ra,12(sp)
   1c1c0:	00812403          	lw	s0,8(sp)
   1c1c4:	01010113          	addi	sp,sp,16
   1c1c8:	00008067          	ret

0001c1cc <_conv_stat>:
   1c1cc:	0005a783          	lw	a5,0(a1)
   1c1d0:	00f51023          	sh	a5,0(a0)
   1c1d4:	0085a783          	lw	a5,8(a1)
   1c1d8:	00f51123          	sh	a5,2(a0)
   1c1dc:	0105a783          	lw	a5,16(a1)
   1c1e0:	00f52223          	sw	a5,4(a0)
   1c1e4:	0145a783          	lw	a5,20(a1)
   1c1e8:	00f51423          	sh	a5,8(a0)
   1c1ec:	0185a783          	lw	a5,24(a1)
   1c1f0:	00f51523          	sh	a5,10(a0)
   1c1f4:	01c5a783          	lw	a5,28(a1)
   1c1f8:	00f51623          	sh	a5,12(a0)
   1c1fc:	0205a783          	lw	a5,32(a1)
   1c200:	00f51723          	sh	a5,14(a0)
   1c204:	0305a783          	lw	a5,48(a1)
   1c208:	00f52823          	sw	a5,16(a0)
   1c20c:	0405a783          	lw	a5,64(a1)
   1c210:	02f52823          	sw	a5,48(a0)
   1c214:	0385a783          	lw	a5,56(a1)
   1c218:	02f52623          	sw	a5,44(a0)
   1c21c:	0485a783          	lw	a5,72(a1)
   1c220:	00f52a23          	sw	a5,20(a0)
   1c224:	0505a783          	lw	a5,80(a1)
   1c228:	00f52e23          	sw	a5,28(a0)
   1c22c:	0585a783          	lw	a5,88(a1)
   1c230:	02f52223          	sw	a5,36(a0)
   1c234:	00008067          	ret

0001c238 <__errno>:
   1c238:	8201a503          	lw	a0,-2016(gp) # 229c8 <_impure_ptr>
   1c23c:	00008067          	ret

0001c240 <__udivdi3>:
   1c240:	00058793          	mv	a5,a1
   1c244:	00060813          	mv	a6,a2
   1c248:	00068893          	mv	a7,a3
   1c24c:	00050313          	mv	t1,a0
   1c250:	28069663          	bnez	a3,1c4dc <__udivdi3+0x29c>
   1c254:	00021737          	lui	a4,0x21
   1c258:	49470713          	addi	a4,a4,1172 # 21494 <__clz_tab>
   1c25c:	0ec5f663          	bleu	a2,a1,1c348 <__udivdi3+0x108>
   1c260:	000106b7          	lui	a3,0x10
   1c264:	0cd67863          	bleu	a3,a2,1c334 <__udivdi3+0xf4>
   1c268:	0ff00693          	li	a3,255
   1c26c:	00c6b6b3          	sltu	a3,a3,a2
   1c270:	00369693          	slli	a3,a3,0x3
   1c274:	00d658b3          	srl	a7,a2,a3
   1c278:	01170733          	add	a4,a4,a7
   1c27c:	00074703          	lbu	a4,0(a4)
   1c280:	00d706b3          	add	a3,a4,a3
   1c284:	02000713          	li	a4,32
   1c288:	40d70733          	sub	a4,a4,a3
   1c28c:	00070c63          	beqz	a4,1c2a4 <__udivdi3+0x64>
   1c290:	00e797b3          	sll	a5,a5,a4
   1c294:	00d556b3          	srl	a3,a0,a3
   1c298:	00e61833          	sll	a6,a2,a4
   1c29c:	00f6e5b3          	or	a1,a3,a5
   1c2a0:	00e51333          	sll	t1,a0,a4
   1c2a4:	01085513          	srli	a0,a6,0x10
   1c2a8:	02a5d7b3          	divu	a5,a1,a0
   1c2ac:	01081613          	slli	a2,a6,0x10
   1c2b0:	01065613          	srli	a2,a2,0x10
   1c2b4:	01035693          	srli	a3,t1,0x10
   1c2b8:	02a5f733          	remu	a4,a1,a0
   1c2bc:	02f605b3          	mul	a1,a2,a5
   1c2c0:	01071713          	slli	a4,a4,0x10
   1c2c4:	00d766b3          	or	a3,a4,a3
   1c2c8:	00078713          	mv	a4,a5
   1c2cc:	00b6fe63          	bleu	a1,a3,1c2e8 <__udivdi3+0xa8>
   1c2d0:	010686b3          	add	a3,a3,a6
   1c2d4:	fff78713          	addi	a4,a5,-1
   1c2d8:	0106e863          	bltu	a3,a6,1c2e8 <__udivdi3+0xa8>
   1c2dc:	00b6f663          	bleu	a1,a3,1c2e8 <__udivdi3+0xa8>
   1c2e0:	ffe78713          	addi	a4,a5,-2
   1c2e4:	010686b3          	add	a3,a3,a6
   1c2e8:	40b686b3          	sub	a3,a3,a1
   1c2ec:	02a6f7b3          	remu	a5,a3,a0
   1c2f0:	01031313          	slli	t1,t1,0x10
   1c2f4:	01035313          	srli	t1,t1,0x10
   1c2f8:	02a6d6b3          	divu	a3,a3,a0
   1c2fc:	01079793          	slli	a5,a5,0x10
   1c300:	0067e333          	or	t1,a5,t1
   1c304:	02d605b3          	mul	a1,a2,a3
   1c308:	00068513          	mv	a0,a3
   1c30c:	00b37c63          	bleu	a1,t1,1c324 <__udivdi3+0xe4>
   1c310:	00680333          	add	t1,a6,t1
   1c314:	fff68513          	addi	a0,a3,-1 # ffff <_start-0x75>
   1c318:	01036663          	bltu	t1,a6,1c324 <__udivdi3+0xe4>
   1c31c:	00b37463          	bleu	a1,t1,1c324 <__udivdi3+0xe4>
   1c320:	ffe68513          	addi	a0,a3,-2
   1c324:	01071713          	slli	a4,a4,0x10
   1c328:	00a76733          	or	a4,a4,a0
   1c32c:	00000593          	li	a1,0
   1c330:	0e40006f          	j	1c414 <__udivdi3+0x1d4>
   1c334:	010008b7          	lui	a7,0x1000
   1c338:	01000693          	li	a3,16
   1c33c:	f3166ce3          	bltu	a2,a7,1c274 <__udivdi3+0x34>
   1c340:	01800693          	li	a3,24
   1c344:	f31ff06f          	j	1c274 <__udivdi3+0x34>
   1c348:	00061663          	bnez	a2,1c354 <__udivdi3+0x114>
   1c34c:	00100693          	li	a3,1
   1c350:	02c6d833          	divu	a6,a3,a2
   1c354:	000106b7          	lui	a3,0x10
   1c358:	0cd87263          	bleu	a3,a6,1c41c <__udivdi3+0x1dc>
   1c35c:	0ff00693          	li	a3,255
   1c360:	0106f463          	bleu	a6,a3,1c368 <__udivdi3+0x128>
   1c364:	00800893          	li	a7,8
   1c368:	011856b3          	srl	a3,a6,a7
   1c36c:	00d70733          	add	a4,a4,a3
   1c370:	00074683          	lbu	a3,0(a4)
   1c374:	02000713          	li	a4,32
   1c378:	011686b3          	add	a3,a3,a7
   1c37c:	40d70733          	sub	a4,a4,a3
   1c380:	0a071863          	bnez	a4,1c430 <__udivdi3+0x1f0>
   1c384:	410787b3          	sub	a5,a5,a6
   1c388:	00100593          	li	a1,1
   1c38c:	01085613          	srli	a2,a6,0x10
   1c390:	01081893          	slli	a7,a6,0x10
   1c394:	0108d893          	srli	a7,a7,0x10
   1c398:	01035693          	srli	a3,t1,0x10
   1c39c:	02c7f733          	remu	a4,a5,a2
   1c3a0:	02c7d7b3          	divu	a5,a5,a2
   1c3a4:	01071713          	slli	a4,a4,0x10
   1c3a8:	00d766b3          	or	a3,a4,a3
   1c3ac:	02f88533          	mul	a0,a7,a5
   1c3b0:	00078713          	mv	a4,a5
   1c3b4:	00a6fe63          	bleu	a0,a3,1c3d0 <__udivdi3+0x190>
   1c3b8:	010686b3          	add	a3,a3,a6
   1c3bc:	fff78713          	addi	a4,a5,-1
   1c3c0:	0106e863          	bltu	a3,a6,1c3d0 <__udivdi3+0x190>
   1c3c4:	00a6f663          	bleu	a0,a3,1c3d0 <__udivdi3+0x190>
   1c3c8:	ffe78713          	addi	a4,a5,-2
   1c3cc:	010686b3          	add	a3,a3,a6
   1c3d0:	40a686b3          	sub	a3,a3,a0
   1c3d4:	02c6f7b3          	remu	a5,a3,a2
   1c3d8:	01031313          	slli	t1,t1,0x10
   1c3dc:	01035313          	srli	t1,t1,0x10
   1c3e0:	02c6d6b3          	divu	a3,a3,a2
   1c3e4:	01079793          	slli	a5,a5,0x10
   1c3e8:	0067e333          	or	t1,a5,t1
   1c3ec:	02d888b3          	mul	a7,a7,a3
   1c3f0:	00068513          	mv	a0,a3
   1c3f4:	01137c63          	bleu	a7,t1,1c40c <__udivdi3+0x1cc>
   1c3f8:	00680333          	add	t1,a6,t1
   1c3fc:	fff68513          	addi	a0,a3,-1 # ffff <_start-0x75>
   1c400:	01036663          	bltu	t1,a6,1c40c <__udivdi3+0x1cc>
   1c404:	01137463          	bleu	a7,t1,1c40c <__udivdi3+0x1cc>
   1c408:	ffe68513          	addi	a0,a3,-2
   1c40c:	01071713          	slli	a4,a4,0x10
   1c410:	00a76733          	or	a4,a4,a0
   1c414:	00070513          	mv	a0,a4
   1c418:	00008067          	ret
   1c41c:	010006b7          	lui	a3,0x1000
   1c420:	01000893          	li	a7,16
   1c424:	f4d862e3          	bltu	a6,a3,1c368 <__udivdi3+0x128>
   1c428:	01800893          	li	a7,24
   1c42c:	f3dff06f          	j	1c368 <__udivdi3+0x128>
   1c430:	00e81833          	sll	a6,a6,a4
   1c434:	00d7d5b3          	srl	a1,a5,a3
   1c438:	00e51333          	sll	t1,a0,a4
   1c43c:	00d556b3          	srl	a3,a0,a3
   1c440:	01085513          	srli	a0,a6,0x10
   1c444:	00e797b3          	sll	a5,a5,a4
   1c448:	02a5f733          	remu	a4,a1,a0
   1c44c:	00f6e8b3          	or	a7,a3,a5
   1c450:	01081793          	slli	a5,a6,0x10
   1c454:	0107d793          	srli	a5,a5,0x10
   1c458:	0108d613          	srli	a2,a7,0x10
   1c45c:	02a5d5b3          	divu	a1,a1,a0
   1c460:	01071713          	slli	a4,a4,0x10
   1c464:	00c76733          	or	a4,a4,a2
   1c468:	02b786b3          	mul	a3,a5,a1
   1c46c:	00058613          	mv	a2,a1
   1c470:	00d77e63          	bleu	a3,a4,1c48c <__udivdi3+0x24c>
   1c474:	01070733          	add	a4,a4,a6
   1c478:	fff58613          	addi	a2,a1,-1
   1c47c:	01076863          	bltu	a4,a6,1c48c <__udivdi3+0x24c>
   1c480:	00d77663          	bleu	a3,a4,1c48c <__udivdi3+0x24c>
   1c484:	ffe58613          	addi	a2,a1,-2
   1c488:	01070733          	add	a4,a4,a6
   1c48c:	40d706b3          	sub	a3,a4,a3
   1c490:	02a6f733          	remu	a4,a3,a0
   1c494:	01089893          	slli	a7,a7,0x10
   1c498:	0108d893          	srli	a7,a7,0x10
   1c49c:	02a6d6b3          	divu	a3,a3,a0
   1c4a0:	01071713          	slli	a4,a4,0x10
   1c4a4:	02d785b3          	mul	a1,a5,a3
   1c4a8:	011767b3          	or	a5,a4,a7
   1c4ac:	00068713          	mv	a4,a3
   1c4b0:	00b7fe63          	bleu	a1,a5,1c4cc <__udivdi3+0x28c>
   1c4b4:	010787b3          	add	a5,a5,a6
   1c4b8:	fff68713          	addi	a4,a3,-1 # ffffff <__global_pointer$+0xfdce57>
   1c4bc:	0107e863          	bltu	a5,a6,1c4cc <__udivdi3+0x28c>
   1c4c0:	00b7f663          	bleu	a1,a5,1c4cc <__udivdi3+0x28c>
   1c4c4:	ffe68713          	addi	a4,a3,-2
   1c4c8:	010787b3          	add	a5,a5,a6
   1c4cc:	40b787b3          	sub	a5,a5,a1
   1c4d0:	01061593          	slli	a1,a2,0x10
   1c4d4:	00e5e5b3          	or	a1,a1,a4
   1c4d8:	eb5ff06f          	j	1c38c <__udivdi3+0x14c>
   1c4dc:	18d5e663          	bltu	a1,a3,1c668 <__udivdi3+0x428>
   1c4e0:	00010737          	lui	a4,0x10
   1c4e4:	04e6f463          	bleu	a4,a3,1c52c <__udivdi3+0x2ec>
   1c4e8:	0ff00813          	li	a6,255
   1c4ec:	00d83733          	sltu	a4,a6,a3
   1c4f0:	00371713          	slli	a4,a4,0x3
   1c4f4:	00021837          	lui	a6,0x21
   1c4f8:	49480813          	addi	a6,a6,1172 # 21494 <__clz_tab>
   1c4fc:	00e6d5b3          	srl	a1,a3,a4
   1c500:	010585b3          	add	a1,a1,a6
   1c504:	0005c803          	lbu	a6,0(a1)
   1c508:	02000593          	li	a1,32
   1c50c:	00e80833          	add	a6,a6,a4
   1c510:	410585b3          	sub	a1,a1,a6
   1c514:	02059663          	bnez	a1,1c540 <__udivdi3+0x300>
   1c518:	00100713          	li	a4,1
   1c51c:	eef6ece3          	bltu	a3,a5,1c414 <__udivdi3+0x1d4>
   1c520:	00c53533          	sltu	a0,a0,a2
   1c524:	00154713          	xori	a4,a0,1
   1c528:	eedff06f          	j	1c414 <__udivdi3+0x1d4>
   1c52c:	010005b7          	lui	a1,0x1000
   1c530:	01000713          	li	a4,16
   1c534:	fcb6e0e3          	bltu	a3,a1,1c4f4 <__udivdi3+0x2b4>
   1c538:	01800713          	li	a4,24
   1c53c:	fb9ff06f          	j	1c4f4 <__udivdi3+0x2b4>
   1c540:	01065733          	srl	a4,a2,a6
   1c544:	00b696b3          	sll	a3,a3,a1
   1c548:	00d766b3          	or	a3,a4,a3
   1c54c:	0106de93          	srli	t4,a3,0x10
   1c550:	0107d733          	srl	a4,a5,a6
   1c554:	03d778b3          	remu	a7,a4,t4
   1c558:	00b797b3          	sll	a5,a5,a1
   1c55c:	01055833          	srl	a6,a0,a6
   1c560:	00f86333          	or	t1,a6,a5
   1c564:	01069793          	slli	a5,a3,0x10
   1c568:	0107d793          	srli	a5,a5,0x10
   1c56c:	01035813          	srli	a6,t1,0x10
   1c570:	00b61633          	sll	a2,a2,a1
   1c574:	03d75733          	divu	a4,a4,t4
   1c578:	01089893          	slli	a7,a7,0x10
   1c57c:	0108e833          	or	a6,a7,a6
   1c580:	02e78f33          	mul	t5,a5,a4
   1c584:	00070e13          	mv	t3,a4
   1c588:	01e87e63          	bleu	t5,a6,1c5a4 <__udivdi3+0x364>
   1c58c:	00d80833          	add	a6,a6,a3
   1c590:	fff70e13          	addi	t3,a4,-1 # ffff <_start-0x75>
   1c594:	00d86863          	bltu	a6,a3,1c5a4 <__udivdi3+0x364>
   1c598:	01e87663          	bleu	t5,a6,1c5a4 <__udivdi3+0x364>
   1c59c:	ffe70e13          	addi	t3,a4,-2
   1c5a0:	00d80833          	add	a6,a6,a3
   1c5a4:	41e80833          	sub	a6,a6,t5
   1c5a8:	03d878b3          	remu	a7,a6,t4
   1c5ac:	03d85833          	divu	a6,a6,t4
   1c5b0:	01089893          	slli	a7,a7,0x10
   1c5b4:	03078eb3          	mul	t4,a5,a6
   1c5b8:	01031793          	slli	a5,t1,0x10
   1c5bc:	0107d793          	srli	a5,a5,0x10
   1c5c0:	00f8e7b3          	or	a5,a7,a5
   1c5c4:	00080713          	mv	a4,a6
   1c5c8:	01d7fe63          	bleu	t4,a5,1c5e4 <__udivdi3+0x3a4>
   1c5cc:	00d787b3          	add	a5,a5,a3
   1c5d0:	fff80713          	addi	a4,a6,-1
   1c5d4:	00d7e863          	bltu	a5,a3,1c5e4 <__udivdi3+0x3a4>
   1c5d8:	01d7f663          	bleu	t4,a5,1c5e4 <__udivdi3+0x3a4>
   1c5dc:	ffe80713          	addi	a4,a6,-2
   1c5e0:	00d787b3          	add	a5,a5,a3
   1c5e4:	010e1e13          	slli	t3,t3,0x10
   1c5e8:	41d787b3          	sub	a5,a5,t4
   1c5ec:	00010eb7          	lui	t4,0x10
   1c5f0:	00ee6733          	or	a4,t3,a4
   1c5f4:	fffe8813          	addi	a6,t4,-1 # ffff <_start-0x75>
   1c5f8:	01077333          	and	t1,a4,a6
   1c5fc:	01075893          	srli	a7,a4,0x10
   1c600:	01067833          	and	a6,a2,a6
   1c604:	01065613          	srli	a2,a2,0x10
   1c608:	03030e33          	mul	t3,t1,a6
   1c60c:	03088833          	mul	a6,a7,a6
   1c610:	010e5693          	srli	a3,t3,0x10
   1c614:	02c30333          	mul	t1,t1,a2
   1c618:	01030333          	add	t1,t1,a6
   1c61c:	006686b3          	add	a3,a3,t1
   1c620:	02c888b3          	mul	a7,a7,a2
   1c624:	0106f463          	bleu	a6,a3,1c62c <__udivdi3+0x3ec>
   1c628:	01d888b3          	add	a7,a7,t4
   1c62c:	0106d613          	srli	a2,a3,0x10
   1c630:	011608b3          	add	a7,a2,a7
   1c634:	0317e663          	bltu	a5,a7,1c660 <__udivdi3+0x420>
   1c638:	cf179ae3          	bne	a5,a7,1c32c <__udivdi3+0xec>
   1c63c:	000107b7          	lui	a5,0x10
   1c640:	fff78793          	addi	a5,a5,-1 # ffff <_start-0x75>
   1c644:	00f6f6b3          	and	a3,a3,a5
   1c648:	01069693          	slli	a3,a3,0x10
   1c64c:	00fe7e33          	and	t3,t3,a5
   1c650:	00b51533          	sll	a0,a0,a1
   1c654:	01c686b3          	add	a3,a3,t3
   1c658:	00000593          	li	a1,0
   1c65c:	dad57ce3          	bleu	a3,a0,1c414 <__udivdi3+0x1d4>
   1c660:	fff70713          	addi	a4,a4,-1
   1c664:	cc9ff06f          	j	1c32c <__udivdi3+0xec>
   1c668:	00000593          	li	a1,0
   1c66c:	00000713          	li	a4,0
   1c670:	da5ff06f          	j	1c414 <__udivdi3+0x1d4>

0001c674 <__umoddi3>:
   1c674:	00060893          	mv	a7,a2
   1c678:	00068713          	mv	a4,a3
   1c67c:	00050793          	mv	a5,a0
   1c680:	00058813          	mv	a6,a1
   1c684:	22069c63          	bnez	a3,1c8bc <__umoddi3+0x248>
   1c688:	000216b7          	lui	a3,0x21
   1c68c:	49468693          	addi	a3,a3,1172 # 21494 <__clz_tab>
   1c690:	0cc5fc63          	bleu	a2,a1,1c768 <__umoddi3+0xf4>
   1c694:	00010337          	lui	t1,0x10
   1c698:	0a667e63          	bleu	t1,a2,1c754 <__umoddi3+0xe0>
   1c69c:	0ff00313          	li	t1,255
   1c6a0:	00c37463          	bleu	a2,t1,1c6a8 <__umoddi3+0x34>
   1c6a4:	00800713          	li	a4,8
   1c6a8:	00e65333          	srl	t1,a2,a4
   1c6ac:	006686b3          	add	a3,a3,t1
   1c6b0:	0006ce03          	lbu	t3,0(a3)
   1c6b4:	02000313          	li	t1,32
   1c6b8:	00ee0e33          	add	t3,t3,a4
   1c6bc:	41c30333          	sub	t1,t1,t3
   1c6c0:	00030c63          	beqz	t1,1c6d8 <__umoddi3+0x64>
   1c6c4:	006595b3          	sll	a1,a1,t1
   1c6c8:	01c55e33          	srl	t3,a0,t3
   1c6cc:	006618b3          	sll	a7,a2,t1
   1c6d0:	00be6833          	or	a6,t3,a1
   1c6d4:	006517b3          	sll	a5,a0,t1
   1c6d8:	0108d613          	srli	a2,a7,0x10
   1c6dc:	02c87733          	remu	a4,a6,a2
   1c6e0:	01089513          	slli	a0,a7,0x10
   1c6e4:	01055513          	srli	a0,a0,0x10
   1c6e8:	0107d693          	srli	a3,a5,0x10
   1c6ec:	02c85833          	divu	a6,a6,a2
   1c6f0:	01071713          	slli	a4,a4,0x10
   1c6f4:	00d766b3          	or	a3,a4,a3
   1c6f8:	03050833          	mul	a6,a0,a6
   1c6fc:	0106fa63          	bleu	a6,a3,1c710 <__umoddi3+0x9c>
   1c700:	011686b3          	add	a3,a3,a7
   1c704:	0116e663          	bltu	a3,a7,1c710 <__umoddi3+0x9c>
   1c708:	0106f463          	bleu	a6,a3,1c710 <__umoddi3+0x9c>
   1c70c:	011686b3          	add	a3,a3,a7
   1c710:	410686b3          	sub	a3,a3,a6
   1c714:	02c6f733          	remu	a4,a3,a2
   1c718:	01079793          	slli	a5,a5,0x10
   1c71c:	0107d793          	srli	a5,a5,0x10
   1c720:	02c6d6b3          	divu	a3,a3,a2
   1c724:	02d506b3          	mul	a3,a0,a3
   1c728:	01071513          	slli	a0,a4,0x10
   1c72c:	00f567b3          	or	a5,a0,a5
   1c730:	00d7fa63          	bleu	a3,a5,1c744 <__umoddi3+0xd0>
   1c734:	011787b3          	add	a5,a5,a7
   1c738:	0117e663          	bltu	a5,a7,1c744 <__umoddi3+0xd0>
   1c73c:	00d7f463          	bleu	a3,a5,1c744 <__umoddi3+0xd0>
   1c740:	011787b3          	add	a5,a5,a7
   1c744:	40d787b3          	sub	a5,a5,a3
   1c748:	0067d533          	srl	a0,a5,t1
   1c74c:	00000593          	li	a1,0
   1c750:	00008067          	ret
   1c754:	01000337          	lui	t1,0x1000
   1c758:	01000713          	li	a4,16
   1c75c:	f46666e3          	bltu	a2,t1,1c6a8 <__umoddi3+0x34>
   1c760:	01800713          	li	a4,24
   1c764:	f45ff06f          	j	1c6a8 <__umoddi3+0x34>
   1c768:	00061663          	bnez	a2,1c774 <__umoddi3+0x100>
   1c76c:	00100613          	li	a2,1
   1c770:	031658b3          	divu	a7,a2,a7
   1c774:	00010637          	lui	a2,0x10
   1c778:	0ac8f263          	bleu	a2,a7,1c81c <__umoddi3+0x1a8>
   1c77c:	0ff00613          	li	a2,255
   1c780:	01167463          	bleu	a7,a2,1c788 <__umoddi3+0x114>
   1c784:	00800713          	li	a4,8
   1c788:	00e8d633          	srl	a2,a7,a4
   1c78c:	00c686b3          	add	a3,a3,a2
   1c790:	0006ce03          	lbu	t3,0(a3)
   1c794:	02000313          	li	t1,32
   1c798:	00ee0e33          	add	t3,t3,a4
   1c79c:	41c30333          	sub	t1,t1,t3
   1c7a0:	08031863          	bnez	t1,1c830 <__umoddi3+0x1bc>
   1c7a4:	411585b3          	sub	a1,a1,a7
   1c7a8:	0108d713          	srli	a4,a7,0x10
   1c7ac:	01089513          	slli	a0,a7,0x10
   1c7b0:	01055513          	srli	a0,a0,0x10
   1c7b4:	0107d613          	srli	a2,a5,0x10
   1c7b8:	02e5f6b3          	remu	a3,a1,a4
   1c7bc:	02e5d5b3          	divu	a1,a1,a4
   1c7c0:	01069693          	slli	a3,a3,0x10
   1c7c4:	00c6e6b3          	or	a3,a3,a2
   1c7c8:	02b505b3          	mul	a1,a0,a1
   1c7cc:	00b6fa63          	bleu	a1,a3,1c7e0 <__umoddi3+0x16c>
   1c7d0:	011686b3          	add	a3,a3,a7
   1c7d4:	0116e663          	bltu	a3,a7,1c7e0 <__umoddi3+0x16c>
   1c7d8:	00b6f463          	bleu	a1,a3,1c7e0 <__umoddi3+0x16c>
   1c7dc:	011686b3          	add	a3,a3,a7
   1c7e0:	40b685b3          	sub	a1,a3,a1
   1c7e4:	02e5f6b3          	remu	a3,a1,a4
   1c7e8:	01079793          	slli	a5,a5,0x10
   1c7ec:	0107d793          	srli	a5,a5,0x10
   1c7f0:	02e5d5b3          	divu	a1,a1,a4
   1c7f4:	02b505b3          	mul	a1,a0,a1
   1c7f8:	01069513          	slli	a0,a3,0x10
   1c7fc:	00f567b3          	or	a5,a0,a5
   1c800:	00b7fa63          	bleu	a1,a5,1c814 <__umoddi3+0x1a0>
   1c804:	011787b3          	add	a5,a5,a7
   1c808:	0117e663          	bltu	a5,a7,1c814 <__umoddi3+0x1a0>
   1c80c:	00b7f463          	bleu	a1,a5,1c814 <__umoddi3+0x1a0>
   1c810:	011787b3          	add	a5,a5,a7
   1c814:	40b787b3          	sub	a5,a5,a1
   1c818:	f31ff06f          	j	1c748 <__umoddi3+0xd4>
   1c81c:	01000637          	lui	a2,0x1000
   1c820:	01000713          	li	a4,16
   1c824:	f6c8e2e3          	bltu	a7,a2,1c788 <__umoddi3+0x114>
   1c828:	01800713          	li	a4,24
   1c82c:	f5dff06f          	j	1c788 <__umoddi3+0x114>
   1c830:	006898b3          	sll	a7,a7,t1
   1c834:	01c5d733          	srl	a4,a1,t3
   1c838:	006517b3          	sll	a5,a0,t1
   1c83c:	01c55e33          	srl	t3,a0,t3
   1c840:	0108d513          	srli	a0,a7,0x10
   1c844:	02a776b3          	remu	a3,a4,a0
   1c848:	006595b3          	sll	a1,a1,t1
   1c84c:	00be6e33          	or	t3,t3,a1
   1c850:	01089593          	slli	a1,a7,0x10
   1c854:	0105d593          	srli	a1,a1,0x10
   1c858:	010e5613          	srli	a2,t3,0x10
   1c85c:	02a75733          	divu	a4,a4,a0
   1c860:	01069693          	slli	a3,a3,0x10
   1c864:	00c6e6b3          	or	a3,a3,a2
   1c868:	02e58733          	mul	a4,a1,a4
   1c86c:	00e6fa63          	bleu	a4,a3,1c880 <__umoddi3+0x20c>
   1c870:	011686b3          	add	a3,a3,a7
   1c874:	0116e663          	bltu	a3,a7,1c880 <__umoddi3+0x20c>
   1c878:	00e6f463          	bleu	a4,a3,1c880 <__umoddi3+0x20c>
   1c87c:	011686b3          	add	a3,a3,a7
   1c880:	40e68633          	sub	a2,a3,a4
   1c884:	02a676b3          	remu	a3,a2,a0
   1c888:	010e1e13          	slli	t3,t3,0x10
   1c88c:	010e5e13          	srli	t3,t3,0x10
   1c890:	02a65633          	divu	a2,a2,a0
   1c894:	01069693          	slli	a3,a3,0x10
   1c898:	02c58633          	mul	a2,a1,a2
   1c89c:	01c6e5b3          	or	a1,a3,t3
   1c8a0:	00c5fa63          	bleu	a2,a1,1c8b4 <__umoddi3+0x240>
   1c8a4:	011585b3          	add	a1,a1,a7
   1c8a8:	0115e663          	bltu	a1,a7,1c8b4 <__umoddi3+0x240>
   1c8ac:	00c5f463          	bleu	a2,a1,1c8b4 <__umoddi3+0x240>
   1c8b0:	011585b3          	add	a1,a1,a7
   1c8b4:	40c585b3          	sub	a1,a1,a2
   1c8b8:	ef1ff06f          	j	1c7a8 <__umoddi3+0x134>
   1c8bc:	e8d5eae3          	bltu	a1,a3,1c750 <__umoddi3+0xdc>
   1c8c0:	00010737          	lui	a4,0x10
   1c8c4:	04e6fc63          	bleu	a4,a3,1c91c <__umoddi3+0x2a8>
   1c8c8:	0ff00e93          	li	t4,255
   1c8cc:	00deb733          	sltu	a4,t4,a3
   1c8d0:	00371713          	slli	a4,a4,0x3
   1c8d4:	00021337          	lui	t1,0x21
   1c8d8:	00e6d8b3          	srl	a7,a3,a4
   1c8dc:	49430313          	addi	t1,t1,1172 # 21494 <__clz_tab>
   1c8e0:	006888b3          	add	a7,a7,t1
   1c8e4:	0008ce83          	lbu	t4,0(a7) # 1000000 <__global_pointer$+0xfdce58>
   1c8e8:	02000e13          	li	t3,32
   1c8ec:	00ee8eb3          	add	t4,t4,a4
   1c8f0:	41de0e33          	sub	t3,t3,t4
   1c8f4:	020e1e63          	bnez	t3,1c930 <__umoddi3+0x2bc>
   1c8f8:	00b6e463          	bltu	a3,a1,1c900 <__umoddi3+0x28c>
   1c8fc:	00c56a63          	bltu	a0,a2,1c910 <__umoddi3+0x29c>
   1c900:	40c507b3          	sub	a5,a0,a2
   1c904:	40d585b3          	sub	a1,a1,a3
   1c908:	00f53533          	sltu	a0,a0,a5
   1c90c:	40a58833          	sub	a6,a1,a0
   1c910:	00078513          	mv	a0,a5
   1c914:	00080593          	mv	a1,a6
   1c918:	e39ff06f          	j	1c750 <__umoddi3+0xdc>
   1c91c:	010008b7          	lui	a7,0x1000
   1c920:	01000713          	li	a4,16
   1c924:	fb16e8e3          	bltu	a3,a7,1c8d4 <__umoddi3+0x260>
   1c928:	01800713          	li	a4,24
   1c92c:	fa9ff06f          	j	1c8d4 <__umoddi3+0x260>
   1c930:	01d65733          	srl	a4,a2,t4
   1c934:	01c696b3          	sll	a3,a3,t3
   1c938:	00d766b3          	or	a3,a4,a3
   1c93c:	01d557b3          	srl	a5,a0,t4
   1c940:	01d5d733          	srl	a4,a1,t4
   1c944:	01c595b3          	sll	a1,a1,t3
   1c948:	00b7e7b3          	or	a5,a5,a1
   1c94c:	0106d593          	srli	a1,a3,0x10
   1c950:	02b77333          	remu	t1,a4,a1
   1c954:	01069f13          	slli	t5,a3,0x10
   1c958:	010f5f13          	srli	t5,t5,0x10
   1c95c:	0107d893          	srli	a7,a5,0x10
   1c960:	01c61633          	sll	a2,a2,t3
   1c964:	01c51533          	sll	a0,a0,t3
   1c968:	02b75733          	divu	a4,a4,a1
   1c96c:	01031313          	slli	t1,t1,0x10
   1c970:	011368b3          	or	a7,t1,a7
   1c974:	02ef0833          	mul	a6,t5,a4
   1c978:	00070313          	mv	t1,a4
   1c97c:	0108fe63          	bleu	a6,a7,1c998 <__umoddi3+0x324>
   1c980:	00d888b3          	add	a7,a7,a3
   1c984:	fff70313          	addi	t1,a4,-1 # ffff <_start-0x75>
   1c988:	00d8e863          	bltu	a7,a3,1c998 <__umoddi3+0x324>
   1c98c:	0108f663          	bleu	a6,a7,1c998 <__umoddi3+0x324>
   1c990:	ffe70313          	addi	t1,a4,-2
   1c994:	00d888b3          	add	a7,a7,a3
   1c998:	410888b3          	sub	a7,a7,a6
   1c99c:	02b8ffb3          	remu	t6,a7,a1
   1c9a0:	02b8d8b3          	divu	a7,a7,a1
   1c9a4:	010f9f93          	slli	t6,t6,0x10
   1c9a8:	031f05b3          	mul	a1,t5,a7
   1c9ac:	01079f13          	slli	t5,a5,0x10
   1c9b0:	010f5f13          	srli	t5,t5,0x10
   1c9b4:	01efef33          	or	t5,t6,t5
   1c9b8:	00088713          	mv	a4,a7
   1c9bc:	00bf7e63          	bleu	a1,t5,1c9d8 <__umoddi3+0x364>
   1c9c0:	00df0f33          	add	t5,t5,a3
   1c9c4:	fff88713          	addi	a4,a7,-1 # ffffff <__global_pointer$+0xfdce57>
   1c9c8:	00df6863          	bltu	t5,a3,1c9d8 <__umoddi3+0x364>
   1c9cc:	00bf7663          	bleu	a1,t5,1c9d8 <__umoddi3+0x364>
   1c9d0:	ffe88713          	addi	a4,a7,-2
   1c9d4:	00df0f33          	add	t5,t5,a3
   1c9d8:	01031313          	slli	t1,t1,0x10
   1c9dc:	000108b7          	lui	a7,0x10
   1c9e0:	00e36333          	or	t1,t1,a4
   1c9e4:	fff88793          	addi	a5,a7,-1 # ffff <_start-0x75>
   1c9e8:	01065813          	srli	a6,a2,0x10
   1c9ec:	40bf0f33          	sub	t5,t5,a1
   1c9f0:	00f375b3          	and	a1,t1,a5
   1c9f4:	01035313          	srli	t1,t1,0x10
   1c9f8:	00f677b3          	and	a5,a2,a5
   1c9fc:	02f58733          	mul	a4,a1,a5
   1ca00:	02f307b3          	mul	a5,t1,a5
   1ca04:	030585b3          	mul	a1,a1,a6
   1ca08:	03030333          	mul	t1,t1,a6
   1ca0c:	00f585b3          	add	a1,a1,a5
   1ca10:	01075813          	srli	a6,a4,0x10
   1ca14:	00b80833          	add	a6,a6,a1
   1ca18:	00f87463          	bleu	a5,a6,1ca20 <__umoddi3+0x3ac>
   1ca1c:	01130333          	add	t1,t1,a7
   1ca20:	000107b7          	lui	a5,0x10
   1ca24:	fff78793          	addi	a5,a5,-1 # ffff <_start-0x75>
   1ca28:	01085593          	srli	a1,a6,0x10
   1ca2c:	00f87833          	and	a6,a6,a5
   1ca30:	01081813          	slli	a6,a6,0x10
   1ca34:	00f77733          	and	a4,a4,a5
   1ca38:	006585b3          	add	a1,a1,t1
   1ca3c:	00e80733          	add	a4,a6,a4
   1ca40:	00bf6663          	bltu	t5,a1,1ca4c <__umoddi3+0x3d8>
   1ca44:	00bf1e63          	bne	t5,a1,1ca60 <__umoddi3+0x3ec>
   1ca48:	00e57c63          	bleu	a4,a0,1ca60 <__umoddi3+0x3ec>
   1ca4c:	40c70633          	sub	a2,a4,a2
   1ca50:	00c73733          	sltu	a4,a4,a2
   1ca54:	40d585b3          	sub	a1,a1,a3
   1ca58:	40e585b3          	sub	a1,a1,a4
   1ca5c:	00060713          	mv	a4,a2
   1ca60:	40e50733          	sub	a4,a0,a4
   1ca64:	00e53533          	sltu	a0,a0,a4
   1ca68:	40bf05b3          	sub	a1,t5,a1
   1ca6c:	40a585b3          	sub	a1,a1,a0
   1ca70:	01d597b3          	sll	a5,a1,t4
   1ca74:	01c75733          	srl	a4,a4,t3
   1ca78:	00e7e533          	or	a0,a5,a4
   1ca7c:	01c5d5b3          	srl	a1,a1,t3
   1ca80:	cd1ff06f          	j	1c750 <__umoddi3+0xdc>

0001ca84 <__divdf3>:
   1ca84:	fd010113          	addi	sp,sp,-48
   1ca88:	02812423          	sw	s0,40(sp)
   1ca8c:	02912223          	sw	s1,36(sp)
   1ca90:	01612823          	sw	s6,16(sp)
   1ca94:	00050413          	mv	s0,a0
   1ca98:	00050b13          	mv	s6,a0
   1ca9c:	001004b7          	lui	s1,0x100
   1caa0:	0145d513          	srli	a0,a1,0x14
   1caa4:	03212023          	sw	s2,32(sp)
   1caa8:	01312e23          	sw	s3,28(sp)
   1caac:	01712623          	sw	s7,12(sp)
   1cab0:	fff48493          	addi	s1,s1,-1 # fffff <__global_pointer$+0xdce57>
   1cab4:	02112623          	sw	ra,44(sp)
   1cab8:	01412c23          	sw	s4,24(sp)
   1cabc:	01512a23          	sw	s5,20(sp)
   1cac0:	7ff57513          	andi	a0,a0,2047
   1cac4:	00060b93          	mv	s7,a2
   1cac8:	00068993          	mv	s3,a3
   1cacc:	00b4f4b3          	and	s1,s1,a1
   1cad0:	01f5d913          	srli	s2,a1,0x1f
   1cad4:	0a050463          	beqz	a0,1cb7c <__divdf3+0xf8>
   1cad8:	7ff00793          	li	a5,2047
   1cadc:	10f50463          	beq	a0,a5,1cbe4 <__divdf3+0x160>
   1cae0:	00349493          	slli	s1,s1,0x3
   1cae4:	008006b7          	lui	a3,0x800
   1cae8:	00d4e4b3          	or	s1,s1,a3
   1caec:	01db5a93          	srli	s5,s6,0x1d
   1caf0:	009aeab3          	or	s5,s5,s1
   1caf4:	003b1413          	slli	s0,s6,0x3
   1caf8:	c0150a13          	addi	s4,a0,-1023
   1cafc:	00000b13          	li	s6,0
   1cb00:	0149d513          	srli	a0,s3,0x14
   1cb04:	001004b7          	lui	s1,0x100
   1cb08:	fff48493          	addi	s1,s1,-1 # fffff <__global_pointer$+0xdce57>
   1cb0c:	7ff57513          	andi	a0,a0,2047
   1cb10:	0134f4b3          	and	s1,s1,s3
   1cb14:	000b8f93          	mv	t6,s7
   1cb18:	01f9d993          	srli	s3,s3,0x1f
   1cb1c:	10050063          	beqz	a0,1cc1c <__divdf3+0x198>
   1cb20:	7ff00793          	li	a5,2047
   1cb24:	16f50063          	beq	a0,a5,1cc84 <__divdf3+0x200>
   1cb28:	008007b7          	lui	a5,0x800
   1cb2c:	00349493          	slli	s1,s1,0x3
   1cb30:	00f4e4b3          	or	s1,s1,a5
   1cb34:	01dbd793          	srli	a5,s7,0x1d
   1cb38:	0097e7b3          	or	a5,a5,s1
   1cb3c:	003b9f93          	slli	t6,s7,0x3
   1cb40:	c0150513          	addi	a0,a0,-1023
   1cb44:	00000713          	li	a4,0
   1cb48:	002b1693          	slli	a3,s6,0x2
   1cb4c:	00e6e6b3          	or	a3,a3,a4
   1cb50:	fff68693          	addi	a3,a3,-1 # 7fffff <__global_pointer$+0x7dce57>
   1cb54:	00e00593          	li	a1,14
   1cb58:	01394633          	xor	a2,s2,s3
   1cb5c:	40aa0533          	sub	a0,s4,a0
   1cb60:	14d5ee63          	bltu	a1,a3,1ccbc <__divdf3+0x238>
   1cb64:	000215b7          	lui	a1,0x21
   1cb68:	00269693          	slli	a3,a3,0x2
   1cb6c:	3e058593          	addi	a1,a1,992 # 213e0 <zeroes.4367+0x10>
   1cb70:	00b686b3          	add	a3,a3,a1
   1cb74:	0006a683          	lw	a3,0(a3)
   1cb78:	00068067          	jr	a3
   1cb7c:	0164eab3          	or	s5,s1,s6
   1cb80:	060a8e63          	beqz	s5,1cbfc <__divdf3+0x178>
   1cb84:	04048063          	beqz	s1,1cbc4 <__divdf3+0x140>
   1cb88:	00048513          	mv	a0,s1
   1cb8c:	495030ef          	jal	ra,20820 <__clzsi2>
   1cb90:	ff550793          	addi	a5,a0,-11
   1cb94:	01c00713          	li	a4,28
   1cb98:	02f74e63          	blt	a4,a5,1cbd4 <__divdf3+0x150>
   1cb9c:	01d00a93          	li	s5,29
   1cba0:	ff850413          	addi	s0,a0,-8
   1cba4:	40fa8ab3          	sub	s5,s5,a5
   1cba8:	008494b3          	sll	s1,s1,s0
   1cbac:	015b5ab3          	srl	s5,s6,s5
   1cbb0:	009aeab3          	or	s5,s5,s1
   1cbb4:	008b1433          	sll	s0,s6,s0
   1cbb8:	c0d00a13          	li	s4,-1011
   1cbbc:	40aa0a33          	sub	s4,s4,a0
   1cbc0:	f3dff06f          	j	1cafc <__divdf3+0x78>
   1cbc4:	000b0513          	mv	a0,s6
   1cbc8:	459030ef          	jal	ra,20820 <__clzsi2>
   1cbcc:	02050513          	addi	a0,a0,32
   1cbd0:	fc1ff06f          	j	1cb90 <__divdf3+0x10c>
   1cbd4:	fd850493          	addi	s1,a0,-40
   1cbd8:	009b1ab3          	sll	s5,s6,s1
   1cbdc:	00000413          	li	s0,0
   1cbe0:	fd9ff06f          	j	1cbb8 <__divdf3+0x134>
   1cbe4:	0164eab3          	or	s5,s1,s6
   1cbe8:	020a8263          	beqz	s5,1cc0c <__divdf3+0x188>
   1cbec:	00048a93          	mv	s5,s1
   1cbf0:	7ff00a13          	li	s4,2047
   1cbf4:	00300b13          	li	s6,3
   1cbf8:	f09ff06f          	j	1cb00 <__divdf3+0x7c>
   1cbfc:	00000413          	li	s0,0
   1cc00:	00000a13          	li	s4,0
   1cc04:	00100b13          	li	s6,1
   1cc08:	ef9ff06f          	j	1cb00 <__divdf3+0x7c>
   1cc0c:	00000413          	li	s0,0
   1cc10:	7ff00a13          	li	s4,2047
   1cc14:	00200b13          	li	s6,2
   1cc18:	ee9ff06f          	j	1cb00 <__divdf3+0x7c>
   1cc1c:	0174e7b3          	or	a5,s1,s7
   1cc20:	06078e63          	beqz	a5,1cc9c <__divdf3+0x218>
   1cc24:	04048063          	beqz	s1,1cc64 <__divdf3+0x1e0>
   1cc28:	00048513          	mv	a0,s1
   1cc2c:	3f5030ef          	jal	ra,20820 <__clzsi2>
   1cc30:	ff550713          	addi	a4,a0,-11
   1cc34:	01c00793          	li	a5,28
   1cc38:	02e7ce63          	blt	a5,a4,1cc74 <__divdf3+0x1f0>
   1cc3c:	01d00793          	li	a5,29
   1cc40:	ff850f93          	addi	t6,a0,-8
   1cc44:	40e787b3          	sub	a5,a5,a4
   1cc48:	01f494b3          	sll	s1,s1,t6
   1cc4c:	00fbd7b3          	srl	a5,s7,a5
   1cc50:	0097e7b3          	or	a5,a5,s1
   1cc54:	01fb9fb3          	sll	t6,s7,t6
   1cc58:	c0d00613          	li	a2,-1011
   1cc5c:	40a60533          	sub	a0,a2,a0
   1cc60:	ee5ff06f          	j	1cb44 <__divdf3+0xc0>
   1cc64:	000b8513          	mv	a0,s7
   1cc68:	3b9030ef          	jal	ra,20820 <__clzsi2>
   1cc6c:	02050513          	addi	a0,a0,32
   1cc70:	fc1ff06f          	j	1cc30 <__divdf3+0x1ac>
   1cc74:	fd850793          	addi	a5,a0,-40
   1cc78:	00fb97b3          	sll	a5,s7,a5
   1cc7c:	00000f93          	li	t6,0
   1cc80:	fd9ff06f          	j	1cc58 <__divdf3+0x1d4>
   1cc84:	0174e7b3          	or	a5,s1,s7
   1cc88:	02078263          	beqz	a5,1ccac <__divdf3+0x228>
   1cc8c:	00048793          	mv	a5,s1
   1cc90:	7ff00513          	li	a0,2047
   1cc94:	00300713          	li	a4,3
   1cc98:	eb1ff06f          	j	1cb48 <__divdf3+0xc4>
   1cc9c:	00000f93          	li	t6,0
   1cca0:	00000513          	li	a0,0
   1cca4:	00100713          	li	a4,1
   1cca8:	ea1ff06f          	j	1cb48 <__divdf3+0xc4>
   1ccac:	00000f93          	li	t6,0
   1ccb0:	7ff00513          	li	a0,2047
   1ccb4:	00200713          	li	a4,2
   1ccb8:	e91ff06f          	j	1cb48 <__divdf3+0xc4>
   1ccbc:	0157e663          	bltu	a5,s5,1ccc8 <__divdf3+0x244>
   1ccc0:	36fa9063          	bne	s5,a5,1d020 <__divdf3+0x59c>
   1ccc4:	35f46e63          	bltu	s0,t6,1d020 <__divdf3+0x59c>
   1ccc8:	01fa9593          	slli	a1,s5,0x1f
   1cccc:	00145693          	srli	a3,s0,0x1
   1ccd0:	01f41713          	slli	a4,s0,0x1f
   1ccd4:	001ada93          	srli	s5,s5,0x1
   1ccd8:	00d5e433          	or	s0,a1,a3
   1ccdc:	00879793          	slli	a5,a5,0x8
   1cce0:	018fd813          	srli	a6,t6,0x18
   1cce4:	00f86833          	or	a6,a6,a5
   1cce8:	01085e93          	srli	t4,a6,0x10
   1ccec:	03dad5b3          	divu	a1,s5,t4
   1ccf0:	01081e13          	slli	t3,a6,0x10
   1ccf4:	010e5e13          	srli	t3,t3,0x10
   1ccf8:	01045693          	srli	a3,s0,0x10
   1ccfc:	008f9893          	slli	a7,t6,0x8
   1cd00:	03daf4b3          	remu	s1,s5,t4
   1cd04:	00058f93          	mv	t6,a1
   1cd08:	02be07b3          	mul	a5,t3,a1
   1cd0c:	01049493          	slli	s1,s1,0x10
   1cd10:	0096e6b3          	or	a3,a3,s1
   1cd14:	00f6fe63          	bleu	a5,a3,1cd30 <__divdf3+0x2ac>
   1cd18:	010686b3          	add	a3,a3,a6
   1cd1c:	fff58f93          	addi	t6,a1,-1
   1cd20:	0106e863          	bltu	a3,a6,1cd30 <__divdf3+0x2ac>
   1cd24:	00f6f663          	bleu	a5,a3,1cd30 <__divdf3+0x2ac>
   1cd28:	ffe58f93          	addi	t6,a1,-2
   1cd2c:	010686b3          	add	a3,a3,a6
   1cd30:	40f686b3          	sub	a3,a3,a5
   1cd34:	03d6d333          	divu	t1,a3,t4
   1cd38:	01041413          	slli	s0,s0,0x10
   1cd3c:	01045413          	srli	s0,s0,0x10
   1cd40:	03d6f6b3          	remu	a3,a3,t4
   1cd44:	00030793          	mv	a5,t1
   1cd48:	026e05b3          	mul	a1,t3,t1
   1cd4c:	01069693          	slli	a3,a3,0x10
   1cd50:	00d466b3          	or	a3,s0,a3
   1cd54:	00b6fe63          	bleu	a1,a3,1cd70 <__divdf3+0x2ec>
   1cd58:	010686b3          	add	a3,a3,a6
   1cd5c:	fff30793          	addi	a5,t1,-1
   1cd60:	0106e863          	bltu	a3,a6,1cd70 <__divdf3+0x2ec>
   1cd64:	00b6f663          	bleu	a1,a3,1cd70 <__divdf3+0x2ec>
   1cd68:	ffe30793          	addi	a5,t1,-2
   1cd6c:	010686b3          	add	a3,a3,a6
   1cd70:	40b68433          	sub	s0,a3,a1
   1cd74:	010f9f93          	slli	t6,t6,0x10
   1cd78:	000105b7          	lui	a1,0x10
   1cd7c:	00ffefb3          	or	t6,t6,a5
   1cd80:	fff58313          	addi	t1,a1,-1 # ffff <_start-0x75>
   1cd84:	010fd693          	srli	a3,t6,0x10
   1cd88:	006ff7b3          	and	a5,t6,t1
   1cd8c:	0108df13          	srli	t5,a7,0x10
   1cd90:	0068f333          	and	t1,a7,t1
   1cd94:	026783b3          	mul	t2,a5,t1
   1cd98:	026684b3          	mul	s1,a3,t1
   1cd9c:	02ff07b3          	mul	a5,t5,a5
   1cda0:	03e682b3          	mul	t0,a3,t5
   1cda4:	009786b3          	add	a3,a5,s1
   1cda8:	0103d793          	srli	a5,t2,0x10
   1cdac:	00d787b3          	add	a5,a5,a3
   1cdb0:	0097f463          	bleu	s1,a5,1cdb8 <__divdf3+0x334>
   1cdb4:	00b282b3          	add	t0,t0,a1
   1cdb8:	0107d693          	srli	a3,a5,0x10
   1cdbc:	005686b3          	add	a3,a3,t0
   1cdc0:	000102b7          	lui	t0,0x10
   1cdc4:	fff28293          	addi	t0,t0,-1 # ffff <_start-0x75>
   1cdc8:	0057f5b3          	and	a1,a5,t0
   1cdcc:	01059593          	slli	a1,a1,0x10
   1cdd0:	0053f3b3          	and	t2,t2,t0
   1cdd4:	007585b3          	add	a1,a1,t2
   1cdd8:	00d46863          	bltu	s0,a3,1cde8 <__divdf3+0x364>
   1cddc:	000f8793          	mv	a5,t6
   1cde0:	04d41463          	bne	s0,a3,1ce28 <__divdf3+0x3a4>
   1cde4:	04b77263          	bleu	a1,a4,1ce28 <__divdf3+0x3a4>
   1cde8:	01170733          	add	a4,a4,a7
   1cdec:	011732b3          	sltu	t0,a4,a7
   1cdf0:	010282b3          	add	t0,t0,a6
   1cdf4:	00540433          	add	s0,s0,t0
   1cdf8:	ffff8793          	addi	a5,t6,-1
   1cdfc:	00886663          	bltu	a6,s0,1ce08 <__divdf3+0x384>
   1ce00:	02881463          	bne	a6,s0,1ce28 <__divdf3+0x3a4>
   1ce04:	03176263          	bltu	a4,a7,1ce28 <__divdf3+0x3a4>
   1ce08:	00d46663          	bltu	s0,a3,1ce14 <__divdf3+0x390>
   1ce0c:	00869e63          	bne	a3,s0,1ce28 <__divdf3+0x3a4>
   1ce10:	00b77c63          	bleu	a1,a4,1ce28 <__divdf3+0x3a4>
   1ce14:	01170733          	add	a4,a4,a7
   1ce18:	ffef8793          	addi	a5,t6,-2
   1ce1c:	01173fb3          	sltu	t6,a4,a7
   1ce20:	010f8fb3          	add	t6,t6,a6
   1ce24:	01f40433          	add	s0,s0,t6
   1ce28:	40b705b3          	sub	a1,a4,a1
   1ce2c:	40d40433          	sub	s0,s0,a3
   1ce30:	00b73733          	sltu	a4,a4,a1
   1ce34:	40e40433          	sub	s0,s0,a4
   1ce38:	fff00f93          	li	t6,-1
   1ce3c:	12880463          	beq	a6,s0,1cf64 <__divdf3+0x4e0>
   1ce40:	03d452b3          	divu	t0,s0,t4
   1ce44:	0105d693          	srli	a3,a1,0x10
   1ce48:	03d47433          	remu	s0,s0,t4
   1ce4c:	00028713          	mv	a4,t0
   1ce50:	025e0fb3          	mul	t6,t3,t0
   1ce54:	01041413          	slli	s0,s0,0x10
   1ce58:	0086e433          	or	s0,a3,s0
   1ce5c:	01f47e63          	bleu	t6,s0,1ce78 <__divdf3+0x3f4>
   1ce60:	01040433          	add	s0,s0,a6
   1ce64:	fff28713          	addi	a4,t0,-1
   1ce68:	01046863          	bltu	s0,a6,1ce78 <__divdf3+0x3f4>
   1ce6c:	01f47663          	bleu	t6,s0,1ce78 <__divdf3+0x3f4>
   1ce70:	ffe28713          	addi	a4,t0,-2
   1ce74:	01040433          	add	s0,s0,a6
   1ce78:	41f40433          	sub	s0,s0,t6
   1ce7c:	03d456b3          	divu	a3,s0,t4
   1ce80:	01059593          	slli	a1,a1,0x10
   1ce84:	0105d593          	srli	a1,a1,0x10
   1ce88:	03d47433          	remu	s0,s0,t4
   1ce8c:	02de0e33          	mul	t3,t3,a3
   1ce90:	01041413          	slli	s0,s0,0x10
   1ce94:	0085e433          	or	s0,a1,s0
   1ce98:	00068593          	mv	a1,a3
   1ce9c:	01c47e63          	bleu	t3,s0,1ceb8 <__divdf3+0x434>
   1cea0:	01040433          	add	s0,s0,a6
   1cea4:	fff68593          	addi	a1,a3,-1
   1cea8:	01046863          	bltu	s0,a6,1ceb8 <__divdf3+0x434>
   1ceac:	01c47663          	bleu	t3,s0,1ceb8 <__divdf3+0x434>
   1ceb0:	ffe68593          	addi	a1,a3,-2
   1ceb4:	01040433          	add	s0,s0,a6
   1ceb8:	01071713          	slli	a4,a4,0x10
   1cebc:	00b765b3          	or	a1,a4,a1
   1cec0:	01059713          	slli	a4,a1,0x10
   1cec4:	01075713          	srli	a4,a4,0x10
   1cec8:	41c40433          	sub	s0,s0,t3
   1cecc:	0105de13          	srli	t3,a1,0x10
   1ced0:	02670eb3          	mul	t4,a4,t1
   1ced4:	026e0333          	mul	t1,t3,t1
   1ced8:	03cf0e33          	mul	t3,t5,t3
   1cedc:	02ef0f33          	mul	t5,t5,a4
   1cee0:	010ed713          	srli	a4,t4,0x10
   1cee4:	006f0f33          	add	t5,t5,t1
   1cee8:	01e70733          	add	a4,a4,t5
   1ceec:	00677663          	bleu	t1,a4,1cef8 <__divdf3+0x474>
   1cef0:	000106b7          	lui	a3,0x10
   1cef4:	00de0e33          	add	t3,t3,a3
   1cef8:	01075313          	srli	t1,a4,0x10
   1cefc:	01c30333          	add	t1,t1,t3
   1cf00:	00010e37          	lui	t3,0x10
   1cf04:	fffe0e13          	addi	t3,t3,-1 # ffff <_start-0x75>
   1cf08:	01c776b3          	and	a3,a4,t3
   1cf0c:	01069693          	slli	a3,a3,0x10
   1cf10:	01cefeb3          	and	t4,t4,t3
   1cf14:	01d686b3          	add	a3,a3,t4
   1cf18:	00646863          	bltu	s0,t1,1cf28 <__divdf3+0x4a4>
   1cf1c:	00058f93          	mv	t6,a1
   1cf20:	04641063          	bne	s0,t1,1cf60 <__divdf3+0x4dc>
   1cf24:	04068063          	beqz	a3,1cf64 <__divdf3+0x4e0>
   1cf28:	00880433          	add	s0,a6,s0
   1cf2c:	fff58f93          	addi	t6,a1,-1
   1cf30:	03046463          	bltu	s0,a6,1cf58 <__divdf3+0x4d4>
   1cf34:	00646663          	bltu	s0,t1,1cf40 <__divdf3+0x4bc>
   1cf38:	02641463          	bne	s0,t1,1cf60 <__divdf3+0x4dc>
   1cf3c:	02d8f063          	bleu	a3,a7,1cf5c <__divdf3+0x4d8>
   1cf40:	00189713          	slli	a4,a7,0x1
   1cf44:	011738b3          	sltu	a7,a4,a7
   1cf48:	01088833          	add	a6,a7,a6
   1cf4c:	ffe58f93          	addi	t6,a1,-2
   1cf50:	01040433          	add	s0,s0,a6
   1cf54:	00070893          	mv	a7,a4
   1cf58:	00641463          	bne	s0,t1,1cf60 <__divdf3+0x4dc>
   1cf5c:	01168463          	beq	a3,a7,1cf64 <__divdf3+0x4e0>
   1cf60:	001fef93          	ori	t6,t6,1
   1cf64:	3ff50693          	addi	a3,a0,1023
   1cf68:	10d05a63          	blez	a3,1d07c <__divdf3+0x5f8>
   1cf6c:	007ff713          	andi	a4,t6,7
   1cf70:	02070063          	beqz	a4,1cf90 <__divdf3+0x50c>
   1cf74:	00fff713          	andi	a4,t6,15
   1cf78:	00400593          	li	a1,4
   1cf7c:	00b70a63          	beq	a4,a1,1cf90 <__divdf3+0x50c>
   1cf80:	004f8593          	addi	a1,t6,4
   1cf84:	01f5bfb3          	sltu	t6,a1,t6
   1cf88:	01f787b3          	add	a5,a5,t6
   1cf8c:	00058f93          	mv	t6,a1
   1cf90:	00779713          	slli	a4,a5,0x7
   1cf94:	00075a63          	bgez	a4,1cfa8 <__divdf3+0x524>
   1cf98:	ff000737          	lui	a4,0xff000
   1cf9c:	fff70713          	addi	a4,a4,-1 # feffffff <__global_pointer$+0xfefdce57>
   1cfa0:	00e7f7b3          	and	a5,a5,a4
   1cfa4:	40050693          	addi	a3,a0,1024
   1cfa8:	7fe00713          	li	a4,2046
   1cfac:	18d74a63          	blt	a4,a3,1d140 <__divdf3+0x6bc>
   1cfb0:	01d79713          	slli	a4,a5,0x1d
   1cfb4:	003fdf93          	srli	t6,t6,0x3
   1cfb8:	01f76733          	or	a4,a4,t6
   1cfbc:	0037d793          	srli	a5,a5,0x3
   1cfc0:	001005b7          	lui	a1,0x100
   1cfc4:	fff58593          	addi	a1,a1,-1 # fffff <__global_pointer$+0xdce57>
   1cfc8:	00b7f7b3          	and	a5,a5,a1
   1cfcc:	801005b7          	lui	a1,0x80100
   1cfd0:	fff58593          	addi	a1,a1,-1 # 800fffff <__global_pointer$+0x800dce57>
   1cfd4:	7ff6f693          	andi	a3,a3,2047
   1cfd8:	01469693          	slli	a3,a3,0x14
   1cfdc:	00b7f7b3          	and	a5,a5,a1
   1cfe0:	02c12083          	lw	ra,44(sp)
   1cfe4:	02812403          	lw	s0,40(sp)
   1cfe8:	01f61613          	slli	a2,a2,0x1f
   1cfec:	00d7e7b3          	or	a5,a5,a3
   1cff0:	00c7e6b3          	or	a3,a5,a2
   1cff4:	02412483          	lw	s1,36(sp)
   1cff8:	02012903          	lw	s2,32(sp)
   1cffc:	01c12983          	lw	s3,28(sp)
   1d000:	01812a03          	lw	s4,24(sp)
   1d004:	01412a83          	lw	s5,20(sp)
   1d008:	01012b03          	lw	s6,16(sp)
   1d00c:	00c12b83          	lw	s7,12(sp)
   1d010:	00070513          	mv	a0,a4
   1d014:	00068593          	mv	a1,a3
   1d018:	03010113          	addi	sp,sp,48
   1d01c:	00008067          	ret
   1d020:	fff50513          	addi	a0,a0,-1
   1d024:	00000713          	li	a4,0
   1d028:	cb5ff06f          	j	1ccdc <__divdf3+0x258>
   1d02c:	00090613          	mv	a2,s2
   1d030:	000a8793          	mv	a5,s5
   1d034:	00040f93          	mv	t6,s0
   1d038:	000b0713          	mv	a4,s6
   1d03c:	00200693          	li	a3,2
   1d040:	10d70063          	beq	a4,a3,1d140 <__divdf3+0x6bc>
   1d044:	00300693          	li	a3,3
   1d048:	0ed70263          	beq	a4,a3,1d12c <__divdf3+0x6a8>
   1d04c:	00100693          	li	a3,1
   1d050:	f0d71ae3          	bne	a4,a3,1cf64 <__divdf3+0x4e0>
   1d054:	00000793          	li	a5,0
   1d058:	00000713          	li	a4,0
   1d05c:	0940006f          	j	1d0f0 <__divdf3+0x66c>
   1d060:	00098613          	mv	a2,s3
   1d064:	fd9ff06f          	j	1d03c <__divdf3+0x5b8>
   1d068:	000807b7          	lui	a5,0x80
   1d06c:	00000f93          	li	t6,0
   1d070:	00000613          	li	a2,0
   1d074:	00300713          	li	a4,3
   1d078:	fc5ff06f          	j	1d03c <__divdf3+0x5b8>
   1d07c:	00100593          	li	a1,1
   1d080:	40d585b3          	sub	a1,a1,a3
   1d084:	03800713          	li	a4,56
   1d088:	fcb746e3          	blt	a4,a1,1d054 <__divdf3+0x5d0>
   1d08c:	01f00713          	li	a4,31
   1d090:	06b74463          	blt	a4,a1,1d0f8 <__divdf3+0x674>
   1d094:	41e50513          	addi	a0,a0,1054
   1d098:	00a79733          	sll	a4,a5,a0
   1d09c:	00bfd6b3          	srl	a3,t6,a1
   1d0a0:	00af9533          	sll	a0,t6,a0
   1d0a4:	00d76733          	or	a4,a4,a3
   1d0a8:	00a03533          	snez	a0,a0
   1d0ac:	00a76733          	or	a4,a4,a0
   1d0b0:	00b7d7b3          	srl	a5,a5,a1
   1d0b4:	00777693          	andi	a3,a4,7
   1d0b8:	02068063          	beqz	a3,1d0d8 <__divdf3+0x654>
   1d0bc:	00f77693          	andi	a3,a4,15
   1d0c0:	00400593          	li	a1,4
   1d0c4:	00b68a63          	beq	a3,a1,1d0d8 <__divdf3+0x654>
   1d0c8:	00470693          	addi	a3,a4,4
   1d0cc:	00e6b733          	sltu	a4,a3,a4
   1d0d0:	00e787b3          	add	a5,a5,a4
   1d0d4:	00068713          	mv	a4,a3
   1d0d8:	00879693          	slli	a3,a5,0x8
   1d0dc:	0606ca63          	bltz	a3,1d150 <__divdf3+0x6cc>
   1d0e0:	01d79693          	slli	a3,a5,0x1d
   1d0e4:	00375713          	srli	a4,a4,0x3
   1d0e8:	00e6e733          	or	a4,a3,a4
   1d0ec:	0037d793          	srli	a5,a5,0x3
   1d0f0:	00000693          	li	a3,0
   1d0f4:	ecdff06f          	j	1cfc0 <__divdf3+0x53c>
   1d0f8:	fe100713          	li	a4,-31
   1d0fc:	40d70733          	sub	a4,a4,a3
   1d100:	02000813          	li	a6,32
   1d104:	00e7d733          	srl	a4,a5,a4
   1d108:	00000693          	li	a3,0
   1d10c:	01058663          	beq	a1,a6,1d118 <__divdf3+0x694>
   1d110:	43e50513          	addi	a0,a0,1086
   1d114:	00a796b3          	sll	a3,a5,a0
   1d118:	01f6e533          	or	a0,a3,t6
   1d11c:	00a03533          	snez	a0,a0
   1d120:	00a76733          	or	a4,a4,a0
   1d124:	00000793          	li	a5,0
   1d128:	f8dff06f          	j	1d0b4 <__divdf3+0x630>
   1d12c:	000807b7          	lui	a5,0x80
   1d130:	00000713          	li	a4,0
   1d134:	7ff00693          	li	a3,2047
   1d138:	00000613          	li	a2,0
   1d13c:	e85ff06f          	j	1cfc0 <__divdf3+0x53c>
   1d140:	00000793          	li	a5,0
   1d144:	00000713          	li	a4,0
   1d148:	7ff00693          	li	a3,2047
   1d14c:	e75ff06f          	j	1cfc0 <__divdf3+0x53c>
   1d150:	00000793          	li	a5,0
   1d154:	00000713          	li	a4,0
   1d158:	00100693          	li	a3,1
   1d15c:	e65ff06f          	j	1cfc0 <__divdf3+0x53c>

0001d160 <__muldf3>:
   1d160:	fd010113          	addi	sp,sp,-48
   1d164:	03212023          	sw	s2,32(sp)
   1d168:	01512a23          	sw	s5,20(sp)
   1d16c:	00100937          	lui	s2,0x100
   1d170:	0145da93          	srli	s5,a1,0x14
   1d174:	01312e23          	sw	s3,28(sp)
   1d178:	01412c23          	sw	s4,24(sp)
   1d17c:	01612823          	sw	s6,16(sp)
   1d180:	01712623          	sw	s7,12(sp)
   1d184:	fff90913          	addi	s2,s2,-1 # fffff <__global_pointer$+0xdce57>
   1d188:	02112623          	sw	ra,44(sp)
   1d18c:	02812423          	sw	s0,40(sp)
   1d190:	02912223          	sw	s1,36(sp)
   1d194:	7ffafa93          	andi	s5,s5,2047
   1d198:	00050b13          	mv	s6,a0
   1d19c:	00060b93          	mv	s7,a2
   1d1a0:	00068a13          	mv	s4,a3
   1d1a4:	00b97933          	and	s2,s2,a1
   1d1a8:	01f5d993          	srli	s3,a1,0x1f
   1d1ac:	0a0a8663          	beqz	s5,1d258 <__muldf3+0xf8>
   1d1b0:	7ff00793          	li	a5,2047
   1d1b4:	10fa8463          	beq	s5,a5,1d2bc <__muldf3+0x15c>
   1d1b8:	00800437          	lui	s0,0x800
   1d1bc:	00391913          	slli	s2,s2,0x3
   1d1c0:	00896933          	or	s2,s2,s0
   1d1c4:	01d55413          	srli	s0,a0,0x1d
   1d1c8:	01246433          	or	s0,s0,s2
   1d1cc:	00351493          	slli	s1,a0,0x3
   1d1d0:	c01a8a93          	addi	s5,s5,-1023
   1d1d4:	00000b13          	li	s6,0
   1d1d8:	014a5513          	srli	a0,s4,0x14
   1d1dc:	00100937          	lui	s2,0x100
   1d1e0:	fff90913          	addi	s2,s2,-1 # fffff <__global_pointer$+0xdce57>
   1d1e4:	7ff57513          	andi	a0,a0,2047
   1d1e8:	01497933          	and	s2,s2,s4
   1d1ec:	000b8713          	mv	a4,s7
   1d1f0:	01fa5a13          	srli	s4,s4,0x1f
   1d1f4:	10050263          	beqz	a0,1d2f8 <__muldf3+0x198>
   1d1f8:	7ff00793          	li	a5,2047
   1d1fc:	16f50263          	beq	a0,a5,1d360 <__muldf3+0x200>
   1d200:	008007b7          	lui	a5,0x800
   1d204:	00391913          	slli	s2,s2,0x3
   1d208:	00f96933          	or	s2,s2,a5
   1d20c:	01dbd793          	srli	a5,s7,0x1d
   1d210:	0127e7b3          	or	a5,a5,s2
   1d214:	003b9713          	slli	a4,s7,0x3
   1d218:	c0150513          	addi	a0,a0,-1023
   1d21c:	00000693          	li	a3,0
   1d220:	002b1593          	slli	a1,s6,0x2
   1d224:	00d5e5b3          	or	a1,a1,a3
   1d228:	00aa8533          	add	a0,s5,a0
   1d22c:	fff58593          	addi	a1,a1,-1
   1d230:	00e00893          	li	a7,14
   1d234:	0149c633          	xor	a2,s3,s4
   1d238:	00150813          	addi	a6,a0,1
   1d23c:	14b8ee63          	bltu	a7,a1,1d398 <__muldf3+0x238>
   1d240:	00021537          	lui	a0,0x21
   1d244:	00259593          	slli	a1,a1,0x2
   1d248:	41c50513          	addi	a0,a0,1052 # 2141c <zeroes.4367+0x4c>
   1d24c:	00a585b3          	add	a1,a1,a0
   1d250:	0005a583          	lw	a1,0(a1)
   1d254:	00058067          	jr	a1
   1d258:	00a96433          	or	s0,s2,a0
   1d25c:	06040e63          	beqz	s0,1d2d8 <__muldf3+0x178>
   1d260:	04090063          	beqz	s2,1d2a0 <__muldf3+0x140>
   1d264:	00090513          	mv	a0,s2
   1d268:	5b8030ef          	jal	ra,20820 <__clzsi2>
   1d26c:	ff550793          	addi	a5,a0,-11
   1d270:	01c00713          	li	a4,28
   1d274:	02f74c63          	blt	a4,a5,1d2ac <__muldf3+0x14c>
   1d278:	01d00413          	li	s0,29
   1d27c:	ff850493          	addi	s1,a0,-8
   1d280:	40f40433          	sub	s0,s0,a5
   1d284:	00991933          	sll	s2,s2,s1
   1d288:	008b5433          	srl	s0,s6,s0
   1d28c:	01246433          	or	s0,s0,s2
   1d290:	009b14b3          	sll	s1,s6,s1
   1d294:	c0d00a93          	li	s5,-1011
   1d298:	40aa8ab3          	sub	s5,s5,a0
   1d29c:	f39ff06f          	j	1d1d4 <__muldf3+0x74>
   1d2a0:	580030ef          	jal	ra,20820 <__clzsi2>
   1d2a4:	02050513          	addi	a0,a0,32
   1d2a8:	fc5ff06f          	j	1d26c <__muldf3+0x10c>
   1d2ac:	fd850413          	addi	s0,a0,-40
   1d2b0:	008b1433          	sll	s0,s6,s0
   1d2b4:	00000493          	li	s1,0
   1d2b8:	fddff06f          	j	1d294 <__muldf3+0x134>
   1d2bc:	00a96433          	or	s0,s2,a0
   1d2c0:	02040463          	beqz	s0,1d2e8 <__muldf3+0x188>
   1d2c4:	00050493          	mv	s1,a0
   1d2c8:	00090413          	mv	s0,s2
   1d2cc:	7ff00a93          	li	s5,2047
   1d2d0:	00300b13          	li	s6,3
   1d2d4:	f05ff06f          	j	1d1d8 <__muldf3+0x78>
   1d2d8:	00000493          	li	s1,0
   1d2dc:	00000a93          	li	s5,0
   1d2e0:	00100b13          	li	s6,1
   1d2e4:	ef5ff06f          	j	1d1d8 <__muldf3+0x78>
   1d2e8:	00000493          	li	s1,0
   1d2ec:	7ff00a93          	li	s5,2047
   1d2f0:	00200b13          	li	s6,2
   1d2f4:	ee5ff06f          	j	1d1d8 <__muldf3+0x78>
   1d2f8:	017967b3          	or	a5,s2,s7
   1d2fc:	06078e63          	beqz	a5,1d378 <__muldf3+0x218>
   1d300:	04090063          	beqz	s2,1d340 <__muldf3+0x1e0>
   1d304:	00090513          	mv	a0,s2
   1d308:	518030ef          	jal	ra,20820 <__clzsi2>
   1d30c:	ff550693          	addi	a3,a0,-11
   1d310:	01c00793          	li	a5,28
   1d314:	02d7ce63          	blt	a5,a3,1d350 <__muldf3+0x1f0>
   1d318:	01d00793          	li	a5,29
   1d31c:	ff850713          	addi	a4,a0,-8
   1d320:	40d787b3          	sub	a5,a5,a3
   1d324:	00e91933          	sll	s2,s2,a4
   1d328:	00fbd7b3          	srl	a5,s7,a5
   1d32c:	0127e7b3          	or	a5,a5,s2
   1d330:	00eb9733          	sll	a4,s7,a4
   1d334:	c0d00693          	li	a3,-1011
   1d338:	40a68533          	sub	a0,a3,a0
   1d33c:	ee1ff06f          	j	1d21c <__muldf3+0xbc>
   1d340:	000b8513          	mv	a0,s7
   1d344:	4dc030ef          	jal	ra,20820 <__clzsi2>
   1d348:	02050513          	addi	a0,a0,32
   1d34c:	fc1ff06f          	j	1d30c <__muldf3+0x1ac>
   1d350:	fd850793          	addi	a5,a0,-40
   1d354:	00fb97b3          	sll	a5,s7,a5
   1d358:	00000713          	li	a4,0
   1d35c:	fd9ff06f          	j	1d334 <__muldf3+0x1d4>
   1d360:	017967b3          	or	a5,s2,s7
   1d364:	02078263          	beqz	a5,1d388 <__muldf3+0x228>
   1d368:	00090793          	mv	a5,s2
   1d36c:	7ff00513          	li	a0,2047
   1d370:	00300693          	li	a3,3
   1d374:	eadff06f          	j	1d220 <__muldf3+0xc0>
   1d378:	00000713          	li	a4,0
   1d37c:	00000513          	li	a0,0
   1d380:	00100693          	li	a3,1
   1d384:	e9dff06f          	j	1d220 <__muldf3+0xc0>
   1d388:	00000713          	li	a4,0
   1d38c:	7ff00513          	li	a0,2047
   1d390:	00200693          	li	a3,2
   1d394:	e8dff06f          	j	1d220 <__muldf3+0xc0>
   1d398:	00010fb7          	lui	t6,0x10
   1d39c:	ffff8f13          	addi	t5,t6,-1 # ffff <_start-0x75>
   1d3a0:	0104d693          	srli	a3,s1,0x10
   1d3a4:	01075313          	srli	t1,a4,0x10
   1d3a8:	01e4f4b3          	and	s1,s1,t5
   1d3ac:	01e77733          	and	a4,a4,t5
   1d3b0:	029308b3          	mul	a7,t1,s1
   1d3b4:	029705b3          	mul	a1,a4,s1
   1d3b8:	02e682b3          	mul	t0,a3,a4
   1d3bc:	00588e33          	add	t3,a7,t0
   1d3c0:	0105d893          	srli	a7,a1,0x10
   1d3c4:	01c888b3          	add	a7,a7,t3
   1d3c8:	02668eb3          	mul	t4,a3,t1
   1d3cc:	0058f463          	bleu	t0,a7,1d3d4 <__muldf3+0x274>
   1d3d0:	01fe8eb3          	add	t4,t4,t6
   1d3d4:	0108d913          	srli	s2,a7,0x10
   1d3d8:	01e8f8b3          	and	a7,a7,t5
   1d3dc:	0107df93          	srli	t6,a5,0x10
   1d3e0:	01e5f5b3          	and	a1,a1,t5
   1d3e4:	01e7f3b3          	and	t2,a5,t5
   1d3e8:	01089893          	slli	a7,a7,0x10
   1d3ec:	00b888b3          	add	a7,a7,a1
   1d3f0:	027687b3          	mul	a5,a3,t2
   1d3f4:	029385b3          	mul	a1,t2,s1
   1d3f8:	029f84b3          	mul	s1,t6,s1
   1d3fc:	00f48e33          	add	t3,s1,a5
   1d400:	0105d493          	srli	s1,a1,0x10
   1d404:	01c484b3          	add	s1,s1,t3
   1d408:	03f686b3          	mul	a3,a3,t6
   1d40c:	00f4f663          	bleu	a5,s1,1d418 <__muldf3+0x2b8>
   1d410:	000107b7          	lui	a5,0x10
   1d414:	00f686b3          	add	a3,a3,a5
   1d418:	0104df13          	srli	t5,s1,0x10
   1d41c:	000109b7          	lui	s3,0x10
   1d420:	00df0f33          	add	t5,t5,a3
   1d424:	fff98693          	addi	a3,s3,-1 # ffff <_start-0x75>
   1d428:	00d4f4b3          	and	s1,s1,a3
   1d42c:	00d5f5b3          	and	a1,a1,a3
   1d430:	01045793          	srli	a5,s0,0x10
   1d434:	01049493          	slli	s1,s1,0x10
   1d438:	00d47433          	and	s0,s0,a3
   1d43c:	00b484b3          	add	s1,s1,a1
   1d440:	028706b3          	mul	a3,a4,s0
   1d444:	00990933          	add	s2,s2,s1
   1d448:	02e78e33          	mul	t3,a5,a4
   1d44c:	028305b3          	mul	a1,t1,s0
   1d450:	02f30733          	mul	a4,t1,a5
   1d454:	01c58333          	add	t1,a1,t3
   1d458:	0106d593          	srli	a1,a3,0x10
   1d45c:	006585b3          	add	a1,a1,t1
   1d460:	01c5f463          	bleu	t3,a1,1d468 <__muldf3+0x308>
   1d464:	01370733          	add	a4,a4,s3
   1d468:	0105d313          	srli	t1,a1,0x10
   1d46c:	000109b7          	lui	s3,0x10
   1d470:	00e302b3          	add	t0,t1,a4
   1d474:	fff98713          	addi	a4,s3,-1 # ffff <_start-0x75>
   1d478:	00e5f5b3          	and	a1,a1,a4
   1d47c:	00e6f6b3          	and	a3,a3,a4
   1d480:	02838333          	mul	t1,t2,s0
   1d484:	01059593          	slli	a1,a1,0x10
   1d488:	00d585b3          	add	a1,a1,a3
   1d48c:	02778733          	mul	a4,a5,t2
   1d490:	028f8433          	mul	s0,t6,s0
   1d494:	02ff8e33          	mul	t3,t6,a5
   1d498:	00e40433          	add	s0,s0,a4
   1d49c:	01035793          	srli	a5,t1,0x10
   1d4a0:	00878433          	add	s0,a5,s0
   1d4a4:	00e47463          	bleu	a4,s0,1d4ac <__muldf3+0x34c>
   1d4a8:	013e0e33          	add	t3,t3,s3
   1d4ac:	000107b7          	lui	a5,0x10
   1d4b0:	fff78793          	addi	a5,a5,-1 # ffff <_start-0x75>
   1d4b4:	00f476b3          	and	a3,s0,a5
   1d4b8:	00f37333          	and	t1,t1,a5
   1d4bc:	01069693          	slli	a3,a3,0x10
   1d4c0:	012e8eb3          	add	t4,t4,s2
   1d4c4:	006686b3          	add	a3,a3,t1
   1d4c8:	009eb4b3          	sltu	s1,t4,s1
   1d4cc:	01e686b3          	add	a3,a3,t5
   1d4d0:	009687b3          	add	a5,a3,s1
   1d4d4:	00be8eb3          	add	t4,t4,a1
   1d4d8:	00beb5b3          	sltu	a1,t4,a1
   1d4dc:	00578333          	add	t1,a5,t0
   1d4e0:	00b30fb3          	add	t6,t1,a1
   1d4e4:	01e6b6b3          	sltu	a3,a3,t5
   1d4e8:	0097b7b3          	sltu	a5,a5,s1
   1d4ec:	00f6e7b3          	or	a5,a3,a5
   1d4f0:	01045413          	srli	s0,s0,0x10
   1d4f4:	00533333          	sltu	t1,t1,t0
   1d4f8:	00bfb5b3          	sltu	a1,t6,a1
   1d4fc:	008787b3          	add	a5,a5,s0
   1d500:	00b365b3          	or	a1,t1,a1
   1d504:	00b787b3          	add	a5,a5,a1
   1d508:	01c787b3          	add	a5,a5,t3
   1d50c:	017fd713          	srli	a4,t6,0x17
   1d510:	00979793          	slli	a5,a5,0x9
   1d514:	00e7e7b3          	or	a5,a5,a4
   1d518:	009e9713          	slli	a4,t4,0x9
   1d51c:	01176733          	or	a4,a4,a7
   1d520:	00e03733          	snez	a4,a4
   1d524:	017ede93          	srli	t4,t4,0x17
   1d528:	009f9693          	slli	a3,t6,0x9
   1d52c:	01d76733          	or	a4,a4,t4
   1d530:	00d76733          	or	a4,a4,a3
   1d534:	00779693          	slli	a3,a5,0x7
   1d538:	1006da63          	bgez	a3,1d64c <__muldf3+0x4ec>
   1d53c:	00175693          	srli	a3,a4,0x1
   1d540:	00177713          	andi	a4,a4,1
   1d544:	00e6e733          	or	a4,a3,a4
   1d548:	01f79693          	slli	a3,a5,0x1f
   1d54c:	00d76733          	or	a4,a4,a3
   1d550:	0017d793          	srli	a5,a5,0x1
   1d554:	3ff80593          	addi	a1,a6,1023
   1d558:	0eb05e63          	blez	a1,1d654 <__muldf3+0x4f4>
   1d55c:	00777693          	andi	a3,a4,7
   1d560:	02068063          	beqz	a3,1d580 <__muldf3+0x420>
   1d564:	00f77693          	andi	a3,a4,15
   1d568:	00400513          	li	a0,4
   1d56c:	00a68a63          	beq	a3,a0,1d580 <__muldf3+0x420>
   1d570:	00470693          	addi	a3,a4,4
   1d574:	00e6b733          	sltu	a4,a3,a4
   1d578:	00e787b3          	add	a5,a5,a4
   1d57c:	00068713          	mv	a4,a3
   1d580:	00779693          	slli	a3,a5,0x7
   1d584:	0006da63          	bgez	a3,1d598 <__muldf3+0x438>
   1d588:	ff0006b7          	lui	a3,0xff000
   1d58c:	fff68693          	addi	a3,a3,-1 # feffffff <__global_pointer$+0xfefdce57>
   1d590:	00d7f7b3          	and	a5,a5,a3
   1d594:	40080593          	addi	a1,a6,1024
   1d598:	7fe00693          	li	a3,2046
   1d59c:	16b6ce63          	blt	a3,a1,1d718 <__muldf3+0x5b8>
   1d5a0:	00375693          	srli	a3,a4,0x3
   1d5a4:	01d79713          	slli	a4,a5,0x1d
   1d5a8:	00d76733          	or	a4,a4,a3
   1d5ac:	0037d793          	srli	a5,a5,0x3
   1d5b0:	001006b7          	lui	a3,0x100
   1d5b4:	fff68693          	addi	a3,a3,-1 # fffff <__global_pointer$+0xdce57>
   1d5b8:	00d7f7b3          	and	a5,a5,a3
   1d5bc:	7ff5f693          	andi	a3,a1,2047
   1d5c0:	801005b7          	lui	a1,0x80100
   1d5c4:	fff58593          	addi	a1,a1,-1 # 800fffff <__global_pointer$+0x800dce57>
   1d5c8:	01469693          	slli	a3,a3,0x14
   1d5cc:	00b7f7b3          	and	a5,a5,a1
   1d5d0:	02c12083          	lw	ra,44(sp)
   1d5d4:	02812403          	lw	s0,40(sp)
   1d5d8:	01f61613          	slli	a2,a2,0x1f
   1d5dc:	00d7e7b3          	or	a5,a5,a3
   1d5e0:	00c7e6b3          	or	a3,a5,a2
   1d5e4:	02412483          	lw	s1,36(sp)
   1d5e8:	02012903          	lw	s2,32(sp)
   1d5ec:	01c12983          	lw	s3,28(sp)
   1d5f0:	01812a03          	lw	s4,24(sp)
   1d5f4:	01412a83          	lw	s5,20(sp)
   1d5f8:	01012b03          	lw	s6,16(sp)
   1d5fc:	00c12b83          	lw	s7,12(sp)
   1d600:	00070513          	mv	a0,a4
   1d604:	00068593          	mv	a1,a3
   1d608:	03010113          	addi	sp,sp,48
   1d60c:	00008067          	ret
   1d610:	00098613          	mv	a2,s3
   1d614:	00040793          	mv	a5,s0
   1d618:	00048713          	mv	a4,s1
   1d61c:	000b0693          	mv	a3,s6
   1d620:	00200593          	li	a1,2
   1d624:	0eb68a63          	beq	a3,a1,1d718 <__muldf3+0x5b8>
   1d628:	00300593          	li	a1,3
   1d62c:	0cb68c63          	beq	a3,a1,1d704 <__muldf3+0x5a4>
   1d630:	00100593          	li	a1,1
   1d634:	f2b690e3          	bne	a3,a1,1d554 <__muldf3+0x3f4>
   1d638:	00000793          	li	a5,0
   1d63c:	00000713          	li	a4,0
   1d640:	0880006f          	j	1d6c8 <__muldf3+0x568>
   1d644:	000a0613          	mv	a2,s4
   1d648:	fd9ff06f          	j	1d620 <__muldf3+0x4c0>
   1d64c:	00050813          	mv	a6,a0
   1d650:	f05ff06f          	j	1d554 <__muldf3+0x3f4>
   1d654:	00100513          	li	a0,1
   1d658:	40b50533          	sub	a0,a0,a1
   1d65c:	03800693          	li	a3,56
   1d660:	fca6cce3          	blt	a3,a0,1d638 <__muldf3+0x4d8>
   1d664:	01f00693          	li	a3,31
   1d668:	06a6c463          	blt	a3,a0,1d6d0 <__muldf3+0x570>
   1d66c:	41e80813          	addi	a6,a6,1054
   1d670:	010796b3          	sll	a3,a5,a6
   1d674:	00a755b3          	srl	a1,a4,a0
   1d678:	01071733          	sll	a4,a4,a6
   1d67c:	00b6e6b3          	or	a3,a3,a1
   1d680:	00e03733          	snez	a4,a4
   1d684:	00e6e733          	or	a4,a3,a4
   1d688:	00a7d7b3          	srl	a5,a5,a0
   1d68c:	00777693          	andi	a3,a4,7
   1d690:	02068063          	beqz	a3,1d6b0 <__muldf3+0x550>
   1d694:	00f77693          	andi	a3,a4,15
   1d698:	00400593          	li	a1,4
   1d69c:	00b68a63          	beq	a3,a1,1d6b0 <__muldf3+0x550>
   1d6a0:	00470693          	addi	a3,a4,4
   1d6a4:	00e6b733          	sltu	a4,a3,a4
   1d6a8:	00e787b3          	add	a5,a5,a4
   1d6ac:	00068713          	mv	a4,a3
   1d6b0:	00879693          	slli	a3,a5,0x8
   1d6b4:	0606ca63          	bltz	a3,1d728 <__muldf3+0x5c8>
   1d6b8:	01d79693          	slli	a3,a5,0x1d
   1d6bc:	00375713          	srli	a4,a4,0x3
   1d6c0:	00e6e733          	or	a4,a3,a4
   1d6c4:	0037d793          	srli	a5,a5,0x3
   1d6c8:	00000593          	li	a1,0
   1d6cc:	ee5ff06f          	j	1d5b0 <__muldf3+0x450>
   1d6d0:	fe100693          	li	a3,-31
   1d6d4:	40b686b3          	sub	a3,a3,a1
   1d6d8:	02000893          	li	a7,32
   1d6dc:	00d7d6b3          	srl	a3,a5,a3
   1d6e0:	00000593          	li	a1,0
   1d6e4:	01150663          	beq	a0,a7,1d6f0 <__muldf3+0x590>
   1d6e8:	43e80813          	addi	a6,a6,1086
   1d6ec:	010795b3          	sll	a1,a5,a6
   1d6f0:	00e5e733          	or	a4,a1,a4
   1d6f4:	00e03733          	snez	a4,a4
   1d6f8:	00e6e733          	or	a4,a3,a4
   1d6fc:	00000793          	li	a5,0
   1d700:	f8dff06f          	j	1d68c <__muldf3+0x52c>
   1d704:	000807b7          	lui	a5,0x80
   1d708:	00000713          	li	a4,0
   1d70c:	7ff00593          	li	a1,2047
   1d710:	00000613          	li	a2,0
   1d714:	e9dff06f          	j	1d5b0 <__muldf3+0x450>
   1d718:	00000793          	li	a5,0
   1d71c:	00000713          	li	a4,0
   1d720:	7ff00593          	li	a1,2047
   1d724:	e8dff06f          	j	1d5b0 <__muldf3+0x450>
   1d728:	00000793          	li	a5,0
   1d72c:	00000713          	li	a4,0
   1d730:	00100593          	li	a1,1
   1d734:	e7dff06f          	j	1d5b0 <__muldf3+0x450>

0001d738 <__eqtf2>:
   1d738:	00c52783          	lw	a5,12(a0)
   1d73c:	0005af03          	lw	t5,0(a1)
   1d740:	0045af83          	lw	t6,4(a1)
   1d744:	0085a283          	lw	t0,8(a1)
   1d748:	00c5a583          	lw	a1,12(a1)
   1d74c:	00008737          	lui	a4,0x8
   1d750:	0107d693          	srli	a3,a5,0x10
   1d754:	fff70713          	addi	a4,a4,-1 # 7fff <_start-0x8075>
   1d758:	01079813          	slli	a6,a5,0x10
   1d75c:	01059e93          	slli	t4,a1,0x10
   1d760:	01f7d613          	srli	a2,a5,0x1f
   1d764:	00e6f6b3          	and	a3,a3,a4
   1d768:	0105d793          	srli	a5,a1,0x10
   1d76c:	ff010113          	addi	sp,sp,-16
   1d770:	00052883          	lw	a7,0(a0)
   1d774:	00452303          	lw	t1,4(a0)
   1d778:	00852e03          	lw	t3,8(a0)
   1d77c:	01085813          	srli	a6,a6,0x10
   1d780:	010ede93          	srli	t4,t4,0x10
   1d784:	00e7f7b3          	and	a5,a5,a4
   1d788:	01f5d593          	srli	a1,a1,0x1f
   1d78c:	02e69063          	bne	a3,a4,1d7ac <__eqtf2+0x74>
   1d790:	0068e733          	or	a4,a7,t1
   1d794:	01c76733          	or	a4,a4,t3
   1d798:	01076733          	or	a4,a4,a6
   1d79c:	00100513          	li	a0,1
   1d7a0:	04071a63          	bnez	a4,1d7f4 <__eqtf2+0xbc>
   1d7a4:	04d79863          	bne	a5,a3,1d7f4 <__eqtf2+0xbc>
   1d7a8:	0080006f          	j	1d7b0 <__eqtf2+0x78>
   1d7ac:	00e79c63          	bne	a5,a4,1d7c4 <__eqtf2+0x8c>
   1d7b0:	01ff6733          	or	a4,t5,t6
   1d7b4:	00576733          	or	a4,a4,t0
   1d7b8:	01d76733          	or	a4,a4,t4
   1d7bc:	00100513          	li	a0,1
   1d7c0:	02071a63          	bnez	a4,1d7f4 <__eqtf2+0xbc>
   1d7c4:	00100513          	li	a0,1
   1d7c8:	02d79663          	bne	a5,a3,1d7f4 <__eqtf2+0xbc>
   1d7cc:	03e89463          	bne	a7,t5,1d7f4 <__eqtf2+0xbc>
   1d7d0:	03f31263          	bne	t1,t6,1d7f4 <__eqtf2+0xbc>
   1d7d4:	025e1063          	bne	t3,t0,1d7f4 <__eqtf2+0xbc>
   1d7d8:	01d81e63          	bne	a6,t4,1d7f4 <__eqtf2+0xbc>
   1d7dc:	02b60063          	beq	a2,a1,1d7fc <__eqtf2+0xc4>
   1d7e0:	00079a63          	bnez	a5,1d7f4 <__eqtf2+0xbc>
   1d7e4:	0068e533          	or	a0,a7,t1
   1d7e8:	01c56533          	or	a0,a0,t3
   1d7ec:	01056533          	or	a0,a0,a6
   1d7f0:	00a03533          	snez	a0,a0
   1d7f4:	01010113          	addi	sp,sp,16
   1d7f8:	00008067          	ret
   1d7fc:	00000513          	li	a0,0
   1d800:	ff5ff06f          	j	1d7f4 <__eqtf2+0xbc>

0001d804 <__getf2>:
   1d804:	00c52783          	lw	a5,12(a0)
   1d808:	00c5a883          	lw	a7,12(a1)
   1d80c:	00052f03          	lw	t5,0(a0)
   1d810:	00452603          	lw	a2,4(a0)
   1d814:	00852803          	lw	a6,8(a0)
   1d818:	00008537          	lui	a0,0x8
   1d81c:	0107d713          	srli	a4,a5,0x10
   1d820:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8075>
   1d824:	01089e93          	slli	t4,a7,0x10
   1d828:	0108d693          	srli	a3,a7,0x10
   1d82c:	0005a283          	lw	t0,0(a1)
   1d830:	0045a303          	lw	t1,4(a1)
   1d834:	0085ae03          	lw	t3,8(a1)
   1d838:	00a77733          	and	a4,a4,a0
   1d83c:	01079593          	slli	a1,a5,0x10
   1d840:	ff010113          	addi	sp,sp,-16
   1d844:	0105d593          	srli	a1,a1,0x10
   1d848:	01f7d793          	srli	a5,a5,0x1f
   1d84c:	010ede93          	srli	t4,t4,0x10
   1d850:	00a6f6b3          	and	a3,a3,a0
   1d854:	01f8d893          	srli	a7,a7,0x1f
   1d858:	02a71063          	bne	a4,a0,1d878 <__getf2+0x74>
   1d85c:	00cf6fb3          	or	t6,t5,a2
   1d860:	010fefb3          	or	t6,t6,a6
   1d864:	00bfefb3          	or	t6,t6,a1
   1d868:	ffe00513          	li	a0,-2
   1d86c:	0e0f8063          	beqz	t6,1d94c <__getf2+0x148>
   1d870:	01010113          	addi	sp,sp,16
   1d874:	00008067          	ret
   1d878:	02a69863          	bne	a3,a0,1d8a8 <__getf2+0xa4>
   1d87c:	0062efb3          	or	t6,t0,t1
   1d880:	01cfefb3          	or	t6,t6,t3
   1d884:	01dfefb3          	or	t6,t6,t4
   1d888:	ffe00513          	li	a0,-2
   1d88c:	fe0f92e3          	bnez	t6,1d870 <__getf2+0x6c>
   1d890:	04071263          	bnez	a4,1d8d4 <__getf2+0xd0>
   1d894:	00cf6533          	or	a0,t5,a2
   1d898:	01056533          	or	a0,a0,a6
   1d89c:	00b56533          	or	a0,a0,a1
   1d8a0:	00153513          	seqz	a0,a0
   1d8a4:	02c0006f          	j	1d8d0 <__getf2+0xcc>
   1d8a8:	0a071463          	bnez	a4,1d950 <__getf2+0x14c>
   1d8ac:	00cf6533          	or	a0,t5,a2
   1d8b0:	01056533          	or	a0,a0,a6
   1d8b4:	00b56533          	or	a0,a0,a1
   1d8b8:	00153513          	seqz	a0,a0
   1d8bc:	00069a63          	bnez	a3,1d8d0 <__getf2+0xcc>
   1d8c0:	0062efb3          	or	t6,t0,t1
   1d8c4:	01cfefb3          	or	t6,t6,t3
   1d8c8:	01dfefb3          	or	t6,t6,t4
   1d8cc:	060f8c63          	beqz	t6,1d944 <__getf2+0x140>
   1d8d0:	00051a63          	bnez	a0,1d8e4 <__getf2+0xe0>
   1d8d4:	01178e63          	beq	a5,a7,1d8f0 <__getf2+0xec>
   1d8d8:	00100513          	li	a0,1
   1d8dc:	f8078ae3          	beqz	a5,1d870 <__getf2+0x6c>
   1d8e0:	0080006f          	j	1d8e8 <__getf2+0xe4>
   1d8e4:	f80896e3          	bnez	a7,1d870 <__getf2+0x6c>
   1d8e8:	fff00513          	li	a0,-1
   1d8ec:	f85ff06f          	j	1d870 <__getf2+0x6c>
   1d8f0:	fee6c4e3          	blt	a3,a4,1d8d8 <__getf2+0xd4>
   1d8f4:	00d75a63          	ble	a3,a4,1d908 <__getf2+0x104>
   1d8f8:	fff00513          	li	a0,-1
   1d8fc:	f6078ae3          	beqz	a5,1d870 <__getf2+0x6c>
   1d900:	00100513          	li	a0,1
   1d904:	f6dff06f          	j	1d870 <__getf2+0x6c>
   1d908:	fcbee8e3          	bltu	t4,a1,1d8d8 <__getf2+0xd4>
   1d90c:	03d59663          	bne	a1,t4,1d938 <__getf2+0x134>
   1d910:	fd0e64e3          	bltu	t3,a6,1d8d8 <__getf2+0xd4>
   1d914:	05c81463          	bne	a6,t3,1d95c <__getf2+0x158>
   1d918:	fcc360e3          	bltu	t1,a2,1d8d8 <__getf2+0xd4>
   1d91c:	00661463          	bne	a2,t1,1d924 <__getf2+0x120>
   1d920:	fbe2ece3          	bltu	t0,t5,1d8d8 <__getf2+0xd4>
   1d924:	fc666ae3          	bltu	a2,t1,1d8f8 <__getf2+0xf4>
   1d928:	00000513          	li	a0,0
   1d92c:	f46612e3          	bne	a2,t1,1d870 <__getf2+0x6c>
   1d930:	fc5f64e3          	bltu	t5,t0,1d8f8 <__getf2+0xf4>
   1d934:	f3dff06f          	j	1d870 <__getf2+0x6c>
   1d938:	fdd5e0e3          	bltu	a1,t4,1d8f8 <__getf2+0xf4>
   1d93c:	00000513          	li	a0,0
   1d940:	f31ff06f          	j	1d870 <__getf2+0x6c>
   1d944:	fe051ce3          	bnez	a0,1d93c <__getf2+0x138>
   1d948:	f91ff06f          	j	1d8d8 <__getf2+0xd4>
   1d94c:	f2e688e3          	beq	a3,a4,1d87c <__getf2+0x78>
   1d950:	00000513          	li	a0,0
   1d954:	f60686e3          	beqz	a3,1d8c0 <__getf2+0xbc>
   1d958:	f7dff06f          	j	1d8d4 <__getf2+0xd0>
   1d95c:	f9c86ee3          	bltu	a6,t3,1d8f8 <__getf2+0xf4>
   1d960:	fddff06f          	j	1d93c <__getf2+0x138>

0001d964 <__letf2>:
   1d964:	00c52783          	lw	a5,12(a0)
   1d968:	00c5a883          	lw	a7,12(a1)
   1d96c:	00052f03          	lw	t5,0(a0)
   1d970:	00452603          	lw	a2,4(a0)
   1d974:	00852803          	lw	a6,8(a0)
   1d978:	00008537          	lui	a0,0x8
   1d97c:	0107d713          	srli	a4,a5,0x10
   1d980:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8075>
   1d984:	01089e93          	slli	t4,a7,0x10
   1d988:	0108d693          	srli	a3,a7,0x10
   1d98c:	0005a283          	lw	t0,0(a1)
   1d990:	0045a303          	lw	t1,4(a1)
   1d994:	0085ae03          	lw	t3,8(a1)
   1d998:	00a77733          	and	a4,a4,a0
   1d99c:	01079593          	slli	a1,a5,0x10
   1d9a0:	ff010113          	addi	sp,sp,-16
   1d9a4:	0105d593          	srli	a1,a1,0x10
   1d9a8:	01f7d793          	srli	a5,a5,0x1f
   1d9ac:	010ede93          	srli	t4,t4,0x10
   1d9b0:	00a6f6b3          	and	a3,a3,a0
   1d9b4:	01f8d893          	srli	a7,a7,0x1f
   1d9b8:	02a71063          	bne	a4,a0,1d9d8 <__letf2+0x74>
   1d9bc:	00cf6fb3          	or	t6,t5,a2
   1d9c0:	010fefb3          	or	t6,t6,a6
   1d9c4:	00bfefb3          	or	t6,t6,a1
   1d9c8:	00200513          	li	a0,2
   1d9cc:	0e0f8063          	beqz	t6,1daac <__letf2+0x148>
   1d9d0:	01010113          	addi	sp,sp,16
   1d9d4:	00008067          	ret
   1d9d8:	02a69863          	bne	a3,a0,1da08 <__letf2+0xa4>
   1d9dc:	0062efb3          	or	t6,t0,t1
   1d9e0:	01cfefb3          	or	t6,t6,t3
   1d9e4:	01dfefb3          	or	t6,t6,t4
   1d9e8:	00200513          	li	a0,2
   1d9ec:	fe0f92e3          	bnez	t6,1d9d0 <__letf2+0x6c>
   1d9f0:	04071263          	bnez	a4,1da34 <__letf2+0xd0>
   1d9f4:	00cf6533          	or	a0,t5,a2
   1d9f8:	01056533          	or	a0,a0,a6
   1d9fc:	00b56533          	or	a0,a0,a1
   1da00:	00153513          	seqz	a0,a0
   1da04:	02c0006f          	j	1da30 <__letf2+0xcc>
   1da08:	0a071463          	bnez	a4,1dab0 <__letf2+0x14c>
   1da0c:	00cf6533          	or	a0,t5,a2
   1da10:	01056533          	or	a0,a0,a6
   1da14:	00b56533          	or	a0,a0,a1
   1da18:	00153513          	seqz	a0,a0
   1da1c:	00069a63          	bnez	a3,1da30 <__letf2+0xcc>
   1da20:	0062efb3          	or	t6,t0,t1
   1da24:	01cfefb3          	or	t6,t6,t3
   1da28:	01dfefb3          	or	t6,t6,t4
   1da2c:	060f8c63          	beqz	t6,1daa4 <__letf2+0x140>
   1da30:	00051a63          	bnez	a0,1da44 <__letf2+0xe0>
   1da34:	01178e63          	beq	a5,a7,1da50 <__letf2+0xec>
   1da38:	00100513          	li	a0,1
   1da3c:	f8078ae3          	beqz	a5,1d9d0 <__letf2+0x6c>
   1da40:	0080006f          	j	1da48 <__letf2+0xe4>
   1da44:	f80896e3          	bnez	a7,1d9d0 <__letf2+0x6c>
   1da48:	fff00513          	li	a0,-1
   1da4c:	f85ff06f          	j	1d9d0 <__letf2+0x6c>
   1da50:	fee6c4e3          	blt	a3,a4,1da38 <__letf2+0xd4>
   1da54:	00d75a63          	ble	a3,a4,1da68 <__letf2+0x104>
   1da58:	fff00513          	li	a0,-1
   1da5c:	f6078ae3          	beqz	a5,1d9d0 <__letf2+0x6c>
   1da60:	00100513          	li	a0,1
   1da64:	f6dff06f          	j	1d9d0 <__letf2+0x6c>
   1da68:	fcbee8e3          	bltu	t4,a1,1da38 <__letf2+0xd4>
   1da6c:	03d59663          	bne	a1,t4,1da98 <__letf2+0x134>
   1da70:	fd0e64e3          	bltu	t3,a6,1da38 <__letf2+0xd4>
   1da74:	05c81463          	bne	a6,t3,1dabc <__letf2+0x158>
   1da78:	fcc360e3          	bltu	t1,a2,1da38 <__letf2+0xd4>
   1da7c:	00661463          	bne	a2,t1,1da84 <__letf2+0x120>
   1da80:	fbe2ece3          	bltu	t0,t5,1da38 <__letf2+0xd4>
   1da84:	fc666ae3          	bltu	a2,t1,1da58 <__letf2+0xf4>
   1da88:	00000513          	li	a0,0
   1da8c:	f46612e3          	bne	a2,t1,1d9d0 <__letf2+0x6c>
   1da90:	fc5f64e3          	bltu	t5,t0,1da58 <__letf2+0xf4>
   1da94:	f3dff06f          	j	1d9d0 <__letf2+0x6c>
   1da98:	fdd5e0e3          	bltu	a1,t4,1da58 <__letf2+0xf4>
   1da9c:	00000513          	li	a0,0
   1daa0:	f31ff06f          	j	1d9d0 <__letf2+0x6c>
   1daa4:	fe051ce3          	bnez	a0,1da9c <__letf2+0x138>
   1daa8:	f91ff06f          	j	1da38 <__letf2+0xd4>
   1daac:	f2e688e3          	beq	a3,a4,1d9dc <__letf2+0x78>
   1dab0:	00000513          	li	a0,0
   1dab4:	f60686e3          	beqz	a3,1da20 <__letf2+0xbc>
   1dab8:	f7dff06f          	j	1da34 <__letf2+0xd0>
   1dabc:	f9c86ee3          	bltu	a6,t3,1da58 <__letf2+0xf4>
   1dac0:	fddff06f          	j	1da9c <__letf2+0x138>

0001dac4 <__multf3>:
   1dac4:	f4010113          	addi	sp,sp,-192
   1dac8:	0b312623          	sw	s3,172(sp)
   1dacc:	00c5a983          	lw	s3,12(a1)
   1dad0:	0005a683          	lw	a3,0(a1)
   1dad4:	0045a783          	lw	a5,4(a1)
   1dad8:	00a12623          	sw	a0,12(sp)
   1dadc:	0085a503          	lw	a0,8(a1)
   1dae0:	01099713          	slli	a4,s3,0x10
   1dae4:	0b212823          	sw	s2,176(sp)
   1dae8:	0b412423          	sw	s4,168(sp)
   1daec:	0b512223          	sw	s5,164(sp)
   1daf0:	0b612023          	sw	s6,160(sp)
   1daf4:	00062a03          	lw	s4,0(a2) # 1000000 <__global_pointer$+0xfdce58>
   1daf8:	00462b03          	lw	s6,4(a2)
   1dafc:	00862a83          	lw	s5,8(a2)
   1db00:	00c62903          	lw	s2,12(a2)
   1db04:	00008637          	lui	a2,0x8
   1db08:	0a912a23          	sw	s1,180(sp)
   1db0c:	01075713          	srli	a4,a4,0x10
   1db10:	0109d493          	srli	s1,s3,0x10
   1db14:	fff60613          	addi	a2,a2,-1 # 7fff <_start-0x8075>
   1db18:	07312623          	sw	s3,108(sp)
   1db1c:	0a112e23          	sw	ra,188(sp)
   1db20:	0a812c23          	sw	s0,184(sp)
   1db24:	09712e23          	sw	s7,156(sp)
   1db28:	09812c23          	sw	s8,152(sp)
   1db2c:	09912a23          	sw	s9,148(sp)
   1db30:	09a12823          	sw	s10,144(sp)
   1db34:	09b12623          	sw	s11,140(sp)
   1db38:	06d12023          	sw	a3,96(sp)
   1db3c:	06f12223          	sw	a5,100(sp)
   1db40:	06a12423          	sw	a0,104(sp)
   1db44:	02d12823          	sw	a3,48(sp)
   1db48:	02f12a23          	sw	a5,52(sp)
   1db4c:	02a12c23          	sw	a0,56(sp)
   1db50:	02e12e23          	sw	a4,60(sp)
   1db54:	00c4f4b3          	and	s1,s1,a2
   1db58:	01f9d993          	srli	s3,s3,0x1f
   1db5c:	12048863          	beqz	s1,1dc8c <__multf3+0x1c8>
   1db60:	24c48863          	beq	s1,a2,1ddb0 <__multf3+0x2ec>
   1db64:	000107b7          	lui	a5,0x10
   1db68:	00f767b3          	or	a5,a4,a5
   1db6c:	02f12e23          	sw	a5,60(sp)
   1db70:	03010613          	addi	a2,sp,48
   1db74:	03c10793          	addi	a5,sp,60
   1db78:	0007a703          	lw	a4,0(a5) # 10000 <_start-0x74>
   1db7c:	ffc7a683          	lw	a3,-4(a5)
   1db80:	ffc78793          	addi	a5,a5,-4
   1db84:	00371713          	slli	a4,a4,0x3
   1db88:	01d6d693          	srli	a3,a3,0x1d
   1db8c:	00d76733          	or	a4,a4,a3
   1db90:	00e7a223          	sw	a4,4(a5)
   1db94:	fef612e3          	bne	a2,a5,1db78 <__multf3+0xb4>
   1db98:	03012783          	lw	a5,48(sp)
   1db9c:	ffffc537          	lui	a0,0xffffc
   1dba0:	00150513          	addi	a0,a0,1 # ffffc001 <__global_pointer$+0xfffd8e59>
   1dba4:	00379793          	slli	a5,a5,0x3
   1dba8:	02f12823          	sw	a5,48(sp)
   1dbac:	00a484b3          	add	s1,s1,a0
   1dbb0:	00000b93          	li	s7,0
   1dbb4:	01091793          	slli	a5,s2,0x10
   1dbb8:	00008737          	lui	a4,0x8
   1dbbc:	01095513          	srli	a0,s2,0x10
   1dbc0:	0107d793          	srli	a5,a5,0x10
   1dbc4:	fff70713          	addi	a4,a4,-1 # 7fff <_start-0x8075>
   1dbc8:	07212623          	sw	s2,108(sp)
   1dbcc:	07412023          	sw	s4,96(sp)
   1dbd0:	07612223          	sw	s6,100(sp)
   1dbd4:	07512423          	sw	s5,104(sp)
   1dbd8:	05412023          	sw	s4,64(sp)
   1dbdc:	05612223          	sw	s6,68(sp)
   1dbe0:	05512423          	sw	s5,72(sp)
   1dbe4:	04f12623          	sw	a5,76(sp)
   1dbe8:	00e57533          	and	a0,a0,a4
   1dbec:	01f95913          	srli	s2,s2,0x1f
   1dbf0:	1e050463          	beqz	a0,1ddd8 <__multf3+0x314>
   1dbf4:	30e50663          	beq	a0,a4,1df00 <__multf3+0x43c>
   1dbf8:	00010ab7          	lui	s5,0x10
   1dbfc:	0157eab3          	or	s5,a5,s5
   1dc00:	05512623          	sw	s5,76(sp)
   1dc04:	04010613          	addi	a2,sp,64
   1dc08:	04c10793          	addi	a5,sp,76
   1dc0c:	0007a703          	lw	a4,0(a5)
   1dc10:	ffc7a683          	lw	a3,-4(a5)
   1dc14:	ffc78793          	addi	a5,a5,-4
   1dc18:	00371713          	slli	a4,a4,0x3
   1dc1c:	01d6d693          	srli	a3,a3,0x1d
   1dc20:	00d76733          	or	a4,a4,a3
   1dc24:	00e7a223          	sw	a4,4(a5)
   1dc28:	fef612e3          	bne	a2,a5,1dc0c <__multf3+0x148>
   1dc2c:	04012783          	lw	a5,64(sp)
   1dc30:	00379793          	slli	a5,a5,0x3
   1dc34:	04f12023          	sw	a5,64(sp)
   1dc38:	ffffc7b7          	lui	a5,0xffffc
   1dc3c:	00178793          	addi	a5,a5,1 # ffffc001 <__global_pointer$+0xfffd8e59>
   1dc40:	00f50533          	add	a0,a0,a5
   1dc44:	00000713          	li	a4,0
   1dc48:	0129c7b3          	xor	a5,s3,s2
   1dc4c:	00f12823          	sw	a5,16(sp)
   1dc50:	009507b3          	add	a5,a0,s1
   1dc54:	02f12023          	sw	a5,32(sp)
   1dc58:	00178793          	addi	a5,a5,1
   1dc5c:	00f12e23          	sw	a5,28(sp)
   1dc60:	002b9793          	slli	a5,s7,0x2
   1dc64:	00e7e7b3          	or	a5,a5,a4
   1dc68:	fff78793          	addi	a5,a5,-1
   1dc6c:	00e00693          	li	a3,14
   1dc70:	2af6ec63          	bltu	a3,a5,1df28 <__multf3+0x464>
   1dc74:	000216b7          	lui	a3,0x21
   1dc78:	00279793          	slli	a5,a5,0x2
   1dc7c:	45868693          	addi	a3,a3,1112 # 21458 <zeroes.4367+0x88>
   1dc80:	00d787b3          	add	a5,a5,a3
   1dc84:	0007a783          	lw	a5,0(a5)
   1dc88:	00078067          	jr	a5
   1dc8c:	00d7e633          	or	a2,a5,a3
   1dc90:	00a66633          	or	a2,a2,a0
   1dc94:	00e66633          	or	a2,a2,a4
   1dc98:	12060a63          	beqz	a2,1ddcc <__multf3+0x308>
   1dc9c:	04070e63          	beqz	a4,1dcf8 <__multf3+0x234>
   1dca0:	00070513          	mv	a0,a4
   1dca4:	37d020ef          	jal	ra,20820 <__clzsi2>
   1dca8:	ff450713          	addi	a4,a0,-12
   1dcac:	40575793          	srai	a5,a4,0x5
   1dcb0:	01f77713          	andi	a4,a4,31
   1dcb4:	06070c63          	beqz	a4,1dd2c <__multf3+0x268>
   1dcb8:	ffc00693          	li	a3,-4
   1dcbc:	02d786b3          	mul	a3,a5,a3
   1dcc0:	02000813          	li	a6,32
   1dcc4:	00279593          	slli	a1,a5,0x2
   1dcc8:	ff000e13          	li	t3,-16
   1dccc:	40e80833          	sub	a6,a6,a4
   1dcd0:	ffc68693          	addi	a3,a3,-4
   1dcd4:	09c69463          	bne	a3,t3,1dd5c <__multf3+0x298>
   1dcd8:	08010693          	addi	a3,sp,128
   1dcdc:	00b685b3          	add	a1,a3,a1
   1dce0:	03012683          	lw	a3,48(sp)
   1dce4:	fff78793          	addi	a5,a5,-1
   1dce8:	00e69733          	sll	a4,a3,a4
   1dcec:	fae5a823          	sw	a4,-80(a1)
   1dcf0:	fff00693          	li	a3,-1
   1dcf4:	0a80006f          	j	1dd9c <__multf3+0x2d8>
   1dcf8:	00050863          	beqz	a0,1dd08 <__multf3+0x244>
   1dcfc:	325020ef          	jal	ra,20820 <__clzsi2>
   1dd00:	02050513          	addi	a0,a0,32
   1dd04:	fa5ff06f          	j	1dca8 <__multf3+0x1e4>
   1dd08:	00078a63          	beqz	a5,1dd1c <__multf3+0x258>
   1dd0c:	00078513          	mv	a0,a5
   1dd10:	311020ef          	jal	ra,20820 <__clzsi2>
   1dd14:	04050513          	addi	a0,a0,64
   1dd18:	f91ff06f          	j	1dca8 <__multf3+0x1e4>
   1dd1c:	00068513          	mv	a0,a3
   1dd20:	301020ef          	jal	ra,20820 <__clzsi2>
   1dd24:	06050513          	addi	a0,a0,96
   1dd28:	f81ff06f          	j	1dca8 <__multf3+0x1e4>
   1dd2c:	ffc00613          	li	a2,-4
   1dd30:	02c78633          	mul	a2,a5,a2
   1dd34:	03010713          	addi	a4,sp,48
   1dd38:	00300693          	li	a3,3
   1dd3c:	00c705b3          	add	a1,a4,a2
   1dd40:	00c5a583          	lw	a1,12(a1)
   1dd44:	fff68693          	addi	a3,a3,-1
   1dd48:	ffc70713          	addi	a4,a4,-4
   1dd4c:	00b72823          	sw	a1,16(a4)
   1dd50:	fef6d6e3          	ble	a5,a3,1dd3c <__multf3+0x278>
   1dd54:	fff78793          	addi	a5,a5,-1
   1dd58:	f99ff06f          	j	1dcf0 <__multf3+0x22c>
   1dd5c:	03010613          	addi	a2,sp,48
   1dd60:	00d60333          	add	t1,a2,a3
   1dd64:	00d588b3          	add	a7,a1,a3
   1dd68:	011608b3          	add	a7,a2,a7
   1dd6c:	00c32603          	lw	a2,12(t1)
   1dd70:	01032303          	lw	t1,16(t1)
   1dd74:	01065633          	srl	a2,a2,a6
   1dd78:	00e31333          	sll	t1,t1,a4
   1dd7c:	00666633          	or	a2,a2,t1
   1dd80:	00c8a823          	sw	a2,16(a7)
   1dd84:	f4dff06f          	j	1dcd0 <__multf3+0x20c>
   1dd88:	00279713          	slli	a4,a5,0x2
   1dd8c:	03010613          	addi	a2,sp,48
   1dd90:	00e60733          	add	a4,a2,a4
   1dd94:	00072023          	sw	zero,0(a4)
   1dd98:	fff78793          	addi	a5,a5,-1
   1dd9c:	fed796e3          	bne	a5,a3,1dd88 <__multf3+0x2c4>
   1dda0:	ffffc4b7          	lui	s1,0xffffc
   1dda4:	01148493          	addi	s1,s1,17 # ffffc011 <__global_pointer$+0xfffd8e69>
   1dda8:	40a484b3          	sub	s1,s1,a0
   1ddac:	e05ff06f          	j	1dbb0 <__multf3+0xec>
   1ddb0:	00d7e7b3          	or	a5,a5,a3
   1ddb4:	00a7e7b3          	or	a5,a5,a0
   1ddb8:	00e7e7b3          	or	a5,a5,a4
   1ddbc:	00200b93          	li	s7,2
   1ddc0:	de078ae3          	beqz	a5,1dbb4 <__multf3+0xf0>
   1ddc4:	00300b93          	li	s7,3
   1ddc8:	dedff06f          	j	1dbb4 <__multf3+0xf0>
   1ddcc:	00000493          	li	s1,0
   1ddd0:	00100b93          	li	s7,1
   1ddd4:	de1ff06f          	j	1dbb4 <__multf3+0xf0>
   1ddd8:	016a6733          	or	a4,s4,s6
   1dddc:	01576733          	or	a4,a4,s5
   1dde0:	00f76733          	or	a4,a4,a5
   1dde4:	12070c63          	beqz	a4,1df1c <__multf3+0x458>
   1dde8:	04078e63          	beqz	a5,1de44 <__multf3+0x380>
   1ddec:	00078513          	mv	a0,a5
   1ddf0:	231020ef          	jal	ra,20820 <__clzsi2>
   1ddf4:	ff450713          	addi	a4,a0,-12
   1ddf8:	40575793          	srai	a5,a4,0x5
   1ddfc:	01f77713          	andi	a4,a4,31
   1de00:	06070e63          	beqz	a4,1de7c <__multf3+0x3b8>
   1de04:	ffc00693          	li	a3,-4
   1de08:	02d786b3          	mul	a3,a5,a3
   1de0c:	02000813          	li	a6,32
   1de10:	00279593          	slli	a1,a5,0x2
   1de14:	ff000e13          	li	t3,-16
   1de18:	40e80833          	sub	a6,a6,a4
   1de1c:	ffc68693          	addi	a3,a3,-4
   1de20:	09c69663          	bne	a3,t3,1deac <__multf3+0x3e8>
   1de24:	08010693          	addi	a3,sp,128
   1de28:	00b685b3          	add	a1,a3,a1
   1de2c:	04012683          	lw	a3,64(sp)
   1de30:	fff78793          	addi	a5,a5,-1
   1de34:	00e69733          	sll	a4,a3,a4
   1de38:	fce5a023          	sw	a4,-64(a1)
   1de3c:	fff00693          	li	a3,-1
   1de40:	0ac0006f          	j	1deec <__multf3+0x428>
   1de44:	000a8a63          	beqz	s5,1de58 <__multf3+0x394>
   1de48:	000a8513          	mv	a0,s5
   1de4c:	1d5020ef          	jal	ra,20820 <__clzsi2>
   1de50:	02050513          	addi	a0,a0,32
   1de54:	fa1ff06f          	j	1ddf4 <__multf3+0x330>
   1de58:	000b0a63          	beqz	s6,1de6c <__multf3+0x3a8>
   1de5c:	000b0513          	mv	a0,s6
   1de60:	1c1020ef          	jal	ra,20820 <__clzsi2>
   1de64:	04050513          	addi	a0,a0,64
   1de68:	f8dff06f          	j	1ddf4 <__multf3+0x330>
   1de6c:	000a0513          	mv	a0,s4
   1de70:	1b1020ef          	jal	ra,20820 <__clzsi2>
   1de74:	06050513          	addi	a0,a0,96
   1de78:	f7dff06f          	j	1ddf4 <__multf3+0x330>
   1de7c:	ffc00613          	li	a2,-4
   1de80:	02c78633          	mul	a2,a5,a2
   1de84:	04010713          	addi	a4,sp,64
   1de88:	00300693          	li	a3,3
   1de8c:	00c705b3          	add	a1,a4,a2
   1de90:	00c5a583          	lw	a1,12(a1)
   1de94:	fff68693          	addi	a3,a3,-1
   1de98:	ffc70713          	addi	a4,a4,-4
   1de9c:	00b72823          	sw	a1,16(a4)
   1dea0:	fef6d6e3          	ble	a5,a3,1de8c <__multf3+0x3c8>
   1dea4:	fff78793          	addi	a5,a5,-1
   1dea8:	f95ff06f          	j	1de3c <__multf3+0x378>
   1deac:	04010613          	addi	a2,sp,64
   1deb0:	00d60333          	add	t1,a2,a3
   1deb4:	00d588b3          	add	a7,a1,a3
   1deb8:	011608b3          	add	a7,a2,a7
   1debc:	00c32603          	lw	a2,12(t1)
   1dec0:	01032303          	lw	t1,16(t1)
   1dec4:	01065633          	srl	a2,a2,a6
   1dec8:	00e31333          	sll	t1,t1,a4
   1decc:	00666633          	or	a2,a2,t1
   1ded0:	00c8a823          	sw	a2,16(a7)
   1ded4:	f49ff06f          	j	1de1c <__multf3+0x358>
   1ded8:	00279713          	slli	a4,a5,0x2
   1dedc:	04010613          	addi	a2,sp,64
   1dee0:	00e60733          	add	a4,a2,a4
   1dee4:	00072023          	sw	zero,0(a4)
   1dee8:	fff78793          	addi	a5,a5,-1
   1deec:	fed796e3          	bne	a5,a3,1ded8 <__multf3+0x414>
   1def0:	ffffc7b7          	lui	a5,0xffffc
   1def4:	01178793          	addi	a5,a5,17 # ffffc011 <__global_pointer$+0xfffd8e69>
   1def8:	40a78533          	sub	a0,a5,a0
   1defc:	d49ff06f          	j	1dc44 <__multf3+0x180>
   1df00:	016a6a33          	or	s4,s4,s6
   1df04:	015a6ab3          	or	s5,s4,s5
   1df08:	00faeab3          	or	s5,s5,a5
   1df0c:	00200713          	li	a4,2
   1df10:	d20a8ce3          	beqz	s5,1dc48 <__multf3+0x184>
   1df14:	00300713          	li	a4,3
   1df18:	d31ff06f          	j	1dc48 <__multf3+0x184>
   1df1c:	00000513          	li	a0,0
   1df20:	00100713          	li	a4,1
   1df24:	d25ff06f          	j	1dc48 <__multf3+0x184>
   1df28:	03012703          	lw	a4,48(sp)
   1df2c:	04012e03          	lw	t3,64(sp)
   1df30:	00010537          	lui	a0,0x10
   1df34:	fff50693          	addi	a3,a0,-1 # ffff <_start-0x75>
   1df38:	01075f93          	srli	t6,a4,0x10
   1df3c:	010e5a93          	srli	s5,t3,0x10
   1df40:	00d77733          	and	a4,a4,a3
   1df44:	00de7e33          	and	t3,t3,a3
   1df48:	02ea87b3          	mul	a5,s5,a4
   1df4c:	02ee0633          	mul	a2,t3,a4
   1df50:	03cf8833          	mul	a6,t6,t3
   1df54:	010785b3          	add	a1,a5,a6
   1df58:	01065793          	srli	a5,a2,0x10
   1df5c:	00b787b3          	add	a5,a5,a1
   1df60:	035f8b33          	mul	s6,t6,s5
   1df64:	0107f463          	bleu	a6,a5,1df6c <__multf3+0x4a8>
   1df68:	00ab0b33          	add	s6,s6,a0
   1df6c:	04412f03          	lw	t5,68(sp)
   1df70:	0107d293          	srli	t0,a5,0x10
   1df74:	00d7f7b3          	and	a5,a5,a3
   1df78:	00d67633          	and	a2,a2,a3
   1df7c:	01079793          	slli	a5,a5,0x10
   1df80:	00c787b3          	add	a5,a5,a2
   1df84:	010f5493          	srli	s1,t5,0x10
   1df88:	00df7f33          	and	t5,t5,a3
   1df8c:	02f12223          	sw	a5,36(sp)
   1df90:	06f12023          	sw	a5,96(sp)
   1df94:	02ef06b3          	mul	a3,t5,a4
   1df98:	02e487b3          	mul	a5,s1,a4
   1df9c:	03ef8633          	mul	a2,t6,t5
   1dfa0:	00c78533          	add	a0,a5,a2
   1dfa4:	0106d793          	srli	a5,a3,0x10
   1dfa8:	00a787b3          	add	a5,a5,a0
   1dfac:	029f8a33          	mul	s4,t6,s1
   1dfb0:	00c7f663          	bleu	a2,a5,1dfbc <__multf3+0x4f8>
   1dfb4:	00010637          	lui	a2,0x10
   1dfb8:	00ca0a33          	add	s4,s4,a2
   1dfbc:	00010637          	lui	a2,0x10
   1dfc0:	fff60593          	addi	a1,a2,-1 # ffff <_start-0x75>
   1dfc4:	00b7f533          	and	a0,a5,a1
   1dfc8:	0107dd93          	srli	s11,a5,0x10
   1dfcc:	03412783          	lw	a5,52(sp)
   1dfd0:	00b6f6b3          	and	a3,a3,a1
   1dfd4:	01051513          	slli	a0,a0,0x10
   1dfd8:	0107d913          	srli	s2,a5,0x10
   1dfdc:	00b7f5b3          	and	a1,a5,a1
   1dfe0:	00d50533          	add	a0,a0,a3
   1dfe4:	02ba87b3          	mul	a5,s5,a1
   1dfe8:	00a282b3          	add	t0,t0,a0
   1dfec:	02be06b3          	mul	a3,t3,a1
   1dff0:	03c90333          	mul	t1,s2,t3
   1dff4:	00678833          	add	a6,a5,t1
   1dff8:	0106d793          	srli	a5,a3,0x10
   1dffc:	010787b3          	add	a5,a5,a6
   1e000:	032a88b3          	mul	a7,s5,s2
   1e004:	0067f463          	bleu	t1,a5,1e00c <__multf3+0x548>
   1e008:	00c888b3          	add	a7,a7,a2
   1e00c:	0107d993          	srli	s3,a5,0x10
   1e010:	011989b3          	add	s3,s3,a7
   1e014:	000108b7          	lui	a7,0x10
   1e018:	fff88613          	addi	a2,a7,-1 # ffff <_start-0x75>
   1e01c:	00c7f833          	and	a6,a5,a2
   1e020:	00c6f6b3          	and	a3,a3,a2
   1e024:	01081813          	slli	a6,a6,0x10
   1e028:	00d80833          	add	a6,a6,a3
   1e02c:	03e58633          	mul	a2,a1,t5
   1e030:	03e907b3          	mul	a5,s2,t5
   1e034:	01065e93          	srli	t4,a2,0x10
   1e038:	02b486b3          	mul	a3,s1,a1
   1e03c:	00f686b3          	add	a3,a3,a5
   1e040:	00de86b3          	add	a3,t4,a3
   1e044:	03248333          	mul	t1,s1,s2
   1e048:	00f6f463          	bleu	a5,a3,1e050 <__multf3+0x58c>
   1e04c:	01130333          	add	t1,t1,a7
   1e050:	0106d793          	srli	a5,a3,0x10
   1e054:	04812e83          	lw	t4,72(sp)
   1e058:	006787b3          	add	a5,a5,t1
   1e05c:	000103b7          	lui	t2,0x10
   1e060:	02f12423          	sw	a5,40(sp)
   1e064:	fff38793          	addi	a5,t2,-1 # ffff <_start-0x75>
   1e068:	010ed413          	srli	s0,t4,0x10
   1e06c:	00fefeb3          	and	t4,t4,a5
   1e070:	02e408b3          	mul	a7,s0,a4
   1e074:	00f67633          	and	a2,a2,a5
   1e078:	00f6f6b3          	and	a3,a3,a5
   1e07c:	01069693          	slli	a3,a3,0x10
   1e080:	00c686b3          	add	a3,a3,a2
   1e084:	02ee8333          	mul	t1,t4,a4
   1e088:	03df8bb3          	mul	s7,t6,t4
   1e08c:	017887b3          	add	a5,a7,s7
   1e090:	01035893          	srli	a7,t1,0x10
   1e094:	00f888b3          	add	a7,a7,a5
   1e098:	028f8633          	mul	a2,t6,s0
   1e09c:	0178f463          	bleu	s7,a7,1e0a4 <__multf3+0x5e0>
   1e0a0:	00760633          	add	a2,a2,t2
   1e0a4:	0108d793          	srli	a5,a7,0x10
   1e0a8:	00010c37          	lui	s8,0x10
   1e0ac:	00c787b3          	add	a5,a5,a2
   1e0b0:	fffc0613          	addi	a2,s8,-1 # ffff <_start-0x75>
   1e0b4:	02f12623          	sw	a5,44(sp)
   1e0b8:	00c8f7b3          	and	a5,a7,a2
   1e0bc:	03812883          	lw	a7,56(sp)
   1e0c0:	00c37333          	and	t1,t1,a2
   1e0c4:	01079793          	slli	a5,a5,0x10
   1e0c8:	0108d393          	srli	t2,a7,0x10
   1e0cc:	00c8f633          	and	a2,a7,a2
   1e0d0:	006787b3          	add	a5,a5,t1
   1e0d4:	03c608b3          	mul	a7,a2,t3
   1e0d8:	03c38cb3          	mul	s9,t2,t3
   1e0dc:	0108dd13          	srli	s10,a7,0x10
   1e0e0:	02ca8333          	mul	t1,s5,a2
   1e0e4:	01930333          	add	t1,t1,s9
   1e0e8:	006d0333          	add	t1,s10,t1
   1e0ec:	027a8bb3          	mul	s7,s5,t2
   1e0f0:	01937463          	bleu	s9,t1,1e0f8 <__multf3+0x634>
   1e0f4:	018b8bb3          	add	s7,s7,s8
   1e0f8:	01035c13          	srli	s8,t1,0x10
   1e0fc:	017c0bb3          	add	s7,s8,s7
   1e100:	00010c37          	lui	s8,0x10
   1e104:	005b02b3          	add	t0,s6,t0
   1e108:	fffc0c93          	addi	s9,s8,-1 # ffff <_start-0x75>
   1e10c:	00a2b533          	sltu	a0,t0,a0
   1e110:	01937333          	and	t1,t1,s9
   1e114:	00ad8db3          	add	s11,s11,a0
   1e118:	01031313          	slli	t1,t1,0x10
   1e11c:	0198f8b3          	and	a7,a7,s9
   1e120:	014d8a33          	add	s4,s11,s4
   1e124:	011308b3          	add	a7,t1,a7
   1e128:	01028333          	add	t1,t0,a6
   1e12c:	01033833          	sltu	a6,t1,a6
   1e130:	00612a23          	sw	t1,20(sp)
   1e134:	06612223          	sw	t1,100(sp)
   1e138:	013a0333          	add	t1,s4,s3
   1e13c:	01030b33          	add	s6,t1,a6
   1e140:	013339b3          	sltu	s3,t1,s3
   1e144:	010b3833          	sltu	a6,s6,a6
   1e148:	0109e833          	or	a6,s3,a6
   1e14c:	00aa3533          	sltu	a0,s4,a0
   1e150:	00a80533          	add	a0,a6,a0
   1e154:	02812803          	lw	a6,40(sp)
   1e158:	00db02b3          	add	t0,s6,a3
   1e15c:	02812983          	lw	s3,40(sp)
   1e160:	00d2b6b3          	sltu	a3,t0,a3
   1e164:	01050533          	add	a0,a0,a6
   1e168:	02c12303          	lw	t1,44(sp)
   1e16c:	00d50833          	add	a6,a0,a3
   1e170:	00f282b3          	add	t0,t0,a5
   1e174:	01353533          	sltu	a0,a0,s3
   1e178:	00d836b3          	sltu	a3,a6,a3
   1e17c:	00f2b7b3          	sltu	a5,t0,a5
   1e180:	00680db3          	add	s11,a6,t1
   1e184:	00d566b3          	or	a3,a0,a3
   1e188:	02c12503          	lw	a0,44(sp)
   1e18c:	00fd8333          	add	t1,s11,a5
   1e190:	011282b3          	add	t0,t0,a7
   1e194:	0112b8b3          	sltu	a7,t0,a7
   1e198:	00f337b3          	sltu	a5,t1,a5
   1e19c:	00512c23          	sw	t0,24(sp)
   1e1a0:	06512423          	sw	t0,104(sp)
   1e1a4:	017302b3          	add	t0,t1,s7
   1e1a8:	04c12303          	lw	t1,76(sp)
   1e1ac:	01128d33          	add	s10,t0,a7
   1e1b0:	00adbdb3          	sltu	s11,s11,a0
   1e1b4:	00fde7b3          	or	a5,s11,a5
   1e1b8:	0172bbb3          	sltu	s7,t0,s7
   1e1bc:	011d38b3          	sltu	a7,s10,a7
   1e1c0:	00f686b3          	add	a3,a3,a5
   1e1c4:	01035293          	srli	t0,t1,0x10
   1e1c8:	011bea33          	or	s4,s7,a7
   1e1cc:	01937333          	and	t1,t1,s9
   1e1d0:	02e307b3          	mul	a5,t1,a4
   1e1d4:	01468a33          	add	s4,a3,s4
   1e1d8:	02e28733          	mul	a4,t0,a4
   1e1dc:	0107d893          	srli	a7,a5,0x10
   1e1e0:	026f86b3          	mul	a3,t6,t1
   1e1e4:	00d70733          	add	a4,a4,a3
   1e1e8:	00e888b3          	add	a7,a7,a4
   1e1ec:	025f8fb3          	mul	t6,t6,t0
   1e1f0:	00d8f463          	bleu	a3,a7,1e1f8 <__multf3+0x734>
   1e1f4:	018f8fb3          	add	t6,t6,s8
   1e1f8:	03c12983          	lw	s3,60(sp)
   1e1fc:	000106b7          	lui	a3,0x10
   1e200:	fff68513          	addi	a0,a3,-1 # ffff <_start-0x75>
   1e204:	0108d713          	srli	a4,a7,0x10
   1e208:	00a8f8b3          	and	a7,a7,a0
   1e20c:	01f70733          	add	a4,a4,t6
   1e210:	00a7f7b3          	and	a5,a5,a0
   1e214:	0109df93          	srli	t6,s3,0x10
   1e218:	01089893          	slli	a7,a7,0x10
   1e21c:	00a9f9b3          	and	s3,s3,a0
   1e220:	00f888b3          	add	a7,a7,a5
   1e224:	03fa8b33          	mul	s6,s5,t6
   1e228:	00070d93          	mv	s11,a4
   1e22c:	033e07b3          	mul	a5,t3,s3
   1e230:	033a8ab3          	mul	s5,s5,s3
   1e234:	0107d813          	srli	a6,a5,0x10
   1e238:	03cf8e33          	mul	t3,t6,t3
   1e23c:	01ca8ab3          	add	s5,s5,t3
   1e240:	01580ab3          	add	s5,a6,s5
   1e244:	01caf463          	bleu	t3,s5,1e24c <__multf3+0x788>
   1e248:	00db0b33          	add	s6,s6,a3
   1e24c:	010ad813          	srli	a6,s5,0x10
   1e250:	01680733          	add	a4,a6,s6
   1e254:	00010b37          	lui	s6,0x10
   1e258:	02e12423          	sw	a4,40(sp)
   1e25c:	fffb0713          	addi	a4,s6,-1 # ffff <_start-0x75>
   1e260:	00eaf833          	and	a6,s5,a4
   1e264:	00e7f7b3          	and	a5,a5,a4
   1e268:	01081813          	slli	a6,a6,0x10
   1e26c:	00f80833          	add	a6,a6,a5
   1e270:	02be86b3          	mul	a3,t4,a1
   1e274:	03d90e33          	mul	t3,s2,t4
   1e278:	0106d513          	srli	a0,a3,0x10
   1e27c:	02b407b3          	mul	a5,s0,a1
   1e280:	01c787b3          	add	a5,a5,t3
   1e284:	00f507b3          	add	a5,a0,a5
   1e288:	02890733          	mul	a4,s2,s0
   1e28c:	01c7f463          	bleu	t3,a5,1e294 <__multf3+0x7d0>
   1e290:	01670733          	add	a4,a4,s6
   1e294:	0107d513          	srli	a0,a5,0x10
   1e298:	00e50733          	add	a4,a0,a4
   1e29c:	00010b37          	lui	s6,0x10
   1e2a0:	02e12623          	sw	a4,44(sp)
   1e2a4:	fffb0713          	addi	a4,s6,-1 # ffff <_start-0x75>
   1e2a8:	00e7f533          	and	a0,a5,a4
   1e2ac:	00e6f6b3          	and	a3,a3,a4
   1e2b0:	03e38e33          	mul	t3,t2,t5
   1e2b4:	01051513          	slli	a0,a0,0x10
   1e2b8:	00d50533          	add	a0,a0,a3
   1e2bc:	03e60733          	mul	a4,a2,t5
   1e2c0:	02c487b3          	mul	a5,s1,a2
   1e2c4:	01075693          	srli	a3,a4,0x10
   1e2c8:	01c787b3          	add	a5,a5,t3
   1e2cc:	00f687b3          	add	a5,a3,a5
   1e2d0:	02748ab3          	mul	s5,s1,t2
   1e2d4:	01c7f463          	bleu	t3,a5,1e2dc <__multf3+0x818>
   1e2d8:	016a8ab3          	add	s5,s5,s6
   1e2dc:	000106b7          	lui	a3,0x10
   1e2e0:	fff68e13          	addi	t3,a3,-1 # ffff <_start-0x75>
   1e2e4:	01c7f6b3          	and	a3,a5,t3
   1e2e8:	0107db93          	srli	s7,a5,0x10
   1e2ec:	011d07b3          	add	a5,s10,a7
   1e2f0:	01c77733          	and	a4,a4,t3
   1e2f4:	0117b8b3          	sltu	a7,a5,a7
   1e2f8:	01ba0a33          	add	s4,s4,s11
   1e2fc:	01069693          	slli	a3,a3,0x10
   1e300:	00e686b3          	add	a3,a3,a4
   1e304:	011a0d33          	add	s10,s4,a7
   1e308:	02812703          	lw	a4,40(sp)
   1e30c:	011d38b3          	sltu	a7,s10,a7
   1e310:	01ba3a33          	sltu	s4,s4,s11
   1e314:	010787b3          	add	a5,a5,a6
   1e318:	011a6a33          	or	s4,s4,a7
   1e31c:	02812883          	lw	a7,40(sp)
   1e320:	0107b833          	sltu	a6,a5,a6
   1e324:	00ed0b33          	add	s6,s10,a4
   1e328:	02c12703          	lw	a4,44(sp)
   1e32c:	010b0cb3          	add	s9,s6,a6
   1e330:	00a787b3          	add	a5,a5,a0
   1e334:	011b3b33          	sltu	s6,s6,a7
   1e338:	010cb833          	sltu	a6,s9,a6
   1e33c:	00a7b533          	sltu	a0,a5,a0
   1e340:	00ec8733          	add	a4,s9,a4
   1e344:	010b6b33          	or	s6,s6,a6
   1e348:	02c12803          	lw	a6,44(sp)
   1e34c:	00a70c33          	add	s8,a4,a0
   1e350:	015b8bb3          	add	s7,s7,s5
   1e354:	00d787b3          	add	a5,a5,a3
   1e358:	00d7b6b3          	sltu	a3,a5,a3
   1e35c:	017c0ab3          	add	s5,s8,s7
   1e360:	00da8e33          	add	t3,s5,a3
   1e364:	01073733          	sltu	a4,a4,a6
   1e368:	00ac3533          	sltu	a0,s8,a0
   1e36c:	00a76733          	or	a4,a4,a0
   1e370:	00de36b3          	sltu	a3,t3,a3
   1e374:	016a0a33          	add	s4,s4,s6
   1e378:	017abab3          	sltu	s5,s5,s7
   1e37c:	00ea0a33          	add	s4,s4,a4
   1e380:	00daeab3          	or	s5,s5,a3
   1e384:	015a06b3          	add	a3,s4,s5
   1e388:	02ce8833          	mul	a6,t4,a2
   1e38c:	06f12623          	sw	a5,108(sp)
   1e390:	03d38a33          	mul	s4,t2,t4
   1e394:	01085513          	srli	a0,a6,0x10
   1e398:	02c40733          	mul	a4,s0,a2
   1e39c:	01470733          	add	a4,a4,s4
   1e3a0:	00e50733          	add	a4,a0,a4
   1e3a4:	027408b3          	mul	a7,s0,t2
   1e3a8:	01477663          	bleu	s4,a4,1e3b4 <__multf3+0x8f0>
   1e3ac:	00010537          	lui	a0,0x10
   1e3b0:	00a888b3          	add	a7,a7,a0
   1e3b4:	00010a37          	lui	s4,0x10
   1e3b8:	01075513          	srli	a0,a4,0x10
   1e3bc:	fffa0a93          	addi	s5,s4,-1 # ffff <_start-0x75>
   1e3c0:	011508b3          	add	a7,a0,a7
   1e3c4:	01577533          	and	a0,a4,s5
   1e3c8:	01587833          	and	a6,a6,s5
   1e3cc:	01051513          	slli	a0,a0,0x10
   1e3d0:	02690ab3          	mul	s5,s2,t1
   1e3d4:	01050533          	add	a0,a0,a6
   1e3d8:	02b30833          	mul	a6,t1,a1
   1e3dc:	02b285b3          	mul	a1,t0,a1
   1e3e0:	01085713          	srli	a4,a6,0x10
   1e3e4:	015585b3          	add	a1,a1,s5
   1e3e8:	00b70733          	add	a4,a4,a1
   1e3ec:	02590933          	mul	s2,s2,t0
   1e3f0:	01577463          	bleu	s5,a4,1e3f8 <__multf3+0x934>
   1e3f4:	01490933          	add	s2,s2,s4
   1e3f8:	00010ab7          	lui	s5,0x10
   1e3fc:	01075593          	srli	a1,a4,0x10
   1e400:	fffa8a13          	addi	s4,s5,-1 # ffff <_start-0x75>
   1e404:	01487833          	and	a6,a6,s4
   1e408:	01258933          	add	s2,a1,s2
   1e40c:	014775b3          	and	a1,a4,s4
   1e410:	01059593          	slli	a1,a1,0x10
   1e414:	03e98733          	mul	a4,s3,t5
   1e418:	010585b3          	add	a1,a1,a6
   1e41c:	03ef8f33          	mul	t5,t6,t5
   1e420:	01075813          	srli	a6,a4,0x10
   1e424:	03f48a33          	mul	s4,s1,t6
   1e428:	033484b3          	mul	s1,s1,s3
   1e42c:	01e484b3          	add	s1,s1,t5
   1e430:	009804b3          	add	s1,a6,s1
   1e434:	01e4f463          	bleu	t5,s1,1e43c <__multf3+0x978>
   1e438:	015a0a33          	add	s4,s4,s5
   1e43c:	0104db13          	srli	s6,s1,0x10
   1e440:	014b0b33          	add	s6,s6,s4
   1e444:	00010a37          	lui	s4,0x10
   1e448:	fffa0f13          	addi	t5,s4,-1 # ffff <_start-0x75>
   1e44c:	01e4f833          	and	a6,s1,t5
   1e450:	01e77733          	and	a4,a4,t5
   1e454:	026384b3          	mul	s1,t2,t1
   1e458:	01081813          	slli	a6,a6,0x10
   1e45c:	00e80833          	add	a6,a6,a4
   1e460:	02660f33          	mul	t5,a2,t1
   1e464:	02c28633          	mul	a2,t0,a2
   1e468:	010f5713          	srli	a4,t5,0x10
   1e46c:	00960633          	add	a2,a2,s1
   1e470:	00c70633          	add	a2,a4,a2
   1e474:	025383b3          	mul	t2,t2,t0
   1e478:	00967463          	bleu	s1,a2,1e480 <__multf3+0x9bc>
   1e47c:	014383b3          	add	t2,t2,s4
   1e480:	00010a37          	lui	s4,0x10
   1e484:	01065713          	srli	a4,a2,0x10
   1e488:	fffa0493          	addi	s1,s4,-1 # ffff <_start-0x75>
   1e48c:	007703b3          	add	t2,a4,t2
   1e490:	00967733          	and	a4,a2,s1
   1e494:	009f7f33          	and	t5,t5,s1
   1e498:	01071713          	slli	a4,a4,0x10
   1e49c:	01e70733          	add	a4,a4,t5
   1e4a0:	03340633          	mul	a2,s0,s3
   1e4a4:	033e8f33          	mul	t5,t4,s3
   1e4a8:	03df8eb3          	mul	t4,t6,t4
   1e4ac:	010f5a93          	srli	s5,t5,0x10
   1e4b0:	01d60633          	add	a2,a2,t4
   1e4b4:	00ca8633          	add	a2,s5,a2
   1e4b8:	03f404b3          	mul	s1,s0,t6
   1e4bc:	01d67463          	bleu	t4,a2,1e4c4 <__multf3+0xa00>
   1e4c0:	014484b3          	add	s1,s1,s4
   1e4c4:	01065c13          	srli	s8,a2,0x10
   1e4c8:	00010cb7          	lui	s9,0x10
   1e4cc:	009c0c33          	add	s8,s8,s1
   1e4d0:	00ae0e33          	add	t3,t3,a0
   1e4d4:	fffc8493          	addi	s1,s9,-1 # ffff <_start-0x75>
   1e4d8:	00ae3533          	sltu	a0,t3,a0
   1e4dc:	011686b3          	add	a3,a3,a7
   1e4e0:	00967633          	and	a2,a2,s1
   1e4e4:	00a68db3          	add	s11,a3,a0
   1e4e8:	009f7f33          	and	t5,t5,s1
   1e4ec:	00be0e33          	add	t3,t3,a1
   1e4f0:	01061613          	slli	a2,a2,0x10
   1e4f4:	01e60633          	add	a2,a2,t5
   1e4f8:	00be35b3          	sltu	a1,t3,a1
   1e4fc:	012d8f33          	add	t5,s11,s2
   1e500:	010e0e33          	add	t3,t3,a6
   1e504:	00bf0d33          	add	s10,t5,a1
   1e508:	016d0eb3          	add	t4,s10,s6
   1e50c:	07c12823          	sw	t3,112(sp)
   1e510:	010e3e33          	sltu	t3,t3,a6
   1e514:	01ce8a33          	add	s4,t4,t3
   1e518:	0116b6b3          	sltu	a3,a3,a7
   1e51c:	00bd35b3          	sltu	a1,s10,a1
   1e520:	00adb533          	sltu	a0,s11,a0
   1e524:	012f3933          	sltu	s2,t5,s2
   1e528:	00a6e533          	or	a0,a3,a0
   1e52c:	00b96933          	or	s2,s2,a1
   1e530:	016ebeb3          	sltu	t4,t4,s6
   1e534:	01ca3e33          	sltu	t3,s4,t3
   1e538:	01250533          	add	a0,a0,s2
   1e53c:	01ceeeb3          	or	t4,t4,t3
   1e540:	00ea0833          	add	a6,s4,a4
   1e544:	01d50533          	add	a0,a0,t4
   1e548:	00e83733          	sltu	a4,a6,a4
   1e54c:	00750533          	add	a0,a0,t2
   1e550:	00e506b3          	add	a3,a0,a4
   1e554:	007533b3          	sltu	t2,a0,t2
   1e558:	03330533          	mul	a0,t1,s3
   1e55c:	00c80833          	add	a6,a6,a2
   1e560:	00e6b733          	sltu	a4,a3,a4
   1e564:	00c83633          	sltu	a2,a6,a2
   1e568:	018686b3          	add	a3,a3,s8
   1e56c:	00c685b3          	add	a1,a3,a2
   1e570:	0186bc33          	sltu	s8,a3,s8
   1e574:	00c5b633          	sltu	a2,a1,a2
   1e578:	07012a23          	sw	a6,116(sp)
   1e57c:	00e3e733          	or	a4,t2,a4
   1e580:	026f8333          	mul	t1,t6,t1
   1e584:	01055693          	srli	a3,a0,0x10
   1e588:	00cc6633          	or	a2,s8,a2
   1e58c:	033289b3          	mul	s3,t0,s3
   1e590:	006989b3          	add	s3,s3,t1
   1e594:	03f28fb3          	mul	t6,t0,t6
   1e598:	013682b3          	add	t0,a3,s3
   1e59c:	0062f463          	bleu	t1,t0,1e5a4 <__multf3+0xae0>
   1e5a0:	019f8fb3          	add	t6,t6,s9
   1e5a4:	0092f6b3          	and	a3,t0,s1
   1e5a8:	01069693          	slli	a3,a3,0x10
   1e5ac:	009574b3          	and	s1,a0,s1
   1e5b0:	009684b3          	add	s1,a3,s1
   1e5b4:	0102d293          	srli	t0,t0,0x10
   1e5b8:	009585b3          	add	a1,a1,s1
   1e5bc:	00e282b3          	add	t0,t0,a4
   1e5c0:	01412683          	lw	a3,20(sp)
   1e5c4:	02412703          	lw	a4,36(sp)
   1e5c8:	00c282b3          	add	t0,t0,a2
   1e5cc:	0095b4b3          	sltu	s1,a1,s1
   1e5d0:	009282b3          	add	t0,t0,s1
   1e5d4:	01f28fb3          	add	t6,t0,t6
   1e5d8:	00d762b3          	or	t0,a4,a3
   1e5dc:	01812703          	lw	a4,24(sp)
   1e5e0:	00d79793          	slli	a5,a5,0xd
   1e5e4:	07f12e23          	sw	t6,124(sp)
   1e5e8:	005762b3          	or	t0,a4,t0
   1e5ec:	06b12c23          	sw	a1,120(sp)
   1e5f0:	0057e7b3          	or	a5,a5,t0
   1e5f4:	06010713          	addi	a4,sp,96
   1e5f8:	00000613          	li	a2,0
   1e5fc:	00400513          	li	a0,4
   1e600:	00c72683          	lw	a3,12(a4)
   1e604:	01072583          	lw	a1,16(a4)
   1e608:	00160613          	addi	a2,a2,1
   1e60c:	0136d693          	srli	a3,a3,0x13
   1e610:	00d59593          	slli	a1,a1,0xd
   1e614:	00b6e6b3          	or	a3,a3,a1
   1e618:	00d72023          	sw	a3,0(a4)
   1e61c:	00470713          	addi	a4,a4,4
   1e620:	fea610e3          	bne	a2,a0,1e600 <__multf3+0xb3c>
   1e624:	06012703          	lw	a4,96(sp)
   1e628:	06812683          	lw	a3,104(sp)
   1e62c:	00f037b3          	snez	a5,a5
   1e630:	00e7e7b3          	or	a5,a5,a4
   1e634:	04d12c23          	sw	a3,88(sp)
   1e638:	06c12703          	lw	a4,108(sp)
   1e63c:	06412683          	lw	a3,100(sp)
   1e640:	04f12823          	sw	a5,80(sp)
   1e644:	04e12e23          	sw	a4,92(sp)
   1e648:	04d12a23          	sw	a3,84(sp)
   1e64c:	00b71693          	slli	a3,a4,0xb
   1e650:	2406d463          	bgez	a3,1e898 <__multf3+0xdd4>
   1e654:	01f79793          	slli	a5,a5,0x1f
   1e658:	05010713          	addi	a4,sp,80
   1e65c:	00000613          	li	a2,0
   1e660:	00300513          	li	a0,3
   1e664:	00072683          	lw	a3,0(a4)
   1e668:	00472583          	lw	a1,4(a4)
   1e66c:	00160613          	addi	a2,a2,1
   1e670:	0016d693          	srli	a3,a3,0x1
   1e674:	01f59593          	slli	a1,a1,0x1f
   1e678:	00b6e6b3          	or	a3,a3,a1
   1e67c:	00d72023          	sw	a3,0(a4)
   1e680:	00470713          	addi	a4,a4,4
   1e684:	fea610e3          	bne	a2,a0,1e664 <__multf3+0xba0>
   1e688:	05c12703          	lw	a4,92(sp)
   1e68c:	00f037b3          	snez	a5,a5
   1e690:	00175713          	srli	a4,a4,0x1
   1e694:	04e12e23          	sw	a4,92(sp)
   1e698:	05012703          	lw	a4,80(sp)
   1e69c:	00f767b3          	or	a5,a4,a5
   1e6a0:	04f12823          	sw	a5,80(sp)
   1e6a4:	01c12703          	lw	a4,28(sp)
   1e6a8:	000047b7          	lui	a5,0x4
   1e6ac:	fff78793          	addi	a5,a5,-1 # 3fff <_start-0xc075>
   1e6b0:	00f707b3          	add	a5,a4,a5
   1e6b4:	20f05463          	blez	a5,1e8bc <__multf3+0xdf8>
   1e6b8:	05012703          	lw	a4,80(sp)
   1e6bc:	00777693          	andi	a3,a4,7
   1e6c0:	04068463          	beqz	a3,1e708 <__multf3+0xc44>
   1e6c4:	00f77693          	andi	a3,a4,15
   1e6c8:	00400613          	li	a2,4
   1e6cc:	02c68e63          	beq	a3,a2,1e708 <__multf3+0xc44>
   1e6d0:	05412683          	lw	a3,84(sp)
   1e6d4:	00470713          	addi	a4,a4,4
   1e6d8:	04e12823          	sw	a4,80(sp)
   1e6dc:	00473713          	sltiu	a4,a4,4
   1e6e0:	00d706b3          	add	a3,a4,a3
   1e6e4:	00e6b733          	sltu	a4,a3,a4
   1e6e8:	04d12a23          	sw	a3,84(sp)
   1e6ec:	05812683          	lw	a3,88(sp)
   1e6f0:	00d706b3          	add	a3,a4,a3
   1e6f4:	04d12c23          	sw	a3,88(sp)
   1e6f8:	00e6b6b3          	sltu	a3,a3,a4
   1e6fc:	05c12703          	lw	a4,92(sp)
   1e700:	00e686b3          	add	a3,a3,a4
   1e704:	04d12e23          	sw	a3,92(sp)
   1e708:	05c12703          	lw	a4,92(sp)
   1e70c:	00b71693          	slli	a3,a4,0xb
   1e710:	0206d063          	bgez	a3,1e730 <__multf3+0xc6c>
   1e714:	fff007b7          	lui	a5,0xfff00
   1e718:	fff78793          	addi	a5,a5,-1 # ffefffff <__global_pointer$+0xffedce57>
   1e71c:	00f77733          	and	a4,a4,a5
   1e720:	04e12e23          	sw	a4,92(sp)
   1e724:	01c12703          	lw	a4,28(sp)
   1e728:	000047b7          	lui	a5,0x4
   1e72c:	00f707b3          	add	a5,a4,a5
   1e730:	05010713          	addi	a4,sp,80
   1e734:	00000613          	li	a2,0
   1e738:	00300513          	li	a0,3
   1e73c:	00072683          	lw	a3,0(a4)
   1e740:	00472583          	lw	a1,4(a4)
   1e744:	00160613          	addi	a2,a2,1
   1e748:	0036d693          	srli	a3,a3,0x3
   1e74c:	01d59593          	slli	a1,a1,0x1d
   1e750:	00b6e6b3          	or	a3,a3,a1
   1e754:	00d72023          	sw	a3,0(a4)
   1e758:	00470713          	addi	a4,a4,4
   1e75c:	fea610e3          	bne	a2,a0,1e73c <__multf3+0xc78>
   1e760:	00008737          	lui	a4,0x8
   1e764:	ffe70693          	addi	a3,a4,-2 # 7ffe <_start-0x8076>
   1e768:	12f6ce63          	blt	a3,a5,1e8a4 <__multf3+0xde0>
   1e76c:	05c12703          	lw	a4,92(sp)
   1e770:	00375713          	srli	a4,a4,0x3
   1e774:	04e12e23          	sw	a4,92(sp)
   1e778:	05c12703          	lw	a4,92(sp)
   1e77c:	800106b7          	lui	a3,0x80010
   1e780:	fff68693          	addi	a3,a3,-1 # 8000ffff <__global_pointer$+0x7ffece57>
   1e784:	06e11623          	sh	a4,108(sp)
   1e788:	00008737          	lui	a4,0x8
   1e78c:	fff70713          	addi	a4,a4,-1 # 7fff <_start-0x8075>
   1e790:	00e7f7b3          	and	a5,a5,a4
   1e794:	06c12703          	lw	a4,108(sp)
   1e798:	01079793          	slli	a5,a5,0x10
   1e79c:	0bc12083          	lw	ra,188(sp)
   1e7a0:	00d77733          	and	a4,a4,a3
   1e7a4:	00f767b3          	or	a5,a4,a5
   1e7a8:	01012703          	lw	a4,16(sp)
   1e7ac:	800006b7          	lui	a3,0x80000
   1e7b0:	fff6c693          	not	a3,a3
   1e7b4:	01f71713          	slli	a4,a4,0x1f
   1e7b8:	00d7f7b3          	and	a5,a5,a3
   1e7bc:	00e7e7b3          	or	a5,a5,a4
   1e7c0:	00c12683          	lw	a3,12(sp)
   1e7c4:	05012703          	lw	a4,80(sp)
   1e7c8:	0b812403          	lw	s0,184(sp)
   1e7cc:	00f6a623          	sw	a5,12(a3) # 8000000c <__global_pointer$+0x7ffdce64>
   1e7d0:	00e6a023          	sw	a4,0(a3)
   1e7d4:	05412703          	lw	a4,84(sp)
   1e7d8:	0b412483          	lw	s1,180(sp)
   1e7dc:	0b012903          	lw	s2,176(sp)
   1e7e0:	00e6a223          	sw	a4,4(a3)
   1e7e4:	05812703          	lw	a4,88(sp)
   1e7e8:	0ac12983          	lw	s3,172(sp)
   1e7ec:	0a812a03          	lw	s4,168(sp)
   1e7f0:	00e6a423          	sw	a4,8(a3)
   1e7f4:	0a412a83          	lw	s5,164(sp)
   1e7f8:	0a012b03          	lw	s6,160(sp)
   1e7fc:	09c12b83          	lw	s7,156(sp)
   1e800:	09812c03          	lw	s8,152(sp)
   1e804:	09412c83          	lw	s9,148(sp)
   1e808:	09012d03          	lw	s10,144(sp)
   1e80c:	08c12d83          	lw	s11,140(sp)
   1e810:	00068513          	mv	a0,a3
   1e814:	0c010113          	addi	sp,sp,192
   1e818:	00008067          	ret
   1e81c:	01312823          	sw	s3,16(sp)
   1e820:	03012783          	lw	a5,48(sp)
   1e824:	04f12823          	sw	a5,80(sp)
   1e828:	03412783          	lw	a5,52(sp)
   1e82c:	04f12a23          	sw	a5,84(sp)
   1e830:	03812783          	lw	a5,56(sp)
   1e834:	04f12c23          	sw	a5,88(sp)
   1e838:	03c12783          	lw	a5,60(sp)
   1e83c:	04f12e23          	sw	a5,92(sp)
   1e840:	00200793          	li	a5,2
   1e844:	28fb8063          	beq	s7,a5,1eac4 <__multf3+0x1000>
   1e848:	00300793          	li	a5,3
   1e84c:	28fb8a63          	beq	s7,a5,1eae0 <__multf3+0x101c>
   1e850:	00100793          	li	a5,1
   1e854:	e4fb98e3          	bne	s7,a5,1e6a4 <__multf3+0xbe0>
   1e858:	04012e23          	sw	zero,92(sp)
   1e85c:	04012c23          	sw	zero,88(sp)
   1e860:	04012a23          	sw	zero,84(sp)
   1e864:	04012823          	sw	zero,80(sp)
   1e868:	21c0006f          	j	1ea84 <__multf3+0xfc0>
   1e86c:	01212823          	sw	s2,16(sp)
   1e870:	04012783          	lw	a5,64(sp)
   1e874:	00070b93          	mv	s7,a4
   1e878:	04f12823          	sw	a5,80(sp)
   1e87c:	04412783          	lw	a5,68(sp)
   1e880:	04f12a23          	sw	a5,84(sp)
   1e884:	04812783          	lw	a5,72(sp)
   1e888:	04f12c23          	sw	a5,88(sp)
   1e88c:	04c12783          	lw	a5,76(sp)
   1e890:	04f12e23          	sw	a5,92(sp)
   1e894:	fadff06f          	j	1e840 <__multf3+0xd7c>
   1e898:	02012783          	lw	a5,32(sp)
   1e89c:	00f12e23          	sw	a5,28(sp)
   1e8a0:	e05ff06f          	j	1e6a4 <__multf3+0xbe0>
   1e8a4:	04012e23          	sw	zero,92(sp)
   1e8a8:	04012c23          	sw	zero,88(sp)
   1e8ac:	04012a23          	sw	zero,84(sp)
   1e8b0:	04012823          	sw	zero,80(sp)
   1e8b4:	fff70793          	addi	a5,a4,-1
   1e8b8:	ec1ff06f          	j	1e778 <__multf3+0xcb4>
   1e8bc:	00100693          	li	a3,1
   1e8c0:	40f687b3          	sub	a5,a3,a5
   1e8c4:	07400713          	li	a4,116
   1e8c8:	1cf74263          	blt	a4,a5,1ea8c <__multf3+0xfc8>
   1e8cc:	4057d613          	srai	a2,a5,0x5
   1e8d0:	01f7f693          	andi	a3,a5,31
   1e8d4:	00000713          	li	a4,0
   1e8d8:	00000793          	li	a5,0
   1e8dc:	00271593          	slli	a1,a4,0x2
   1e8e0:	02c71263          	bne	a4,a2,1e904 <__multf3+0xe40>
   1e8e4:	04069863          	bnez	a3,1e934 <__multf3+0xe70>
   1e8e8:	00300513          	li	a0,3
   1e8ec:	05010613          	addi	a2,sp,80
   1e8f0:	40e50533          	sub	a0,a0,a4
   1e8f4:	02d55463          	ble	a3,a0,1e91c <__multf3+0xe58>
   1e8f8:	00400693          	li	a3,4
   1e8fc:	40e68733          	sub	a4,a3,a4
   1e900:	0840006f          	j	1e984 <__multf3+0xec0>
   1e904:	05010513          	addi	a0,sp,80
   1e908:	00b505b3          	add	a1,a0,a1
   1e90c:	0005a583          	lw	a1,0(a1)
   1e910:	00170713          	addi	a4,a4,1
   1e914:	00b7e7b3          	or	a5,a5,a1
   1e918:	fc5ff06f          	j	1e8dc <__multf3+0xe18>
   1e91c:	00b60833          	add	a6,a2,a1
   1e920:	00082803          	lw	a6,0(a6)
   1e924:	00168693          	addi	a3,a3,1
   1e928:	00460613          	addi	a2,a2,4
   1e92c:	ff062e23          	sw	a6,-4(a2)
   1e930:	fc5ff06f          	j	1e8f4 <__multf3+0xe30>
   1e934:	08010613          	addi	a2,sp,128
   1e938:	00b60633          	add	a2,a2,a1
   1e93c:	fd062603          	lw	a2,-48(a2)
   1e940:	02000813          	li	a6,32
   1e944:	40d80833          	sub	a6,a6,a3
   1e948:	01061633          	sll	a2,a2,a6
   1e94c:	00c7e7b3          	or	a5,a5,a2
   1e950:	00300613          	li	a2,3
   1e954:	05010893          	addi	a7,sp,80
   1e958:	00000313          	li	t1,0
   1e95c:	40e60633          	sub	a2,a2,a4
   1e960:	02c34663          	blt	t1,a2,1e98c <__multf3+0xec8>
   1e964:	00400593          	li	a1,4
   1e968:	40e58733          	sub	a4,a1,a4
   1e96c:	00261613          	slli	a2,a2,0x2
   1e970:	08010593          	addi	a1,sp,128
   1e974:	00c58633          	add	a2,a1,a2
   1e978:	05c12583          	lw	a1,92(sp)
   1e97c:	00d5d6b3          	srl	a3,a1,a3
   1e980:	fcd62823          	sw	a3,-48(a2)
   1e984:	00400613          	li	a2,4
   1e988:	0400006f          	j	1e9c8 <__multf3+0xf04>
   1e98c:	00b88e33          	add	t3,a7,a1
   1e990:	000e2503          	lw	a0,0(t3)
   1e994:	004e2e03          	lw	t3,4(t3)
   1e998:	00130313          	addi	t1,t1,1
   1e99c:	00d55533          	srl	a0,a0,a3
   1e9a0:	010e1e33          	sll	t3,t3,a6
   1e9a4:	01c56533          	or	a0,a0,t3
   1e9a8:	00a8a023          	sw	a0,0(a7)
   1e9ac:	00488893          	addi	a7,a7,4
   1e9b0:	fb1ff06f          	j	1e960 <__multf3+0xe9c>
   1e9b4:	00271693          	slli	a3,a4,0x2
   1e9b8:	05010593          	addi	a1,sp,80
   1e9bc:	00d586b3          	add	a3,a1,a3
   1e9c0:	0006a023          	sw	zero,0(a3)
   1e9c4:	00170713          	addi	a4,a4,1
   1e9c8:	fec716e3          	bne	a4,a2,1e9b4 <__multf3+0xef0>
   1e9cc:	05012683          	lw	a3,80(sp)
   1e9d0:	00f037b3          	snez	a5,a5
   1e9d4:	00d7e7b3          	or	a5,a5,a3
   1e9d8:	04f12823          	sw	a5,80(sp)
   1e9dc:	0077f693          	andi	a3,a5,7
   1e9e0:	04068263          	beqz	a3,1ea24 <__multf3+0xf60>
   1e9e4:	00f7f693          	andi	a3,a5,15
   1e9e8:	02e68e63          	beq	a3,a4,1ea24 <__multf3+0xf60>
   1e9ec:	05412703          	lw	a4,84(sp)
   1e9f0:	00478793          	addi	a5,a5,4 # 4004 <_start-0xc070>
   1e9f4:	04f12823          	sw	a5,80(sp)
   1e9f8:	0047b793          	sltiu	a5,a5,4
   1e9fc:	00e78733          	add	a4,a5,a4
   1ea00:	00f737b3          	sltu	a5,a4,a5
   1ea04:	04e12a23          	sw	a4,84(sp)
   1ea08:	05812703          	lw	a4,88(sp)
   1ea0c:	00e78733          	add	a4,a5,a4
   1ea10:	04e12c23          	sw	a4,88(sp)
   1ea14:	00f73733          	sltu	a4,a4,a5
   1ea18:	05c12783          	lw	a5,92(sp)
   1ea1c:	00f70733          	add	a4,a4,a5
   1ea20:	04e12e23          	sw	a4,92(sp)
   1ea24:	05c12783          	lw	a5,92(sp)
   1ea28:	00c79713          	slli	a4,a5,0xc
   1ea2c:	00075e63          	bgez	a4,1ea48 <__multf3+0xf84>
   1ea30:	04012e23          	sw	zero,92(sp)
   1ea34:	04012c23          	sw	zero,88(sp)
   1ea38:	04012a23          	sw	zero,84(sp)
   1ea3c:	04012823          	sw	zero,80(sp)
   1ea40:	00100793          	li	a5,1
   1ea44:	d35ff06f          	j	1e778 <__multf3+0xcb4>
   1ea48:	05010793          	addi	a5,sp,80
   1ea4c:	00000693          	li	a3,0
   1ea50:	00300593          	li	a1,3
   1ea54:	0007a703          	lw	a4,0(a5)
   1ea58:	0047a603          	lw	a2,4(a5)
   1ea5c:	00168693          	addi	a3,a3,1
   1ea60:	00375713          	srli	a4,a4,0x3
   1ea64:	01d61613          	slli	a2,a2,0x1d
   1ea68:	00c76733          	or	a4,a4,a2
   1ea6c:	00e7a023          	sw	a4,0(a5)
   1ea70:	00478793          	addi	a5,a5,4
   1ea74:	feb690e3          	bne	a3,a1,1ea54 <__multf3+0xf90>
   1ea78:	05c12783          	lw	a5,92(sp)
   1ea7c:	0037d793          	srli	a5,a5,0x3
   1ea80:	04f12e23          	sw	a5,92(sp)
   1ea84:	00000793          	li	a5,0
   1ea88:	cf1ff06f          	j	1e778 <__multf3+0xcb4>
   1ea8c:	05412783          	lw	a5,84(sp)
   1ea90:	05012703          	lw	a4,80(sp)
   1ea94:	00f76733          	or	a4,a4,a5
   1ea98:	05812783          	lw	a5,88(sp)
   1ea9c:	00f76733          	or	a4,a4,a5
   1eaa0:	05c12783          	lw	a5,92(sp)
   1eaa4:	00f76733          	or	a4,a4,a5
   1eaa8:	00000793          	li	a5,0
   1eaac:	cc0706e3          	beqz	a4,1e778 <__multf3+0xcb4>
   1eab0:	04012e23          	sw	zero,92(sp)
   1eab4:	04012c23          	sw	zero,88(sp)
   1eab8:	04012a23          	sw	zero,84(sp)
   1eabc:	04012823          	sw	zero,80(sp)
   1eac0:	cb9ff06f          	j	1e778 <__multf3+0xcb4>
   1eac4:	000087b7          	lui	a5,0x8
   1eac8:	04012e23          	sw	zero,92(sp)
   1eacc:	04012c23          	sw	zero,88(sp)
   1ead0:	04012a23          	sw	zero,84(sp)
   1ead4:	04012823          	sw	zero,80(sp)
   1ead8:	fff78793          	addi	a5,a5,-1 # 7fff <_start-0x8075>
   1eadc:	c9dff06f          	j	1e778 <__multf3+0xcb4>
   1eae0:	000087b7          	lui	a5,0x8
   1eae4:	04f12e23          	sw	a5,92(sp)
   1eae8:	04012c23          	sw	zero,88(sp)
   1eaec:	04012a23          	sw	zero,84(sp)
   1eaf0:	04012823          	sw	zero,80(sp)
   1eaf4:	fff78793          	addi	a5,a5,-1 # 7fff <_start-0x8075>
   1eaf8:	00012823          	sw	zero,16(sp)
   1eafc:	c7dff06f          	j	1e778 <__multf3+0xcb4>

0001eb00 <__subtf3>:
   1eb00:	fa010113          	addi	sp,sp,-96
   1eb04:	0085a783          	lw	a5,8(a1)
   1eb08:	05212823          	sw	s2,80(sp)
   1eb0c:	00c5a903          	lw	s2,12(a1)
   1eb10:	0005a683          	lw	a3,0(a1)
   1eb14:	0045a703          	lw	a4,4(a1)
   1eb18:	04912a23          	sw	s1,84(sp)
   1eb1c:	02f12c23          	sw	a5,56(sp)
   1eb20:	00050493          	mv	s1,a0
   1eb24:	00f12c23          	sw	a5,24(sp)
   1eb28:	00062e03          	lw	t3,0(a2)
   1eb2c:	01091793          	slli	a5,s2,0x10
   1eb30:	00462303          	lw	t1,4(a2)
   1eb34:	00862883          	lw	a7,8(a2)
   1eb38:	00c62503          	lw	a0,12(a2)
   1eb3c:	04812c23          	sw	s0,88(sp)
   1eb40:	0107d793          	srli	a5,a5,0x10
   1eb44:	00191413          	slli	s0,s2,0x1
   1eb48:	03212e23          	sw	s2,60(sp)
   1eb4c:	04112e23          	sw	ra,92(sp)
   1eb50:	05312623          	sw	s3,76(sp)
   1eb54:	05412423          	sw	s4,72(sp)
   1eb58:	05512223          	sw	s5,68(sp)
   1eb5c:	02d12823          	sw	a3,48(sp)
   1eb60:	02e12a23          	sw	a4,52(sp)
   1eb64:	00d12823          	sw	a3,16(sp)
   1eb68:	00e12a23          	sw	a4,20(sp)
   1eb6c:	00f12e23          	sw	a5,28(sp)
   1eb70:	01145413          	srli	s0,s0,0x11
   1eb74:	01f95913          	srli	s2,s2,0x1f
   1eb78:	01010813          	addi	a6,sp,16
   1eb7c:	01c10593          	addi	a1,sp,28
   1eb80:	0005a783          	lw	a5,0(a1)
   1eb84:	ffc5a703          	lw	a4,-4(a1)
   1eb88:	ffc58593          	addi	a1,a1,-4
   1eb8c:	00379793          	slli	a5,a5,0x3
   1eb90:	01d75713          	srli	a4,a4,0x1d
   1eb94:	00e7e7b3          	or	a5,a5,a4
   1eb98:	00f5a223          	sw	a5,4(a1)
   1eb9c:	feb812e3          	bne	a6,a1,1eb80 <__subtf3+0x80>
   1eba0:	01012683          	lw	a3,16(sp)
   1eba4:	01051793          	slli	a5,a0,0x10
   1eba8:	00151613          	slli	a2,a0,0x1
   1ebac:	00369693          	slli	a3,a3,0x3
   1ebb0:	0107d793          	srli	a5,a5,0x10
   1ebb4:	02612a23          	sw	t1,52(sp)
   1ebb8:	03112c23          	sw	a7,56(sp)
   1ebbc:	02a12e23          	sw	a0,60(sp)
   1ebc0:	02612223          	sw	t1,36(sp)
   1ebc4:	03112423          	sw	a7,40(sp)
   1ebc8:	00d12823          	sw	a3,16(sp)
   1ebcc:	03c12823          	sw	t3,48(sp)
   1ebd0:	03c12023          	sw	t3,32(sp)
   1ebd4:	02f12623          	sw	a5,44(sp)
   1ebd8:	01165613          	srli	a2,a2,0x11
   1ebdc:	01f55513          	srli	a0,a0,0x1f
   1ebe0:	02010893          	addi	a7,sp,32
   1ebe4:	02c10313          	addi	t1,sp,44
   1ebe8:	00032783          	lw	a5,0(t1)
   1ebec:	ffc32703          	lw	a4,-4(t1)
   1ebf0:	ffc30313          	addi	t1,t1,-4
   1ebf4:	00379793          	slli	a5,a5,0x3
   1ebf8:	01d75713          	srli	a4,a4,0x1d
   1ebfc:	00e7e7b3          	or	a5,a5,a4
   1ec00:	00f32223          	sw	a5,4(t1)
   1ec04:	fe6892e3          	bne	a7,t1,1ebe8 <__subtf3+0xe8>
   1ec08:	02012783          	lw	a5,32(sp)
   1ec0c:	00008737          	lui	a4,0x8
   1ec10:	fff70713          	addi	a4,a4,-1 # 7fff <_start-0x8075>
   1ec14:	00379793          	slli	a5,a5,0x3
   1ec18:	02f12023          	sw	a5,32(sp)
   1ec1c:	02e61063          	bne	a2,a4,1ec3c <__subtf3+0x13c>
   1ec20:	02812e03          	lw	t3,40(sp)
   1ec24:	02412703          	lw	a4,36(sp)
   1ec28:	01c76733          	or	a4,a4,t3
   1ec2c:	02c12e03          	lw	t3,44(sp)
   1ec30:	01c76733          	or	a4,a4,t3
   1ec34:	00f76733          	or	a4,a4,a5
   1ec38:	00071463          	bnez	a4,1ec40 <__subtf3+0x140>
   1ec3c:	00154513          	xori	a0,a0,1
   1ec40:	40c40733          	sub	a4,s0,a2
   1ec44:	112518e3          	bne	a0,s2,1f554 <__subtf3+0xa54>
   1ec48:	30e05463          	blez	a4,1ef50 <__subtf3+0x450>
   1ec4c:	14061863          	bnez	a2,1ed9c <__subtf3+0x29c>
   1ec50:	02412503          	lw	a0,36(sp)
   1ec54:	02812583          	lw	a1,40(sp)
   1ec58:	02c12803          	lw	a6,44(sp)
   1ec5c:	00b56633          	or	a2,a0,a1
   1ec60:	01066633          	or	a2,a2,a6
   1ec64:	00f66633          	or	a2,a2,a5
   1ec68:	02061463          	bnez	a2,1ec90 <__subtf3+0x190>
   1ec6c:	01412783          	lw	a5,20(sp)
   1ec70:	02d12823          	sw	a3,48(sp)
   1ec74:	00070413          	mv	s0,a4
   1ec78:	02f12a23          	sw	a5,52(sp)
   1ec7c:	01812783          	lw	a5,24(sp)
   1ec80:	02f12c23          	sw	a5,56(sp)
   1ec84:	01c12783          	lw	a5,28(sp)
   1ec88:	02f12e23          	sw	a5,60(sp)
   1ec8c:	3080006f          	j	1ef94 <__subtf3+0x494>
   1ec90:	fff70613          	addi	a2,a4,-1
   1ec94:	0c061e63          	bnez	a2,1ed70 <__subtf3+0x270>
   1ec98:	01412703          	lw	a4,20(sp)
   1ec9c:	00f687b3          	add	a5,a3,a5
   1eca0:	00d7b6b3          	sltu	a3,a5,a3
   1eca4:	00e50633          	add	a2,a0,a4
   1eca8:	02f12823          	sw	a5,48(sp)
   1ecac:	00d607b3          	add	a5,a2,a3
   1ecb0:	00d7b6b3          	sltu	a3,a5,a3
   1ecb4:	02f12a23          	sw	a5,52(sp)
   1ecb8:	01812783          	lw	a5,24(sp)
   1ecbc:	00e63733          	sltu	a4,a2,a4
   1ecc0:	00d766b3          	or	a3,a4,a3
   1ecc4:	00f58733          	add	a4,a1,a5
   1ecc8:	00d70633          	add	a2,a4,a3
   1eccc:	00f737b3          	sltu	a5,a4,a5
   1ecd0:	01c12703          	lw	a4,28(sp)
   1ecd4:	00d636b3          	sltu	a3,a2,a3
   1ecd8:	00d7e7b3          	or	a5,a5,a3
   1ecdc:	00e80833          	add	a6,a6,a4
   1ece0:	010787b3          	add	a5,a5,a6
   1ece4:	02c12c23          	sw	a2,56(sp)
   1ece8:	02f12e23          	sw	a5,60(sp)
   1ecec:	00100413          	li	s0,1
   1ecf0:	03c12783          	lw	a5,60(sp)
   1ecf4:	00c79713          	slli	a4,a5,0xc
   1ecf8:	28075e63          	bgez	a4,1ef94 <__subtf3+0x494>
   1ecfc:	fff80737          	lui	a4,0xfff80
   1ed00:	fff70713          	addi	a4,a4,-1 # fff7ffff <__global_pointer$+0xfff5ce57>
   1ed04:	00e7f7b3          	and	a5,a5,a4
   1ed08:	02f12e23          	sw	a5,60(sp)
   1ed0c:	03012783          	lw	a5,48(sp)
   1ed10:	00140413          	addi	s0,s0,1 # 800001 <__global_pointer$+0x7dce59>
   1ed14:	03010713          	addi	a4,sp,48
   1ed18:	01f79793          	slli	a5,a5,0x1f
   1ed1c:	00000613          	li	a2,0
   1ed20:	00300513          	li	a0,3
   1ed24:	00072683          	lw	a3,0(a4)
   1ed28:	00472583          	lw	a1,4(a4)
   1ed2c:	00160613          	addi	a2,a2,1
   1ed30:	0016d693          	srli	a3,a3,0x1
   1ed34:	01f59593          	slli	a1,a1,0x1f
   1ed38:	00b6e6b3          	or	a3,a3,a1
   1ed3c:	00d72023          	sw	a3,0(a4)
   1ed40:	00470713          	addi	a4,a4,4
   1ed44:	fea610e3          	bne	a2,a0,1ed24 <__subtf3+0x224>
   1ed48:	03c12703          	lw	a4,60(sp)
   1ed4c:	00f037b3          	snez	a5,a5
   1ed50:	00175713          	srli	a4,a4,0x1
   1ed54:	02e12e23          	sw	a4,60(sp)
   1ed58:	03012703          	lw	a4,48(sp)
   1ed5c:	00f767b3          	or	a5,a4,a5
   1ed60:	02f12823          	sw	a5,48(sp)
   1ed64:	000087b7          	lui	a5,0x8
   1ed68:	fff78793          	addi	a5,a5,-1 # 7fff <_start-0x8075>
   1ed6c:	7d00006f          	j	1f53c <__subtf3+0xa3c>
   1ed70:	000087b7          	lui	a5,0x8
   1ed74:	fff78793          	addi	a5,a5,-1 # 7fff <_start-0x8075>
   1ed78:	eef70ae3          	beq	a4,a5,1ec6c <__subtf3+0x16c>
   1ed7c:	07400793          	li	a5,116
   1ed80:	06c7d263          	ble	a2,a5,1ede4 <__subtf3+0x2e4>
   1ed84:	00100793          	li	a5,1
   1ed88:	02012623          	sw	zero,44(sp)
   1ed8c:	02012423          	sw	zero,40(sp)
   1ed90:	02012223          	sw	zero,36(sp)
   1ed94:	02f12023          	sw	a5,32(sp)
   1ed98:	14c0006f          	j	1eee4 <__subtf3+0x3e4>
   1ed9c:	000087b7          	lui	a5,0x8
   1eda0:	fff78793          	addi	a5,a5,-1 # 7fff <_start-0x8075>
   1eda4:	02f41263          	bne	s0,a5,1edc8 <__subtf3+0x2c8>
   1eda8:	01412783          	lw	a5,20(sp)
   1edac:	02d12823          	sw	a3,48(sp)
   1edb0:	02f12a23          	sw	a5,52(sp)
   1edb4:	01812783          	lw	a5,24(sp)
   1edb8:	02f12c23          	sw	a5,56(sp)
   1edbc:	01c12783          	lw	a5,28(sp)
   1edc0:	02f12e23          	sw	a5,60(sp)
   1edc4:	1d00006f          	j	1ef94 <__subtf3+0x494>
   1edc8:	02c12783          	lw	a5,44(sp)
   1edcc:	000806b7          	lui	a3,0x80
   1edd0:	00d7e7b3          	or	a5,a5,a3
   1edd4:	02f12623          	sw	a5,44(sp)
   1edd8:	07400793          	li	a5,116
   1eddc:	fae7c4e3          	blt	a5,a4,1ed84 <__subtf3+0x284>
   1ede0:	00070613          	mv	a2,a4
   1ede4:	40565693          	srai	a3,a2,0x5
   1ede8:	01f67713          	andi	a4,a2,31
   1edec:	00000793          	li	a5,0
   1edf0:	00000613          	li	a2,0
   1edf4:	00279593          	slli	a1,a5,0x2
   1edf8:	02d79063          	bne	a5,a3,1ee18 <__subtf3+0x318>
   1edfc:	04071463          	bnez	a4,1ee44 <__subtf3+0x344>
   1ee00:	00300693          	li	a3,3
   1ee04:	40f686b3          	sub	a3,a3,a5
   1ee08:	02e6d263          	ble	a4,a3,1ee2c <__subtf3+0x32c>
   1ee0c:	00400713          	li	a4,4
   1ee10:	40f707b3          	sub	a5,a4,a5
   1ee14:	07c0006f          	j	1ee90 <__subtf3+0x390>
   1ee18:	00b885b3          	add	a1,a7,a1
   1ee1c:	0005a583          	lw	a1,0(a1)
   1ee20:	00178793          	addi	a5,a5,1
   1ee24:	00b66633          	or	a2,a2,a1
   1ee28:	fcdff06f          	j	1edf4 <__subtf3+0x2f4>
   1ee2c:	00b30533          	add	a0,t1,a1
   1ee30:	00052503          	lw	a0,0(a0) # 10000 <_start-0x74>
   1ee34:	00170713          	addi	a4,a4,1
   1ee38:	00430313          	addi	t1,t1,4
   1ee3c:	fea32e23          	sw	a0,-4(t1)
   1ee40:	fc9ff06f          	j	1ee08 <__subtf3+0x308>
   1ee44:	04010693          	addi	a3,sp,64
   1ee48:	00b686b3          	add	a3,a3,a1
   1ee4c:	fe06a683          	lw	a3,-32(a3) # 7ffe0 <__global_pointer$+0x5ce38>
   1ee50:	02000813          	li	a6,32
   1ee54:	40e80833          	sub	a6,a6,a4
   1ee58:	010696b3          	sll	a3,a3,a6
   1ee5c:	00d66633          	or	a2,a2,a3
   1ee60:	00300693          	li	a3,3
   1ee64:	00000e13          	li	t3,0
   1ee68:	40f686b3          	sub	a3,a3,a5
   1ee6c:	02de4663          	blt	t3,a3,1ee98 <__subtf3+0x398>
   1ee70:	00400593          	li	a1,4
   1ee74:	40f587b3          	sub	a5,a1,a5
   1ee78:	00269693          	slli	a3,a3,0x2
   1ee7c:	04010593          	addi	a1,sp,64
   1ee80:	00d586b3          	add	a3,a1,a3
   1ee84:	02c12583          	lw	a1,44(sp)
   1ee88:	00e5d733          	srl	a4,a1,a4
   1ee8c:	fee6a023          	sw	a4,-32(a3)
   1ee90:	00400693          	li	a3,4
   1ee94:	03c0006f          	j	1eed0 <__subtf3+0x3d0>
   1ee98:	00b30eb3          	add	t4,t1,a1
   1ee9c:	000ea503          	lw	a0,0(t4)
   1eea0:	004eae83          	lw	t4,4(t4)
   1eea4:	001e0e13          	addi	t3,t3,1
   1eea8:	00e55533          	srl	a0,a0,a4
   1eeac:	010e9eb3          	sll	t4,t4,a6
   1eeb0:	01d56533          	or	a0,a0,t4
   1eeb4:	00a32023          	sw	a0,0(t1)
   1eeb8:	00430313          	addi	t1,t1,4
   1eebc:	fb1ff06f          	j	1ee6c <__subtf3+0x36c>
   1eec0:	00279713          	slli	a4,a5,0x2
   1eec4:	00e88733          	add	a4,a7,a4
   1eec8:	00072023          	sw	zero,0(a4)
   1eecc:	00178793          	addi	a5,a5,1
   1eed0:	fed798e3          	bne	a5,a3,1eec0 <__subtf3+0x3c0>
   1eed4:	02012783          	lw	a5,32(sp)
   1eed8:	00c03633          	snez	a2,a2
   1eedc:	00c7e633          	or	a2,a5,a2
   1eee0:	02c12023          	sw	a2,32(sp)
   1eee4:	01012683          	lw	a3,16(sp)
   1eee8:	02012783          	lw	a5,32(sp)
   1eeec:	01412703          	lw	a4,20(sp)
   1eef0:	02812583          	lw	a1,40(sp)
   1eef4:	00f687b3          	add	a5,a3,a5
   1eef8:	00d7b6b3          	sltu	a3,a5,a3
   1eefc:	02f12823          	sw	a5,48(sp)
   1ef00:	02412783          	lw	a5,36(sp)
   1ef04:	02c12503          	lw	a0,44(sp)
   1ef08:	00f707b3          	add	a5,a4,a5
   1ef0c:	00d78633          	add	a2,a5,a3
   1ef10:	00e7b733          	sltu	a4,a5,a4
   1ef14:	00d637b3          	sltu	a5,a2,a3
   1ef18:	00f767b3          	or	a5,a4,a5
   1ef1c:	01812703          	lw	a4,24(sp)
   1ef20:	01c12683          	lw	a3,28(sp)
   1ef24:	02c12a23          	sw	a2,52(sp)
   1ef28:	00b705b3          	add	a1,a4,a1
   1ef2c:	00f58633          	add	a2,a1,a5
   1ef30:	00e5b733          	sltu	a4,a1,a4
   1ef34:	00f637b3          	sltu	a5,a2,a5
   1ef38:	00a686b3          	add	a3,a3,a0
   1ef3c:	00f76733          	or	a4,a4,a5
   1ef40:	00e68733          	add	a4,a3,a4
   1ef44:	02c12c23          	sw	a2,56(sp)
   1ef48:	02e12e23          	sw	a4,60(sp)
   1ef4c:	da5ff06f          	j	1ecf0 <__subtf3+0x1f0>
   1ef50:	3e070063          	beqz	a4,1f330 <__subtf3+0x830>
   1ef54:	24041663          	bnez	s0,1f1a0 <__subtf3+0x6a0>
   1ef58:	01412883          	lw	a7,20(sp)
   1ef5c:	01812503          	lw	a0,24(sp)
   1ef60:	01c12e03          	lw	t3,28(sp)
   1ef64:	00a8e333          	or	t1,a7,a0
   1ef68:	01c36333          	or	t1,t1,t3
   1ef6c:	00d36333          	or	t1,t1,a3
   1ef70:	18031e63          	bnez	t1,1f10c <__subtf3+0x60c>
   1ef74:	02f12823          	sw	a5,48(sp)
   1ef78:	02412783          	lw	a5,36(sp)
   1ef7c:	00060413          	mv	s0,a2
   1ef80:	02f12a23          	sw	a5,52(sp)
   1ef84:	02812783          	lw	a5,40(sp)
   1ef88:	02f12c23          	sw	a5,56(sp)
   1ef8c:	02c12783          	lw	a5,44(sp)
   1ef90:	02f12e23          	sw	a5,60(sp)
   1ef94:	03012783          	lw	a5,48(sp)
   1ef98:	0077f713          	andi	a4,a5,7
   1ef9c:	04070463          	beqz	a4,1efe4 <__subtf3+0x4e4>
   1efa0:	00f7f713          	andi	a4,a5,15
   1efa4:	00400693          	li	a3,4
   1efa8:	02d70e63          	beq	a4,a3,1efe4 <__subtf3+0x4e4>
   1efac:	03412703          	lw	a4,52(sp)
   1efb0:	00478793          	addi	a5,a5,4
   1efb4:	02f12823          	sw	a5,48(sp)
   1efb8:	0047b793          	sltiu	a5,a5,4
   1efbc:	00e78733          	add	a4,a5,a4
   1efc0:	00f737b3          	sltu	a5,a4,a5
   1efc4:	02e12a23          	sw	a4,52(sp)
   1efc8:	03812703          	lw	a4,56(sp)
   1efcc:	00e78733          	add	a4,a5,a4
   1efd0:	02e12c23          	sw	a4,56(sp)
   1efd4:	00f73733          	sltu	a4,a4,a5
   1efd8:	03c12783          	lw	a5,60(sp)
   1efdc:	00f70733          	add	a4,a4,a5
   1efe0:	02e12e23          	sw	a4,60(sp)
   1efe4:	03c12783          	lw	a5,60(sp)
   1efe8:	00c79713          	slli	a4,a5,0xc
   1efec:	02075263          	bgez	a4,1f010 <__subtf3+0x510>
   1eff0:	00008737          	lui	a4,0x8
   1eff4:	00140413          	addi	s0,s0,1
   1eff8:	fff70713          	addi	a4,a4,-1 # 7fff <_start-0x8075>
   1effc:	7ae408e3          	beq	s0,a4,1ffac <__subtf3+0x14ac>
   1f000:	fff80737          	lui	a4,0xfff80
   1f004:	fff70713          	addi	a4,a4,-1 # fff7ffff <__global_pointer$+0xfff5ce57>
   1f008:	00e7f7b3          	and	a5,a5,a4
   1f00c:	02f12e23          	sw	a5,60(sp)
   1f010:	03010793          	addi	a5,sp,48
   1f014:	00000693          	li	a3,0
   1f018:	00300593          	li	a1,3
   1f01c:	0007a703          	lw	a4,0(a5)
   1f020:	0047a603          	lw	a2,4(a5)
   1f024:	00168693          	addi	a3,a3,1
   1f028:	00375713          	srli	a4,a4,0x3
   1f02c:	01d61613          	slli	a2,a2,0x1d
   1f030:	00c76733          	or	a4,a4,a2
   1f034:	00e7a023          	sw	a4,0(a5)
   1f038:	00478793          	addi	a5,a5,4
   1f03c:	feb690e3          	bne	a3,a1,1f01c <__subtf3+0x51c>
   1f040:	03c12783          	lw	a5,60(sp)
   1f044:	000086b7          	lui	a3,0x8
   1f048:	0037d713          	srli	a4,a5,0x3
   1f04c:	02e12e23          	sw	a4,60(sp)
   1f050:	fff68793          	addi	a5,a3,-1 # 7fff <_start-0x8075>
   1f054:	02f41a63          	bne	s0,a5,1f088 <__subtf3+0x588>
   1f058:	03412603          	lw	a2,52(sp)
   1f05c:	03012783          	lw	a5,48(sp)
   1f060:	00c7e7b3          	or	a5,a5,a2
   1f064:	03812603          	lw	a2,56(sp)
   1f068:	00c7e7b3          	or	a5,a5,a2
   1f06c:	00e7e7b3          	or	a5,a5,a4
   1f070:	00078c63          	beqz	a5,1f088 <__subtf3+0x588>
   1f074:	02d12e23          	sw	a3,60(sp)
   1f078:	02012c23          	sw	zero,56(sp)
   1f07c:	02012a23          	sw	zero,52(sp)
   1f080:	02012823          	sw	zero,48(sp)
   1f084:	00000913          	li	s2,0
   1f088:	03c12783          	lw	a5,60(sp)
   1f08c:	80010737          	lui	a4,0x80010
   1f090:	fff70713          	addi	a4,a4,-1 # 8000ffff <__global_pointer$+0x7ffece57>
   1f094:	00f11623          	sh	a5,12(sp)
   1f098:	000087b7          	lui	a5,0x8
   1f09c:	fff78793          	addi	a5,a5,-1 # 7fff <_start-0x8075>
   1f0a0:	00f47433          	and	s0,s0,a5
   1f0a4:	01041793          	slli	a5,s0,0x10
   1f0a8:	00c12403          	lw	s0,12(sp)
   1f0ac:	05c12083          	lw	ra,92(sp)
   1f0b0:	00048513          	mv	a0,s1
   1f0b4:	00e47433          	and	s0,s0,a4
   1f0b8:	00f46433          	or	s0,s0,a5
   1f0bc:	01f91793          	slli	a5,s2,0x1f
   1f0c0:	80000937          	lui	s2,0x80000
   1f0c4:	fff94913          	not	s2,s2
   1f0c8:	01247433          	and	s0,s0,s2
   1f0cc:	00f46933          	or	s2,s0,a5
   1f0d0:	03012783          	lw	a5,48(sp)
   1f0d4:	05812403          	lw	s0,88(sp)
   1f0d8:	0124a623          	sw	s2,12(s1)
   1f0dc:	00f4a023          	sw	a5,0(s1)
   1f0e0:	03412783          	lw	a5,52(sp)
   1f0e4:	05012903          	lw	s2,80(sp)
   1f0e8:	04c12983          	lw	s3,76(sp)
   1f0ec:	00f4a223          	sw	a5,4(s1)
   1f0f0:	03812783          	lw	a5,56(sp)
   1f0f4:	04812a03          	lw	s4,72(sp)
   1f0f8:	04412a83          	lw	s5,68(sp)
   1f0fc:	00f4a423          	sw	a5,8(s1)
   1f100:	05412483          	lw	s1,84(sp)
   1f104:	06010113          	addi	sp,sp,96
   1f108:	00008067          	ret
   1f10c:	fff00313          	li	t1,-1
   1f110:	06671063          	bne	a4,t1,1f170 <__subtf3+0x670>
   1f114:	02412583          	lw	a1,36(sp)
   1f118:	00f686b3          	add	a3,a3,a5
   1f11c:	00f6b7b3          	sltu	a5,a3,a5
   1f120:	00b88833          	add	a6,a7,a1
   1f124:	00f80733          	add	a4,a6,a5
   1f128:	00f737b3          	sltu	a5,a4,a5
   1f12c:	02e12a23          	sw	a4,52(sp)
   1f130:	02812703          	lw	a4,40(sp)
   1f134:	00b835b3          	sltu	a1,a6,a1
   1f138:	00f5e7b3          	or	a5,a1,a5
   1f13c:	02d12823          	sw	a3,48(sp)
   1f140:	00e506b3          	add	a3,a0,a4
   1f144:	00f685b3          	add	a1,a3,a5
   1f148:	00f5b7b3          	sltu	a5,a1,a5
   1f14c:	00e6b733          	sltu	a4,a3,a4
   1f150:	00f76733          	or	a4,a4,a5
   1f154:	02c12783          	lw	a5,44(sp)
   1f158:	02b12c23          	sw	a1,56(sp)
   1f15c:	00fe0e33          	add	t3,t3,a5
   1f160:	01c70733          	add	a4,a4,t3
   1f164:	02e12e23          	sw	a4,60(sp)
   1f168:	00060413          	mv	s0,a2
   1f16c:	b85ff06f          	j	1ecf0 <__subtf3+0x1f0>
   1f170:	000086b7          	lui	a3,0x8
   1f174:	fff68693          	addi	a3,a3,-1 # 7fff <_start-0x8075>
   1f178:	ded60ee3          	beq	a2,a3,1ef74 <__subtf3+0x474>
   1f17c:	fff74713          	not	a4,a4
   1f180:	07400793          	li	a5,116
   1f184:	04e7d263          	ble	a4,a5,1f1c8 <__subtf3+0x6c8>
   1f188:	00100793          	li	a5,1
   1f18c:	00012e23          	sw	zero,28(sp)
   1f190:	00012c23          	sw	zero,24(sp)
   1f194:	00012a23          	sw	zero,20(sp)
   1f198:	00f12823          	sw	a5,16(sp)
   1f19c:	12c0006f          	j	1f2c8 <__subtf3+0x7c8>
   1f1a0:	000086b7          	lui	a3,0x8
   1f1a4:	fff68693          	addi	a3,a3,-1 # 7fff <_start-0x8075>
   1f1a8:	dcd606e3          	beq	a2,a3,1ef74 <__subtf3+0x474>
   1f1ac:	01c12783          	lw	a5,28(sp)
   1f1b0:	000806b7          	lui	a3,0x80
   1f1b4:	00d7e7b3          	or	a5,a5,a3
   1f1b8:	00f12e23          	sw	a5,28(sp)
   1f1bc:	f8c00793          	li	a5,-116
   1f1c0:	fcf744e3          	blt	a4,a5,1f188 <__subtf3+0x688>
   1f1c4:	40e00733          	neg	a4,a4
   1f1c8:	40575693          	srai	a3,a4,0x5
   1f1cc:	00000513          	li	a0,0
   1f1d0:	01f77713          	andi	a4,a4,31
   1f1d4:	00000793          	li	a5,0
   1f1d8:	00279893          	slli	a7,a5,0x2
   1f1dc:	02d79063          	bne	a5,a3,1f1fc <__subtf3+0x6fc>
   1f1e0:	04071463          	bnez	a4,1f228 <__subtf3+0x728>
   1f1e4:	00300693          	li	a3,3
   1f1e8:	40f686b3          	sub	a3,a3,a5
   1f1ec:	02e6d263          	ble	a4,a3,1f210 <__subtf3+0x710>
   1f1f0:	00400713          	li	a4,4
   1f1f4:	40f707b3          	sub	a5,a4,a5
   1f1f8:	07c0006f          	j	1f274 <__subtf3+0x774>
   1f1fc:	011808b3          	add	a7,a6,a7
   1f200:	0008a883          	lw	a7,0(a7)
   1f204:	00178793          	addi	a5,a5,1
   1f208:	01156533          	or	a0,a0,a7
   1f20c:	fcdff06f          	j	1f1d8 <__subtf3+0x6d8>
   1f210:	01158333          	add	t1,a1,a7
   1f214:	00032303          	lw	t1,0(t1)
   1f218:	00170713          	addi	a4,a4,1
   1f21c:	00458593          	addi	a1,a1,4
   1f220:	fe65ae23          	sw	t1,-4(a1)
   1f224:	fc9ff06f          	j	1f1ec <__subtf3+0x6ec>
   1f228:	04010693          	addi	a3,sp,64
   1f22c:	011686b3          	add	a3,a3,a7
   1f230:	fd06a683          	lw	a3,-48(a3) # 7ffd0 <__global_pointer$+0x5ce28>
   1f234:	02000e13          	li	t3,32
   1f238:	40ee0e33          	sub	t3,t3,a4
   1f23c:	01c696b3          	sll	a3,a3,t3
   1f240:	00d56533          	or	a0,a0,a3
   1f244:	00300693          	li	a3,3
   1f248:	00000e93          	li	t4,0
   1f24c:	40f686b3          	sub	a3,a3,a5
   1f250:	02dec663          	blt	t4,a3,1f27c <__subtf3+0x77c>
   1f254:	00400593          	li	a1,4
   1f258:	40f587b3          	sub	a5,a1,a5
   1f25c:	00269693          	slli	a3,a3,0x2
   1f260:	04010593          	addi	a1,sp,64
   1f264:	00d586b3          	add	a3,a1,a3
   1f268:	01c12583          	lw	a1,28(sp)
   1f26c:	00e5d733          	srl	a4,a1,a4
   1f270:	fce6a823          	sw	a4,-48(a3)
   1f274:	00400693          	li	a3,4
   1f278:	03c0006f          	j	1f2b4 <__subtf3+0x7b4>
   1f27c:	01158f33          	add	t5,a1,a7
   1f280:	000f2303          	lw	t1,0(t5)
   1f284:	004f2f03          	lw	t5,4(t5)
   1f288:	001e8e93          	addi	t4,t4,1
   1f28c:	00e35333          	srl	t1,t1,a4
   1f290:	01cf1f33          	sll	t5,t5,t3
   1f294:	01e36333          	or	t1,t1,t5
   1f298:	0065a023          	sw	t1,0(a1)
   1f29c:	00458593          	addi	a1,a1,4
   1f2a0:	fb1ff06f          	j	1f250 <__subtf3+0x750>
   1f2a4:	00279713          	slli	a4,a5,0x2
   1f2a8:	00e80733          	add	a4,a6,a4
   1f2ac:	00072023          	sw	zero,0(a4)
   1f2b0:	00178793          	addi	a5,a5,1
   1f2b4:	fed798e3          	bne	a5,a3,1f2a4 <__subtf3+0x7a4>
   1f2b8:	01012783          	lw	a5,16(sp)
   1f2bc:	00a03533          	snez	a0,a0
   1f2c0:	00a7e533          	or	a0,a5,a0
   1f2c4:	00a12823          	sw	a0,16(sp)
   1f2c8:	02012683          	lw	a3,32(sp)
   1f2cc:	01012783          	lw	a5,16(sp)
   1f2d0:	02412703          	lw	a4,36(sp)
   1f2d4:	01812503          	lw	a0,24(sp)
   1f2d8:	00f687b3          	add	a5,a3,a5
   1f2dc:	00d7b6b3          	sltu	a3,a5,a3
   1f2e0:	02f12823          	sw	a5,48(sp)
   1f2e4:	01412783          	lw	a5,20(sp)
   1f2e8:	01c12803          	lw	a6,28(sp)
   1f2ec:	00f707b3          	add	a5,a4,a5
   1f2f0:	00d785b3          	add	a1,a5,a3
   1f2f4:	00e7b733          	sltu	a4,a5,a4
   1f2f8:	00d5b7b3          	sltu	a5,a1,a3
   1f2fc:	00f767b3          	or	a5,a4,a5
   1f300:	02812703          	lw	a4,40(sp)
   1f304:	02c12683          	lw	a3,44(sp)
   1f308:	02b12a23          	sw	a1,52(sp)
   1f30c:	00a70533          	add	a0,a4,a0
   1f310:	00f505b3          	add	a1,a0,a5
   1f314:	00e53733          	sltu	a4,a0,a4
   1f318:	00f5b7b3          	sltu	a5,a1,a5
   1f31c:	010686b3          	add	a3,a3,a6
   1f320:	00f76733          	or	a4,a4,a5
   1f324:	02b12c23          	sw	a1,56(sp)
   1f328:	00e68733          	add	a4,a3,a4
   1f32c:	e39ff06f          	j	1f164 <__subtf3+0x664>
   1f330:	00008f37          	lui	t5,0x8
   1f334:	00140593          	addi	a1,s0,1
   1f338:	ffff0e93          	addi	t4,t5,-1 # 7fff <_start-0x8075>
   1f33c:	01d5f2b3          	and	t0,a1,t4
   1f340:	00100f93          	li	t6,1
   1f344:	02412603          	lw	a2,36(sp)
   1f348:	02812703          	lw	a4,40(sp)
   1f34c:	02c12503          	lw	a0,44(sp)
   1f350:	01412e03          	lw	t3,20(sp)
   1f354:	01812883          	lw	a7,24(sp)
   1f358:	01c12303          	lw	t1,28(sp)
   1f35c:	03010813          	addi	a6,sp,48
   1f360:	145fc663          	blt	t6,t0,1f4ac <__subtf3+0x9ac>
   1f364:	011e65b3          	or	a1,t3,a7
   1f368:	0065e5b3          	or	a1,a1,t1
   1f36c:	00d5e5b3          	or	a1,a1,a3
   1f370:	0a041663          	bnez	s0,1f41c <__subtf3+0x91c>
   1f374:	00059c63          	bnez	a1,1f38c <__subtf3+0x88c>
   1f378:	02f12823          	sw	a5,48(sp)
   1f37c:	02c12a23          	sw	a2,52(sp)
   1f380:	02e12c23          	sw	a4,56(sp)
   1f384:	02a12e23          	sw	a0,60(sp)
   1f388:	c0dff06f          	j	1ef94 <__subtf3+0x494>
   1f38c:	00e665b3          	or	a1,a2,a4
   1f390:	00a5e5b3          	or	a1,a1,a0
   1f394:	00f5e5b3          	or	a1,a1,a5
   1f398:	00059c63          	bnez	a1,1f3b0 <__subtf3+0x8b0>
   1f39c:	02d12823          	sw	a3,48(sp)
   1f3a0:	03c12a23          	sw	t3,52(sp)
   1f3a4:	03112c23          	sw	a7,56(sp)
   1f3a8:	02612e23          	sw	t1,60(sp)
   1f3ac:	be9ff06f          	j	1ef94 <__subtf3+0x494>
   1f3b0:	00f687b3          	add	a5,a3,a5
   1f3b4:	01c60633          	add	a2,a2,t3
   1f3b8:	02f12823          	sw	a5,48(sp)
   1f3bc:	00d7b7b3          	sltu	a5,a5,a3
   1f3c0:	00f606b3          	add	a3,a2,a5
   1f3c4:	02d12a23          	sw	a3,52(sp)
   1f3c8:	01c63633          	sltu	a2,a2,t3
   1f3cc:	00f6b6b3          	sltu	a3,a3,a5
   1f3d0:	00d666b3          	or	a3,a2,a3
   1f3d4:	011705b3          	add	a1,a4,a7
   1f3d8:	00d587b3          	add	a5,a1,a3
   1f3dc:	0115b733          	sltu	a4,a1,a7
   1f3e0:	00d7b6b3          	sltu	a3,a5,a3
   1f3e4:	00d766b3          	or	a3,a4,a3
   1f3e8:	00650733          	add	a4,a0,t1
   1f3ec:	00e68733          	add	a4,a3,a4
   1f3f0:	02f12c23          	sw	a5,56(sp)
   1f3f4:	00c71793          	slli	a5,a4,0xc
   1f3f8:	0007c663          	bltz	a5,1f404 <__subtf3+0x904>
   1f3fc:	02e12e23          	sw	a4,60(sp)
   1f400:	b95ff06f          	j	1ef94 <__subtf3+0x494>
   1f404:	fff806b7          	lui	a3,0xfff80
   1f408:	fff68693          	addi	a3,a3,-1 # fff7ffff <__global_pointer$+0xfff5ce57>
   1f40c:	00d77733          	and	a4,a4,a3
   1f410:	02e12e23          	sw	a4,60(sp)
   1f414:	00100413          	li	s0,1
   1f418:	b7dff06f          	j	1ef94 <__subtf3+0x494>
   1f41c:	00059e63          	bnez	a1,1f438 <__subtf3+0x938>
   1f420:	02f12823          	sw	a5,48(sp)
   1f424:	02c12a23          	sw	a2,52(sp)
   1f428:	02e12c23          	sw	a4,56(sp)
   1f42c:	02a12e23          	sw	a0,60(sp)
   1f430:	000e8413          	mv	s0,t4
   1f434:	b61ff06f          	j	1ef94 <__subtf3+0x494>
   1f438:	00e66733          	or	a4,a2,a4
   1f43c:	00a76733          	or	a4,a4,a0
   1f440:	00f767b3          	or	a5,a4,a5
   1f444:	00079c63          	bnez	a5,1f45c <__subtf3+0x95c>
   1f448:	02d12823          	sw	a3,48(sp)
   1f44c:	03c12a23          	sw	t3,52(sp)
   1f450:	03112c23          	sw	a7,56(sp)
   1f454:	02612e23          	sw	t1,60(sp)
   1f458:	fd9ff06f          	j	1f430 <__subtf3+0x930>
   1f45c:	03e12e23          	sw	t5,60(sp)
   1f460:	02012c23          	sw	zero,56(sp)
   1f464:	02012a23          	sw	zero,52(sp)
   1f468:	02012823          	sw	zero,48(sp)
   1f46c:	03c10793          	addi	a5,sp,60
   1f470:	0007a703          	lw	a4,0(a5)
   1f474:	ffc7a683          	lw	a3,-4(a5)
   1f478:	ffc78793          	addi	a5,a5,-4
   1f47c:	00371713          	slli	a4,a4,0x3
   1f480:	01d6d693          	srli	a3,a3,0x1d
   1f484:	00d76733          	or	a4,a4,a3
   1f488:	00e7a223          	sw	a4,4(a5)
   1f48c:	fef812e3          	bne	a6,a5,1f470 <__subtf3+0x970>
   1f490:	03012783          	lw	a5,48(sp)
   1f494:	00008437          	lui	s0,0x8
   1f498:	fff40413          	addi	s0,s0,-1 # 7fff <_start-0x8075>
   1f49c:	00379793          	slli	a5,a5,0x3
   1f4a0:	02f12823          	sw	a5,48(sp)
   1f4a4:	00000913          	li	s2,0
   1f4a8:	aedff06f          	j	1ef94 <__subtf3+0x494>
   1f4ac:	00f687b3          	add	a5,a3,a5
   1f4b0:	01c60633          	add	a2,a2,t3
   1f4b4:	02f12823          	sw	a5,48(sp)
   1f4b8:	00d7b7b3          	sltu	a5,a5,a3
   1f4bc:	00f606b3          	add	a3,a2,a5
   1f4c0:	02d12a23          	sw	a3,52(sp)
   1f4c4:	01c63633          	sltu	a2,a2,t3
   1f4c8:	00f6b6b3          	sltu	a3,a3,a5
   1f4cc:	00d666b3          	or	a3,a2,a3
   1f4d0:	01170733          	add	a4,a4,a7
   1f4d4:	00d70633          	add	a2,a4,a3
   1f4d8:	00d636b3          	sltu	a3,a2,a3
   1f4dc:	01173733          	sltu	a4,a4,a7
   1f4e0:	00d766b3          	or	a3,a4,a3
   1f4e4:	00650733          	add	a4,a0,t1
   1f4e8:	00e68733          	add	a4,a3,a4
   1f4ec:	02c12c23          	sw	a2,56(sp)
   1f4f0:	02e12e23          	sw	a4,60(sp)
   1f4f4:	00080793          	mv	a5,a6
   1f4f8:	00000693          	li	a3,0
   1f4fc:	00300513          	li	a0,3
   1f500:	0007a703          	lw	a4,0(a5)
   1f504:	0047a603          	lw	a2,4(a5)
   1f508:	00168693          	addi	a3,a3,1
   1f50c:	00175713          	srli	a4,a4,0x1
   1f510:	01f61613          	slli	a2,a2,0x1f
   1f514:	00c76733          	or	a4,a4,a2
   1f518:	00e7a023          	sw	a4,0(a5)
   1f51c:	00478793          	addi	a5,a5,4
   1f520:	fea690e3          	bne	a3,a0,1f500 <__subtf3+0xa00>
   1f524:	03c12783          	lw	a5,60(sp)
   1f528:	00058413          	mv	s0,a1
   1f52c:	0017d793          	srli	a5,a5,0x1
   1f530:	02f12e23          	sw	a5,60(sp)
   1f534:	000087b7          	lui	a5,0x8
   1f538:	fff78793          	addi	a5,a5,-1 # 7fff <_start-0x8075>
   1f53c:	a4f41ce3          	bne	s0,a5,1ef94 <__subtf3+0x494>
   1f540:	02012e23          	sw	zero,60(sp)
   1f544:	02012c23          	sw	zero,56(sp)
   1f548:	02012a23          	sw	zero,52(sp)
   1f54c:	02012823          	sw	zero,48(sp)
   1f550:	a45ff06f          	j	1ef94 <__subtf3+0x494>
   1f554:	28e05463          	blez	a4,1f7dc <__subtf3+0xcdc>
   1f558:	0e061063          	bnez	a2,1f638 <__subtf3+0xb38>
   1f55c:	02412503          	lw	a0,36(sp)
   1f560:	02812583          	lw	a1,40(sp)
   1f564:	02c12e03          	lw	t3,44(sp)
   1f568:	00b56833          	or	a6,a0,a1
   1f56c:	01c86833          	or	a6,a6,t3
   1f570:	00f86833          	or	a6,a6,a5
   1f574:	ee080c63          	beqz	a6,1ec6c <__subtf3+0x16c>
   1f578:	fff70613          	addi	a2,a4,-1
   1f57c:	08061863          	bnez	a2,1f60c <__subtf3+0xb0c>
   1f580:	01412883          	lw	a7,20(sp)
   1f584:	40f687b3          	sub	a5,a3,a5
   1f588:	00f6b733          	sltu	a4,a3,a5
   1f58c:	40a88833          	sub	a6,a7,a0
   1f590:	0108b333          	sltu	t1,a7,a6
   1f594:	40e80833          	sub	a6,a6,a4
   1f598:	02f12823          	sw	a5,48(sp)
   1f59c:	03012a23          	sw	a6,52(sp)
   1f5a0:	00000713          	li	a4,0
   1f5a4:	00f6f663          	bleu	a5,a3,1f5b0 <__subtf3+0xab0>
   1f5a8:	41150733          	sub	a4,a0,a7
   1f5ac:	00173713          	seqz	a4,a4
   1f5b0:	01812803          	lw	a6,24(sp)
   1f5b4:	00676733          	or	a4,a4,t1
   1f5b8:	40b806b3          	sub	a3,a6,a1
   1f5bc:	00d83533          	sltu	a0,a6,a3
   1f5c0:	40e686b3          	sub	a3,a3,a4
   1f5c4:	02d12c23          	sw	a3,56(sp)
   1f5c8:	00070663          	beqz	a4,1f5d4 <__subtf3+0xad4>
   1f5cc:	410585b3          	sub	a1,a1,a6
   1f5d0:	0015b613          	seqz	a2,a1
   1f5d4:	01c12783          	lw	a5,28(sp)
   1f5d8:	00a66633          	or	a2,a2,a0
   1f5dc:	00100413          	li	s0,1
   1f5e0:	41c787b3          	sub	a5,a5,t3
   1f5e4:	40c78633          	sub	a2,a5,a2
   1f5e8:	02c12e23          	sw	a2,60(sp)
   1f5ec:	03c12783          	lw	a5,60(sp)
   1f5f0:	00c79713          	slli	a4,a5,0xc
   1f5f4:	9a0750e3          	bgez	a4,1ef94 <__subtf3+0x494>
   1f5f8:	00080737          	lui	a4,0x80
   1f5fc:	fff70713          	addi	a4,a4,-1 # 7ffff <__global_pointer$+0x5ce57>
   1f600:	00e7f7b3          	and	a5,a5,a4
   1f604:	02f12e23          	sw	a5,60(sp)
   1f608:	7340006f          	j	1fd3c <__subtf3+0x123c>
   1f60c:	000087b7          	lui	a5,0x8
   1f610:	fff78793          	addi	a5,a5,-1 # 7fff <_start-0x8075>
   1f614:	e4f70c63          	beq	a4,a5,1ec6c <__subtf3+0x16c>
   1f618:	07400793          	li	a5,116
   1f61c:	04c7d263          	ble	a2,a5,1f660 <__subtf3+0xb60>
   1f620:	00100793          	li	a5,1
   1f624:	02012623          	sw	zero,44(sp)
   1f628:	02012423          	sw	zero,40(sp)
   1f62c:	02012223          	sw	zero,36(sp)
   1f630:	02f12023          	sw	a5,32(sp)
   1f634:	12c0006f          	j	1f760 <__subtf3+0xc60>
   1f638:	000087b7          	lui	a5,0x8
   1f63c:	fff78793          	addi	a5,a5,-1 # 7fff <_start-0x8075>
   1f640:	f6f40463          	beq	s0,a5,1eda8 <__subtf3+0x2a8>
   1f644:	02c12783          	lw	a5,44(sp)
   1f648:	000806b7          	lui	a3,0x80
   1f64c:	00d7e7b3          	or	a5,a5,a3
   1f650:	02f12623          	sw	a5,44(sp)
   1f654:	07400793          	li	a5,116
   1f658:	fce7c4e3          	blt	a5,a4,1f620 <__subtf3+0xb20>
   1f65c:	00070613          	mv	a2,a4
   1f660:	40565713          	srai	a4,a2,0x5
   1f664:	00000693          	li	a3,0
   1f668:	01f67613          	andi	a2,a2,31
   1f66c:	00000793          	li	a5,0
   1f670:	00279593          	slli	a1,a5,0x2
   1f674:	02e79063          	bne	a5,a4,1f694 <__subtf3+0xb94>
   1f678:	04061463          	bnez	a2,1f6c0 <__subtf3+0xbc0>
   1f67c:	00300713          	li	a4,3
   1f680:	40f70733          	sub	a4,a4,a5
   1f684:	02c75263          	ble	a2,a4,1f6a8 <__subtf3+0xba8>
   1f688:	00400713          	li	a4,4
   1f68c:	40f707b3          	sub	a5,a4,a5
   1f690:	07c0006f          	j	1f70c <__subtf3+0xc0c>
   1f694:	00b885b3          	add	a1,a7,a1
   1f698:	0005a583          	lw	a1,0(a1)
   1f69c:	00178793          	addi	a5,a5,1
   1f6a0:	00b6e6b3          	or	a3,a3,a1
   1f6a4:	fcdff06f          	j	1f670 <__subtf3+0xb70>
   1f6a8:	00b30533          	add	a0,t1,a1
   1f6ac:	00052503          	lw	a0,0(a0)
   1f6b0:	00160613          	addi	a2,a2,1
   1f6b4:	00430313          	addi	t1,t1,4
   1f6b8:	fea32e23          	sw	a0,-4(t1)
   1f6bc:	fc9ff06f          	j	1f684 <__subtf3+0xb84>
   1f6c0:	04010713          	addi	a4,sp,64
   1f6c4:	00b70733          	add	a4,a4,a1
   1f6c8:	fe072703          	lw	a4,-32(a4)
   1f6cc:	02000813          	li	a6,32
   1f6d0:	40c80833          	sub	a6,a6,a2
   1f6d4:	01071733          	sll	a4,a4,a6
   1f6d8:	00e6e6b3          	or	a3,a3,a4
   1f6dc:	00300713          	li	a4,3
   1f6e0:	00000e13          	li	t3,0
   1f6e4:	40f70733          	sub	a4,a4,a5
   1f6e8:	02ee4663          	blt	t3,a4,1f714 <__subtf3+0xc14>
   1f6ec:	00400593          	li	a1,4
   1f6f0:	40f587b3          	sub	a5,a1,a5
   1f6f4:	00271713          	slli	a4,a4,0x2
   1f6f8:	04010593          	addi	a1,sp,64
   1f6fc:	00e58733          	add	a4,a1,a4
   1f700:	02c12583          	lw	a1,44(sp)
   1f704:	00c5d633          	srl	a2,a1,a2
   1f708:	fec72023          	sw	a2,-32(a4)
   1f70c:	00400613          	li	a2,4
   1f710:	03c0006f          	j	1f74c <__subtf3+0xc4c>
   1f714:	00b30eb3          	add	t4,t1,a1
   1f718:	000ea503          	lw	a0,0(t4)
   1f71c:	004eae83          	lw	t4,4(t4)
   1f720:	001e0e13          	addi	t3,t3,1
   1f724:	00c55533          	srl	a0,a0,a2
   1f728:	010e9eb3          	sll	t4,t4,a6
   1f72c:	01d56533          	or	a0,a0,t4
   1f730:	00a32023          	sw	a0,0(t1)
   1f734:	00430313          	addi	t1,t1,4
   1f738:	fb1ff06f          	j	1f6e8 <__subtf3+0xbe8>
   1f73c:	00279713          	slli	a4,a5,0x2
   1f740:	00e88733          	add	a4,a7,a4
   1f744:	00072023          	sw	zero,0(a4)
   1f748:	00178793          	addi	a5,a5,1
   1f74c:	fec798e3          	bne	a5,a2,1f73c <__subtf3+0xc3c>
   1f750:	02012783          	lw	a5,32(sp)
   1f754:	00d036b3          	snez	a3,a3
   1f758:	00d7e6b3          	or	a3,a5,a3
   1f75c:	02d12023          	sw	a3,32(sp)
   1f760:	01412683          	lw	a3,20(sp)
   1f764:	01012583          	lw	a1,16(sp)
   1f768:	02012703          	lw	a4,32(sp)
   1f76c:	02412783          	lw	a5,36(sp)
   1f770:	40e58733          	sub	a4,a1,a4
   1f774:	40f687b3          	sub	a5,a3,a5
   1f778:	00f6b633          	sltu	a2,a3,a5
   1f77c:	00e5b6b3          	sltu	a3,a1,a4
   1f780:	40d786b3          	sub	a3,a5,a3
   1f784:	02d12a23          	sw	a3,52(sp)
   1f788:	02e12823          	sw	a4,48(sp)
   1f78c:	00000693          	li	a3,0
   1f790:	00e5f463          	bleu	a4,a1,1f798 <__subtf3+0xc98>
   1f794:	0017b693          	seqz	a3,a5
   1f798:	00c6e6b3          	or	a3,a3,a2
   1f79c:	02812703          	lw	a4,40(sp)
   1f7a0:	01812603          	lw	a2,24(sp)
   1f7a4:	40e60733          	sub	a4,a2,a4
   1f7a8:	40d707b3          	sub	a5,a4,a3
   1f7ac:	02f12c23          	sw	a5,56(sp)
   1f7b0:	00e635b3          	sltu	a1,a2,a4
   1f7b4:	00000613          	li	a2,0
   1f7b8:	00068463          	beqz	a3,1f7c0 <__subtf3+0xcc0>
   1f7bc:	00173613          	seqz	a2,a4
   1f7c0:	01c12783          	lw	a5,28(sp)
   1f7c4:	02c12703          	lw	a4,44(sp)
   1f7c8:	00b66633          	or	a2,a2,a1
   1f7cc:	40e787b3          	sub	a5,a5,a4
   1f7d0:	40c787b3          	sub	a5,a5,a2
   1f7d4:	02f12e23          	sw	a5,60(sp)
   1f7d8:	e15ff06f          	j	1f5ec <__subtf3+0xaec>
   1f7dc:	28070e63          	beqz	a4,1fa78 <__subtf3+0xf78>
   1f7e0:	0e041c63          	bnez	s0,1f8d8 <__subtf3+0xdd8>
   1f7e4:	01412303          	lw	t1,20(sp)
   1f7e8:	01812883          	lw	a7,24(sp)
   1f7ec:	01c12e83          	lw	t4,28(sp)
   1f7f0:	01136e33          	or	t3,t1,a7
   1f7f4:	01de6e33          	or	t3,t3,t4
   1f7f8:	00de6e33          	or	t3,t3,a3
   1f7fc:	020e1663          	bnez	t3,1f828 <__subtf3+0xd28>
   1f800:	02f12823          	sw	a5,48(sp)
   1f804:	02412783          	lw	a5,36(sp)
   1f808:	00060413          	mv	s0,a2
   1f80c:	02f12a23          	sw	a5,52(sp)
   1f810:	02812783          	lw	a5,40(sp)
   1f814:	02f12c23          	sw	a5,56(sp)
   1f818:	02c12783          	lw	a5,44(sp)
   1f81c:	02f12e23          	sw	a5,60(sp)
   1f820:	00050913          	mv	s2,a0
   1f824:	f70ff06f          	j	1ef94 <__subtf3+0x494>
   1f828:	fff00e13          	li	t3,-1
   1f82c:	07c71e63          	bne	a4,t3,1f8a8 <__subtf3+0xda8>
   1f830:	02412803          	lw	a6,36(sp)
   1f834:	40d786b3          	sub	a3,a5,a3
   1f838:	00d7b733          	sltu	a4,a5,a3
   1f83c:	406805b3          	sub	a1,a6,t1
   1f840:	00b83e33          	sltu	t3,a6,a1
   1f844:	40e585b3          	sub	a1,a1,a4
   1f848:	02d12823          	sw	a3,48(sp)
   1f84c:	02b12a23          	sw	a1,52(sp)
   1f850:	00000713          	li	a4,0
   1f854:	00d7f663          	bleu	a3,a5,1f860 <__subtf3+0xd60>
   1f858:	41030733          	sub	a4,t1,a6
   1f85c:	00173713          	seqz	a4,a4
   1f860:	02812803          	lw	a6,40(sp)
   1f864:	01c76733          	or	a4,a4,t3
   1f868:	00000693          	li	a3,0
   1f86c:	411805b3          	sub	a1,a6,a7
   1f870:	00b83333          	sltu	t1,a6,a1
   1f874:	40e585b3          	sub	a1,a1,a4
   1f878:	02b12c23          	sw	a1,56(sp)
   1f87c:	00070663          	beqz	a4,1f888 <__subtf3+0xd88>
   1f880:	410888b3          	sub	a7,a7,a6
   1f884:	0018b693          	seqz	a3,a7
   1f888:	02c12783          	lw	a5,44(sp)
   1f88c:	0066e8b3          	or	a7,a3,t1
   1f890:	41d787b3          	sub	a5,a5,t4
   1f894:	411787b3          	sub	a5,a5,a7
   1f898:	02f12e23          	sw	a5,60(sp)
   1f89c:	00060413          	mv	s0,a2
   1f8a0:	00050913          	mv	s2,a0
   1f8a4:	d49ff06f          	j	1f5ec <__subtf3+0xaec>
   1f8a8:	000086b7          	lui	a3,0x8
   1f8ac:	fff68693          	addi	a3,a3,-1 # 7fff <_start-0x8075>
   1f8b0:	f4d608e3          	beq	a2,a3,1f800 <__subtf3+0xd00>
   1f8b4:	fff74713          	not	a4,a4
   1f8b8:	07400793          	li	a5,116
   1f8bc:	04e7d263          	ble	a4,a5,1f900 <__subtf3+0xe00>
   1f8c0:	00100793          	li	a5,1
   1f8c4:	00012e23          	sw	zero,28(sp)
   1f8c8:	00012c23          	sw	zero,24(sp)
   1f8cc:	00012a23          	sw	zero,20(sp)
   1f8d0:	00f12823          	sw	a5,16(sp)
   1f8d4:	12c0006f          	j	1fa00 <__subtf3+0xf00>
   1f8d8:	000086b7          	lui	a3,0x8
   1f8dc:	fff68693          	addi	a3,a3,-1 # 7fff <_start-0x8075>
   1f8e0:	f2d600e3          	beq	a2,a3,1f800 <__subtf3+0xd00>
   1f8e4:	01c12783          	lw	a5,28(sp)
   1f8e8:	000806b7          	lui	a3,0x80
   1f8ec:	00d7e7b3          	or	a5,a5,a3
   1f8f0:	00f12e23          	sw	a5,28(sp)
   1f8f4:	f8c00793          	li	a5,-116
   1f8f8:	fcf744e3          	blt	a4,a5,1f8c0 <__subtf3+0xdc0>
   1f8fc:	40e00733          	neg	a4,a4
   1f900:	40575693          	srai	a3,a4,0x5
   1f904:	00000893          	li	a7,0
   1f908:	01f77713          	andi	a4,a4,31
   1f90c:	00000793          	li	a5,0
   1f910:	00279313          	slli	t1,a5,0x2
   1f914:	02d79063          	bne	a5,a3,1f934 <__subtf3+0xe34>
   1f918:	04071463          	bnez	a4,1f960 <__subtf3+0xe60>
   1f91c:	00300693          	li	a3,3
   1f920:	40f686b3          	sub	a3,a3,a5
   1f924:	02e6d263          	ble	a4,a3,1f948 <__subtf3+0xe48>
   1f928:	00400713          	li	a4,4
   1f92c:	40f707b3          	sub	a5,a4,a5
   1f930:	07c0006f          	j	1f9ac <__subtf3+0xeac>
   1f934:	00680333          	add	t1,a6,t1
   1f938:	00032303          	lw	t1,0(t1)
   1f93c:	00178793          	addi	a5,a5,1
   1f940:	0068e8b3          	or	a7,a7,t1
   1f944:	fcdff06f          	j	1f910 <__subtf3+0xe10>
   1f948:	00658e33          	add	t3,a1,t1
   1f94c:	000e2e03          	lw	t3,0(t3)
   1f950:	00170713          	addi	a4,a4,1
   1f954:	00458593          	addi	a1,a1,4
   1f958:	ffc5ae23          	sw	t3,-4(a1)
   1f95c:	fc9ff06f          	j	1f924 <__subtf3+0xe24>
   1f960:	04010693          	addi	a3,sp,64
   1f964:	006686b3          	add	a3,a3,t1
   1f968:	fd06a683          	lw	a3,-48(a3) # 7ffd0 <__global_pointer$+0x5ce28>
   1f96c:	02000e93          	li	t4,32
   1f970:	40ee8eb3          	sub	t4,t4,a4
   1f974:	01d696b3          	sll	a3,a3,t4
   1f978:	00d8e8b3          	or	a7,a7,a3
   1f97c:	00300693          	li	a3,3
   1f980:	00000f13          	li	t5,0
   1f984:	40f686b3          	sub	a3,a3,a5
   1f988:	02df4663          	blt	t5,a3,1f9b4 <__subtf3+0xeb4>
   1f98c:	00400593          	li	a1,4
   1f990:	40f587b3          	sub	a5,a1,a5
   1f994:	00269693          	slli	a3,a3,0x2
   1f998:	04010593          	addi	a1,sp,64
   1f99c:	00d586b3          	add	a3,a1,a3
   1f9a0:	01c12583          	lw	a1,28(sp)
   1f9a4:	00e5d733          	srl	a4,a1,a4
   1f9a8:	fce6a823          	sw	a4,-48(a3)
   1f9ac:	00400693          	li	a3,4
   1f9b0:	03c0006f          	j	1f9ec <__subtf3+0xeec>
   1f9b4:	00658fb3          	add	t6,a1,t1
   1f9b8:	000fae03          	lw	t3,0(t6)
   1f9bc:	004faf83          	lw	t6,4(t6)
   1f9c0:	001f0f13          	addi	t5,t5,1
   1f9c4:	00ee5e33          	srl	t3,t3,a4
   1f9c8:	01df9fb3          	sll	t6,t6,t4
   1f9cc:	01fe6e33          	or	t3,t3,t6
   1f9d0:	01c5a023          	sw	t3,0(a1)
   1f9d4:	00458593          	addi	a1,a1,4
   1f9d8:	fb1ff06f          	j	1f988 <__subtf3+0xe88>
   1f9dc:	00279713          	slli	a4,a5,0x2
   1f9e0:	00e80733          	add	a4,a6,a4
   1f9e4:	00072023          	sw	zero,0(a4)
   1f9e8:	00178793          	addi	a5,a5,1
   1f9ec:	fed798e3          	bne	a5,a3,1f9dc <__subtf3+0xedc>
   1f9f0:	01012783          	lw	a5,16(sp)
   1f9f4:	011038b3          	snez	a7,a7
   1f9f8:	0117e8b3          	or	a7,a5,a7
   1f9fc:	01112823          	sw	a7,16(sp)
   1fa00:	02412683          	lw	a3,36(sp)
   1fa04:	02012803          	lw	a6,32(sp)
   1fa08:	01012703          	lw	a4,16(sp)
   1fa0c:	01412783          	lw	a5,20(sp)
   1fa10:	40e80733          	sub	a4,a6,a4
   1fa14:	40f687b3          	sub	a5,a3,a5
   1fa18:	00f6b5b3          	sltu	a1,a3,a5
   1fa1c:	00e836b3          	sltu	a3,a6,a4
   1fa20:	40d786b3          	sub	a3,a5,a3
   1fa24:	02d12a23          	sw	a3,52(sp)
   1fa28:	02e12823          	sw	a4,48(sp)
   1fa2c:	00000693          	li	a3,0
   1fa30:	00e87463          	bleu	a4,a6,1fa38 <__subtf3+0xf38>
   1fa34:	0017b693          	seqz	a3,a5
   1fa38:	00b6e6b3          	or	a3,a3,a1
   1fa3c:	01812703          	lw	a4,24(sp)
   1fa40:	02812583          	lw	a1,40(sp)
   1fa44:	40e58733          	sub	a4,a1,a4
   1fa48:	40d707b3          	sub	a5,a4,a3
   1fa4c:	02f12c23          	sw	a5,56(sp)
   1fa50:	00e5b833          	sltu	a6,a1,a4
   1fa54:	00000593          	li	a1,0
   1fa58:	00068463          	beqz	a3,1fa60 <__subtf3+0xf60>
   1fa5c:	00173593          	seqz	a1,a4
   1fa60:	02c12783          	lw	a5,44(sp)
   1fa64:	01c12703          	lw	a4,28(sp)
   1fa68:	0105e5b3          	or	a1,a1,a6
   1fa6c:	40e787b3          	sub	a5,a5,a4
   1fa70:	40b787b3          	sub	a5,a5,a1
   1fa74:	e25ff06f          	j	1f898 <__subtf3+0xd98>
   1fa78:	00008fb7          	lui	t6,0x8
   1fa7c:	00140813          	addi	a6,s0,1
   1fa80:	ffff8293          	addi	t0,t6,-1 # 7fff <_start-0x8075>
   1fa84:	00587833          	and	a6,a6,t0
   1fa88:	00100f13          	li	t5,1
   1fa8c:	02412583          	lw	a1,36(sp)
   1fa90:	01412603          	lw	a2,20(sp)
   1fa94:	01812883          	lw	a7,24(sp)
   1fa98:	01c12e83          	lw	t4,28(sp)
   1fa9c:	02812303          	lw	t1,40(sp)
   1faa0:	02c12e03          	lw	t3,44(sp)
   1faa4:	1d0f4e63          	blt	t5,a6,1fc80 <__subtf3+0x1180>
   1faa8:	0065e833          	or	a6,a1,t1
   1faac:	01166f33          	or	t5,a2,a7
   1fab0:	01c86833          	or	a6,a6,t3
   1fab4:	01df6f33          	or	t5,t5,t4
   1fab8:	00f86833          	or	a6,a6,a5
   1fabc:	00df6f33          	or	t5,t5,a3
   1fac0:	10041863          	bnez	s0,1fbd0 <__subtf3+0x10d0>
   1fac4:	020f1263          	bnez	t5,1fae8 <__subtf3+0xfe8>
   1fac8:	02f12823          	sw	a5,48(sp)
   1facc:	02b12a23          	sw	a1,52(sp)
   1fad0:	02612c23          	sw	t1,56(sp)
   1fad4:	03c12e23          	sw	t3,60(sp)
   1fad8:	d40814e3          	bnez	a6,1f820 <__subtf3+0xd20>
   1fadc:	00000413          	li	s0,0
   1fae0:	00000913          	li	s2,0
   1fae4:	d00ff06f          	j	1efe4 <__subtf3+0x4e4>
   1fae8:	00081c63          	bnez	a6,1fb00 <__subtf3+0x1000>
   1faec:	02d12823          	sw	a3,48(sp)
   1faf0:	02c12a23          	sw	a2,52(sp)
   1faf4:	03112c23          	sw	a7,56(sp)
   1faf8:	03d12e23          	sw	t4,60(sp)
   1fafc:	c98ff06f          	j	1ef94 <__subtf3+0x494>
   1fb00:	40f68833          	sub	a6,a3,a5
   1fb04:	40b602b3          	sub	t0,a2,a1
   1fb08:	0106bfb3          	sltu	t6,a3,a6
   1fb0c:	00563f33          	sltu	t5,a2,t0
   1fb10:	41f282b3          	sub	t0,t0,t6
   1fb14:	03012823          	sw	a6,48(sp)
   1fb18:	02512a23          	sw	t0,52(sp)
   1fb1c:	00000f93          	li	t6,0
   1fb20:	0106f663          	bleu	a6,a3,1fb2c <__subtf3+0x102c>
   1fb24:	40c58fb3          	sub	t6,a1,a2
   1fb28:	001fbf93          	seqz	t6,t6
   1fb2c:	406883b3          	sub	t2,a7,t1
   1fb30:	01efefb3          	or	t6,t6,t5
   1fb34:	41f38a33          	sub	s4,t2,t6
   1fb38:	03412c23          	sw	s4,56(sp)
   1fb3c:	0078bab3          	sltu	s5,a7,t2
   1fb40:	00000993          	li	s3,0
   1fb44:	000f8463          	beqz	t6,1fb4c <__subtf3+0x104c>
   1fb48:	0013b993          	seqz	s3,t2
   1fb4c:	41ce8f33          	sub	t5,t4,t3
   1fb50:	0159e9b3          	or	s3,s3,s5
   1fb54:	413f0f33          	sub	t5,t5,s3
   1fb58:	03e12e23          	sw	t5,60(sp)
   1fb5c:	00cf1f93          	slli	t6,t5,0xc
   1fb60:	040fde63          	bgez	t6,1fbbc <__subtf3+0x10bc>
   1fb64:	40d786b3          	sub	a3,a5,a3
   1fb68:	40c58633          	sub	a2,a1,a2
   1fb6c:	00d7b833          	sltu	a6,a5,a3
   1fb70:	41060833          	sub	a6,a2,a6
   1fb74:	03012a23          	sw	a6,52(sp)
   1fb78:	02d12823          	sw	a3,48(sp)
   1fb7c:	00c5b5b3          	sltu	a1,a1,a2
   1fb80:	00000813          	li	a6,0
   1fb84:	00d7f463          	bleu	a3,a5,1fb8c <__subtf3+0x108c>
   1fb88:	00163813          	seqz	a6,a2
   1fb8c:	411307b3          	sub	a5,t1,a7
   1fb90:	00b865b3          	or	a1,a6,a1
   1fb94:	00f336b3          	sltu	a3,t1,a5
   1fb98:	40b787b3          	sub	a5,a5,a1
   1fb9c:	02f12c23          	sw	a5,56(sp)
   1fba0:	00058463          	beqz	a1,1fba8 <__subtf3+0x10a8>
   1fba4:	0013b713          	seqz	a4,t2
   1fba8:	41de07b3          	sub	a5,t3,t4
   1fbac:	00d76733          	or	a4,a4,a3
   1fbb0:	40e78733          	sub	a4,a5,a4
   1fbb4:	02e12e23          	sw	a4,60(sp)
   1fbb8:	c69ff06f          	j	1f820 <__subtf3+0xd20>
   1fbbc:	00586833          	or	a6,a6,t0
   1fbc0:	01486833          	or	a6,a6,s4
   1fbc4:	01e86833          	or	a6,a6,t5
   1fbc8:	f0080ae3          	beqz	a6,1fadc <__subtf3+0xfdc>
   1fbcc:	bc8ff06f          	j	1ef94 <__subtf3+0x494>
   1fbd0:	03010393          	addi	t2,sp,48
   1fbd4:	040f1e63          	bnez	t5,1fc30 <__subtf3+0x1130>
   1fbd8:	02081e63          	bnez	a6,1fc14 <__subtf3+0x1114>
   1fbdc:	03f12e23          	sw	t6,60(sp)
   1fbe0:	02012c23          	sw	zero,56(sp)
   1fbe4:	02012a23          	sw	zero,52(sp)
   1fbe8:	02012823          	sw	zero,48(sp)
   1fbec:	03c10793          	addi	a5,sp,60
   1fbf0:	0007a703          	lw	a4,0(a5)
   1fbf4:	ffc7a683          	lw	a3,-4(a5)
   1fbf8:	ffc78793          	addi	a5,a5,-4
   1fbfc:	00371713          	slli	a4,a4,0x3
   1fc00:	01d6d693          	srli	a3,a3,0x1d
   1fc04:	00d76733          	or	a4,a4,a3
   1fc08:	00e7a223          	sw	a4,4(a5)
   1fc0c:	fef392e3          	bne	t2,a5,1fbf0 <__subtf3+0x10f0>
   1fc10:	881ff06f          	j	1f490 <__subtf3+0x990>
   1fc14:	02f12823          	sw	a5,48(sp)
   1fc18:	02b12a23          	sw	a1,52(sp)
   1fc1c:	02612c23          	sw	t1,56(sp)
   1fc20:	03c12e23          	sw	t3,60(sp)
   1fc24:	00050913          	mv	s2,a0
   1fc28:	00028413          	mv	s0,t0
   1fc2c:	b68ff06f          	j	1ef94 <__subtf3+0x494>
   1fc30:	00081c63          	bnez	a6,1fc48 <__subtf3+0x1148>
   1fc34:	02d12823          	sw	a3,48(sp)
   1fc38:	02c12a23          	sw	a2,52(sp)
   1fc3c:	03112c23          	sw	a7,56(sp)
   1fc40:	03d12e23          	sw	t4,60(sp)
   1fc44:	fe5ff06f          	j	1fc28 <__subtf3+0x1128>
   1fc48:	03f12e23          	sw	t6,60(sp)
   1fc4c:	02012c23          	sw	zero,56(sp)
   1fc50:	02012a23          	sw	zero,52(sp)
   1fc54:	02012823          	sw	zero,48(sp)
   1fc58:	03c10793          	addi	a5,sp,60
   1fc5c:	0007a703          	lw	a4,0(a5)
   1fc60:	ffc7a683          	lw	a3,-4(a5)
   1fc64:	ffc78793          	addi	a5,a5,-4
   1fc68:	00371713          	slli	a4,a4,0x3
   1fc6c:	01d6d693          	srli	a3,a3,0x1d
   1fc70:	00d76733          	or	a4,a4,a3
   1fc74:	00e7a223          	sw	a4,4(a5)
   1fc78:	fef392e3          	bne	t2,a5,1fc5c <__subtf3+0x115c>
   1fc7c:	815ff06f          	j	1f490 <__subtf3+0x990>
   1fc80:	40f68833          	sub	a6,a3,a5
   1fc84:	40b602b3          	sub	t0,a2,a1
   1fc88:	0106bfb3          	sltu	t6,a3,a6
   1fc8c:	00563f33          	sltu	t5,a2,t0
   1fc90:	41f282b3          	sub	t0,t0,t6
   1fc94:	03012823          	sw	a6,48(sp)
   1fc98:	02512a23          	sw	t0,52(sp)
   1fc9c:	00000f93          	li	t6,0
   1fca0:	0106f663          	bleu	a6,a3,1fcac <__subtf3+0x11ac>
   1fca4:	40c58fb3          	sub	t6,a1,a2
   1fca8:	001fbf93          	seqz	t6,t6
   1fcac:	406883b3          	sub	t2,a7,t1
   1fcb0:	01efefb3          	or	t6,t6,t5
   1fcb4:	41f38a33          	sub	s4,t2,t6
   1fcb8:	03412c23          	sw	s4,56(sp)
   1fcbc:	0078bab3          	sltu	s5,a7,t2
   1fcc0:	00000993          	li	s3,0
   1fcc4:	000f8463          	beqz	t6,1fccc <__subtf3+0x11cc>
   1fcc8:	0013b993          	seqz	s3,t2
   1fccc:	41ce8f33          	sub	t5,t4,t3
   1fcd0:	0159e9b3          	or	s3,s3,s5
   1fcd4:	413f0f33          	sub	t5,t5,s3
   1fcd8:	03e12e23          	sw	t5,60(sp)
   1fcdc:	00cf1f93          	slli	t6,t5,0xc
   1fce0:	0a0fdc63          	bgez	t6,1fd98 <__subtf3+0x1298>
   1fce4:	40d786b3          	sub	a3,a5,a3
   1fce8:	40c58633          	sub	a2,a1,a2
   1fcec:	00d7b833          	sltu	a6,a5,a3
   1fcf0:	41060833          	sub	a6,a2,a6
   1fcf4:	03012a23          	sw	a6,52(sp)
   1fcf8:	02d12823          	sw	a3,48(sp)
   1fcfc:	00c5b5b3          	sltu	a1,a1,a2
   1fd00:	00000813          	li	a6,0
   1fd04:	00d7f463          	bleu	a3,a5,1fd0c <__subtf3+0x120c>
   1fd08:	00163813          	seqz	a6,a2
   1fd0c:	411307b3          	sub	a5,t1,a7
   1fd10:	00b865b3          	or	a1,a6,a1
   1fd14:	00f336b3          	sltu	a3,t1,a5
   1fd18:	40b787b3          	sub	a5,a5,a1
   1fd1c:	02f12c23          	sw	a5,56(sp)
   1fd20:	00058463          	beqz	a1,1fd28 <__subtf3+0x1228>
   1fd24:	0013b713          	seqz	a4,t2
   1fd28:	41de07b3          	sub	a5,t3,t4
   1fd2c:	00d76733          	or	a4,a4,a3
   1fd30:	40e78733          	sub	a4,a5,a4
   1fd34:	02e12e23          	sw	a4,60(sp)
   1fd38:	00050913          	mv	s2,a0
   1fd3c:	03c12503          	lw	a0,60(sp)
   1fd40:	06050663          	beqz	a0,1fdac <__subtf3+0x12ac>
   1fd44:	2dd000ef          	jal	ra,20820 <__clzsi2>
   1fd48:	ff450513          	addi	a0,a0,-12
   1fd4c:	02000693          	li	a3,32
   1fd50:	02d56833          	rem	a6,a0,a3
   1fd54:	02d547b3          	div	a5,a0,a3
   1fd58:	08080663          	beqz	a6,1fde4 <__subtf3+0x12e4>
   1fd5c:	ffc00713          	li	a4,-4
   1fd60:	00279593          	slli	a1,a5,0x2
   1fd64:	ff000e13          	li	t3,-16
   1fd68:	410686b3          	sub	a3,a3,a6
   1fd6c:	02e78733          	mul	a4,a5,a4
   1fd70:	ffc70713          	addi	a4,a4,-4
   1fd74:	0bc71063          	bne	a4,t3,1fe14 <__subtf3+0x1314>
   1fd78:	04010713          	addi	a4,sp,64
   1fd7c:	00b705b3          	add	a1,a4,a1
   1fd80:	03012703          	lw	a4,48(sp)
   1fd84:	fff78793          	addi	a5,a5,-1
   1fd88:	01071833          	sll	a6,a4,a6
   1fd8c:	ff05a823          	sw	a6,-16(a1)
   1fd90:	fff00693          	li	a3,-1
   1fd94:	0c00006f          	j	1fe54 <__subtf3+0x1354>
   1fd98:	00586833          	or	a6,a6,t0
   1fd9c:	01486833          	or	a6,a6,s4
   1fda0:	01e86833          	or	a6,a6,t5
   1fda4:	d2080ce3          	beqz	a6,1fadc <__subtf3+0xfdc>
   1fda8:	f95ff06f          	j	1fd3c <__subtf3+0x123c>
   1fdac:	03812503          	lw	a0,56(sp)
   1fdb0:	00050863          	beqz	a0,1fdc0 <__subtf3+0x12c0>
   1fdb4:	26d000ef          	jal	ra,20820 <__clzsi2>
   1fdb8:	02050513          	addi	a0,a0,32
   1fdbc:	f8dff06f          	j	1fd48 <__subtf3+0x1248>
   1fdc0:	03412503          	lw	a0,52(sp)
   1fdc4:	00050863          	beqz	a0,1fdd4 <__subtf3+0x12d4>
   1fdc8:	259000ef          	jal	ra,20820 <__clzsi2>
   1fdcc:	04050513          	addi	a0,a0,64
   1fdd0:	f79ff06f          	j	1fd48 <__subtf3+0x1248>
   1fdd4:	03012503          	lw	a0,48(sp)
   1fdd8:	249000ef          	jal	ra,20820 <__clzsi2>
   1fddc:	06050513          	addi	a0,a0,96
   1fde0:	f69ff06f          	j	1fd48 <__subtf3+0x1248>
   1fde4:	ffc00613          	li	a2,-4
   1fde8:	02c78633          	mul	a2,a5,a2
   1fdec:	03010713          	addi	a4,sp,48
   1fdf0:	00300693          	li	a3,3
   1fdf4:	00c705b3          	add	a1,a4,a2
   1fdf8:	00c5a583          	lw	a1,12(a1)
   1fdfc:	fff68693          	addi	a3,a3,-1
   1fe00:	ffc70713          	addi	a4,a4,-4
   1fe04:	00b72823          	sw	a1,16(a4)
   1fe08:	fef6d6e3          	ble	a5,a3,1fdf4 <__subtf3+0x12f4>
   1fe0c:	fff78793          	addi	a5,a5,-1
   1fe10:	f81ff06f          	j	1fd90 <__subtf3+0x1290>
   1fe14:	03010613          	addi	a2,sp,48
   1fe18:	00e60333          	add	t1,a2,a4
   1fe1c:	00e588b3          	add	a7,a1,a4
   1fe20:	011608b3          	add	a7,a2,a7
   1fe24:	00c32603          	lw	a2,12(t1)
   1fe28:	01032303          	lw	t1,16(t1)
   1fe2c:	00d65633          	srl	a2,a2,a3
   1fe30:	01031333          	sll	t1,t1,a6
   1fe34:	00666633          	or	a2,a2,t1
   1fe38:	00c8a823          	sw	a2,16(a7)
   1fe3c:	f35ff06f          	j	1fd70 <__subtf3+0x1270>
   1fe40:	00279713          	slli	a4,a5,0x2
   1fe44:	03010613          	addi	a2,sp,48
   1fe48:	00e60733          	add	a4,a2,a4
   1fe4c:	00072023          	sw	zero,0(a4)
   1fe50:	fff78793          	addi	a5,a5,-1
   1fe54:	fed796e3          	bne	a5,a3,1fe40 <__subtf3+0x1340>
   1fe58:	12854e63          	blt	a0,s0,1ff94 <__subtf3+0x1494>
   1fe5c:	40850433          	sub	s0,a0,s0
   1fe60:	02000713          	li	a4,32
   1fe64:	00140413          	addi	s0,s0,1
   1fe68:	02e447b3          	div	a5,s0,a4
   1fe6c:	00000513          	li	a0,0
   1fe70:	02e46433          	rem	s0,s0,a4
   1fe74:	00000713          	li	a4,0
   1fe78:	02f74a63          	blt	a4,a5,1feac <__subtf3+0x13ac>
   1fe7c:	00078713          	mv	a4,a5
   1fe80:	0007d463          	bgez	a5,1fe88 <__subtf3+0x1388>
   1fe84:	00000713          	li	a4,0
   1fe88:	00279313          	slli	t1,a5,0x2
   1fe8c:	04041a63          	bnez	s0,1fee0 <__subtf3+0x13e0>
   1fe90:	00300693          	li	a3,3
   1fe94:	03010713          	addi	a4,sp,48
   1fe98:	40f686b3          	sub	a3,a3,a5
   1fe9c:	0286d663          	ble	s0,a3,1fec8 <__subtf3+0x13c8>
   1fea0:	00400713          	li	a4,4
   1fea4:	40f707b3          	sub	a5,a4,a5
   1fea8:	08c0006f          	j	1ff34 <__subtf3+0x1434>
   1feac:	00271693          	slli	a3,a4,0x2
   1feb0:	03010613          	addi	a2,sp,48
   1feb4:	00d606b3          	add	a3,a2,a3
   1feb8:	0006a683          	lw	a3,0(a3)
   1febc:	00170713          	addi	a4,a4,1
   1fec0:	00d56533          	or	a0,a0,a3
   1fec4:	fb5ff06f          	j	1fe78 <__subtf3+0x1378>
   1fec8:	00670633          	add	a2,a4,t1
   1fecc:	00062603          	lw	a2,0(a2)
   1fed0:	00140413          	addi	s0,s0,1
   1fed4:	00470713          	addi	a4,a4,4
   1fed8:	fec72e23          	sw	a2,-4(a4)
   1fedc:	fc1ff06f          	j	1fe9c <__subtf3+0x139c>
   1fee0:	00271713          	slli	a4,a4,0x2
   1fee4:	04010693          	addi	a3,sp,64
   1fee8:	00e68733          	add	a4,a3,a4
   1feec:	ff072703          	lw	a4,-16(a4)
   1fef0:	02000613          	li	a2,32
   1fef4:	40860633          	sub	a2,a2,s0
   1fef8:	00c71733          	sll	a4,a4,a2
   1fefc:	00e56533          	or	a0,a0,a4
   1ff00:	00300713          	li	a4,3
   1ff04:	03010593          	addi	a1,sp,48
   1ff08:	00000813          	li	a6,0
   1ff0c:	40f70733          	sub	a4,a4,a5
   1ff10:	02e84663          	blt	a6,a4,1ff3c <__subtf3+0x143c>
   1ff14:	00400693          	li	a3,4
   1ff18:	40f687b3          	sub	a5,a3,a5
   1ff1c:	00271713          	slli	a4,a4,0x2
   1ff20:	04010693          	addi	a3,sp,64
   1ff24:	00e68733          	add	a4,a3,a4
   1ff28:	03c12683          	lw	a3,60(sp)
   1ff2c:	0086d433          	srl	s0,a3,s0
   1ff30:	fe872823          	sw	s0,-16(a4)
   1ff34:	00300693          	li	a3,3
   1ff38:	0400006f          	j	1ff78 <__subtf3+0x1478>
   1ff3c:	006588b3          	add	a7,a1,t1
   1ff40:	0008a683          	lw	a3,0(a7)
   1ff44:	0048a883          	lw	a7,4(a7)
   1ff48:	00180813          	addi	a6,a6,1
   1ff4c:	0086d6b3          	srl	a3,a3,s0
   1ff50:	00c898b3          	sll	a7,a7,a2
   1ff54:	0116e6b3          	or	a3,a3,a7
   1ff58:	00d5a023          	sw	a3,0(a1)
   1ff5c:	00458593          	addi	a1,a1,4
   1ff60:	fb1ff06f          	j	1ff10 <__subtf3+0x1410>
   1ff64:	00279713          	slli	a4,a5,0x2
   1ff68:	03010613          	addi	a2,sp,48
   1ff6c:	00e60733          	add	a4,a2,a4
   1ff70:	00072023          	sw	zero,0(a4)
   1ff74:	00178793          	addi	a5,a5,1
   1ff78:	fef6d6e3          	ble	a5,a3,1ff64 <__subtf3+0x1464>
   1ff7c:	03012703          	lw	a4,48(sp)
   1ff80:	00a037b3          	snez	a5,a0
   1ff84:	00000413          	li	s0,0
   1ff88:	00f767b3          	or	a5,a4,a5
   1ff8c:	02f12823          	sw	a5,48(sp)
   1ff90:	804ff06f          	j	1ef94 <__subtf3+0x494>
   1ff94:	03c12783          	lw	a5,60(sp)
   1ff98:	fff80737          	lui	a4,0xfff80
   1ff9c:	fff70713          	addi	a4,a4,-1 # fff7ffff <__global_pointer$+0xfff5ce57>
   1ffa0:	40a40433          	sub	s0,s0,a0
   1ffa4:	00e7f7b3          	and	a5,a5,a4
   1ffa8:	e19fe06f          	j	1edc0 <__subtf3+0x2c0>
   1ffac:	02012e23          	sw	zero,60(sp)
   1ffb0:	02012c23          	sw	zero,56(sp)
   1ffb4:	02012a23          	sw	zero,52(sp)
   1ffb8:	02012823          	sw	zero,48(sp)
   1ffbc:	854ff06f          	j	1f010 <__subtf3+0x510>

0001ffc0 <__fixtfsi>:
   1ffc0:	00452703          	lw	a4,4(a0)
   1ffc4:	00852783          	lw	a5,8(a0)
   1ffc8:	00c52603          	lw	a2,12(a0)
   1ffcc:	00052683          	lw	a3,0(a0)
   1ffd0:	fe010113          	addi	sp,sp,-32
   1ffd4:	00e12223          	sw	a4,4(sp)
   1ffd8:	00f12423          	sw	a5,8(sp)
   1ffdc:	00e12a23          	sw	a4,20(sp)
   1ffe0:	00f12c23          	sw	a5,24(sp)
   1ffe4:	00004737          	lui	a4,0x4
   1ffe8:	00161793          	slli	a5,a2,0x1
   1ffec:	00d12023          	sw	a3,0(sp)
   1fff0:	00d12823          	sw	a3,16(sp)
   1fff4:	00c12623          	sw	a2,12(sp)
   1fff8:	0117d693          	srli	a3,a5,0x11
   1fffc:	ffe70793          	addi	a5,a4,-2 # 3ffe <_start-0xc076>
   20000:	00000513          	li	a0,0
   20004:	02d7d063          	ble	a3,a5,20024 <__fixtfsi+0x64>
   20008:	01d70793          	addi	a5,a4,29
   2000c:	01061593          	slli	a1,a2,0x10
   20010:	01f65613          	srli	a2,a2,0x1f
   20014:	00d7dc63          	ble	a3,a5,2002c <__fixtfsi+0x6c>
   20018:	80000537          	lui	a0,0x80000
   2001c:	fff54513          	not	a0,a0
   20020:	00a60533          	add	a0,a2,a0
   20024:	02010113          	addi	sp,sp,32
   20028:	00008067          	ret
   2002c:	000107b7          	lui	a5,0x10
   20030:	0105d593          	srli	a1,a1,0x10
   20034:	00f5e5b3          	or	a1,a1,a5
   20038:	06f70793          	addi	a5,a4,111
   2003c:	40d787b3          	sub	a5,a5,a3
   20040:	4057d713          	srai	a4,a5,0x5
   20044:	00b12e23          	sw	a1,28(sp)
   20048:	01f7f793          	andi	a5,a5,31
   2004c:	0a079263          	bnez	a5,200f0 <__fixtfsi+0x130>
   20050:	00300593          	li	a1,3
   20054:	01010693          	addi	a3,sp,16
   20058:	00271513          	slli	a0,a4,0x2
   2005c:	40e585b3          	sub	a1,a1,a4
   20060:	02f5de63          	ble	a5,a1,2009c <__fixtfsi+0xdc>
   20064:	00400793          	li	a5,4
   20068:	40e78733          	sub	a4,a5,a4
   2006c:	01010693          	addi	a3,sp,16
   20070:	00271793          	slli	a5,a4,0x2
   20074:	00f687b3          	add	a5,a3,a5
   20078:	00400693          	li	a3,4
   2007c:	0007a023          	sw	zero,0(a5) # 10000 <_start-0x74>
   20080:	00170713          	addi	a4,a4,1
   20084:	00478793          	addi	a5,a5,4
   20088:	fed71ae3          	bne	a4,a3,2007c <__fixtfsi+0xbc>
   2008c:	01012503          	lw	a0,16(sp)
   20090:	f8060ae3          	beqz	a2,20024 <__fixtfsi+0x64>
   20094:	40a00533          	neg	a0,a0
   20098:	f8dff06f          	j	20024 <__fixtfsi+0x64>
   2009c:	00a68833          	add	a6,a3,a0
   200a0:	00082803          	lw	a6,0(a6)
   200a4:	00178793          	addi	a5,a5,1
   200a8:	00468693          	addi	a3,a3,4
   200ac:	ff06ae23          	sw	a6,-4(a3)
   200b0:	fb1ff06f          	j	20060 <__fixtfsi+0xa0>
   200b4:	ff052683          	lw	a3,-16(a0) # 7ffffff0 <__global_pointer$+0x7ffdce48>
   200b8:	ff072303          	lw	t1,-16(a4)
   200bc:	011696b3          	sll	a3,a3,a7
   200c0:	00f35333          	srl	t1,t1,a5
   200c4:	0066e6b3          	or	a3,a3,t1
   200c8:	00d12823          	sw	a3,16(sp)
   200cc:	00100693          	li	a3,1
   200d0:	ff06c2e3          	blt	a3,a6,200b4 <__fixtfsi+0xf4>
   200d4:	00168713          	addi	a4,a3,1
   200d8:	02010513          	addi	a0,sp,32
   200dc:	00269693          	slli	a3,a3,0x2
   200e0:	00d506b3          	add	a3,a0,a3
   200e4:	00f5d7b3          	srl	a5,a1,a5
   200e8:	fef6a823          	sw	a5,-16(a3)
   200ec:	f81ff06f          	j	2006c <__fixtfsi+0xac>
   200f0:	00170513          	addi	a0,a4,1
   200f4:	02010893          	addi	a7,sp,32
   200f8:	00300813          	li	a6,3
   200fc:	00251513          	slli	a0,a0,0x2
   20100:	40e80833          	sub	a6,a6,a4
   20104:	00a88533          	add	a0,a7,a0
   20108:	00271713          	slli	a4,a4,0x2
   2010c:	02000893          	li	a7,32
   20110:	02010313          	addi	t1,sp,32
   20114:	00000693          	li	a3,0
   20118:	40f888b3          	sub	a7,a7,a5
   2011c:	00e30733          	add	a4,t1,a4
   20120:	fb1ff06f          	j	200d0 <__fixtfsi+0x110>

00020124 <__floatsitf>:
   20124:	fd010113          	addi	sp,sp,-48
   20128:	02912223          	sw	s1,36(sp)
   2012c:	02112623          	sw	ra,44(sp)
   20130:	02812423          	sw	s0,40(sp)
   20134:	03212023          	sw	s2,32(sp)
   20138:	00050493          	mv	s1,a0
   2013c:	14058663          	beqz	a1,20288 <__floatsitf+0x164>
   20140:	00058413          	mv	s0,a1
   20144:	01f5d913          	srli	s2,a1,0x1f
   20148:	0005d463          	bgez	a1,20150 <__floatsitf+0x2c>
   2014c:	40b00433          	neg	s0,a1
   20150:	00040513          	mv	a0,s0
   20154:	6cc000ef          	jal	ra,20820 <__clzsi2>
   20158:	05150593          	addi	a1,a0,81
   2015c:	000047b7          	lui	a5,0x4
   20160:	01e78793          	addi	a5,a5,30 # 401e <_start-0xc056>
   20164:	4055d713          	srai	a4,a1,0x5
   20168:	00812823          	sw	s0,16(sp)
   2016c:	00012a23          	sw	zero,20(sp)
   20170:	00012c23          	sw	zero,24(sp)
   20174:	00012e23          	sw	zero,28(sp)
   20178:	01f5f593          	andi	a1,a1,31
   2017c:	40a787b3          	sub	a5,a5,a0
   20180:	02058c63          	beqz	a1,201b8 <__floatsitf+0x94>
   20184:	00200693          	li	a3,2
   20188:	0ed71c63          	bne	a4,a3,20280 <__floatsitf+0x15c>
   2018c:	02000693          	li	a3,32
   20190:	40b686b3          	sub	a3,a3,a1
   20194:	00d456b3          	srl	a3,s0,a3
   20198:	00d12e23          	sw	a3,28(sp)
   2019c:	fff70693          	addi	a3,a4,-1
   201a0:	02010613          	addi	a2,sp,32
   201a4:	00271713          	slli	a4,a4,0x2
   201a8:	00e60733          	add	a4,a2,a4
   201ac:	00b41433          	sll	s0,s0,a1
   201b0:	fe872823          	sw	s0,-16(a4)
   201b4:	0340006f          	j	201e8 <__floatsitf+0xc4>
   201b8:	00300693          	li	a3,3
   201bc:	40e686b3          	sub	a3,a3,a4
   201c0:	02010613          	addi	a2,sp,32
   201c4:	00269693          	slli	a3,a3,0x2
   201c8:	00d606b3          	add	a3,a2,a3
   201cc:	ff06a683          	lw	a3,-16(a3)
   201d0:	00200613          	li	a2,2
   201d4:	00d12e23          	sw	a3,28(sp)
   201d8:	00200693          	li	a3,2
   201dc:	00c71663          	bne	a4,a2,201e8 <__floatsitf+0xc4>
   201e0:	00812c23          	sw	s0,24(sp)
   201e4:	00100693          	li	a3,1
   201e8:	01010613          	addi	a2,sp,16
   201ec:	00269713          	slli	a4,a3,0x2
   201f0:	00e60733          	add	a4,a2,a4
   201f4:	fff00613          	li	a2,-1
   201f8:	00072023          	sw	zero,0(a4)
   201fc:	fff68693          	addi	a3,a3,-1
   20200:	ffc70713          	addi	a4,a4,-4
   20204:	fec69ae3          	bne	a3,a2,201f8 <__floatsitf+0xd4>
   20208:	01c12703          	lw	a4,28(sp)
   2020c:	800106b7          	lui	a3,0x80010
   20210:	fff68693          	addi	a3,a3,-1 # 8000ffff <__global_pointer$+0x7ffece57>
   20214:	00e11623          	sh	a4,12(sp)
   20218:	00008737          	lui	a4,0x8
   2021c:	fff70713          	addi	a4,a4,-1 # 7fff <_start-0x8075>
   20220:	00e7f7b3          	and	a5,a5,a4
   20224:	01079713          	slli	a4,a5,0x10
   20228:	00c12783          	lw	a5,12(sp)
   2022c:	01f91913          	slli	s2,s2,0x1f
   20230:	02c12083          	lw	ra,44(sp)
   20234:	00d7f7b3          	and	a5,a5,a3
   20238:	00e7e7b3          	or	a5,a5,a4
   2023c:	80000737          	lui	a4,0x80000
   20240:	fff74713          	not	a4,a4
   20244:	00e7f7b3          	and	a5,a5,a4
   20248:	01012703          	lw	a4,16(sp)
   2024c:	02812403          	lw	s0,40(sp)
   20250:	0127e7b3          	or	a5,a5,s2
   20254:	00e4a023          	sw	a4,0(s1)
   20258:	01412703          	lw	a4,20(sp)
   2025c:	00f4a623          	sw	a5,12(s1)
   20260:	00048513          	mv	a0,s1
   20264:	00e4a223          	sw	a4,4(s1)
   20268:	01812703          	lw	a4,24(sp)
   2026c:	02012903          	lw	s2,32(sp)
   20270:	00e4a423          	sw	a4,8(s1)
   20274:	02412483          	lw	s1,36(sp)
   20278:	03010113          	addi	sp,sp,48
   2027c:	00008067          	ret
   20280:	00300713          	li	a4,3
   20284:	f19ff06f          	j	2019c <__floatsitf+0x78>
   20288:	00012e23          	sw	zero,28(sp)
   2028c:	00012c23          	sw	zero,24(sp)
   20290:	00012a23          	sw	zero,20(sp)
   20294:	00012823          	sw	zero,16(sp)
   20298:	00000793          	li	a5,0
   2029c:	00000913          	li	s2,0
   202a0:	f69ff06f          	j	20208 <__floatsitf+0xe4>

000202a4 <__extenddftf2>:
   202a4:	01465793          	srli	a5,a2,0x14
   202a8:	00100737          	lui	a4,0x100
   202ac:	fff70713          	addi	a4,a4,-1 # fffff <__global_pointer$+0xdce57>
   202b0:	7ff7f793          	andi	a5,a5,2047
   202b4:	fd010113          	addi	sp,sp,-48
   202b8:	00c77733          	and	a4,a4,a2
   202bc:	00178693          	addi	a3,a5,1
   202c0:	02812423          	sw	s0,40(sp)
   202c4:	02912223          	sw	s1,36(sp)
   202c8:	01f65413          	srli	s0,a2,0x1f
   202cc:	02112623          	sw	ra,44(sp)
   202d0:	00b12823          	sw	a1,16(sp)
   202d4:	00e12a23          	sw	a4,20(sp)
   202d8:	00012e23          	sw	zero,28(sp)
   202dc:	00012c23          	sw	zero,24(sp)
   202e0:	7ff6f693          	andi	a3,a3,2047
   202e4:	00100613          	li	a2,1
   202e8:	00050493          	mv	s1,a0
   202ec:	0ad65463          	ble	a3,a2,20394 <__extenddftf2+0xf0>
   202f0:	000046b7          	lui	a3,0x4
   202f4:	c0068693          	addi	a3,a3,-1024 # 3c00 <_start-0xc474>
   202f8:	0045d513          	srli	a0,a1,0x4
   202fc:	00d787b3          	add	a5,a5,a3
   20300:	00475693          	srli	a3,a4,0x4
   20304:	01c71713          	slli	a4,a4,0x1c
   20308:	00a76733          	or	a4,a4,a0
   2030c:	01c59593          	slli	a1,a1,0x1c
   20310:	00d12e23          	sw	a3,28(sp)
   20314:	00e12c23          	sw	a4,24(sp)
   20318:	00b12a23          	sw	a1,20(sp)
   2031c:	00012823          	sw	zero,16(sp)
   20320:	01c12703          	lw	a4,28(sp)
   20324:	00008537          	lui	a0,0x8
   20328:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8075>
   2032c:	00e11623          	sh	a4,12(sp)
   20330:	00c12703          	lw	a4,12(sp)
   20334:	800106b7          	lui	a3,0x80010
   20338:	00a7f7b3          	and	a5,a5,a0
   2033c:	fff68693          	addi	a3,a3,-1 # 8000ffff <__global_pointer$+0x7ffece57>
   20340:	00d77733          	and	a4,a4,a3
   20344:	01079793          	slli	a5,a5,0x10
   20348:	00f767b3          	or	a5,a4,a5
   2034c:	80000737          	lui	a4,0x80000
   20350:	fff74713          	not	a4,a4
   20354:	00e7f7b3          	and	a5,a5,a4
   20358:	01f41413          	slli	s0,s0,0x1f
   2035c:	0087e433          	or	s0,a5,s0
   20360:	01012783          	lw	a5,16(sp)
   20364:	0084a623          	sw	s0,12(s1)
   20368:	02c12083          	lw	ra,44(sp)
   2036c:	00f4a023          	sw	a5,0(s1)
   20370:	01412783          	lw	a5,20(sp)
   20374:	02812403          	lw	s0,40(sp)
   20378:	00048513          	mv	a0,s1
   2037c:	00f4a223          	sw	a5,4(s1)
   20380:	01812783          	lw	a5,24(sp)
   20384:	00f4a423          	sw	a5,8(s1)
   20388:	02412483          	lw	s1,36(sp)
   2038c:	03010113          	addi	sp,sp,48
   20390:	00008067          	ret
   20394:	00b76533          	or	a0,a4,a1
   20398:	0e079a63          	bnez	a5,2048c <__extenddftf2+0x1e8>
   2039c:	f80502e3          	beqz	a0,20320 <__extenddftf2+0x7c>
   203a0:	06070063          	beqz	a4,20400 <__extenddftf2+0x15c>
   203a4:	00070513          	mv	a0,a4
   203a8:	478000ef          	jal	ra,20820 <__clzsi2>
   203ac:	03150693          	addi	a3,a0,49
   203b0:	4056d713          	srai	a4,a3,0x5
   203b4:	01f6f693          	andi	a3,a3,31
   203b8:	04068a63          	beqz	a3,2040c <__extenddftf2+0x168>
   203bc:	ffc00613          	li	a2,-4
   203c0:	02c70633          	mul	a2,a4,a2
   203c4:	02000813          	li	a6,32
   203c8:	01010793          	addi	a5,sp,16
   203cc:	ff000313          	li	t1,-16
   203d0:	40d80833          	sub	a6,a6,a3
   203d4:	ffc60613          	addi	a2,a2,-4
   203d8:	ffc78793          	addi	a5,a5,-4
   203dc:	08661663          	bne	a2,t1,20468 <__extenddftf2+0x1c4>
   203e0:	02010793          	addi	a5,sp,32
   203e4:	fff70613          	addi	a2,a4,-1 # 7fffffff <__global_pointer$+0x7ffdce57>
   203e8:	00271713          	slli	a4,a4,0x2
   203ec:	00e78733          	add	a4,a5,a4
   203f0:	01012783          	lw	a5,16(sp)
   203f4:	00d796b3          	sll	a3,a5,a3
   203f8:	fed72823          	sw	a3,-16(a4)
   203fc:	03c0006f          	j	20438 <__extenddftf2+0x194>
   20400:	420000ef          	jal	ra,20820 <__clzsi2>
   20404:	02050513          	addi	a0,a0,32
   20408:	fa5ff06f          	j	203ac <__extenddftf2+0x108>
   2040c:	ffc00613          	li	a2,-4
   20410:	02c70633          	mul	a2,a4,a2
   20414:	01010693          	addi	a3,sp,16
   20418:	00300793          	li	a5,3
   2041c:	00c685b3          	add	a1,a3,a2
   20420:	00c5a583          	lw	a1,12(a1)
   20424:	fff78793          	addi	a5,a5,-1
   20428:	ffc68693          	addi	a3,a3,-4
   2042c:	00b6a823          	sw	a1,16(a3)
   20430:	fee7d6e3          	ble	a4,a5,2041c <__extenddftf2+0x178>
   20434:	fff70613          	addi	a2,a4,-1
   20438:	01010793          	addi	a5,sp,16
   2043c:	00261713          	slli	a4,a2,0x2
   20440:	00e78733          	add	a4,a5,a4
   20444:	fff00793          	li	a5,-1
   20448:	00072023          	sw	zero,0(a4)
   2044c:	fff60613          	addi	a2,a2,-1
   20450:	ffc70713          	addi	a4,a4,-4
   20454:	fef61ae3          	bne	a2,a5,20448 <__extenddftf2+0x1a4>
   20458:	000047b7          	lui	a5,0x4
   2045c:	c0c78793          	addi	a5,a5,-1012 # 3c0c <_start-0xc468>
   20460:	40a787b3          	sub	a5,a5,a0
   20464:	ebdff06f          	j	20320 <__extenddftf2+0x7c>
   20468:	01010593          	addi	a1,sp,16
   2046c:	00c588b3          	add	a7,a1,a2
   20470:	00c8a583          	lw	a1,12(a7)
   20474:	0108a883          	lw	a7,16(a7)
   20478:	0105d5b3          	srl	a1,a1,a6
   2047c:	00d898b3          	sll	a7,a7,a3
   20480:	0115e5b3          	or	a1,a1,a7
   20484:	00b7a823          	sw	a1,16(a5)
   20488:	f4dff06f          	j	203d4 <__extenddftf2+0x130>
   2048c:	000087b7          	lui	a5,0x8
   20490:	02050863          	beqz	a0,204c0 <__extenddftf2+0x21c>
   20494:	01c71793          	slli	a5,a4,0x1c
   20498:	0045d693          	srli	a3,a1,0x4
   2049c:	00d7e7b3          	or	a5,a5,a3
   204a0:	00f12c23          	sw	a5,24(sp)
   204a4:	00475713          	srli	a4,a4,0x4
   204a8:	000087b7          	lui	a5,0x8
   204ac:	01c59593          	slli	a1,a1,0x1c
   204b0:	00f76733          	or	a4,a4,a5
   204b4:	00b12a23          	sw	a1,20(sp)
   204b8:	00012823          	sw	zero,16(sp)
   204bc:	00e12e23          	sw	a4,28(sp)
   204c0:	fff78793          	addi	a5,a5,-1 # 7fff <_start-0x8075>
   204c4:	e5dff06f          	j	20320 <__extenddftf2+0x7c>

000204c8 <__trunctfdf2>:
   204c8:	00c52583          	lw	a1,12(a0)
   204cc:	00852783          	lw	a5,8(a0)
   204d0:	00452703          	lw	a4,4(a0)
   204d4:	fe010113          	addi	sp,sp,-32
   204d8:	00052683          	lw	a3,0(a0)
   204dc:	00f12423          	sw	a5,8(sp)
   204e0:	00f12c23          	sw	a5,24(sp)
   204e4:	01059793          	slli	a5,a1,0x10
   204e8:	00e12223          	sw	a4,4(sp)
   204ec:	00e12a23          	sw	a4,20(sp)
   204f0:	0107d793          	srli	a5,a5,0x10
   204f4:	00159713          	slli	a4,a1,0x1
   204f8:	00b12623          	sw	a1,12(sp)
   204fc:	00d12023          	sw	a3,0(sp)
   20500:	00d12823          	sw	a3,16(sp)
   20504:	00f12e23          	sw	a5,28(sp)
   20508:	01175713          	srli	a4,a4,0x11
   2050c:	01f5d593          	srli	a1,a1,0x1f
   20510:	01010313          	addi	t1,sp,16
   20514:	01c10613          	addi	a2,sp,28
   20518:	00062783          	lw	a5,0(a2)
   2051c:	ffc62683          	lw	a3,-4(a2)
   20520:	ffc60613          	addi	a2,a2,-4
   20524:	00379793          	slli	a5,a5,0x3
   20528:	01d6d693          	srli	a3,a3,0x1d
   2052c:	00d7e7b3          	or	a5,a5,a3
   20530:	00f62223          	sw	a5,4(a2)
   20534:	fec312e3          	bne	t1,a2,20518 <__trunctfdf2+0x50>
   20538:	01012683          	lw	a3,16(sp)
   2053c:	00170793          	addi	a5,a4,1
   20540:	00369513          	slli	a0,a3,0x3
   20544:	000086b7          	lui	a3,0x8
   20548:	fff68693          	addi	a3,a3,-1 # 7fff <_start-0x8075>
   2054c:	00d7f7b3          	and	a5,a5,a3
   20550:	00a12823          	sw	a0,16(sp)
   20554:	00100693          	li	a3,1
   20558:	1af6dc63          	ble	a5,a3,20710 <__trunctfdf2+0x248>
   2055c:	ffffc7b7          	lui	a5,0xffffc
   20560:	40078793          	addi	a5,a5,1024 # ffffc400 <__global_pointer$+0xfffd9258>
   20564:	00f70733          	add	a4,a4,a5
   20568:	7fe00793          	li	a5,2046
   2056c:	1ee7ce63          	blt	a5,a4,20768 <__trunctfdf2+0x2a0>
   20570:	06e05863          	blez	a4,205e0 <__trunctfdf2+0x118>
   20574:	01812803          	lw	a6,24(sp)
   20578:	01c12603          	lw	a2,28(sp)
   2057c:	01412783          	lw	a5,20(sp)
   20580:	01c85693          	srli	a3,a6,0x1c
   20584:	00461613          	slli	a2,a2,0x4
   20588:	00d66633          	or	a2,a2,a3
   2058c:	00479693          	slli	a3,a5,0x4
   20590:	00a6e6b3          	or	a3,a3,a0
   20594:	01c7d793          	srli	a5,a5,0x1c
   20598:	00481813          	slli	a6,a6,0x4
   2059c:	00d036b3          	snez	a3,a3
   205a0:	0107e7b3          	or	a5,a5,a6
   205a4:	00f6e6b3          	or	a3,a3,a5
   205a8:	00c12a23          	sw	a2,20(sp)
   205ac:	00d12823          	sw	a3,16(sp)
   205b0:	01012683          	lw	a3,16(sp)
   205b4:	01412783          	lw	a5,20(sp)
   205b8:	0076f613          	andi	a2,a3,7
   205bc:	1a060c63          	beqz	a2,20774 <__trunctfdf2+0x2ac>
   205c0:	00f6f613          	andi	a2,a3,15
   205c4:	00400513          	li	a0,4
   205c8:	1aa60663          	beq	a2,a0,20774 <__trunctfdf2+0x2ac>
   205cc:	00468613          	addi	a2,a3,4
   205d0:	00d636b3          	sltu	a3,a2,a3
   205d4:	00d787b3          	add	a5,a5,a3
   205d8:	00060693          	mv	a3,a2
   205dc:	1980006f          	j	20774 <__trunctfdf2+0x2ac>
   205e0:	fcc00793          	li	a5,-52
   205e4:	00f75a63          	ble	a5,a4,205f8 <__trunctfdf2+0x130>
   205e8:	00012a23          	sw	zero,20(sp)
   205ec:	00d12823          	sw	a3,16(sp)
   205f0:	00000713          	li	a4,0
   205f4:	fbdff06f          	j	205b0 <__trunctfdf2+0xe8>
   205f8:	01c12783          	lw	a5,28(sp)
   205fc:	000806b7          	lui	a3,0x80
   20600:	00000893          	li	a7,0
   20604:	00d7e7b3          	or	a5,a5,a3
   20608:	00f12e23          	sw	a5,28(sp)
   2060c:	03d00793          	li	a5,61
   20610:	40e78733          	sub	a4,a5,a4
   20614:	40575513          	srai	a0,a4,0x5
   20618:	00030793          	mv	a5,t1
   2061c:	01f77713          	andi	a4,a4,31
   20620:	00000693          	li	a3,0
   20624:	0007a803          	lw	a6,0(a5)
   20628:	00168693          	addi	a3,a3,1 # 80001 <__global_pointer$+0x5ce59>
   2062c:	00478793          	addi	a5,a5,4
   20630:	0108e8b3          	or	a7,a7,a6
   20634:	fed518e3          	bne	a0,a3,20624 <__trunctfdf2+0x15c>
   20638:	00269e93          	slli	t4,a3,0x2
   2063c:	02071a63          	bnez	a4,20670 <__trunctfdf2+0x1a8>
   20640:	00300793          	li	a5,3
   20644:	40d787b3          	sub	a5,a5,a3
   20648:	00e7d863          	ble	a4,a5,20658 <__trunctfdf2+0x190>
   2064c:	00400793          	li	a5,4
   20650:	40d786b3          	sub	a3,a5,a3
   20654:	0680006f          	j	206bc <__trunctfdf2+0x1f4>
   20658:	01d60533          	add	a0,a2,t4
   2065c:	00052503          	lw	a0,0(a0)
   20660:	00170713          	addi	a4,a4,1
   20664:	00460613          	addi	a2,a2,4
   20668:	fea62e23          	sw	a0,-4(a2)
   2066c:	fddff06f          	j	20648 <__trunctfdf2+0x180>
   20670:	02010793          	addi	a5,sp,32
   20674:	01d787b3          	add	a5,a5,t4
   20678:	ff07a783          	lw	a5,-16(a5)
   2067c:	02000813          	li	a6,32
   20680:	40e80833          	sub	a6,a6,a4
   20684:	010797b3          	sll	a5,a5,a6
   20688:	00f8e8b3          	or	a7,a7,a5
   2068c:	00300793          	li	a5,3
   20690:	00000e13          	li	t3,0
   20694:	40d787b3          	sub	a5,a5,a3
   20698:	04fe4863          	blt	t3,a5,206e8 <__trunctfdf2+0x220>
   2069c:	00400613          	li	a2,4
   206a0:	40d606b3          	sub	a3,a2,a3
   206a4:	00279793          	slli	a5,a5,0x2
   206a8:	02010613          	addi	a2,sp,32
   206ac:	00f607b3          	add	a5,a2,a5
   206b0:	01c12603          	lw	a2,28(sp)
   206b4:	00e65733          	srl	a4,a2,a4
   206b8:	fee7a823          	sw	a4,-16(a5)
   206bc:	00400713          	li	a4,4
   206c0:	00269793          	slli	a5,a3,0x2
   206c4:	00f307b3          	add	a5,t1,a5
   206c8:	0007a023          	sw	zero,0(a5)
   206cc:	00168693          	addi	a3,a3,1
   206d0:	fee698e3          	bne	a3,a4,206c0 <__trunctfdf2+0x1f8>
   206d4:	01012703          	lw	a4,16(sp)
   206d8:	011037b3          	snez	a5,a7
   206dc:	00f767b3          	or	a5,a4,a5
   206e0:	00f12823          	sw	a5,16(sp)
   206e4:	f0dff06f          	j	205f0 <__trunctfdf2+0x128>
   206e8:	01d60f33          	add	t5,a2,t4
   206ec:	000f2503          	lw	a0,0(t5)
   206f0:	004f2f03          	lw	t5,4(t5)
   206f4:	001e0e13          	addi	t3,t3,1
   206f8:	00e55533          	srl	a0,a0,a4
   206fc:	010f1f33          	sll	t5,t5,a6
   20700:	01e56533          	or	a0,a0,t5
   20704:	00a62023          	sw	a0,0(a2)
   20708:	00460613          	addi	a2,a2,4
   2070c:	f8dff06f          	j	20698 <__trunctfdf2+0x1d0>
   20710:	01412603          	lw	a2,20(sp)
   20714:	01812783          	lw	a5,24(sp)
   20718:	01c12803          	lw	a6,28(sp)
   2071c:	00f666b3          	or	a3,a2,a5
   20720:	0106e6b3          	or	a3,a3,a6
   20724:	00a6e6b3          	or	a3,a3,a0
   20728:	00071863          	bnez	a4,20738 <__trunctfdf2+0x270>
   2072c:	00d036b3          	snez	a3,a3
   20730:	00000793          	li	a5,0
   20734:	e85ff06f          	j	205b8 <__trunctfdf2+0xf0>
   20738:	0c068a63          	beqz	a3,2080c <__trunctfdf2+0x344>
   2073c:	01c65693          	srli	a3,a2,0x1c
   20740:	00481813          	slli	a6,a6,0x4
   20744:	00479613          	slli	a2,a5,0x4
   20748:	01c7d793          	srli	a5,a5,0x1c
   2074c:	00400737          	lui	a4,0x400
   20750:	00c6e6b3          	or	a3,a3,a2
   20754:	0107e7b3          	or	a5,a5,a6
   20758:	00e7e7b3          	or	a5,a5,a4
   2075c:	ff86f693          	andi	a3,a3,-8
   20760:	7ff00713          	li	a4,2047
   20764:	e55ff06f          	j	205b8 <__trunctfdf2+0xf0>
   20768:	00000793          	li	a5,0
   2076c:	00000693          	li	a3,0
   20770:	7ff00713          	li	a4,2047
   20774:	00879613          	slli	a2,a5,0x8
   20778:	00065e63          	bgez	a2,20794 <__trunctfdf2+0x2cc>
   2077c:	00170713          	addi	a4,a4,1 # 400001 <__global_pointer$+0x3dce59>
   20780:	7ff00613          	li	a2,2047
   20784:	08c70863          	beq	a4,a2,20814 <__trunctfdf2+0x34c>
   20788:	ff800637          	lui	a2,0xff800
   2078c:	fff60613          	addi	a2,a2,-1 # ff7fffff <__global_pointer$+0xff7dce57>
   20790:	00c7f7b3          	and	a5,a5,a2
   20794:	01d79613          	slli	a2,a5,0x1d
   20798:	0036d693          	srli	a3,a3,0x3
   2079c:	00d666b3          	or	a3,a2,a3
   207a0:	7ff00613          	li	a2,2047
   207a4:	0037d793          	srli	a5,a5,0x3
   207a8:	00c71e63          	bne	a4,a2,207c4 <__trunctfdf2+0x2fc>
   207ac:	00f6e6b3          	or	a3,a3,a5
   207b0:	00000793          	li	a5,0
   207b4:	00068863          	beqz	a3,207c4 <__trunctfdf2+0x2fc>
   207b8:	000807b7          	lui	a5,0x80
   207bc:	00000693          	li	a3,0
   207c0:	00000593          	li	a1,0
   207c4:	00100637          	lui	a2,0x100
   207c8:	fff60613          	addi	a2,a2,-1 # fffff <__global_pointer$+0xdce57>
   207cc:	00c7f7b3          	and	a5,a5,a2
   207d0:	80100637          	lui	a2,0x80100
   207d4:	7ff77713          	andi	a4,a4,2047
   207d8:	fff60613          	addi	a2,a2,-1 # 800fffff <__global_pointer$+0x800dce57>
   207dc:	01471713          	slli	a4,a4,0x14
   207e0:	00c7f7b3          	and	a5,a5,a2
   207e4:	00e7e7b3          	or	a5,a5,a4
   207e8:	80000737          	lui	a4,0x80000
   207ec:	fff74713          	not	a4,a4
   207f0:	01f59593          	slli	a1,a1,0x1f
   207f4:	00e7f7b3          	and	a5,a5,a4
   207f8:	00b7e733          	or	a4,a5,a1
   207fc:	00068513          	mv	a0,a3
   20800:	00070593          	mv	a1,a4
   20804:	02010113          	addi	sp,sp,32
   20808:	00008067          	ret
   2080c:	00000793          	li	a5,0
   20810:	f61ff06f          	j	20770 <__trunctfdf2+0x2a8>
   20814:	00000793          	li	a5,0
   20818:	00000693          	li	a3,0
   2081c:	f79ff06f          	j	20794 <__trunctfdf2+0x2cc>

00020820 <__clzsi2>:
   20820:	000107b7          	lui	a5,0x10
   20824:	02f57a63          	bleu	a5,a0,20858 <__clzsi2+0x38>
   20828:	0ff00793          	li	a5,255
   2082c:	00a7b7b3          	sltu	a5,a5,a0
   20830:	00379793          	slli	a5,a5,0x3
   20834:	02000713          	li	a4,32
   20838:	40f70733          	sub	a4,a4,a5
   2083c:	00f557b3          	srl	a5,a0,a5
   20840:	00021537          	lui	a0,0x21
   20844:	49450513          	addi	a0,a0,1172 # 21494 <__clz_tab>
   20848:	00a787b3          	add	a5,a5,a0
   2084c:	0007c503          	lbu	a0,0(a5) # 10000 <_start-0x74>
   20850:	40a70533          	sub	a0,a4,a0
   20854:	00008067          	ret
   20858:	01000737          	lui	a4,0x1000
   2085c:	01000793          	li	a5,16
   20860:	fce56ae3          	bltu	a0,a4,20834 <__clzsi2+0x14>
   20864:	01800793          	li	a5,24
   20868:	fcdff06f          	j	20834 <__clzsi2+0x14>
