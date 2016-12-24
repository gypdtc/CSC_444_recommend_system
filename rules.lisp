
(load "FP_CSC444/gwyl-kb.lisp")

;;condition episode
  ; (s '((notj) **e0))
  (s '((is-happy) **e1))
  (s '((is-healthy) **e2))
  (s '((live-alone) **e3))
  (s '((at-rainy) **e4))
  (s '((busy-for-work) **e5))

;;verb
; (s' (all x (all_pred y ((x is (k y))
;   => (x y)))))
; (s' (all x (all_pred y ((x fell (k y))
;   => (x y)))))
; (s' (all x (all_pred y ((x get (k y))
;   => (x y)))))

;;predict rules
;;(s' (all x ((some y (((x love y) and (y sport)) and (x is-happy)))
 ;; => (some y (((x love y) and (y sport)) @ e1)))))
(s' (all x ((some y (((x love y) and (y sport)) and (x is-happy)))
  => (some y (((x love y) @ e1) and ((y sport) @ e1))))));;;;;;;here
(s' (all x (((x has (that (health bad))) and (x is-happy))
  => ((x has (that (health bad))) @ e1))))
(s' (all x ((some y ((x has (that (y children))) and (x is-happy)))
  => (some y ((x has (that (y children))) @ e1)))))
(s' (all x ((some y (((that (x  in-relationship)) with y) and (x is-happy)))
  => (some y (((that (x  in-relationship)) with y) @ e1)))))
(s' (all x ((some y (((x love y) and (y junk-food)) and (x is-happy)))
  => (some y (((x love y) @ e1) and ((y junk-food) @ e1))))))
(s' (all x (((x is (k hurt)) and (x is-happy))
  => ((x is (k hurt)) @ e1))))
(s' (all x ((some y (((x ((attr often) at) y) and (y home)) and (x is-happy)))
  => (some y (((x ((attr often) at) y) @ e1) and ((y home) @ e1))))))
(s' (all x (((x is (k social)) and (x is-happy))
  => ((x is (k social)) @ e1))))
(s' (all x ((some y (((x ((attr casually) dress) y) and (y clothes)) and (x is-happy)))
  => (some y (((x ((attr casually) dress) y) @ e1) and ((y clothes) @ e1))))))
; (s' (all x (((some y ((x ((attr casually) dress) y) and (y clothes))) and (x is-happy))
;   => (some y (((x ((attr casually) dress) y) @ e1) and ((y clothes) @ e1))))))
(s' (all x ((some y (((x ((attr delicately) dress) y) and (y clothes)) and (x is-happy)))
  => (some y (((x ((attr delicately) dress) y) @ e1) and ((y clothes) @ e1))))))
(s' (all x (((not (x love (that (x wet)))) and (x is-happy))
  => ((not (x love (that (x wet)))) @ e1))))
(s' (all x (((x is (k student)) and (x is-happy))
  => ((x is (k student)) @ e1))))
(s' (all x ((some y (((x love y) and (y diy)) and (x is-happy)))
  => (some y (((x love y) @ e1) and ((y diy) @ e1))))))
(s' (all x ((some y (((x love y) and (y cook)) and (x is-happy)))
  => (some y (((x love y) @ e1) and ((y cook) @ e1))))))
(s' (all x ((((x has y) and (y ((attr new) house) aba)) and (x is-happy));;;;aba
  => (((x has y) @ e1) and ((y ((attr new) house) aba) @ e1)))));;;;aba
(s' (all x ((some y (some z (((((that (x do z)) with y) and (z sport)) and (x friend y)) and (x is-happy))))
  => (some y (some z ((((((that (x do z)) with y) @ e1) and ((z sport) @ e1)) @ e1) and ((x friend y) @ e1)))))))
(s' (all x ((some y (((x ((attr often) watch) y) and (y sport-game)) and (x is-happy)))
  => (some y (((x ((attr often) watch) y) @ e1) and ((y sport-game) @ e1))))))
(s' (all x ((some y (some z ((((x find y) and (y alternative-of z)) and (z is (k sport))) and (x is-happy))))
  => (some y (some z (((((x find y) @ e1) and ((y alternative-of z) @ e1)) @ e1) and ((z is (k sport)) @ e1)))))))
(s' (all x ((((x ((attr seldom) do) y) and (y sport)) and (x is-happy))
  => (((x ((attr seldom) do) y) @ e1) and ((y sport) @ e1)))))
(s' (all x ((some y (some z ((((that (x ((attr seldom) play) z)) with y) and (y children)) and (x is-happy))))
  => (some y (some z ((((that (x ((attr seldom) play) z)) with y) @ e1) and ((y children) @ e1)))))))
(s' (all x (((not (x is (k social))) and (x is-happy))
  => ((not (x is (k social))) @ e1))))
(s' (all x (((x has  (that ((k (plur friends)) a-lot))) and (x is-happy))
  => ((x has  (that ((k (plur friends)) a-lot))) @ e1))))
(s' (all x (((x buy (that ((k (plur clothes)) less))) and (x is-happy))
  => ((x buy (that ((k (plur clothes)) less))) @ e1))))
(s' (all x ((some y (((x do y) and (y ((attr heavy) job) aba))  and (x is-happy)));;;;aba
  => (some y (((x do y) @ e1) and ((y ((attr heavy) job) aba) @ e1))))));;;;aba
(s' (all x ((some y (((x at y) and (y ((attr high-position-of) company))) and (x is-happy)))
  => (some y (((x at y) @ e1) and ((y ((attr high-position-of) company)) @ e1))))))



(s' (all x ((some y (((x love y) and (y sport)) and (x is-healthy)))
  => (some y (((x love y) @ e2) and ((y sport) @ e2))))))
(s' (all x ((some y ((x has (that (y children))) and (x is-healthy)))
  => (some y ((x has (that (y children))) @ e2)))))
(s' (all x ((some y (((that (x in-relationship)) with y) and (x is-healthy)))
  => (some y (((that (x in-relationship)) with y) @ e2)))))
(s' (all x (((x ((attr often) exercise) aba) and (x is-healthy));;;;aba
  => ((x ((attr often) exercise) aba) @ e2))));;;;aba
(s' (all x ((some y (((x love y) and (y salad)) and (x is-healthy)))
  => (some y (((x love y) @ e2) and ((y salad) @ e2))))))
(s' (all x (((x is (k hurt)) and (x is-healthy))
  => ((x is (k hurt)) @ e2))))
(s' (all x ((some y (((x ((attr often) at) y) and (y home)) and (x is-healthy)))
  => (some y (((x ((attr often) at) y) @ e2) and ((y home) @ e2))))))
(s' (all x (((x is (k social)) and (x is-healthy))
  => ((x is (k social)) @ e2))))
(s' (all x (((x is (k student)) and (x is-healthy))
  => ((x is (k student)) @ e2))))
(s' (all x ((some y (((x love y) and (y diy)) and (x is-healthy)))
  => (some y (((x love y) @ e2) and ((y diy) @ e2))))))
(s' (all x ((some y (((x love y) and (y cook)) and (x is-healthy)))
  => (some y (((x love y) @ e2) and ((y cook) @ e2))))))
(s' (all x ((some y (some z (((((that (x do z)) with y) and (z sport)) and (x friend y)) and (x is-healthy))))
  => (some y (some z ((((((that (x do z)) with y) @ e2) and ((z sport) @ e2)) @ e2) and ((x friend y) @ e2)))))))
(s' (all x (((x has (that ((as-body-of x) strong))) and (x is-healthy))
  => ((x has (that ((as-body-of x) strong))) @ e2))))
(s' (all x ((some y (((x ((attr seldom) do) y) and (y sport)) and (x is-healthy)))
  => (some y (((x ((attr seldom) do) y) @ e2) and ((y sport) @ e2))))))
(s' (all x ((some y ((y take-care-of x) and (x is-healthy)))
  => (some y ((y take-care-of x) @ e2)))))
(s' (all x ((some y (some z ((((that (x ((attr seldom) play) z)) with y) and (y children)) and (x is-healthy))))
  => (some y (some z ((((that (x ((attr seldom) play) z)) with y) @ e2) and ((y children) @ e2)))))))
(s' (all x (((x is (k divorced)) and (x is-healthy))
  => ((x is (k divorced)) @ e2))))
(s' (all x ((some y ((((that (x work)) at y) and (y home)) and (x is-healthy)))
  => (some y ((((that (x work)) at y) @ e2) and ((y home) @ e2))))))
(s' (all x (((x has  (that ((k (plur friends)) a-lot))) and (x is-healthy))
  => ((x has  (that ((k (plur friends)) a-lot))) @ e2))))
(s' (all x (((x is (k tired)) and (x is-healthy))
  => ((x is (k tired)) @ e2))))




(s' (all x ((some y (((x love y) and (y sport)) and (x live-alone)))
  => (some y (((x love y) @ e3) and ((y sport) @ e3))))))
(s' (all x (((x has (that (health bad))) and (x live-alone))
  => ((x has (that (health bad))) @ e3))))
(s' (all x ((some y ((x has (that (y children))) and (x live-alone)))
  => (some y ((x has (that (y children))) @ e3)))))
(s' (all x ((some y (((that (x in-relationship)) with y) and (x live-alone)))
  => (some y (((that (x in-relationship)) with y) @ e3)))))
(s' (all x ((some y (((x love y) and (y junk-food)) and (x live-alone)))
  => (some y (((x love y) @ e3) and ((y junk-food) @ e3))))))
(s' (all x ((some y (((x love y) and (y salad)) and (x live-alone)))
  => (some y (((x love y) @ e3) and ((y salad) @ e3))))))
(s' (all x (((x is (k hurt)) and (x live-alone))
  => ((x is (k hurt)) @ e3))))
(s' (all x ((some z (((x has z) and (z ((attr chronic) ill) aba)) and (x live-alone)));;;;aba
  => (some z (((x has z) @ e3) and ((z ((attr chronic) ill) aba) @ e3))))));;;;aba
(s' (all x ((some y (((x ((attr often) at) y) and (y home)) and (x live-alone)))
  => (some y (((x ((attr often) at) y) @ e3) and ((y home) @ e3))))))
(s' (all x (((x is (k social)) and (x live-alone))
  => ((x is (k social)) @ e3))))
(s' (all x ((some y (((x ((attr casually) dress) y) and (y clothes)) and (x live-alone)))
  => (some y (((x ((attr casually) dress) y) @ e3) and ((y clothes) @ e3))))))
(s' (all x ((some y (((x ((attr delicately) dress) y) and (y clothes)) and (x live-alone)))
  => (some y (((x ((attr delicately) dress) y) @ e3) and ((y clothes) @ e3))))))
(s' (all x (((x is (k student)) and (x live-alone))
  => ((x is (k student)) @ e3))))
(s' (all x ((some y (((x love y) and (y cook)) and (x live-alone)))
  => (some y (((x love y) @ e3) and ((y cook) @ e3))))))
(s' (all x ((some z (((x has z) and (z ((attr broken) items) aba)) and (x live-alone)));;;;aba
  => (some z (((x has z) @ e3) and ((z ((attr broken) items) aba) @ e3))))));;;;aba
(s' (all x ((some y (((x has y) and (y ((attr new) house) aba)) and (x live-alone)));;;;aba
  => (some y (((x has y) @ e3) and ((y ((attr new) house) aba) @ e3))))));;;;aba
(s' (all x ((some y (some z (((((that (x do z)) with y) and (z sport)) and (x friend y)) and (x live-alone))))
  => (some y (some z ((((((that (x do z)) with y) @ e3) and ((z sport) @ e3)) @ e3) and ((x friend y) @ e3)))))))
(s' (all x ((some y (((x ((attr often) watch) y) and (y sport-game)) and (x live-alone)))
  => (some y (((x ((attr often) watch) y) @ e3) and ((y sport-game) @ e3))))))
(s' (all x ((some y (some z ((((x find y) and (y alternative-of z)) and (z is (k sport))) and (x live-alone))))
  => (some y (some z (((((x find y) @ e3) and ((y alternative-of z) @ e3)) @ e3) and ((z is (k sport)) @ e3)))))))
(s' (all x ((some y (((x ((attr seldom) do) y) and (y sport)) and (x live-alone)))
  => (some y (((x ((attr seldom) do) y) @ e3) and ((y sport) @ e3))))))
(s' (all x ((some y ((y take-care-of x) and (x live-alone)))
  => (some y ((y take-care-of x) @ e3)))))
(s' (all x (((x feel (k sad)) and (x live-alone))
  => ((x feel (k sad)) @ e3))))
(s' (all x (((not (x is (k social))) and (x live-alone))
  => ((not (x is (k social))) @ e3))))
(s' (all x (((x has  (that ((k (plur friends)) a-lot))) and (x live-alone))
  => ((x has  (that ((k (plur friends)) a-lot))) @ e3))))
(s' (all x ((some y (((x has y) and (y family)) and (x live-alone)))
  => (some y (((x has y) @ e3) and ((y family) @ e3))))))




(s' (all x ((some y (((x love y) and (y sport)) and (x at-rainy)))
  => (some y (((x love y) @ e4) and ((y sport) @ e4))))))
(s' (all x (((x has (that (health bad))) and (x at-rainy))
  => ((x has (that (health bad))) @ e4))))
(s' (all x (((x ((attr often) exercise) aba) and (x at-rainy));;;;aba
  => ((x ((attr often) exercise) aba) @ e4))));;;;aba
(s' (all x ((some y (((x love y) and (y junk-food)) and (x at-rainy)))
  => (some y (((x love y) @ e4) and ((y junk-food) @ e4))))))
(s' (all x (((x is (k hurt)) and (x at-rainy))
  => ((x is (k hurt)) @ e4))))
(s' (all x (((x is (k social)) and (x at-rainy))
  => ((x is (k social)) @ e4))))
(s' (all x ((some y (((x ((attr delicately) dress) y) and (y clothes)) and (x at-rainy)))
  => (some y (((x ((attr delicately) dress) y) @ e4) and ((y clothes) @ e4))))))
(s' (all x (((not (x love (that (x wet)))) and (x at-rainy))
  => ((not (x love (that (x wet)))) @ e4))))
(s' (all x ((some y (((x love y) and (y cook)) and (x at-rainy)))
  => (some y (((x love y) @ e4) and ((y cook) @ e4))))))
(s' (all x ((some z (((x has z) and (z ((attr broken) items) aba)) and (x at-rainy)));;;;aba
  => (some z (((x has z) @ e4) and ((z ((attr broken) items) aba) @ e4))))));;;;aba
(s' (all x ((some y (((x has y) and (y ((attr new) house) aba)) and (x at-rainy)));;;;aba
  => (some y (((x has y) @ e4) and ((y ((attr new) house) aba) @ e4))))));;;;aba
(s' (all x ((some y (some z (((((that (x do z)) with y) and (z sport)) and (x friend y)) and (x at-rainy))))
  => (some y (some z ((((((that (x do z)) with y) @ e4) and ((z sport) @ e4)) @ e4) and ((x friend y) @ e4)))))))
(s' (all x (((x has (that ((as-body-of x) strong))) and (x at-rainy))
  => ((x has (that ((as-body-of x) strong))) @ e4))))
(s' (all x ((some y (((x ((attr often) watch) y) and (y sport-game)) and (x at-rainy)))
  => (some y (((x ((attr often) watch) y) @ e4) and ((y sport-game) @ e4))))))
(s' (all x ((some y (some z ((((x find y) and (y alternative-of z)) and (z is (k sport))) and (x at-rainy))))
  => (some y (some z (((((x find y) @ e4) and ((y alternative-of z) @ e4)) @ e4) and ((z is (k sport)) @ e4)))))))
(s' (all x (((x feel (k sad)) and (x at-rainy))
  => ((x feel (k sad)) @ e4))))
(s' (all x (((x is (k divorced)) and (x at-rainy))
  => ((x is (k divorced)) @ e4))))
(s' (all x (((not (x at-work)) and (x at-rainy))
  => ((not (x at-work)) @ e4))))




(s' (all x ((some y (((x love y) and (y sport)) and (x busy-for-work)))
  => (some y (((x love y) @ e5) and ((y sport) @ e5))))))
(s' (all x (((x has (that (health bad))) and (x busy-for-work))
  => ((x has (that (health bad))) @ e5))))
(s' (all x ((some y ((x has (that (y children))) and (x busy-for-work)))
  => (some y ((x has (that (y children))) @ e5)))))
(s' (all x (((x ((attr often) exercise) aba) and (x busy-for-work));;;;aba
  => ((x ((attr often) exercise) aba) @ e5))));;;;aba
(s' (all x ((some y (((x love y) and (y junk-food)) and (x busy-for-work)))
  => (some y (((x love y) @ e5) and ((y junk-food) @ e5))))))
(s' (all x ((some y (((x love y) and (y salad)) and (x busy-for-work)))
  => (some y (((x love y) @ e5) and ((y salad) @ e5))))))
(s' (all x (((x is (k hurt)) and (x busy-for-work))
  => ((x is (k hurt)) @ e5))))
(s' (all x ((some z (((x has z) and (z ((attr chronic) ill) aba)) and (x busy-for-work)));;;;aba
  => (some z (((x has z) @ e5) and ((z ((attr chronic) ill) aba) @ e5))))));;;;aba
(s' (all x ((some y (((x ((attr often) at) y) and (y home)) and (x busy-for-work)))
  => (some y (((x ((attr often) at) y) @ e5) and ((y home) @ e5))))))
(s' (all x ((some y (((x ((attr casually) dress) y) and (y clothes)) and (x busy-for-work)))
  => (some y (((x ((attr casually) dress) y) @ e5) and ((y clothes) @ e5))))))
(s' (all x ((some y (((x ((attr delicately) dress) y) and (y clothes)) and (x busy-for-work)))
  => (some y (((x ((attr delicately) dress) y) @ e5) and ((y clothes) @ e5))))))
(s' (all x (((not (x love (that (x wet)))) and (x busy-for-work))
  => ((not (x love (that (x wet)))) @ e5))))
(s' (all x (((x is (k student)) and (x busy-for-work))
  => ((x is (k student)) @ e5))))
(s' (all x ((some y (((x love y) and (y diy)) and (x busy-for-work)))
  => (some y (((x love y) @ e5) and ((y diy) @ e5))))))
(s' (all x ((some y (((x love y) and (y cook)) and (x busy-for-work)))
  => (some y (((x love y) @ e5) and ((y cook) @ e5))))))
(s' (all x ((some z (((x has z) and (z ((attr broken) items) aba)) and (x busy-for-work)));;;;aba
  => (some z (((x has z) @ e5) and ((z ((attr broken) items) aba) @ e5))))));;;;aba
(s' (all x ((some y (((x has y) and (y ((attr new) house) aba)) and (x busy-for-work)));;;;aba
  => (some y (((x has y) @ e5) and ((y ((attr new) house) aba) @ e5))))));;;;aba
(s' (all x (((x has (that ((as-body-of x) strong))) and (x busy-for-work))
  => ((x has (that ((as-body-of x) strong))) @ e5))))
(s' (all x ((some y (((x ((attr often) watch) y) and (y sport-game)) and (x busy-for-work)))
  => (some y (((x ((attr often) watch) y) @ e5) and ((y sport-game) @ e5))))))
(s' (all x ((some y (some z ((((x find y) and (y alternative-of z)) and (z is (k sport))) and (x busy-for-work))))
  => (some y (some z (((((x find y) @ e5) and ((y alternative-of z) @ e5)) @ e5) and ((z is (k sport)) @ e5)))))))
(s' (all x ((some y (((x ((attr seldom) do) y) and (y sport)) and (x busy-for-work)))
  => (some y (((x ((attr seldom) do) y) @ e5) and ((y sport) @ e5))))))
(s' (all x (((x ((attr good) parents) aba) and (x busy-for-work));;;;aba
  => ((x ((attr good) parents) aba) @ e5))));;;;aba
(s' (all x ((some y (some z ((((that (x ((attr seldom) play) z)) with y) and (y children)) and (x busy-for-work))))
  => (some y (some z ((((that (x ((attr seldom) play) z)) with y) @ e5) and ((y children) @ e5)))))))
(s' (all x (((x is (k divorced)) and (x busy-for-work))
  => ((x is (k divorced)) @ e5))))
(s' (all x ((some y (some z ((((that (x ((attr seldom) play) z)) with y) and (y children)) and (x busy-for-work))))
  => (some y (some z ((((that (x ((attr seldom) play) z)) with y) @ e5) and ((y children) @ e5)))))))
(s' (all x (((not (x is (k social))) and (x busy-for-work))
  => ((not (x is (k social))) @ e5))))
(s' (all x (((x is (k tired)) and (x busy-for-work))
  => ((x is (k tired)) @ e5))))
(s' (all x ((some y (((x has y) and (y family)) and (x busy-for-work)))
  => (some y (((x has y) @ e5) and ((y family) @ e5))))))



;;;;fixed scope:
(s' (all x ((some y (((x love y) @ e1) and ((y sport) @ e1)))
  => (some y (some z ((((that (x do z)) with y) and (z sport)) and (x friend y)))))));;;;here
(s' (all x (((x has (that (health bad))) @ e1)
  => (some y (y take-care-of x)))))
(s' (all x ((some y ((x has (that (y children))) @ e1))
  => (x ((attr good) parents) aba))));;;;aba
 (s' (all x ((some y (((that (x in-relationship)) with y) @ e1))
  => (some y (x ((attr well) treat) y))))) ;;;;;;;here
;;(s' (all x ((some y (((x love y) @ e1) and ((y junk-food) @ e1)))
;;  => (some z ((x ((attr a-lot) eat) z) and (z food))))))   comment here
(s' (all x (((x is (k hurt)) @ e1)
  => (some y (y take-care-of x)))))
(s' (all x ((some y (((x ((attr often) at) y) @ e1) and ((y home) @ e1)))
  => (some z ((x ((attr often) watch) z) and (z sport-game))))))
(s' (all x (((x is (k social)) @ e1)
  => (x has  (that ((k (plur friends)) a-lot))))))
(s' (all x ((some y (((x ((attr casually) dress) y) @ e1) and ((y clothes) @ e1)))
  => (not (x at-work)))))
(s' (all x ((some y (((x ((attr delicately) dress) y) @ e1) and ((y clothes) @ e1)))
  => (x buy (that ((k (plur clothes)) more))))))
(s' (all x (((not (x love (that (x wet)))) @ e1)
  => (some y ((x at y) and (y sunny-day))))))
(s' (all x (((x is (k student)) @ e1)
  => (some y ((x has y) and (y ((attr good) grade) aba))))));;;;aba
(s' (all x ((some y (((x love y) @ e1) and ((y diy) @ e1)))
  => (some z ((that ((x has z) and (z time))) in-order (that (do (k diy))))))))
(s' (all x ((some y (((x love y) @ e1) and ((y cook) @ e1)))
  => (some z (((that (x cook)) at z) and (z home))))))
(s' (all x ((some y (((x has y) @ e1) and ((y ((attr new) house) aba) @ e1)));;;;aba
  => (some z ((x has z) and (z family))))))
(s' (all x ((some y (some z ((((((that (x do z)) with y) @ e1) and ((z sport) @ e1)) @ e1) and ((x friend y) @ e1))))
  => (x is (k social)))))
(s' (all x ((some y (((x ((attr often) watch) y) @ e1) and ((y sport-game) @ e1)))
  => (some z (((that (x party)) at z) and (z home))))))
(s' (all x ((some y (some z (((((x find y) @ e1) and ((y alternative-of z) @ e1)) @ e1) and ((z is (k sport)) @ e1))))
  => (some u ((x play u) and (u sport-video-games))))))
(s' (all x ((some y (((x ((attr seldom) do) y) @ e1) and ((y sport) @ e1)))
  => (some z ((x ((attr often) at) z) and (z home))))))
(s' (all x ((some y (some z ((((that (x ((attr seldom) play) z)) with y) @ e1) and ((y children) @ e1))))
  => (some u (((that (x party)) at u) and (u home))))))
(s' (all x (((not (x is (k social))) @ e1)
  => (some u ((x play u) and (u sport-video-games))))))
(s' (all x (((x has  (that ((k (plur friends)) a-lot))) @ e1)
  => (some z (((that (x party)) at z) and (z home))))))
(s' (all x (((x buy (that ((k (plur clothes)) less))) @ e1)
  => (x is (k lazy)))))
(s' (all x ((some y (((x do y) @ e1) and ((y ((attr heavy) job) aba) @ e1)));;;;aba
  => (some z ((x ((attr a-lot) eat) z) and (z food))))))
(s' (all x ((some y (((x at y) @ e1) and ((y ((attr high-position-of) company)) @ e1)))
  => (x is (k rich)))))





(s' (all x ((some y (((x love y) @ e2) and ((y sport) @ e2)))
  => (x has (that ((as-body-of x) strong))))))
(s' (all x ((some y ((x has (that (y children))) @ e2))
  => (some z (((that (x play z)) with y) and (y children))))))
(s' (all x ((some y (((that (x in-relationship)) with y) @ e2))
  => (x ((attr a-lot) travel)))))
(s' (all x (((x ((attr often) exercise) aba) @ e2);;;;aba
  => (x has (that ((as-body-of x) strong))))))
(s' (all x ((some y (((x love y) @ e2) and ((y salad) @ e2)))
  => (x ((attr well) control) (as-body-of x)))))
(s' (all x (((x is (k hurt)) @ e2)
  => (x ((attr quickly) recover) aba))));;;;aba
;;;;fixed scope:
(s' (all x ((some y (((x ((attr often) at) y) @ e2) and ((y home) @ e2)))
  => (some y (((that (x exercise)) at y) and (y home))))))
(s' (all x (((x is (k social)) @ e2)
  => (not (x is (k smoker))))))
(s' (all x (((x is (k student)) @ e2)
  => (some y ((x love y) and (y sport))))))
;;;;fixed scope:
(s' (all x ((some y (((x love y) @ e2) and ((y diy) @ e2)))
  => (some y ((x do y) and (y ((attr heavy) job) aba))))));;;;aba
(s' (all x ((some y (((x love y) @ e2) and ((y cook) @ e2)))
  => (x ((attr healthy) eat) aba))));;;;aba
(s' (all x ((some y (some z ((((((that (x do z)) with y) @ e2) and ((z sport) @ e2)) @ e2) and ((x friend y) @ e2))))
  => (x has (that ((as-body-of x) strong))))))
(s' (all x (((x has (that ((as-body-of x) strong))) @ e2)
  => (x ((attr well) control) (as-body-of x)))))
(s' (all x ((some y (((x ((attr seldom) do) y) @ e2) and ((y sport) @ e2)))
  => (x is (k vegetrian)))))
(s' (all x ((some y ((y take-care-of x) @ e2))
  => (x ((attr quickly) recover) aba))));;;;aba
(s' (all x ((some y (some z ((((that (x  play z)) with y) @ e2) and ((y children) @ e2))))
  => (x has (that ((as-body-of x) strong))))))
;;;;fixed scope:
(s' (all x ((some y ((((that (x work)) at y) @ e2) and ((y home) @ e2)))
  => (some y (((that (x exercise)) at y) and (y home))))))
(s' (all x (((x has  (that ((k (plur friends)) a-lot))) @ e2)
  => (some y ((x ((attr often) watch) y) and (y sport-game))))))
(s' (all x (((x is (k tired)) @ e2)
  => (x rest))))



;;;;fixed scope:
(s' (all x ((some y (((x love y) @ e3) and ((y sport) @ e3)))
  => (some y ((x ((attr often) watch) y) and (y sport-game))))))
(s' (all x (((x has (that (health bad))) @ e3)
  => ((that (x has (illness-of x))) get (k worse)))))
(s' (all x ((some y ((x has (that (y children))) @ e3))
  => (x is (k divorced)))))
(s' (all x ((some y (((that (x in-relationship)) with y) @ e3))
  => (some z((x ((attr seldom) at) z) and (z home))))))
(s' (all x ((some y (((x love y) @ e3) and ((y junk-food) @ e3)))
  => (some z ((x order z) and (z delivery))))))
(s' (all x ((some y (((x love y) @ e3) and ((y salad) @ e3)))
  => (some z (((that (x cook)) at z) and (z home))))))
(s' (all x (((x is (k hurt)) @ e3)
  => (x feel (k inconvinient)))))
(s' (all x ((some z (((x has z) @ e3) and ((z ((attr chronic) ill) aba) @ e3)));;;;aba
  => (x take-care-of x))))
(s' (all x ((some y (((x ((attr often) at) y) @ e3) and ((y home) @ e3)))
  => (not (x is (k social))))))
(s' (all x (((x is (k social)) @ e3)
  => (some y ((x fan-of y) and (y social-network))))))
(s' (all x ((some y (((x ((attr casually) dress) y) @ e3) and ((y clothes) @ e3)))
  => (x buy (that ((k (plur clothes)) less))))))
(s' (all x ((some y (((x ((attr delicately) dress) y) @ e3) and ((y clothes) @ e3)))
  => (x is (k rich)))))
(s' (all x (((x is (k student)) @ e3)
  => (not (x is (k social))))))
(s' (all x ((some y (((x love y) @ e3) and ((y cook) @ e3)))
  => (some z ((x ((attr a-lot) eat) z) and (z food))))))
(s' (all x ((some z (((x has z) @ e3) and ((z ((attr broken) items) aba) @ e3)));;;;aba
  => (x feel (k sad)))))
(s' (all x ((some y (((x has y) @ e3) and ((y ((attr new) house) aba) @ e3)));;;;aba
  => (x is (k rich)))))
(s' (all x ((some y (some z ((((((that (x do z)) with y) @ e3) and ((z sport) @ e3)) @ e3) and ((x friend y) @ e3))))
  => (some u ((x ((attr seldom) at) u) and (u home))))))
(s' (all x ((some y (((x ((attr often) watch) y) @ e3) and ((y sport-game) @ e3)))
  => (not (x is (k social))))))
(s' (all x ((some y (some z (((((x find y) @ e3) and ((y alternative-of z) @ e3)) @ e3) and ((z is (k sport)) @ e3))))
  => (some u (((that (x exercise)) at u) and (u home))))))
(s' (all x ((some y (((x ((attr seldom) do) y) @ e3) and ((y sport) @ e3)))
  => (some z (not (((that (x exercise)) at z) and (z home)))))))
(s' (all x ((some y ((y take-care-of x) @ e3))
  => (x is (k rich)))))
(s' (all x (((x feel (k sad)) @ e3)
  => (some u ((x play u) and (u sport-video-games))))))
(s' (all x (((not (x is (k social))) @ e3)
  => (some z ((x order z) and (z delivery))))))
(s' (all x (((x has  (that ((k (plur friends)) a-lot))) @ e3)
  => (some z((x ((attr seldom) at) z) and (z home))))))
(s' (all x ((some y (((x has y) @ e3) and ((y family) @ e3)))
  => (x is (k divorced)))))




;;;;fixed scope:
(s' (all x ((some y (((x love y) @ e4) and ((y sport) @ e4)))
  => (some y (some z (((x find y) and (y alternative-of z)) and (z is (k sport))))))))
(s' (all x (((x has (that (health bad))) @ e4)
  => (x feel (k sad)))))
; (s' (all x (((x has (that (health bad))) @ e4)
;   => (x sad))))
(s' (all x (((x ((attr often) exercise)) @ e4)
  => (((that (x exercise)) at y) and (y home)))))
(s' (all x ((some y (((x love y) @ e4) and ((y junk-food) @ e4)))
  => (some z ((x order z) and (z delivery))))))
(s' (all x (((x is (k hurt)) @ e4)
  => (x feel (k sad)))))
(s' (all x (((x is (k social)) @ e4)
  => (some z (((that (x party)) at z) and (z home))))))
(s' (all x ((some y (((x ((attr delicately) dress) y) @ e4) and ((y clothes) @ e4)))
  => (not (x love (that (x wet)))))))
;;;;fixed scope:
(s' (all x (((not (x love (that (x wet)))) @ e4)
  => (some y ((x ((attr often) at) y) and (y home))))))
(s' (all x ((some y (((x love y) @ e4) and ((y cook) @ e4)))
  => (some z ((x has z) and (z cars))))))
(s' (all x ((some z (((x has z) @ e4) and ((z ((attr broken) items) aba) @ e4)));;;;aba
  => (x feel (k inconvinient)))))
(s' (all x ((some y (((x has y) @ e4) and ((y ((attr new) house) aba) @ e4)));;;;aba
  => (some z (((that (x party)) at z) and (z home))))))
;;;;fixed scope:
(s' (all x ((some y (some z ((((((that (x do z)) with y) @ e4) and ((z sport) @ e4)) @ e4) and ((x friend y) @ e4))))
  => (some y (some z (((x find y) and (y alternative-of z)) and (z is (k sport))))))))
(s' (all x  (((x has (that ((as-body-of x) strong))) @ e4)
  => (some y (((that (x exercise)) at y) and (y home))))))
(s' (all x ((some y (((x ((attr often) watch) y) @ e4) and ((y sport-game) @ e4)))
  => (some z ((x order z) and (z delivery))))))
(s' (all x ((some y (some z (((((x find y) @ e4) and ((y alternative-of z) @ e4)) @ e4) and ((z is (k sport)) @ e4))))
  => (some u (((that (x exercise)) at u) and (u home))))))
(s' (all x (((x feel (k sad)) @ e4)
  => (some u ((x play u) and (u sport-video-games))))))
(s' (all x (((x is (k divorced)) @ e4)
  => (some z ((x order z) and (z delivery))))))
;;;;fixed scope:
(s' (all x (((not (x at-work)) @ e4)
  => (some y ((x ((attr often) at) y) and (y home))))))




;;;;fixed scope:
(s' (all x ((some y (((x love y) @ e5) and ((y sport) @ e5)))
  => (some y ((x ((attr seldom) do) y) and (y sport))))))
(s' (all x (((x has (that (health bad))) @ e5)
  => (some y ((x buy y) and (y ((attr a-lot) medicine)))))))
;;;;fixed scope:
(s' (all x ((some y ((x has (that (y children))) @ e5))
  => (some y (some z (((that (x ((attr seldom) play) z)) with y) and (y children)))))))
(s' (all x (((x ((attr often) exercise) aba) @ e5);;;;aba
  => (x ((attr well) control) (as-body-of x)))))
(s' (all x ((some y (((x love y) @ e5) and ((y junk-food) @ e5)))
  => (x has (that (health bad))))))
(s' (all x ((some y (((x love y) @ e5) and ((y salad) @ e5)))
  => (some z ((that ((x bring z) and (z food))) in-order (k work))))))
(s' (all x (((x is (k hurt)) @ e5)
  => (some y ((x ask-for y) and (y leave))))))
(s' (all x ((some z (((x has z) @ e5) and ((z ((attr chronic) ill) aba) @ e5)));;;;aba
  => ((that (x has (illness-of x))) get (k worse)))))
;;;;fixed scope:
(s' (all x ((some y (((x ((attr often) at) y) @ e5) and ((y home) @ e5)))
  => (some y (((that (x work)) at y) and (y home))))))
(s' (all x ((some y (((x ((attr casually) dress) y) @ e5) and ((y clothes) @ e5)))
  => (all z (not ((x required z) and (z uniform)))))))
(s' (all x ((some y (((x ((attr delicately) dress) y) @ e5) and ((y clothes) @ e5)))
  => (some z ((x dress z) and (z suit))))))
(s' (all x (((not (x love (that (x wet)))) @ e5)
  => (some z ((x has z) and (z cars))))))
(s' (all x (((x is (k student)) @ e5)
  => (x is (k tired)))))
(s' (all x ((some y (((x love y) @ e5) and ((y diy) @ e5)))
  => (x is (k designer)))))
(s' (all x ((some y (((x love y) @ e5) and ((y cook) @ e5)))
  => (some z ((that ((x bring z) and (z food))) in-order (k work))))))
(s' (all x ((some z (((x has z) @ e5) and ((z ((attr broken) items) aba) @ e5)));;;;aba
  => (x feel (k inconvinient)))))
;;;;fixed scope:
(s' (all x ((some y (((x has y) @ e5) and ((y ((attr new) house) aba) @ e5)));;;;aba
  => (some y ((x at y) and (y ((attr high-position-of) company)))))))
(s' (all x (((x has (that ((as-body-of x) strong))) @ e5)
  => (x ((attr well) control) (as-body-of x)))))
(s' (all x ((some y (((x ((attr often) watch) y) @ e5) and ((y sport-game) @ e5)))
  => (x is (k tired)))))
(s' (all x ((some y (some z (((((x find y) @ e5) and ((y alternative-of z) @ e5)) @ e5) and ((z is (k sport)) @ e5))))
  => (x is (k tired)))))
(s' (all x ((some y (((x ((attr seldom) do) y) @ e5) and ((y sport) @ e5)))
  => (x ((attr easy) get) (k ill)))))
(s' (all x (((x ((attr good) parents) aba) @ e5);;;;aba
  => (x is (k rich)))))
(s' (all x ((some y (some z ((((that (x play z)) with y) @ e5) and ((y children) @ e5))))
  => (x is (k tired)))))
(s' (all x (((x is (k divorced)) @ e5)
  => (x is (k rich)))))
;;;;fixed scope:
(s' (all x ((some y (some z ((((that (x ((attr seldom) play) z)) with y) @ e5) and ((y children) @ e5))))
  => (some y ((x at y) and (y ((attr high-position-of) company)))))))
(s' (all x (((not (x is (k social))) @ e5)
  => (some z ((that ((x bring z) and (z food))) in-order (k work))))))
(s' (all x (((x is (k tired)) @ e5)
  => (some y ((x ask-for y) and (y leave))))))
(s' (all x ((some y (((x has y) @ e5) and ((y family) @ e5)))
  => (x ((attr bad) parent) aba))));;;;aba


(s' (all x ((((((not (x is-happy)) and (not (x is-healthy))) and (not (x live-alone))) and (not (x at-rainy))) and (not (x busy-for-work)))
  => (x  default))))

(s' (all x ((some y (((x love y) and (y sport)) and (x default)))
  => (x has (that ((as-body-of x) strong))))))
(s' (all x (((x has (that (health bad))) and ((((not (x is-happy)) and (not (x live-alone))) and (not (x at-rainy))) and (not (x busy-for-work))))
  => (x feel (k sad)))))
;;;;fixed scope:
(s' (all x ((some y ((x has (that (y children))) and ((((not (x is-happy)) and (not (x is-healthy))) and (not (x live-alone))) and (not (x busy-for-work)))))
  => (some y (some z (((that (x play z)) with y) and (y children)))))))
;;;;fixed scope:
(s' (all x ((some y (((that (x in-relationship)) with y) and (((not (x is-happy)) and (not (x is-healthy))) and (not (x live-alone)))))
  => (some y (x ((attr well) treat) y)))))
(s' (all x (((x ((attr often) exercise) aba) and (((not (x is-healthy)) and (not (x at-rainy))) and (not (x busy-for-work))));;;;aba
  => (x has (that ((as-body-of x) strong))))))
(s' (all x ((some y (((x love y) and (y junk-food)) and ((((not (x is-happy)) and (not (x live-alone))) and (not (x at-rainy))) and (not (x busy-for-work)))))
  => (x has (that (health bad))))))
(s' (all x ((some y (((x love y) and (y salad)) and (((not (x is-healthy)) and (not (x live-alone))) and (not (x busy-for-work)))))
  => (x ((attr well) control) (as-body-of x)))))
(s' (all x (((x is (k hurt)) and (x default))
  => (x feel (k inconvinient)))))
(s' (all x ((some z (((x has z) and (z ((attr chronic) ill) aba)) and ((not (x live-alone)) and (not (x busy-for-work)))));;;;aba
  => (x feel (k sad)))))
(s' (all x ((some y (((x ((attr often) at) y) and (y home)) and ((((not (x is-happy)) and (not (x is-healthy))) and (not (x live-alone))) and (not (x busy-for-work)))))
  => (not (x is (k social))))))
(s' (all x (((x is (k social)) and ((((not (x is-happy)) and (not (x is-healthy))) and (not (x live-alone))) and (not (x at-rainy))) )
  => (x has  (that ((k (plur friends)) a-lot))))))
(s' (all x ((some y (((x ((attr casually) dress) y) and (y clothes)) and (((not (x is-happy)) and (not (x live-alone))) and (not (x busy-for-work)))))
  => (not (x at-work)))))
(s' (all x ((some y (((x ((attr delicately) dress) y) and (y clothes)) and ((((not (x is-happy)) and (not (x live-alone))) and (not (x at-rainy))) and (not (x busy-for-work)))))
  => (x buy (that ((k (plur clothes)) more))))))
;;;;fixed scope:
(s' (all x (((not (x love (that (x wet)))) and (((not (x is-happy)) and (not (x at-rainy))) and (not (x busy-for-work))))
  => (some y ((x ((attr often) at) y) and (y home))))))
(s' (all x (((x is (k student)) and ((((not (x is-happy)) and (not (x is-healthy))) and (not (x live-alone))) and (not (x busy-for-work))))
  => (x is (k tired)))))
;;;;fixed scope:
(s' (all x ((some y (((x love y) and (y diy)) and (((not (x is-happy)) and (not (x is-healthy))) and (not (x busy-for-work)))))
  => (some y ((x do y) and (y ((attr heavy) job) aba))))));;;;aba
(s' (all x ((some y (((x love y) and (y cook)) and (x default)))
  => (some z (((that (x cook)) at z) and (z home))))))
(s' (all x ((some z (((x has z) and (z ((attr broken) items) aba)) and (((not (x live-alone)) and (not (x at-rainy))) and (not (x busy-for-work)))));;;;aba
  => (x feel (k sad)))))
(s' (all x ((some y (((x has y) and (y ((attr new) house) aba)) and ((((not (x is-happy)) and (not (x live-alone))) and (not (x at-rainy))) and (not (x busy-for-work)))));;;;aba
  => (x is (k rich)))))
(s' (all x ((some y (some z (((((that (x do z)) with y) and (z sport)) and (x friend y)) and ((((not (x is-happy)) and (not (x is-healthy))) and (not (x live-alone))) and (not (x at-rainy))))))
  => (x has (that ((as-body-of x) strong))))))
(s' (all x (((x has (that ((as-body-of x) strong))) and (( (not (x is-healthy)) and (not (x at-rainy))) and (not (x busy-for-work))))
  => (x ((attr well) control) (as-body-of x)))))
(s' (all x ((some y (((x ((attr often) watch) y) and (y sport-game)) and ((((not (x is-happy)) and (not (x live-alone))) and (not (x at-rainy))) and (not (x busy-for-work)))))
  => (some u ((x play u) and (u sport-video-games))))))
(s' (all x ((some y (some z ((((x find y) and (y alternative-of z)) and (z is (k sport))) and ((((not (x is-happy)) and (not (x live-alone))) and (not (x at-rainy))) and (not (x busy-for-work))))))
  => (some u ((x play u) and (u sport-video-games))))))
(s' (all x ((some y (((x ((attr seldom) do) y) and (y sport)) and ((((not (x is-happy)) and (not (x is-healthy))) and (not (x live-alone))) and (not (x busy-for-work)))))
  => (x ((attr easily) get) (k ill)))))

(s' (all x ((some y ((y take-care-of x) and ((not (x live-alone)) and (not (x is-healthy)))))
  => (x ((attr quickly) recover)))))
(s' (all x (((x feel (k sad)) and ((not (x live-alone)) and (not (x at-rainy))))
  => (some y ((x play y) and (y video-games))))))
(s' (all x (((x ((attr good) parents) aba) and (not (x busy-for-work)));;;;aba
  => (x is (k kind-person)))))
(s' (all x (((x is (k divorced)) and (((not (x is-healthy)) and (not (x at-rainy))) and (not (x busy-for-work))))
  => (x feel (k sad)))))
(s' (all x ((x ((attr a-lot) travel))
  => (x is (k planner)))))
;;;;fixed scope:
(s' (all x ((some z ((x ((attr seldom) at) z) and (z home)))
  => (some z (not (((that (x eat)) at z) and (z home)))))))
(s' (all x ((((that (x exercise)) at y) and (y home))
  => (x ((attr easily) get) (k hurt)))))
(s' (all x ((x ((attr well) control) (as-body-of x))
  => (some z (((that (x cook)) at z) and (z home))))))
(s' (all x ((some y ((x ((attr a-lot) eat) y) and (y food)))
  => (x is (k fat)))))
(s' (all x ((some z ((x order z) and (z delivery)))
  => (x is (k lazy)))))
(s' (all x ((x has (that (health bad)))
  => (not (x do (k sport))))))
(s' (all x ((some z ((((that ((x bring z) and (z food))) in-order (k work)) and (z food)) and (x default)))
  => (x is (k easy-going)))))
(s' (all x ((x ((attr quickly) recover) aba);;;;aba
  => (some y (not ((x need y) and (medicine y)))))))
(s' (all x ((x feel-inconvinient)
  => (x is (k lazy)))))
(s' (all x ((some y ((x ask-for y) and (y leave)))
  => (x rest))))
(s' (all x ((x take-care-of x)
  => (x feel (k sad)))))
(s' (all x (((that (x has (illness-of x))) get (k worse))
  => (x feel (k pain)))))
(s' (all x (((not (x is (k social))) and (((not (x is-happy)) and (not (x live-alone))) and (not (x busy-for-work))))
  => (some y ((x play y) and (y video-games))))))
(s' (all x (((x has  (that ((k (plur friends)) a-lot))) and (((not (x is-happy)) and (not (x is-healthy))) and (not (x live-alone))))
  => (x is (k smoker)))))
(s' (all x ((some y ((x fan-of y) and (y social-network)))
  => (some z ((x play z) and (z video-games))))))
(s' (all x ((some z (((that (x party)) at z) and (z home)))
  => (x is (k smoker)))))
(s' (all x (((not (x at-work)) and (not (x at-rainy)))
  => (x is (k poor)))))
(s' (all x (((x buy (that ((k (plur clothes)) less))) and (not (x is-happy)))
  => (some y ((that (x in-relationship)) with y)))))
(s' (all x (((x dress z) and (z suit))
  => (x is (k rich)))))
(s' (all x ((some y ((x has y) and (y ((attr good) grade) aba)));;;;aba
  => (some z ((x love z) and (z reading))))))
(s' (all x (((x is (k tired)) and ((not (x is-healthy)) and (not (x busy-for-work))))
  => (x ((attr easily) get) (k ill)))))
(s' (all x ((some y (((x do y) and (y ((attr heavy) job) aba)) and (not (x is-happy))));;;;aba
  => (x ((attr easily) get) (k hurt)))))
(s' (all x ((x is (k designer))
  => (some z ((x love z) and (z reading))))))
(s' (all x ((x ((attr healthy) eat) aba);;;;aba
  => (x has (that ((as-body-of x) strong))))))


;;;;fixed scope:
(s' (all x ((some y (((x has y) and (y family)) and ((not (x live-alone)) and (not (x busy-for-work)))))
  => (some y (x has (that (y children)))))))
(s' (all x ((some y (((x at y) and (y ((attr high-position-of) company))) and (not (x is-happy))))
  => (x ((attr easily) get) (k ill)))))
(s' (all x ((x ((attr easily) get) (k ill))
  => (some y ((x ((attr easy) get) y) and ((that (y ill)) chronic))))))
(s' (all x ((x is (k fat))
  => (some y ((x ((attr easy) get) y) and ((that (y ill)) chronic))))))
(s' (all x ((not (x do (k sport)))
  => (x ((attr easily) get) (k ill)))))
(s' (all x ((x rest)
  => (some y ((x play y) and (y video-games))))))
(s' (all x ((x is (k poor))
  => (some z (((that (x cook)) at z) and (z home))))))
(s' (all x ((some z ((x love z) and (z reading)))
  => (some u ((x ((attr often) at) u) and (u home))))))



;;rules known by me
;
; (s' (all x ((some z ((x order z) and (z delivery)))
;   => ((that  (x order z)) knownbyme))))

;;;;fixed scope:
(s' (all x ((some y ((x buy y) and (y ((attr a-lot) medicine))))
  => ((that (some y ((x buy y) and (y ((attr a-lot) medicine))))) knownbyme))))
;;;;fixed scope:
(s' (all x ((some y (some z (((that (x  play z)) with y) and (y children))))
  => ((that (some y (some z (((that (x  play z)) with y) and (y children))))) knownbyme))))
;;;;fixed scope:
(s' (all x ((some y (some z (((that (x ((attr seldom) play) z)) with y) and (y children))))
  => ((that (some y (some z (((that (x ((attr seldom) play) z)) with y) and (y children))))) knownbyme))))
;;;;fixed scope:
(s' (all x ((some y (x ((attr well) treat) y))
  => ((that (some y (x ((attr well) treat) y))) knownbyme))))
;;;;fixed scope:
; (s' (all x ((some z ((x order z) and (z delivery)))
;   => ((that (some z ((x order z) and (z delivery)))) knownbyme))))
;;;;fixed scope:
(s' (all x ((some z (((that (x cook)) at z) and (z home)))
  => ((that (some z (((that (x cook)) at z) and (z home)))) knownbyme))))
;;;;fixed scope:
(s' (all x ((some y (((that (x work)) at y) and (y home)))
  => ((that (some y (((that (x work)) at y) and (y home)))) knownbyme))))
(s' (all x ((not (x is (k smoker)))
  => ((that (not (x is (k smoker)))) knownbyme))))
(s' (all x ((x buy (that ((k (plur clothes)) less)))
  => ((that (x buy (that ((k (plur clothes)) less)))) knownbyme))))
(s' (all x ((all z (not ((x required z) and (z uniform))))
  => ((that (not ((x required z) and (z uniform)))) knownbyme))))
(s' (all x ((x buy (that ((k (plur clothes)) more)))
  => ((that (x buy (that ((k (plur clothes)) more)))) knownbyme))))
;;;;fixed scope:
(s' (all x ((some y ((x at y) and (y sunny-day)))
  => ((that (some y ((x at y) and (y sunny-day)))) knownbyme))))
;;;;fixed scope:
(s' (all x ((some z ((x has z) and (z cars)))
  => ((that (some z ((x has z) and (z cars)))) knownbyme))))
;;;;fixed scope:
(s' (all x ((some z ((that ((x has z) and (z time))) in-order (that (do (k diy)))))
  => ((that (some z ((that ((x has z) and (z time))) in-order (that (do (k diy)))))) knownbyme))))
(s' (all x ((x is (k designer))
  => ((that (x is (k  designer))) knownbyme))))
(s' (all x ((x ((attr healthy) eat) aba);;;;aba
  => ((that (x ((attr healthy) eat) aba)) knownbyme))));;;;aba
(s' (all x ((x is (k vegetrian))
  => ((that (x is (k vegetrian))) knownbyme))))
;;;;fixed scope:
(s' (all x ((some u ((x play u) and (u sport-video-games)))
  => ((that (some u (some u ((x play u) and (u sport-video-games))))) knownbyme))))
(s' (all x ((x is (k kind-person))
  => ((that (x is (k kind-person))) knownbyme))))
(s' (all x ((x is (k planner))
  => ((that (x is (k planner))) knownbyme))))
;;;;fixed scope:
(s' (all x ((some z (not (((that (x eat)) at z) and (z home))))
  => ((that (some z (not (((that (x eat)) at z) and (z home))))) knownbyme))))
(s' (all x ((x ((attr easily) get) (k hurt))
  => ((that (x ((attr easily) get) (k hurt))) knownbyme))))
(s' (all x ((x is (k lazy))
  => ((that (x is (k lazy))) knownbyme))))
(s' (all x ((x is (k fat))
  => ((that (x is (k fat))) knownbyme))))
(s' (all x ((not (x do (k sport)))
  => ((that (not (x do (k sport)))) knownbyme))))
;;;;fixed scope:
(s' (all x ((some y (not ((x need y) and (medicine y))))
  => ((that (some y (not ((x need y) and (medicine y))))) knownbyme))))


(s' (all x ((x feel (k pain))
  => ((that (x feel (k pain))) knownbyme))))
(s' (all x ((x rest)
  => ((that (x rest)) knownbyme))))
(s' (all x ((x is (k poor))
  => ((that (x is (k poor))) knownbyme))))
(s' (all x ((x is (k smoker))
  => ((that (x is (k smoker))) knownbyme))))
;;;;fixed scope:
(s' (all x ((some y (not ((that (x in-relationship)) with y)))
  => ((that (some y (not ((that (x in-relationship)) with y)))) knownbyme))))
;;;;fixed scope:
(s' (all x ((some z ((x love z) and (z reading)))
  => ((that (some z ((x love z) and (z reading)))) knownbyme))))
(s' (all x ((x ((attr easily) get) (k ill))
  => ((that (x ((attr easily) get) (k ill))) knownbyme))))
(s' (all x ((x ((attr bad) parent) aba);;;;aba
  => ((that (x ((attr bad) parent) aba)) knownbyme))));;;;aba


;;conditon known by me
(s' (all x ((x is-happy) => ((that (x is-happy)) knownbyme))))
(s' (all x ((x is-healthy) => ((that (x is-healthy)) knownbyme))))
(s' (all x ((x at-rainy) => ((that (x at-rainy)) knownbyme))))
(s' (all x ((x busy-for-work) => ((that (x busy-for-work)) knownbyme))))
(s' (all x ((x live-alone) => ((that (x live-alone)) knownbyme))))
