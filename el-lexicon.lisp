;; this file defines a set of constants for which we know their type
;; when they are used in a given EL formula. This is the EL lexicon.
;; It should be expanded as necessary with time.

;; the information defined here is loaded into the KB that stores
;; lexical knowledge in the file el-lexical-knowledge.

(in-package epilog)

(defparameter *lexicon-kb* nil)

;; Hash table that contains the grammar rules for the known constants
;; and from those loaded in the lexicon kb (see above)
(defparameter *lexical-rules* nil)

(defparameter *fof-lexical-rules* nil)

(defparameter *type-predicates* nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Reserved symbols: the following symbols, in addition to being of    ;;
;; any lexical type listed in +open-categories+, also belong to        ;;
;; the special categories listed below.                                ;;
;; When you add or remove some of these constants, change accordingly  ;;
;; the function "lexical-rules".                                       ;;
;; Also, when more then one symbol can be used to mean the same thing  ;;
;;  (i.e., "and" and "&" can both be used to mean the logical operator ;;
;;  "AND") the first in the list is the default representative of its  ;;
;;  category.                                                          ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defconstant +lambda+ 'L)
(defconstant +forall+ 'All)
(defconstant +no+ 'no)
(defconstant +exists+ 'Some)
(defconstant +many+ 'many)
(defconstant +most+ 'most)
(defconstant +few+ 'few)
(defconstant +the+ 'the)
(defconstant +or+ 'or)
(defconstant +and+ 'and)
(defconstant +xor+ 'xor)
(defconstant +equiv+ '<=>)
(defconstant +imply+ '=>)
(defconstant +lb+ '|(|)
(defconstant +rb+ '|)|)
(defconstant +not+ 'not)
(defconstant +nec+ 'nec)
(defconstant +poss+ 'poss)
(defconstant +generic-subst-sort+ 'subst)

(defconstant +lambda-sym+ (list +lambda+))
(defconstant +record-sym+ '(|$|))
(defconstant +lb-sym+ (list +lb+))
(defconstant +rb-sym+ (list +rb+))
(defconstant +dots-sym+ '(|...|))
(defconstant +true-wff+ '(true))
(defconstant +false-wff+ '(false))
;;(defconstant +quotation-sym+ '(quote))

(defconstant +metavariable-sorts+
  '(wff func pred variable quant metavariable term
    ;; operators
    episodic-operator causal-operator
    wff-modifier-forming-op
    wff-reification-op
    pred-modifier-forming-op
    pred-reification-op
    ;; modifiers
    pred-modifier wff-modifier))

(defconstant +substquantifier-sorts+
  (append +metavariable-sorts+ (list +generic-subst-sort+)))

(defconstant +sorts+
  (append +metavariable-sorts+
          '(episode event set time number real integer int string propos)))

(defconstant +equality+ '(= eq))

(defconstant +preds+
    (append +sorts+
	    '(tell kiss same-time draw-out full-of pull-out
	      clear-snow orient during see before after after-1 after-0 meet
	      happy clever wear believe believe-likely want want1 want2 say
	      says-to think eat hungry fall open1 love member-of in-danger
	      pretty girl gt= gt lt less-than red aware-of outside-of
	      inside-of man boy know mean snarl-at wolf > equal = string=
	      string-contain give fierce hate alive drink trains-manager
	      at-most-before exactly-after part-of subset-of small
	      attached-to el-op el-pred el-func el-pred-mod from-dir toward
	      against-target dangerous on put white animal predatory old
	      extreme sodium with-accompaniment human computer familiarwith
	      has-age-in-year birth-date-of date-of-birth have name thick-bodied
	      film.n car.n
	      ;;preds added on Dec 1
	      love sport has bad children in-relationship junk-food often home 
	      social casually dress clothes delicately wet student cook house 
	      sport friend watch sport-game find alternative-of seldom friends 
	      buy less heavy job high-position-of company new exercise salad 
	      strong take-care-of divorced tired chronic ill feel sad 
	      family at-work good parents hurt well treat food diy 
	      sport-video-games party broken a-lot healthy quickly easy easily
	      
	      ;;item preds
	      tennis cigarette toy-truck flower energy burger salad-dressing 
	      band-aid pain-killer video-game amazon-gift-card jeans ear-rings 
	      umbrella pen screw-driver chopper wood-glue carpet

	      )))

(defconstant +terms+ '(we i i.pron we.pron johnston.n it.pron there.pron
		       marriage.n sex.n one.n diameter.n
		       line.n trailer.n filling.n two.n task.n
		       purchase.n fiat.n you.pron image.n papier-mache.n
		       nobody.pron they.pron magic.n theory.n
		       Buddhism.name mound.n radio-tv.n family-button.n
		       feeding-pain.n set-D.n family.n tooth.n
		       Penny.name she.pron
		       ;;terms added on Dec 1
		       health
		       ;;iterm terms:
		       t1 c1 tt1 f1 ed1 b1 ls1 ba1 pk1 vg1 agc1 j1 er1 u1 p1 sd1 cp1 
		       wg1 ct1
		       ))
(defconstant +plur-mod+ 'plur)

(defconstant +pred-modifier-sym+
  (list 'extremely 'very +plur-mod+ 'coll 'sort-of 'former 'in-manner 'ly
        'nearly 'almost 'be 'make 'quite 'able-to 'commutative 'kindof 'major
        'pasv 'use-as 'highly))

(defconstant +wff-modifier-forming-op-sym+ '(adv-s adv-e adv-p adv-f))

;; The ones in +quantifier-modifier-sym+ are added also to +pred-modifier-sym+
(defconstant +quantifier-modifier-sym+ '(nearly almost))

(defconstant +pred-modifier-forming-op-sym+
    '(adv-a na adv-q adv-dest coll-of nn attr))
(defconstant +pred-modifier-forming-op-on-pred-sym+
    '(in-order-to))
;; added by LKS Sep 16/11:
(defconstant +pred-modifier-forming-op-on-wff-sym+
    '(in-order-that))
;; end of addition by LKS
(defconstant +pred-modifier-forming-op-on-term-sym+
    '(num to-degree about))

;;(defconstant +multi-pred-modifier-sym+ '(mos rel))
(defconstant +kind-op+ 'K)
(defconstant +pred-reification-op-sym+ (list +kind-op+ 'K1 'Ka 'To))
(defconstant +wff-reification-op-sym+ '(that whether Ke YN-q))

(defconstant +root-type+ 'entity)

(defconstant +quantifier-sym+
  (list +forall+ +exists+ +the+ +most+ +many+ +no+ +few+ 'E! 'wh))
(defconstant +fof-quantifier-sym+ (list +forall+ +exists+))

(defconstant +relative-quantifier-sym+ '(fquant))
(defconstant +absolute-quantifier-sym+ '(nquant))

(defconstant +substitutional-quantifier-sym+
  (list +forall+ +exists+ 'wh))

(defconstant +or-sym+ (list +or+ '\|))
(defconstant +and-sym+ (list +and+ '\&))
(defconstant +xor-sym+ (list +xor+))
(defconstant +equiv-sym+ (list +equiv+ '<-> 'iff 'equiv))
(defconstant +imply-sym+ (list +imply+ 'implies '->))
(defconstant +qquote-sym+ '(qq qquote quote))
(defconstant +negation-sym+ (list +not+ '~))

(defconstant +wff-modifier-sym+
    (append (list +nec+ +poss+)
	    ;;<---------mine (karl)----------------------------------------------->
	    '(probably perhaps past perf futr pres prog possible-that necessary-that
	      would-be-that over-six-years two-or-three-years-ago just)
	    +negation-sym+))

(defconstant +episodic-op-sym+ '(* ** @))
(defconstant +causal-op-sym+ '(because))
(defconstant +subj-adding-op-sym+ '(have-as))


;; Pertaining to probabilistic rules
(defconstant +amplification-rule-sym+ '(:a))
(defconstant +naive-bayes-rule-sym+ '(:b))
(defconstant +categorization-rule-sym+ '(:c))
(defconstant +algprob-binary-op-sym+  '(- + ^* /))

