package com.blzr.lec1

fun main(args: Array<String>) {
    if (args.isEmpty()) {
        println("no args")
    } else {
        args.forEach { println(it) }
    }
}
