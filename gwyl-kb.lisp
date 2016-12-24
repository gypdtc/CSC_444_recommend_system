
(init-storage)
;;(load "el-lexicon.lisp")
(load "knowledge.lisp")


; ;;result list

(setq rlst nil)
; (progn
; 	(load "load")
; 	(in-package :epi)
; 	(load "FP_CSC444/ui")
; 	)
;tennis live-alone rainy
;burger live-alone
;cigarette rainy
;;weight list
(setq wlist '( 
	     ;; (some y ((x buy y) and (y ((attr a-lot) medicine))))
	     (some y (some z (((that (x  play z)) with y) and (y children))))
	    ;; (some y ((y children) and (some z ((that (x ((attr seldom) play) z)) with y))))
	     ;;(some y (some z (((that (x ((attr seldom) play) z)) with y) and (y children))))
	       (some y (x ((attr well) treat) y))
	     (some z ((x order z) and (z delivery)))
	     (some z (((that (x cook)) at z) and (z home)))
	     (some z (((that (x work)) at z) and (z home)))
	     (not (x is (k smoker))) 
	     (x buy (that ((k (plur clothes)) less)))
	     (all z (not ((x required z) and (z uniform)))) 
	     (x buy (that ((k (plur clothes)) more)))
	     (some y ((x at y) and (y sunny-day)))
	     (some z ((x has z) and (z cars)))
	     (some z ((that ((x has z) and (z time))) in-order (that (do (k diy)))))
	      (x is (k designer))
	     (x ((attr healthy) eat))
	     (x is (k vegetrian))
	     (some u ((x play u) and (u sport-video-games)))
	      (x is (k kind-person))
	     (x is (k planner))
	     (some z (not (((that (x eat)) at z) and (z home))))
	     ;;(x ((attr easily) get) (k hurt))
	     (x is (k lazy))
	     (x is (k fat))
	     (not (x do (k sport)))
	     ;;(some y (not ((x need y) and (medicine y))))
	     (x feel (k pain))
	     (x rest)
	     (x is (k poor))
	     ;;(x is (k smoker))
	     (some y (not ((that (x  in-relationship)) with y)))
	     (some z ((x love z) and (z reading)))
	     (x ((attr easily) get) (k ill))
	     (x ((attr bad) parent))
	     )
)
;;(init-storage)
;;basic
(store (x-is-predicate 'customer) *lexicon-kb*)
(store (x-is-function 'as-body-of) *lexicon-kb*)
(store (x-is-function 'illness-of) *lexicon-kb*)

;;item table
(setq iht (make-hash-table :test 'equal))
(setf (gethash 'tennis iht) 't1)
(setf (gethash 'cigarette iht) 'c1)
(setf (gethash 'toy-truck iht) 'tt1)
(setf (gethash 'flower iht) 'f1)
(setf (gethash 'energy-drink iht) 'ed1)
(setf (gethash 'burger iht) 'b1)
(setf (gethash 'salad-dressing iht) 'ls1)
(setf (gethash 'band-aid iht) 'ba1)
(setf (gethash 'pain-killer iht) 'pk1)
(setf (gethash 'video-game iht) 'vg1)
(setf (gethash 'amazon-gift-card iht) 'agc1)
(setf (gethash 'jeans iht) 'j1)
(setf (gethash 'ear-rings iht) 'er1)
(setf (gethash 'umbrella iht) 'u1)
(setf (gethash 'pen iht) 'p1)
(setf (gethash 'screw-driver iht) 'sd1)
(setf (gethash 'chopper iht) 'cp1)
(setf (gethash 'wood-glue iht) 'wg1)
(setf (gethash 'carpet iht) 'ct1)

;;item example

(setq itemexample '(t1 c1 tt1 f1 ed1 b1 ls1 ba1 pk1 vg1 agc1 j1 er1 u1 p1 sd1 cp1 wg1 ct1))
(setq itempred '(tennis cigarette toy-truck flower energy burger salad-dressing band-aid pain-killer video-game
				amazon-gift-card jeans ear-rings umbrella pen screw-driver chopper wood-glue carpet))

(mapcar #'(lambda (x y) (s (list x y))) itemexample itempred)

;;predicate example
;;(setq interpredexample '(


;;item rules
(s '(all x ((some y ((x buy y) and (y tennis))) =>
		    (some z ((x love z) and (z sport))))))
(s '(all x ((some y ((x buy y) and (y cigarette))) =>
		    (x has (that (health bad))))))
(s '(all x ((some y ((x buy y) and (y toy-truck))) =>
		    (some z (x has (that (z children)))))))
(s '(all x ((some y ((x buy y) and (y flower))) =>
		    (some z ((that (x in-relationship)) with z)))))
(s '(all x ((some y ((x buy y) and (y energy-drink)))  =>
		    (x ((attr often) exercise)))))
(s '(all x ((some y ((x buy y) and (y burger)))  =>
		    (some z ((x love z) and (z junk-food))))))
(s '(all x ((some y ((x buy y) and (y salad-dressing)))  =>
		    (some z ((x love z) and (z salad))))))
(s '(all x ((some y ((x buy y) and (y bond-aid)))  =>
	(x is (k hurt)))))
(s '(all x ((some y ((x buy y) and (y pain-killer)))  =>
		    (some z ((x has z) and (z ((attr chronic) ill)))))))
(s '(all x ((some y ((x buy y) and (y video-game)))  =>
		    (some z ((x ((attr often) at) z) and (z home))))))
(s '(all x ((some y ((x buy y) and (y amazon-gift-card)))  =>
			(x is (k social)))))
(s '(all x ((some y ((x buy y) and (y jeans)) ) => 
			(some z((x ((attr casually) dress) z) and (z clothes))))))
(s '(all x ((some y ((x buy y) and (y ear-rings)))  =>
			(some z((x ((attr delicately) dress) z) and (z clothes))))))
(s '(all x ((some y ((x buy y) and (y umbrella)))  =>
			(not (x love (that (x wet)))))))
(s '(all x ((some y ((x buy y) and (y pen)))  =>
			(x is (k student)))))
(s '(all x ((some y ((x buy y) and (y screw-driver)))  =>
			(some z ((x love z) and (z diy))))))
(s '(all x ((some y ((x buy y) and (y chopper)) ) => 
			(some z ((x love z) and (z cook))))))
(s '(all x ((some y ((x buy y) and (y wood-glue)))  =>
			(some z ((x has z) and (z ((attr broken) items)))))))
(s '(all x ((some y ((x buy y) and (y carpet)) ) => 
	(some z ((x has z) and (z ((attr new) house)))))))


;;item score
(setq isht (make-hash-table :test 'equal))
(setf (gethash 'tennis isht) 0)
(setf (gethash 'cigarette isht) 0)
(setf (gethash 'toy-truck isht) 0)
(setf (gethash 'flower isht) 0)
(setf (gethash 'energy-drink isht) 0)
(setf (gethash 'burger isht) 0)
(setf (gethash 'salad-dressing isht) 0)
(setf (gethash 'band-aid isht) 0)
(setf (gethash 'pain-killer isht) 0)
(setf (gethash 'video-game isht) 0)
(setf (gethash 'amazon-gift-card isht) 0)
(setf (gethash 'jeans isht) 0)
(setf (gethash 'ear-rings isht) 0)
(setf (gethash 'umbrella isht) 0)
(setf (gethash 'pen isht) 0)
(setf (gethash 'screw-driver isht) 0)
(setf (gethash 'chopper isht) 0)
(setf (gethash 'wood-glue isht) 0)
(setf (gethash 'carpet isht) 0)


;;weight table
(setq wht (make-hash-table :test 'equal))



;;condition table
(setq cht (make-hash-table :test 'equal))



