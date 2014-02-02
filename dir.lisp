
;Start out by reading a file. sure why not.
(let ((in (open "dir.lisp")))
	(when in
		(loop for line = (read-line in nil)
			while line do (print line)
		)
	)
	(close in)

)
