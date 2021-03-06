(load "util.lsp")

(set 'then (now))
(set 'dict '((foo 1) (bar 2)))
(set 'r1 (Rect 6))

(println "Reading words...")
(println "Words: " (read-words "> "))
(println "The answer: " (the-answer))
(println ((make-greeter "World")))
(println "Hostname: " (hostname))
(println "ARGV: " (argv))
(println "Error: " (fail-gracefully))
(println "Sum: " (splat + '(1 2 3 4)))
(println "Tokens: " (tokenize "1 * (2 * 3) + 4"))
(println "Keys: " (keys dict))
(println "Rect r1 size: " (:size r1))
(println "Doubling rect size...")
(:size! r1 (* (:size r1) 2))
(println "Rect r1 size: " (:size r1))
(println (format "Elapsed time: %.2fms" (sub (now) then)))

(exit)
