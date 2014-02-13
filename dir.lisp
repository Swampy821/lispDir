;@TODO Make file writing into a function. 
;@TODO Loop through directory
;@TODO Make config file for directory if not user input
(setf directoryMap "DIRECTORY");


(setf fileName "MAP.txt")


(setf directoryMap (concatenate 'string directoryMap "*.*"))
(setf theMap "")
(loop for x in (directory directoryMap )
	do 
	(setf file (write-to-string x))
	(setq theMap (concatenate 'string theMap "~%" (string-trim "#P" file)))
)


(with-open-file (stream fileName :external-format charset:iso-8859-1
								   :direction :output
								   :if-exists :overwrite
								   :if-does-not-exist :create)
	(format stream theMap)
)

(print (concatenate 'string "File " fileName " " "written successfully!"))

