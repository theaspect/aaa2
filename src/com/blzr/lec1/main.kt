package com.blzr.lec1

import kotlin.system.exitProcess

fun main(args: Array<String>) {
    if (args.isEmpty()) {
        println("no args")
        exitProcess(0)
    } else if (args.size == 1) {
        println("One arg: ${args[0]}")
        exitProcess(1)
    }else if (args.size == 2){
        val (a,b) = args
        println("two params $a $b")
        exitProcess(2)
    } else {
        args.forEach { println(it) }
        exitProcess(3)
    }
}
