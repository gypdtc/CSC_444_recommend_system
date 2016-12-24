
(load "FP_CSC444/rules.lisp")

;;macro
(defun chk-ans (wff name)
  (print wff)
  (setq a (p&n-g wff))
  (if (equal 'yes (get-combined-simple-answer (q a)))
      (setq rlst (append rlst (list wff)))))

(defun sub-name (name wff)
  (subst name 'x wff)
)
 

(defun prompt ()
  (let ((item nil))
    (print "Please enter the items you bought between (), better less than 5")
    (print "Please type END to end you input")
    (setf item (read))
    (car item)
   ))



(defun callpro (score-hash)
  (
    let ((pro-hash (make-hash-table)) (minimal 1000) (maximal -1000) (tmp 0) (range 0))




    (loop for key being the hash-keys of score-hash
      do(
            cond
            ((> (gethash key score-hash) maximal) (setf maximal (gethash key score-hash)))
            ((< (gethash key score-hash) minimal) (setf minimal (gethash key score-hash)))
        )
    )




    (setf range (- maximal minimal))




    (loop for key being the hash-keys of score-hash
      do(
          progn
          (setf tmp (gethash key score-hash))
          (setf tmp (- tmp minimal))
          (setf tmp (/ tmp range))
          (setf tmp (* 1.0 tmp))
          (setf tmp (round (* tmp 100)))
          (setf (gethash key pro-hash) (concatenate 'string (write-to-string tmp) "%"))
        )
    )




    (loop for key being the hash-keys of pro-hash
      do(
        print (list key (gethash key pro-hash)) 
         ))
 ))







(defun start () 
  (
   let ((command nil) (items nil) (cnt 0) (conds nil) (name nil))
    (print "Please type your name between ()")
    (setf name (read))
    (setf name (car name))
    (store (x-is-term name) *lexicon-kb*)
   (loop while (not (equal 'END command)) do 
     	(setf command (prompt))
      (if (not (eq 'END command))
          (if (and (gethash command iht) (not (find command items :test 'equal)))
              (progn
                (setf items (append items (list command)))
                (setf cnt (+ cnt 1))
                (format t "Your have successfully bought ~a, you have bought ~a items" command cnt)                
                )
              (print "Sorry, we don't sell that item or you have bought that")
          )
          )
   )
   (print "Please choose your conditions")
   (print "1.happy")
   (print "2.healthy")
   (print "3.live-alone")
   (print "4.rainy")
   (print "5.busy-for-work")
   (print "Please type the number you choose in a '()' separated by space")
   (format t "~%")
   (setf conds (read))

   (print items)
   (print conds)
   (print name)

    ;;update condition hashtable
   (setf (gethash 1 cht) (list name 'is-happy))
   (setf (gethash 2 cht) (list name 'is-healthy))
   (setf (gethash 3 cht) (list name 'live-alone))
   (setf (gethash 4 cht) (list name 'at-rainy))
   (setf (gethash 5 cht) (list name 'busy-for-work))

   ;;update weight hashtable
(setf (gethash (sub-name name '(some y ((x buy y) and (y ((attr a-lot) medicine))))) wht) '((pain-killer 5) (band-aid 5) (cigarette -4)))
(setf (gethash (sub-name name '(some y (some z ((((that (x  play z)) with y) and (y children)))))) wht) '((toy-truck 4) (video-game -4)))
(setf (gethash (sub-name name '(some y (some z (((that (x ((attr seldom) play) z)) with y) and (y children))))) wht) '((video-game 4) (toy-truck -4)))
(setf (gethash (sub-name name '(some y (x ((attr well) treat) y))) wht) '((flower 5) (video-game -2)))
(setf (gethash (sub-name name '(some z ((x order z) and (z delivery)))) wht) '((burger -3) (salad-dressing -4) (chopper -5)))
(setf (gethash (sub-name name '(some z (((that (x cook)) at z) and (z home)))) wht) '((chopper 5) (salad-dressing 4) (burger 2)))
(setf (gethash (sub-name name '(some z (((that (x work)) at z) and (z home)))) wht) '((screw-driver 4) (amazon-gift-card 1) (carpet 1) (wood-glue 2) (umbrella -2)))
(setf (gethash (sub-name name '(not (x is (k smoker)))) wht) '((cigarette -5) (pain-killer -2)))
(setf (gethash (sub-name name '(x buy (that ((k (plur clothes)) less)))) wht) '((jeans -4) (ear-rings -1)))
(setf (gethash (sub-name name '(all z (not ((x required z) and (z uniform))))) wht) '((jeans 3)))
(setf (gethash (sub-name name '(x buy (that ((k (plur clothes)) more)))) wht) '((jeans 5) (ear-rings 2)))
(setf (gethash (sub-name name '(some y ((x at y) and (y sunny-day)))) wht) '((tennis 1) (energy-drink 1) (umbrella -3)))
(setf (gethash (sub-name name '(some z ((x has z) and (z cars)))) wht) '((screw-driver 1) (wood-glue 2) (umbrella -2)))
(setf (gethash (sub-name name '(some z ((that ((x has z) and (z time))) in-order (that (do (k diy)))))) wht) '((screw-driver 5) (wood-glue 4) (video-game -3) (tennis -3)))
(setf (gethash (sub-name name '(x is (k designer))) wht) '((pen 4) (energy-drink 2) (ear-rings 1) (wood-glue 3) (jeans -1)))
(setf (gethash (sub-name name '(x ((attr healthy) eat))) wht) '((salad-dressing 4) (tennis 2) (burger -5) (video-game -1) (pain-killer -1)))
(setf (gethash (sub-name name '(x is (k vegetrian))) wht) '((salad-dressing 5) (burger -5)))
(setf (gethash (sub-name name '(some u ((x play u) and (u sport-video-games)))) wht) '((video-game 5) (burger 3) (amazon-gift-card 2) (jeans 1)))
(setf (gethash (sub-name name '(x is (k kind-person))) wht) '((amazon-gift-card 4) (flower 5)))
(setf (gethash (sub-name name '(x is (k planner))) wht) '((pen 3) (umbrella 2) (screw-driver 1) (wood-glue 1) (band-aid 3)))
(setf (gethash (sub-name name '(some z (not (((that (x eat)) at z) and (z home))))) wht) '((salad-dressing -4) (burger -4) (chopper -5)))
(setf (gethash (sub-name name '(x ((attr easily) get) (k hurt))) wht) '((band-aid 5)))
(setf (gethash (sub-name name '(x is (k lazy))) wht) '((carpet 2) (amazon-gift-card 1) (energy-drink -2) (tennis -4) (screw-driver -3) (chopper -5) (wood-glue -3)))
(setf (gethash (sub-name name '(x is (k fat))) wht) '((burger 5) (salad-dressing 2) (energy-drink 1) (tennis -5)))
(setf (gethash (sub-name name '(not (x do (k sport)))) wht) '((video-game 2) (carpet 1) (tennis -4)))
(setf (gethash (sub-name name '(some y (not ((x need y) and (medicine y))))) wht) '((band-aid -4) (pain-killer -5)))
(setf (gethash (sub-name name '(x feel (k pain))) wht) '((pain-killer 5) (tennis -5)))
(setf (gethash (sub-name name '(x rest)) wht) '((carpet 4) (tennis -3)))
(setf (gethash (sub-name name '(x is (k poor))) wht) '((burger 3) (carpet -2) (amazon-gift-card -3) (video-game -2) (cigarette -1)))
(setf (gethash (sub-name name '(x is (k smoker))) wht) '((cigarette 5)))
(setf (gethash (sub-name name '(some y (not ((that (x  in-relationship)) with y)))) wht) '((flower -5)))
(setf (gethash (sub-name name '(some z ((x love z) and (z reading)))) wht) '((pen 4)))
(setf (gethash (sub-name name '(x ((attr easily) get) (k ill)))wht) '((pain-killer 5)))
(setf (gethash (sub-name name '(x ((attr bad) parent))) wht) '((toy-truck -3)))


   (setq conds-dir (mapcar #'(lambda (x) (gethash x cht)) conds))
   (mapcar #'(lambda (x) (s x)) conds-dir)
   
   (setq item-dir (mapcar #'(lambda (x) (gethash x iht)) items))
   (setq item-wffs (mapcar #'list item-dir items))
   (mapcar #'(lambda (x) (s (list name 'buy x))) item-dir)

   (print item-dir)
   (print conds-dir)
   (print "!!!")
   (setq wffs (mapcar #'(lambda (x) (sub-name name x)) wlist))

   ;;(mapcar #'(lambda (x) (progn (s x) (print x))) wffs)
   (mapcar #'(lambda (x) (chk-ans x name)) wffs)
    (setq weightlist (mapcan #'(lambda (x) (gethash x wht)) rlst))
    (mapcar #'(lambda (x) (setf (gethash (first x) isht) (+ (gethash (first x) isht) (second x)))) weightlist) 

   (callpro isht)
   )) 	  
