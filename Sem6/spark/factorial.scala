object factorial{
    def fact(n:Int):Int={
        if(n==1){
            return 1
        }
        else{
            return n*fact(n-1)
        }
    }
    def fact(n:Int): Int

    fact(6)
}