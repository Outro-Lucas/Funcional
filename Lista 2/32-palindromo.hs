reverse_s s = case s of "" -> s
                        c:cs -> reverse_s cs ++ [c]

palindromo str = if str == reverse_s str then True
                                         else False