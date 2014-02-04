;@TODO Make file writing into a function. 
;@TODO Loop through directory
;@TODO Make config file for directory if not user input
(setf openFile "dir.lisp")

;Start out by reading a file. sure why not.
(let ((in (open openFile)))
		(loop for line = (read-line in nil)
			while line do (print line)
		)
	(close in)

)
;Now lets write to a file called MAP.txt
;Get the basics out of the way and then move to looping through a directory
(setf fileName "MAP.txt")")"
(setf content (concatenate 'string "File map of " openFile))

(with-open-file (stream fileName :external-format charset:iso-8859-1
								   :direction :output
								   :if-exists :overwrite
								   :if-does-not-exist :create)
	(format stream content)
)

(print (concatenate 'string "File " fileName " " "written successfully!"))


(setf a '(1 2 3 4))

(if (y-or-n-p "Do It?")
	(progn (print "YES"))
	(progn (print "NO"))
)
(print "Word to print: ")
(setf f (read))
(print f);