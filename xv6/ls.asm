
_ls:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  close(fd);
}

int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	56                   	push   %esi
   e:	53                   	push   %ebx
   f:	51                   	push   %ecx
  10:	83 ec 0c             	sub    $0xc,%esp
  13:	8b 01                	mov    (%ecx),%eax
  15:	8b 51 04             	mov    0x4(%ecx),%edx
  int i;

  if(argc < 2){
  18:	83 f8 01             	cmp    $0x1,%eax
  1b:	7e 24                	jle    41 <main+0x41>
  1d:	8d 5a 04             	lea    0x4(%edx),%ebx
  20:	8d 34 82             	lea    (%edx,%eax,4),%esi
  23:	90                   	nop
  24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    ls(".");
    exit();
  }
  for(i=1; i<argc; i++)
    ls(argv[i]);
  28:	83 ec 0c             	sub    $0xc,%esp
  2b:	ff 33                	pushl  (%ebx)
  2d:	83 c3 04             	add    $0x4,%ebx
  30:	e8 cb 00 00 00       	call   100 <ls>
  for(i=1; i<argc; i++)
  35:	83 c4 10             	add    $0x10,%esp
  38:	39 f3                	cmp    %esi,%ebx
  3a:	75 ec                	jne    28 <main+0x28>
  exit();
  3c:	e8 31 05 00 00       	call   572 <exit>
    ls(".");
  41:	83 ec 0c             	sub    $0xc,%esp
  44:	68 70 0a 00 00       	push   $0xa70
  49:	e8 b2 00 00 00       	call   100 <ls>
    exit();
  4e:	e8 1f 05 00 00       	call   572 <exit>
  53:	66 90                	xchg   %ax,%ax
  55:	66 90                	xchg   %ax,%ax
  57:	66 90                	xchg   %ax,%ax
  59:	66 90                	xchg   %ax,%ax
  5b:	66 90                	xchg   %ax,%ax
  5d:	66 90                	xchg   %ax,%ax
  5f:	90                   	nop

00000060 <fmtname>:
{
  60:	55                   	push   %ebp
  61:	89 e5                	mov    %esp,%ebp
  63:	56                   	push   %esi
  64:	53                   	push   %ebx
  65:	8b 5d 08             	mov    0x8(%ebp),%ebx
  for(p=path+strlen(path); p >= path && *p != '/'; p--)
  68:	83 ec 0c             	sub    $0xc,%esp
  6b:	53                   	push   %ebx
  6c:	e8 2f 03 00 00       	call   3a0 <strlen>
  71:	83 c4 10             	add    $0x10,%esp
  74:	01 d8                	add    %ebx,%eax
  76:	73 0f                	jae    87 <fmtname+0x27>
  78:	eb 12                	jmp    8c <fmtname+0x2c>
  7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  80:	83 e8 01             	sub    $0x1,%eax
  83:	39 c3                	cmp    %eax,%ebx
  85:	77 05                	ja     8c <fmtname+0x2c>
  87:	80 38 2f             	cmpb   $0x2f,(%eax)
  8a:	75 f4                	jne    80 <fmtname+0x20>
  p++;
  8c:	8d 58 01             	lea    0x1(%eax),%ebx
  if(strlen(p) >= DIRSIZ)
  8f:	83 ec 0c             	sub    $0xc,%esp
  92:	53                   	push   %ebx
  93:	e8 08 03 00 00       	call   3a0 <strlen>
  98:	83 c4 10             	add    $0x10,%esp
  9b:	83 f8 0d             	cmp    $0xd,%eax
  9e:	77 4a                	ja     ea <fmtname+0x8a>
  memmove(buf, p, strlen(p));
  a0:	83 ec 0c             	sub    $0xc,%esp
  a3:	53                   	push   %ebx
  a4:	e8 f7 02 00 00       	call   3a0 <strlen>
  a9:	83 c4 0c             	add    $0xc,%esp
  ac:	50                   	push   %eax
  ad:	53                   	push   %ebx
  ae:	68 94 0d 00 00       	push   $0xd94
  b3:	e8 88 04 00 00       	call   540 <memmove>
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  b8:	89 1c 24             	mov    %ebx,(%esp)
  bb:	e8 e0 02 00 00       	call   3a0 <strlen>
  c0:	89 1c 24             	mov    %ebx,(%esp)
  c3:	89 c6                	mov    %eax,%esi
  return buf;
  c5:	bb 94 0d 00 00       	mov    $0xd94,%ebx
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  ca:	e8 d1 02 00 00       	call   3a0 <strlen>
  cf:	ba 0e 00 00 00       	mov    $0xe,%edx
  d4:	83 c4 0c             	add    $0xc,%esp
  d7:	05 94 0d 00 00       	add    $0xd94,%eax
  dc:	29 f2                	sub    %esi,%edx
  de:	52                   	push   %edx
  df:	6a 20                	push   $0x20
  e1:	50                   	push   %eax
  e2:	e8 e9 02 00 00       	call   3d0 <memset>
  return buf;
  e7:	83 c4 10             	add    $0x10,%esp
}
  ea:	8d 65 f8             	lea    -0x8(%ebp),%esp
  ed:	89 d8                	mov    %ebx,%eax
  ef:	5b                   	pop    %ebx
  f0:	5e                   	pop    %esi
  f1:	5d                   	pop    %ebp
  f2:	c3                   	ret    
  f3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000100 <ls>:
{
 100:	55                   	push   %ebp
 101:	89 e5                	mov    %esp,%ebp
 103:	57                   	push   %edi
 104:	56                   	push   %esi
 105:	53                   	push   %ebx
 106:	81 ec 64 02 00 00    	sub    $0x264,%esp
 10c:	8b 7d 08             	mov    0x8(%ebp),%edi
  if((fd = open(path, 0)) < 0){
 10f:	6a 00                	push   $0x0
 111:	57                   	push   %edi
 112:	e8 9b 04 00 00       	call   5b2 <open>
 117:	83 c4 10             	add    $0x10,%esp
 11a:	85 c0                	test   %eax,%eax
 11c:	78 52                	js     170 <ls+0x70>
  if(fstat(fd, &st) < 0){
 11e:	8d b5 d4 fd ff ff    	lea    -0x22c(%ebp),%esi
 124:	83 ec 08             	sub    $0x8,%esp
 127:	89 c3                	mov    %eax,%ebx
 129:	56                   	push   %esi
 12a:	50                   	push   %eax
 12b:	e8 9a 04 00 00       	call   5ca <fstat>
 130:	83 c4 10             	add    $0x10,%esp
 133:	85 c0                	test   %eax,%eax
 135:	0f 88 c5 00 00 00    	js     200 <ls+0x100>
  switch(st.type){
 13b:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
 142:	66 83 f8 01          	cmp    $0x1,%ax
 146:	0f 84 84 00 00 00    	je     1d0 <ls+0xd0>
 14c:	66 83 f8 02          	cmp    $0x2,%ax
 150:	74 3e                	je     190 <ls+0x90>
  close(fd);
 152:	83 ec 0c             	sub    $0xc,%esp
 155:	53                   	push   %ebx
 156:	e8 3f 04 00 00       	call   59a <close>
 15b:	83 c4 10             	add    $0x10,%esp
}
 15e:	8d 65 f4             	lea    -0xc(%ebp),%esp
 161:	5b                   	pop    %ebx
 162:	5e                   	pop    %esi
 163:	5f                   	pop    %edi
 164:	5d                   	pop    %ebp
 165:	c3                   	ret    
 166:	8d 76 00             	lea    0x0(%esi),%esi
 169:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    printf(2, "ls: cannot open %s\n", path);
 170:	83 ec 04             	sub    $0x4,%esp
 173:	57                   	push   %edi
 174:	68 28 0a 00 00       	push   $0xa28
 179:	6a 02                	push   $0x2
 17b:	e8 50 05 00 00       	call   6d0 <printf>
    return;
 180:	83 c4 10             	add    $0x10,%esp
}
 183:	8d 65 f4             	lea    -0xc(%ebp),%esp
 186:	5b                   	pop    %ebx
 187:	5e                   	pop    %esi
 188:	5f                   	pop    %edi
 189:	5d                   	pop    %ebp
 18a:	c3                   	ret    
 18b:	90                   	nop
 18c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "%s %d %d %d\n", fmtname(path), st.type, st.ino, st.size);
 190:	83 ec 0c             	sub    $0xc,%esp
 193:	8b 95 e4 fd ff ff    	mov    -0x21c(%ebp),%edx
 199:	8b b5 dc fd ff ff    	mov    -0x224(%ebp),%esi
 19f:	57                   	push   %edi
 1a0:	89 95 b4 fd ff ff    	mov    %edx,-0x24c(%ebp)
 1a6:	e8 b5 fe ff ff       	call   60 <fmtname>
 1ab:	8b 95 b4 fd ff ff    	mov    -0x24c(%ebp),%edx
 1b1:	59                   	pop    %ecx
 1b2:	5f                   	pop    %edi
 1b3:	52                   	push   %edx
 1b4:	56                   	push   %esi
 1b5:	6a 02                	push   $0x2
 1b7:	50                   	push   %eax
 1b8:	68 50 0a 00 00       	push   $0xa50
 1bd:	6a 01                	push   $0x1
 1bf:	e8 0c 05 00 00       	call   6d0 <printf>
    break;
 1c4:	83 c4 20             	add    $0x20,%esp
 1c7:	eb 89                	jmp    152 <ls+0x52>
 1c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){
 1d0:	83 ec 0c             	sub    $0xc,%esp
 1d3:	57                   	push   %edi
 1d4:	e8 c7 01 00 00       	call   3a0 <strlen>
 1d9:	83 c0 10             	add    $0x10,%eax
 1dc:	83 c4 10             	add    $0x10,%esp
 1df:	3d 00 02 00 00       	cmp    $0x200,%eax
 1e4:	76 42                	jbe    228 <ls+0x128>
      printf(1, "ls: path too long\n");
 1e6:	83 ec 08             	sub    $0x8,%esp
 1e9:	68 5d 0a 00 00       	push   $0xa5d
 1ee:	6a 01                	push   $0x1
 1f0:	e8 db 04 00 00       	call   6d0 <printf>
      break;
 1f5:	83 c4 10             	add    $0x10,%esp
 1f8:	e9 55 ff ff ff       	jmp    152 <ls+0x52>
 1fd:	8d 76 00             	lea    0x0(%esi),%esi
    printf(2, "ls: cannot stat %s\n", path);
 200:	83 ec 04             	sub    $0x4,%esp
 203:	57                   	push   %edi
 204:	68 3c 0a 00 00       	push   $0xa3c
 209:	6a 02                	push   $0x2
 20b:	e8 c0 04 00 00       	call   6d0 <printf>
    close(fd);
 210:	89 1c 24             	mov    %ebx,(%esp)
 213:	e8 82 03 00 00       	call   59a <close>
    return;
 218:	83 c4 10             	add    $0x10,%esp
}
 21b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 21e:	5b                   	pop    %ebx
 21f:	5e                   	pop    %esi
 220:	5f                   	pop    %edi
 221:	5d                   	pop    %ebp
 222:	c3                   	ret    
 223:	90                   	nop
 224:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    strcpy(buf, path);
 228:	83 ec 08             	sub    $0x8,%esp
 22b:	57                   	push   %edi
 22c:	8d bd e8 fd ff ff    	lea    -0x218(%ebp),%edi
 232:	57                   	push   %edi
 233:	e8 f8 00 00 00       	call   330 <strcpy>
    p = buf+strlen(buf);
 238:	89 3c 24             	mov    %edi,(%esp)
 23b:	e8 60 01 00 00       	call   3a0 <strlen>
 240:	01 f8                	add    %edi,%eax
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 242:	83 c4 10             	add    $0x10,%esp
    *p++ = '/';
 245:	8d 48 01             	lea    0x1(%eax),%ecx
    p = buf+strlen(buf);
 248:	89 85 a8 fd ff ff    	mov    %eax,-0x258(%ebp)
    *p++ = '/';
 24e:	c6 00 2f             	movb   $0x2f,(%eax)
 251:	89 8d a4 fd ff ff    	mov    %ecx,-0x25c(%ebp)
 257:	89 f6                	mov    %esi,%esi
 259:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 260:	8d 85 c4 fd ff ff    	lea    -0x23c(%ebp),%eax
 266:	83 ec 04             	sub    $0x4,%esp
 269:	6a 10                	push   $0x10
 26b:	50                   	push   %eax
 26c:	53                   	push   %ebx
 26d:	e8 18 03 00 00       	call   58a <read>
 272:	83 c4 10             	add    $0x10,%esp
 275:	83 f8 10             	cmp    $0x10,%eax
 278:	0f 85 d4 fe ff ff    	jne    152 <ls+0x52>
      if(de.inum == 0)
 27e:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
 285:	00 
 286:	74 d8                	je     260 <ls+0x160>
      memmove(p, de.name, DIRSIZ);
 288:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
 28e:	83 ec 04             	sub    $0x4,%esp
 291:	6a 0e                	push   $0xe
 293:	50                   	push   %eax
 294:	ff b5 a4 fd ff ff    	pushl  -0x25c(%ebp)
 29a:	e8 a1 02 00 00       	call   540 <memmove>
      p[DIRSIZ] = 0;
 29f:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
 2a5:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
      if(stat(buf, &st) < 0){
 2a9:	58                   	pop    %eax
 2aa:	5a                   	pop    %edx
 2ab:	56                   	push   %esi
 2ac:	57                   	push   %edi
 2ad:	e8 fe 01 00 00       	call   4b0 <stat>
 2b2:	83 c4 10             	add    $0x10,%esp
 2b5:	85 c0                	test   %eax,%eax
 2b7:	78 5f                	js     318 <ls+0x218>
      printf(1, "%s %d %d %d\n", fmtname(buf), st.type, st.ino, st.size);
 2b9:	0f bf 85 d4 fd ff ff 	movswl -0x22c(%ebp),%eax
 2c0:	83 ec 0c             	sub    $0xc,%esp
 2c3:	8b 8d e4 fd ff ff    	mov    -0x21c(%ebp),%ecx
 2c9:	8b 95 dc fd ff ff    	mov    -0x224(%ebp),%edx
 2cf:	57                   	push   %edi
 2d0:	89 8d ac fd ff ff    	mov    %ecx,-0x254(%ebp)
 2d6:	89 95 b0 fd ff ff    	mov    %edx,-0x250(%ebp)
 2dc:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
 2e2:	e8 79 fd ff ff       	call   60 <fmtname>
 2e7:	5a                   	pop    %edx
 2e8:	8b 95 b0 fd ff ff    	mov    -0x250(%ebp),%edx
 2ee:	59                   	pop    %ecx
 2ef:	8b 8d ac fd ff ff    	mov    -0x254(%ebp),%ecx
 2f5:	51                   	push   %ecx
 2f6:	52                   	push   %edx
 2f7:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
 2fd:	50                   	push   %eax
 2fe:	68 50 0a 00 00       	push   $0xa50
 303:	6a 01                	push   $0x1
 305:	e8 c6 03 00 00       	call   6d0 <printf>
 30a:	83 c4 20             	add    $0x20,%esp
 30d:	e9 4e ff ff ff       	jmp    260 <ls+0x160>
 312:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printf(1, "ls: cannot stat %s\n", buf);
 318:	83 ec 04             	sub    $0x4,%esp
 31b:	57                   	push   %edi
 31c:	68 3c 0a 00 00       	push   $0xa3c
 321:	6a 01                	push   $0x1
 323:	e8 a8 03 00 00       	call   6d0 <printf>
        continue;
 328:	83 c4 10             	add    $0x10,%esp
 32b:	e9 30 ff ff ff       	jmp    260 <ls+0x160>

00000330 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	53                   	push   %ebx
 334:	8b 45 08             	mov    0x8(%ebp),%eax
 337:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 33a:	89 c2                	mov    %eax,%edx
 33c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 340:	83 c1 01             	add    $0x1,%ecx
 343:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 347:	83 c2 01             	add    $0x1,%edx
 34a:	84 db                	test   %bl,%bl
 34c:	88 5a ff             	mov    %bl,-0x1(%edx)
 34f:	75 ef                	jne    340 <strcpy+0x10>
    ;
  return os;
}
 351:	5b                   	pop    %ebx
 352:	5d                   	pop    %ebp
 353:	c3                   	ret    
 354:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 35a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000360 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	56                   	push   %esi
 364:	53                   	push   %ebx
 365:	8b 55 08             	mov    0x8(%ebp),%edx
 368:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 36b:	0f b6 02             	movzbl (%edx),%eax
 36e:	0f b6 19             	movzbl (%ecx),%ebx
 371:	84 c0                	test   %al,%al
 373:	74 22                	je     397 <strcmp+0x37>
 375:	38 d8                	cmp    %bl,%al
 377:	74 0d                	je     386 <strcmp+0x26>
 379:	eb 1e                	jmp    399 <strcmp+0x39>
 37b:	90                   	nop
 37c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 380:	38 d8                	cmp    %bl,%al
 382:	89 f1                	mov    %esi,%ecx
 384:	75 13                	jne    399 <strcmp+0x39>
    p++, q++;
 386:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 389:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 38c:	8d 71 01             	lea    0x1(%ecx),%esi
  while(*p && *p == *q)
 38f:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 393:	84 c0                	test   %al,%al
 395:	75 e9                	jne    380 <strcmp+0x20>
 397:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 399:	29 d8                	sub    %ebx,%eax
}
 39b:	5b                   	pop    %ebx
 39c:	5e                   	pop    %esi
 39d:	5d                   	pop    %ebp
 39e:	c3                   	ret    
 39f:	90                   	nop

000003a0 <strlen>:

uint
strlen(char *s)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 3a6:	80 39 00             	cmpb   $0x0,(%ecx)
 3a9:	74 15                	je     3c0 <strlen+0x20>
 3ab:	31 d2                	xor    %edx,%edx
 3ad:	8d 76 00             	lea    0x0(%esi),%esi
 3b0:	83 c2 01             	add    $0x1,%edx
 3b3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 3b7:	89 d0                	mov    %edx,%eax
 3b9:	75 f5                	jne    3b0 <strlen+0x10>
    ;
  return n;
}
 3bb:	5d                   	pop    %ebp
 3bc:	c3                   	ret    
 3bd:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 3c0:	31 c0                	xor    %eax,%eax
}
 3c2:	5d                   	pop    %ebp
 3c3:	c3                   	ret    
 3c4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 3ca:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000003d0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	57                   	push   %edi
 3d4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 3d7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 3da:	8b 45 0c             	mov    0xc(%ebp),%eax
 3dd:	89 d7                	mov    %edx,%edi
 3df:	fc                   	cld    
 3e0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 3e2:	89 d0                	mov    %edx,%eax
 3e4:	5f                   	pop    %edi
 3e5:	5d                   	pop    %ebp
 3e6:	c3                   	ret    
 3e7:	89 f6                	mov    %esi,%esi
 3e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003f0 <strchr>:

char*
strchr(const char *s, char c)
{
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	53                   	push   %ebx
 3f4:	8b 45 08             	mov    0x8(%ebp),%eax
 3f7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 3fa:	0f b6 10             	movzbl (%eax),%edx
 3fd:	84 d2                	test   %dl,%dl
 3ff:	74 1d                	je     41e <strchr+0x2e>
    if(*s == c)
 401:	38 d3                	cmp    %dl,%bl
 403:	89 d9                	mov    %ebx,%ecx
 405:	75 0d                	jne    414 <strchr+0x24>
 407:	eb 17                	jmp    420 <strchr+0x30>
 409:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 410:	38 ca                	cmp    %cl,%dl
 412:	74 0c                	je     420 <strchr+0x30>
  for(; *s; s++)
 414:	83 c0 01             	add    $0x1,%eax
 417:	0f b6 10             	movzbl (%eax),%edx
 41a:	84 d2                	test   %dl,%dl
 41c:	75 f2                	jne    410 <strchr+0x20>
      return (char*)s;
  return 0;
 41e:	31 c0                	xor    %eax,%eax
}
 420:	5b                   	pop    %ebx
 421:	5d                   	pop    %ebp
 422:	c3                   	ret    
 423:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 429:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000430 <gets>:

char*
gets(char *buf, int max)
{
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	57                   	push   %edi
 434:	56                   	push   %esi
 435:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 436:	31 f6                	xor    %esi,%esi
 438:	89 f3                	mov    %esi,%ebx
{
 43a:	83 ec 1c             	sub    $0x1c,%esp
 43d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 440:	eb 2f                	jmp    471 <gets+0x41>
 442:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 448:	8d 45 e7             	lea    -0x19(%ebp),%eax
 44b:	83 ec 04             	sub    $0x4,%esp
 44e:	6a 01                	push   $0x1
 450:	50                   	push   %eax
 451:	6a 00                	push   $0x0
 453:	e8 32 01 00 00       	call   58a <read>
    if(cc < 1)
 458:	83 c4 10             	add    $0x10,%esp
 45b:	85 c0                	test   %eax,%eax
 45d:	7e 1c                	jle    47b <gets+0x4b>
      break;
    buf[i++] = c;
 45f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 463:	83 c7 01             	add    $0x1,%edi
 466:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 469:	3c 0a                	cmp    $0xa,%al
 46b:	74 23                	je     490 <gets+0x60>
 46d:	3c 0d                	cmp    $0xd,%al
 46f:	74 1f                	je     490 <gets+0x60>
  for(i=0; i+1 < max; ){
 471:	83 c3 01             	add    $0x1,%ebx
 474:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 477:	89 fe                	mov    %edi,%esi
 479:	7c cd                	jl     448 <gets+0x18>
 47b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 47d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 480:	c6 03 00             	movb   $0x0,(%ebx)
}
 483:	8d 65 f4             	lea    -0xc(%ebp),%esp
 486:	5b                   	pop    %ebx
 487:	5e                   	pop    %esi
 488:	5f                   	pop    %edi
 489:	5d                   	pop    %ebp
 48a:	c3                   	ret    
 48b:	90                   	nop
 48c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 490:	8b 75 08             	mov    0x8(%ebp),%esi
 493:	8b 45 08             	mov    0x8(%ebp),%eax
 496:	01 de                	add    %ebx,%esi
 498:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 49a:	c6 03 00             	movb   $0x0,(%ebx)
}
 49d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4a0:	5b                   	pop    %ebx
 4a1:	5e                   	pop    %esi
 4a2:	5f                   	pop    %edi
 4a3:	5d                   	pop    %ebp
 4a4:	c3                   	ret    
 4a5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004b0 <stat>:

int
stat(char *n, struct stat *st)
{
 4b0:	55                   	push   %ebp
 4b1:	89 e5                	mov    %esp,%ebp
 4b3:	56                   	push   %esi
 4b4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 4b5:	83 ec 08             	sub    $0x8,%esp
 4b8:	6a 00                	push   $0x0
 4ba:	ff 75 08             	pushl  0x8(%ebp)
 4bd:	e8 f0 00 00 00       	call   5b2 <open>
  if(fd < 0)
 4c2:	83 c4 10             	add    $0x10,%esp
 4c5:	85 c0                	test   %eax,%eax
 4c7:	78 27                	js     4f0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 4c9:	83 ec 08             	sub    $0x8,%esp
 4cc:	ff 75 0c             	pushl  0xc(%ebp)
 4cf:	89 c3                	mov    %eax,%ebx
 4d1:	50                   	push   %eax
 4d2:	e8 f3 00 00 00       	call   5ca <fstat>
  close(fd);
 4d7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 4da:	89 c6                	mov    %eax,%esi
  close(fd);
 4dc:	e8 b9 00 00 00       	call   59a <close>
  return r;
 4e1:	83 c4 10             	add    $0x10,%esp
}
 4e4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4e7:	89 f0                	mov    %esi,%eax
 4e9:	5b                   	pop    %ebx
 4ea:	5e                   	pop    %esi
 4eb:	5d                   	pop    %ebp
 4ec:	c3                   	ret    
 4ed:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 4f0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 4f5:	eb ed                	jmp    4e4 <stat+0x34>
 4f7:	89 f6                	mov    %esi,%esi
 4f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000500 <atoi>:

int
atoi(const char *s)
{
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	53                   	push   %ebx
 504:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 507:	0f be 11             	movsbl (%ecx),%edx
 50a:	8d 42 d0             	lea    -0x30(%edx),%eax
 50d:	3c 09                	cmp    $0x9,%al
  n = 0;
 50f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 514:	77 1f                	ja     535 <atoi+0x35>
 516:	8d 76 00             	lea    0x0(%esi),%esi
 519:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 520:	8d 04 80             	lea    (%eax,%eax,4),%eax
 523:	83 c1 01             	add    $0x1,%ecx
 526:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 52a:	0f be 11             	movsbl (%ecx),%edx
 52d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 530:	80 fb 09             	cmp    $0x9,%bl
 533:	76 eb                	jbe    520 <atoi+0x20>
  return n;
}
 535:	5b                   	pop    %ebx
 536:	5d                   	pop    %ebp
 537:	c3                   	ret    
 538:	90                   	nop
 539:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000540 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 540:	55                   	push   %ebp
 541:	89 e5                	mov    %esp,%ebp
 543:	56                   	push   %esi
 544:	53                   	push   %ebx
 545:	8b 5d 10             	mov    0x10(%ebp),%ebx
 548:	8b 45 08             	mov    0x8(%ebp),%eax
 54b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 54e:	85 db                	test   %ebx,%ebx
 550:	7e 14                	jle    566 <memmove+0x26>
 552:	31 d2                	xor    %edx,%edx
 554:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 558:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 55c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 55f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 562:	39 d3                	cmp    %edx,%ebx
 564:	75 f2                	jne    558 <memmove+0x18>
  return vdst;
}
 566:	5b                   	pop    %ebx
 567:	5e                   	pop    %esi
 568:	5d                   	pop    %ebp
 569:	c3                   	ret    

0000056a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 56a:	b8 01 00 00 00       	mov    $0x1,%eax
 56f:	cd 40                	int    $0x40
 571:	c3                   	ret    

00000572 <exit>:
SYSCALL(exit)
 572:	b8 02 00 00 00       	mov    $0x2,%eax
 577:	cd 40                	int    $0x40
 579:	c3                   	ret    

0000057a <wait>:
SYSCALL(wait)
 57a:	b8 03 00 00 00       	mov    $0x3,%eax
 57f:	cd 40                	int    $0x40
 581:	c3                   	ret    

00000582 <pipe>:
SYSCALL(pipe)
 582:	b8 04 00 00 00       	mov    $0x4,%eax
 587:	cd 40                	int    $0x40
 589:	c3                   	ret    

0000058a <read>:
SYSCALL(read)
 58a:	b8 05 00 00 00       	mov    $0x5,%eax
 58f:	cd 40                	int    $0x40
 591:	c3                   	ret    

00000592 <write>:
SYSCALL(write)
 592:	b8 10 00 00 00       	mov    $0x10,%eax
 597:	cd 40                	int    $0x40
 599:	c3                   	ret    

0000059a <close>:
SYSCALL(close)
 59a:	b8 15 00 00 00       	mov    $0x15,%eax
 59f:	cd 40                	int    $0x40
 5a1:	c3                   	ret    

000005a2 <kill>:
SYSCALL(kill)
 5a2:	b8 06 00 00 00       	mov    $0x6,%eax
 5a7:	cd 40                	int    $0x40
 5a9:	c3                   	ret    

000005aa <exec>:
SYSCALL(exec)
 5aa:	b8 07 00 00 00       	mov    $0x7,%eax
 5af:	cd 40                	int    $0x40
 5b1:	c3                   	ret    

000005b2 <open>:
SYSCALL(open)
 5b2:	b8 0f 00 00 00       	mov    $0xf,%eax
 5b7:	cd 40                	int    $0x40
 5b9:	c3                   	ret    

000005ba <mknod>:
SYSCALL(mknod)
 5ba:	b8 11 00 00 00       	mov    $0x11,%eax
 5bf:	cd 40                	int    $0x40
 5c1:	c3                   	ret    

000005c2 <unlink>:
SYSCALL(unlink)
 5c2:	b8 12 00 00 00       	mov    $0x12,%eax
 5c7:	cd 40                	int    $0x40
 5c9:	c3                   	ret    

000005ca <fstat>:
SYSCALL(fstat)
 5ca:	b8 08 00 00 00       	mov    $0x8,%eax
 5cf:	cd 40                	int    $0x40
 5d1:	c3                   	ret    

000005d2 <link>:
SYSCALL(link)
 5d2:	b8 13 00 00 00       	mov    $0x13,%eax
 5d7:	cd 40                	int    $0x40
 5d9:	c3                   	ret    

000005da <mkdir>:
SYSCALL(mkdir)
 5da:	b8 14 00 00 00       	mov    $0x14,%eax
 5df:	cd 40                	int    $0x40
 5e1:	c3                   	ret    

000005e2 <chdir>:
SYSCALL(chdir)
 5e2:	b8 09 00 00 00       	mov    $0x9,%eax
 5e7:	cd 40                	int    $0x40
 5e9:	c3                   	ret    

000005ea <dup>:
SYSCALL(dup)
 5ea:	b8 0a 00 00 00       	mov    $0xa,%eax
 5ef:	cd 40                	int    $0x40
 5f1:	c3                   	ret    

000005f2 <getpid>:
SYSCALL(getpid)
 5f2:	b8 0b 00 00 00       	mov    $0xb,%eax
 5f7:	cd 40                	int    $0x40
 5f9:	c3                   	ret    

000005fa <sbrk>:
SYSCALL(sbrk)
 5fa:	b8 0c 00 00 00       	mov    $0xc,%eax
 5ff:	cd 40                	int    $0x40
 601:	c3                   	ret    

00000602 <sleep>:
SYSCALL(sleep)
 602:	b8 0d 00 00 00       	mov    $0xd,%eax
 607:	cd 40                	int    $0x40
 609:	c3                   	ret    

0000060a <uptime>:
SYSCALL(uptime)
 60a:	b8 0e 00 00 00       	mov    $0xe,%eax
 60f:	cd 40                	int    $0x40
 611:	c3                   	ret    

00000612 <date>:
SYSCALL(date)
 612:	b8 16 00 00 00       	mov    $0x16,%eax
 617:	cd 40                	int    $0x40
 619:	c3                   	ret    

0000061a <virt2real>:
 61a:	b8 17 00 00 00       	mov    $0x17,%eax
 61f:	cd 40                	int    $0x40
 621:	c3                   	ret    
 622:	66 90                	xchg   %ax,%ax
 624:	66 90                	xchg   %ax,%ax
 626:	66 90                	xchg   %ax,%ax
 628:	66 90                	xchg   %ax,%ax
 62a:	66 90                	xchg   %ax,%ax
 62c:	66 90                	xchg   %ax,%ax
 62e:	66 90                	xchg   %ax,%ax

00000630 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 630:	55                   	push   %ebp
 631:	89 e5                	mov    %esp,%ebp
 633:	57                   	push   %edi
 634:	56                   	push   %esi
 635:	53                   	push   %ebx
 636:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 639:	85 d2                	test   %edx,%edx
{
 63b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 63e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 640:	79 76                	jns    6b8 <printint+0x88>
 642:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 646:	74 70                	je     6b8 <printint+0x88>
    x = -xx;
 648:	f7 d8                	neg    %eax
    neg = 1;
 64a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 651:	31 f6                	xor    %esi,%esi
 653:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 656:	eb 0a                	jmp    662 <printint+0x32>
 658:	90                   	nop
 659:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 660:	89 fe                	mov    %edi,%esi
 662:	31 d2                	xor    %edx,%edx
 664:	8d 7e 01             	lea    0x1(%esi),%edi
 667:	f7 f1                	div    %ecx
 669:	0f b6 92 7c 0a 00 00 	movzbl 0xa7c(%edx),%edx
  }while((x /= base) != 0);
 670:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 672:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 675:	75 e9                	jne    660 <printint+0x30>
  if(neg)
 677:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 67a:	85 c0                	test   %eax,%eax
 67c:	74 08                	je     686 <printint+0x56>
    buf[i++] = '-';
 67e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 683:	8d 7e 02             	lea    0x2(%esi),%edi
 686:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 68a:	8b 7d c0             	mov    -0x40(%ebp),%edi
 68d:	8d 76 00             	lea    0x0(%esi),%esi
 690:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 693:	83 ec 04             	sub    $0x4,%esp
 696:	83 ee 01             	sub    $0x1,%esi
 699:	6a 01                	push   $0x1
 69b:	53                   	push   %ebx
 69c:	57                   	push   %edi
 69d:	88 45 d7             	mov    %al,-0x29(%ebp)
 6a0:	e8 ed fe ff ff       	call   592 <write>

  while(--i >= 0)
 6a5:	83 c4 10             	add    $0x10,%esp
 6a8:	39 de                	cmp    %ebx,%esi
 6aa:	75 e4                	jne    690 <printint+0x60>
    putc(fd, buf[i]);
}
 6ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6af:	5b                   	pop    %ebx
 6b0:	5e                   	pop    %esi
 6b1:	5f                   	pop    %edi
 6b2:	5d                   	pop    %ebp
 6b3:	c3                   	ret    
 6b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 6b8:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 6bf:	eb 90                	jmp    651 <printint+0x21>
 6c1:	eb 0d                	jmp    6d0 <printf>
 6c3:	90                   	nop
 6c4:	90                   	nop
 6c5:	90                   	nop
 6c6:	90                   	nop
 6c7:	90                   	nop
 6c8:	90                   	nop
 6c9:	90                   	nop
 6ca:	90                   	nop
 6cb:	90                   	nop
 6cc:	90                   	nop
 6cd:	90                   	nop
 6ce:	90                   	nop
 6cf:	90                   	nop

000006d0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 6d0:	55                   	push   %ebp
 6d1:	89 e5                	mov    %esp,%ebp
 6d3:	57                   	push   %edi
 6d4:	56                   	push   %esi
 6d5:	53                   	push   %ebx
 6d6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6d9:	8b 75 0c             	mov    0xc(%ebp),%esi
 6dc:	0f b6 1e             	movzbl (%esi),%ebx
 6df:	84 db                	test   %bl,%bl
 6e1:	0f 84 b3 00 00 00    	je     79a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 6e7:	8d 45 10             	lea    0x10(%ebp),%eax
 6ea:	83 c6 01             	add    $0x1,%esi
  state = 0;
 6ed:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 6ef:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 6f2:	eb 2f                	jmp    723 <printf+0x53>
 6f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 6f8:	83 f8 25             	cmp    $0x25,%eax
 6fb:	0f 84 a7 00 00 00    	je     7a8 <printf+0xd8>
  write(fd, &c, 1);
 701:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 704:	83 ec 04             	sub    $0x4,%esp
 707:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 70a:	6a 01                	push   $0x1
 70c:	50                   	push   %eax
 70d:	ff 75 08             	pushl  0x8(%ebp)
 710:	e8 7d fe ff ff       	call   592 <write>
 715:	83 c4 10             	add    $0x10,%esp
 718:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 71b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 71f:	84 db                	test   %bl,%bl
 721:	74 77                	je     79a <printf+0xca>
    if(state == 0){
 723:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 725:	0f be cb             	movsbl %bl,%ecx
 728:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 72b:	74 cb                	je     6f8 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 72d:	83 ff 25             	cmp    $0x25,%edi
 730:	75 e6                	jne    718 <printf+0x48>
      if(c == 'd'){
 732:	83 f8 64             	cmp    $0x64,%eax
 735:	0f 84 05 01 00 00    	je     840 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 73b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 741:	83 f9 70             	cmp    $0x70,%ecx
 744:	74 72                	je     7b8 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 746:	83 f8 73             	cmp    $0x73,%eax
 749:	0f 84 99 00 00 00    	je     7e8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 74f:	83 f8 63             	cmp    $0x63,%eax
 752:	0f 84 08 01 00 00    	je     860 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 758:	83 f8 25             	cmp    $0x25,%eax
 75b:	0f 84 ef 00 00 00    	je     850 <printf+0x180>
  write(fd, &c, 1);
 761:	8d 45 e7             	lea    -0x19(%ebp),%eax
 764:	83 ec 04             	sub    $0x4,%esp
 767:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 76b:	6a 01                	push   $0x1
 76d:	50                   	push   %eax
 76e:	ff 75 08             	pushl  0x8(%ebp)
 771:	e8 1c fe ff ff       	call   592 <write>
 776:	83 c4 0c             	add    $0xc,%esp
 779:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 77c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 77f:	6a 01                	push   $0x1
 781:	50                   	push   %eax
 782:	ff 75 08             	pushl  0x8(%ebp)
 785:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 788:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 78a:	e8 03 fe ff ff       	call   592 <write>
  for(i = 0; fmt[i]; i++){
 78f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 793:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 796:	84 db                	test   %bl,%bl
 798:	75 89                	jne    723 <printf+0x53>
    }
  }
}
 79a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 79d:	5b                   	pop    %ebx
 79e:	5e                   	pop    %esi
 79f:	5f                   	pop    %edi
 7a0:	5d                   	pop    %ebp
 7a1:	c3                   	ret    
 7a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 7a8:	bf 25 00 00 00       	mov    $0x25,%edi
 7ad:	e9 66 ff ff ff       	jmp    718 <printf+0x48>
 7b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 7b8:	83 ec 0c             	sub    $0xc,%esp
 7bb:	b9 10 00 00 00       	mov    $0x10,%ecx
 7c0:	6a 00                	push   $0x0
 7c2:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 7c5:	8b 45 08             	mov    0x8(%ebp),%eax
 7c8:	8b 17                	mov    (%edi),%edx
 7ca:	e8 61 fe ff ff       	call   630 <printint>
        ap++;
 7cf:	89 f8                	mov    %edi,%eax
 7d1:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7d4:	31 ff                	xor    %edi,%edi
        ap++;
 7d6:	83 c0 04             	add    $0x4,%eax
 7d9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 7dc:	e9 37 ff ff ff       	jmp    718 <printf+0x48>
 7e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 7e8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 7eb:	8b 08                	mov    (%eax),%ecx
        ap++;
 7ed:	83 c0 04             	add    $0x4,%eax
 7f0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 7f3:	85 c9                	test   %ecx,%ecx
 7f5:	0f 84 8e 00 00 00    	je     889 <printf+0x1b9>
        while(*s != 0){
 7fb:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 7fe:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 800:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 802:	84 c0                	test   %al,%al
 804:	0f 84 0e ff ff ff    	je     718 <printf+0x48>
 80a:	89 75 d0             	mov    %esi,-0x30(%ebp)
 80d:	89 de                	mov    %ebx,%esi
 80f:	8b 5d 08             	mov    0x8(%ebp),%ebx
 812:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 815:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 818:	83 ec 04             	sub    $0x4,%esp
          s++;
 81b:	83 c6 01             	add    $0x1,%esi
 81e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 821:	6a 01                	push   $0x1
 823:	57                   	push   %edi
 824:	53                   	push   %ebx
 825:	e8 68 fd ff ff       	call   592 <write>
        while(*s != 0){
 82a:	0f b6 06             	movzbl (%esi),%eax
 82d:	83 c4 10             	add    $0x10,%esp
 830:	84 c0                	test   %al,%al
 832:	75 e4                	jne    818 <printf+0x148>
 834:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 837:	31 ff                	xor    %edi,%edi
 839:	e9 da fe ff ff       	jmp    718 <printf+0x48>
 83e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 840:	83 ec 0c             	sub    $0xc,%esp
 843:	b9 0a 00 00 00       	mov    $0xa,%ecx
 848:	6a 01                	push   $0x1
 84a:	e9 73 ff ff ff       	jmp    7c2 <printf+0xf2>
 84f:	90                   	nop
  write(fd, &c, 1);
 850:	83 ec 04             	sub    $0x4,%esp
 853:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 856:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 859:	6a 01                	push   $0x1
 85b:	e9 21 ff ff ff       	jmp    781 <printf+0xb1>
        putc(fd, *ap);
 860:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 863:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 866:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 868:	6a 01                	push   $0x1
        ap++;
 86a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 86d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 870:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 873:	50                   	push   %eax
 874:	ff 75 08             	pushl  0x8(%ebp)
 877:	e8 16 fd ff ff       	call   592 <write>
        ap++;
 87c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 87f:	83 c4 10             	add    $0x10,%esp
      state = 0;
 882:	31 ff                	xor    %edi,%edi
 884:	e9 8f fe ff ff       	jmp    718 <printf+0x48>
          s = "(null)";
 889:	bb 72 0a 00 00       	mov    $0xa72,%ebx
        while(*s != 0){
 88e:	b8 28 00 00 00       	mov    $0x28,%eax
 893:	e9 72 ff ff ff       	jmp    80a <printf+0x13a>
 898:	66 90                	xchg   %ax,%ax
 89a:	66 90                	xchg   %ax,%ax
 89c:	66 90                	xchg   %ax,%ax
 89e:	66 90                	xchg   %ax,%ax

000008a0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 8a0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8a1:	a1 a4 0d 00 00       	mov    0xda4,%eax
{
 8a6:	89 e5                	mov    %esp,%ebp
 8a8:	57                   	push   %edi
 8a9:	56                   	push   %esi
 8aa:	53                   	push   %ebx
 8ab:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 8ae:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 8b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8b8:	39 c8                	cmp    %ecx,%eax
 8ba:	8b 10                	mov    (%eax),%edx
 8bc:	73 32                	jae    8f0 <free+0x50>
 8be:	39 d1                	cmp    %edx,%ecx
 8c0:	72 04                	jb     8c6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8c2:	39 d0                	cmp    %edx,%eax
 8c4:	72 32                	jb     8f8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 8c6:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8c9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8cc:	39 fa                	cmp    %edi,%edx
 8ce:	74 30                	je     900 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 8d0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 8d3:	8b 50 04             	mov    0x4(%eax),%edx
 8d6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 8d9:	39 f1                	cmp    %esi,%ecx
 8db:	74 3a                	je     917 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 8dd:	89 08                	mov    %ecx,(%eax)
  freep = p;
 8df:	a3 a4 0d 00 00       	mov    %eax,0xda4
}
 8e4:	5b                   	pop    %ebx
 8e5:	5e                   	pop    %esi
 8e6:	5f                   	pop    %edi
 8e7:	5d                   	pop    %ebp
 8e8:	c3                   	ret    
 8e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8f0:	39 d0                	cmp    %edx,%eax
 8f2:	72 04                	jb     8f8 <free+0x58>
 8f4:	39 d1                	cmp    %edx,%ecx
 8f6:	72 ce                	jb     8c6 <free+0x26>
{
 8f8:	89 d0                	mov    %edx,%eax
 8fa:	eb bc                	jmp    8b8 <free+0x18>
 8fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 900:	03 72 04             	add    0x4(%edx),%esi
 903:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 906:	8b 10                	mov    (%eax),%edx
 908:	8b 12                	mov    (%edx),%edx
 90a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 90d:	8b 50 04             	mov    0x4(%eax),%edx
 910:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 913:	39 f1                	cmp    %esi,%ecx
 915:	75 c6                	jne    8dd <free+0x3d>
    p->s.size += bp->s.size;
 917:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 91a:	a3 a4 0d 00 00       	mov    %eax,0xda4
    p->s.size += bp->s.size;
 91f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 922:	8b 53 f8             	mov    -0x8(%ebx),%edx
 925:	89 10                	mov    %edx,(%eax)
}
 927:	5b                   	pop    %ebx
 928:	5e                   	pop    %esi
 929:	5f                   	pop    %edi
 92a:	5d                   	pop    %ebp
 92b:	c3                   	ret    
 92c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000930 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 930:	55                   	push   %ebp
 931:	89 e5                	mov    %esp,%ebp
 933:	57                   	push   %edi
 934:	56                   	push   %esi
 935:	53                   	push   %ebx
 936:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 939:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 93c:	8b 15 a4 0d 00 00    	mov    0xda4,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 942:	8d 78 07             	lea    0x7(%eax),%edi
 945:	c1 ef 03             	shr    $0x3,%edi
 948:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 94b:	85 d2                	test   %edx,%edx
 94d:	0f 84 9d 00 00 00    	je     9f0 <malloc+0xc0>
 953:	8b 02                	mov    (%edx),%eax
 955:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 958:	39 cf                	cmp    %ecx,%edi
 95a:	76 6c                	jbe    9c8 <malloc+0x98>
 95c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 962:	bb 00 10 00 00       	mov    $0x1000,%ebx
 967:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 96a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 971:	eb 0e                	jmp    981 <malloc+0x51>
 973:	90                   	nop
 974:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 978:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 97a:	8b 48 04             	mov    0x4(%eax),%ecx
 97d:	39 f9                	cmp    %edi,%ecx
 97f:	73 47                	jae    9c8 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 981:	39 05 a4 0d 00 00    	cmp    %eax,0xda4
 987:	89 c2                	mov    %eax,%edx
 989:	75 ed                	jne    978 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 98b:	83 ec 0c             	sub    $0xc,%esp
 98e:	56                   	push   %esi
 98f:	e8 66 fc ff ff       	call   5fa <sbrk>
  if(p == (char*)-1)
 994:	83 c4 10             	add    $0x10,%esp
 997:	83 f8 ff             	cmp    $0xffffffff,%eax
 99a:	74 1c                	je     9b8 <malloc+0x88>
  hp->s.size = nu;
 99c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 99f:	83 ec 0c             	sub    $0xc,%esp
 9a2:	83 c0 08             	add    $0x8,%eax
 9a5:	50                   	push   %eax
 9a6:	e8 f5 fe ff ff       	call   8a0 <free>
  return freep;
 9ab:	8b 15 a4 0d 00 00    	mov    0xda4,%edx
      if((p = morecore(nunits)) == 0)
 9b1:	83 c4 10             	add    $0x10,%esp
 9b4:	85 d2                	test   %edx,%edx
 9b6:	75 c0                	jne    978 <malloc+0x48>
        return 0;
  }
}
 9b8:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 9bb:	31 c0                	xor    %eax,%eax
}
 9bd:	5b                   	pop    %ebx
 9be:	5e                   	pop    %esi
 9bf:	5f                   	pop    %edi
 9c0:	5d                   	pop    %ebp
 9c1:	c3                   	ret    
 9c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 9c8:	39 cf                	cmp    %ecx,%edi
 9ca:	74 54                	je     a20 <malloc+0xf0>
        p->s.size -= nunits;
 9cc:	29 f9                	sub    %edi,%ecx
 9ce:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 9d1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 9d4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 9d7:	89 15 a4 0d 00 00    	mov    %edx,0xda4
}
 9dd:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 9e0:	83 c0 08             	add    $0x8,%eax
}
 9e3:	5b                   	pop    %ebx
 9e4:	5e                   	pop    %esi
 9e5:	5f                   	pop    %edi
 9e6:	5d                   	pop    %ebp
 9e7:	c3                   	ret    
 9e8:	90                   	nop
 9e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
 9f0:	c7 05 a4 0d 00 00 a8 	movl   $0xda8,0xda4
 9f7:	0d 00 00 
 9fa:	c7 05 a8 0d 00 00 a8 	movl   $0xda8,0xda8
 a01:	0d 00 00 
    base.s.size = 0;
 a04:	b8 a8 0d 00 00       	mov    $0xda8,%eax
 a09:	c7 05 ac 0d 00 00 00 	movl   $0x0,0xdac
 a10:	00 00 00 
 a13:	e9 44 ff ff ff       	jmp    95c <malloc+0x2c>
 a18:	90                   	nop
 a19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
 a20:	8b 08                	mov    (%eax),%ecx
 a22:	89 0a                	mov    %ecx,(%edx)
 a24:	eb b1                	jmp    9d7 <malloc+0xa7>
