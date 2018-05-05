(import "util.lsp")

(defglobal then (now))
(defglobal dict '((a . 1) (b . 2)))
(defglobal r1 (create-rect 6))

(println "Reading words...")
(println "Words: ~S" (read-words "> "))
(println "The answer: ~A" (the-answer))
(println (funcall (make-greeter "World")))
(println "Hostname: ~A" (hostname))
(println "ARGV: ~S" (argv))
(println "Error: ~S" (fail-gracefully))
(println "Sum: ~A" (splat #'+ '(1 2 3 4)))
(println "Tokens: ~S" (tokenize "1 * (2 * 3) + 4"))
(println "Keys: ~S" (keys dict))
(println "Rect r1 size: ~A" (rect-size r1))
(println "Doubling rect size")
(setf (rect-size r1) (* (rect-size r1) 2))
(println "Rect r1 size: ~A" (rect-size r1))
(println "Elapsed time: ~Fms" (- (now) then))