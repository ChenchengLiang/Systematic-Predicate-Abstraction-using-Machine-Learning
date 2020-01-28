extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
//extern int unknown();

int foo(){
  int result;
	int res=unknown();
	
  if (res==0)
    {
//    case 0:
      result= 0;
//      break;
	}
	else if (res==5)
	{
//    case 5:
      result = 5;
//      break;
	}
	else if (res==15)
	{
//    case 15:
      result = 15;
//      break;
	}
	else
	{
//    default:
      result = 20;
    }

  return result;
}

void main(){

  int result;

  result = foo();

  __VERIFIER_assert(!( result==15 ));

  return;
}
