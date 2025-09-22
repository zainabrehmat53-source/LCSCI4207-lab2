import file("lab2-support.arr") as support
support.encryptor1("hello")

fun my-encryptor1(s :: String) -> String:
  doc: "results in value being repeated 5 times"
  string-repeat(s, 5)
end

support.test-encryptor1(my-encryptor1)

support.encryptor2("hello")

fun my-encryptor2(s :: String) -> String:
  doc: "returns the value of a string with the first 4 characters only "
  string-substring(s, 0, 4)
end
my-encryptor2("character")
support.test-encryptor2(my-encryptor2)

support.encryptor3("hello.")

fun my-encryptor3(s :: String) -> String:
  doc: "results in the same value"
  string-replace(s, ".", "!") 
end
my-encryptor3("hello.")
support.test-encryptor3(my-encryptor3)

support.encryptor4("hello")

fun my-encryptor4(s :: String) -> String:
  doc: "returns the first four characters repeated 5 times"
  string-repeat(string-substring(s, 0, 4), 5)
  end
support.test-encryptor4(my-encryptor4)

support.encryptor5("Hello bye thank you zainab eugene! support ABCFG")

fun my-encryptor5(s :: String) -> String:
  doc: "returns with a replacement for various characters"
  s1 = string-replace(s, "a", "b")
  s2 = string-replace(s1, "e", "f")
  s3 = string-replace(s2, "o", "p")
  s4 = string-replace(s3, "u", "v")
  s5 = string-replace(s4, "i", "j")
  s5
end 
  support.test-encryptor5(my-encryptor5)

support.encryptor6("abcdefghrjklmnopqrstuvwxyz123456789")

fun my-encryptor6(s :: String) -> String:
  s1 = string-replace(s, "r", "")
  s2 = string-replace(s1, "R", "")
  s3 = string-to-lower(s2)
  s3
end
my-encryptor6("START ")
support.test-encryptor6(my-encryptor6)

support.encryptor7("abc")

fun my-encryptor7(s :: String) -> Number:
  string-length(s)
end

support.test-encryptor7(my-encryptor7)

support.encryptor8("abc")

fun  my-encryptor8(s :: String) -> String:
  s1 = string-append(s, "!!!")
  s2 = string-repeat(s1, 3)
  s2
end
support.test-encryptor8(my-encryptor8)

support.encryptor9("!")

fun  my-encryptor9(s :: String) -> Number:
  string-to-code-point(s)
end
my-encryptor9("!")

support.encryptor10("abcdef")

fun my-encryptor10(s :: String) -> String:
  s1 = string-replace(s, "a", "b")
  s2 = string-replace(s1, "e", "")
  s3 = string-replace(s2, "f", "")
  s4 = string-repeat(s3, 5)
  s4
end
my-encryptor10("abcdef")
support.test-encryptor10(my-encryptor10)

