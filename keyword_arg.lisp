


(defun make-sundae (name &key (ice-cream 'vanilla)
                              (syrup 'hot-fudge)
                              nuts
                              cherries
                              whipped-cream)
 (list 'sundae
       (list 'for name)
       (list ice-cream 'with syrup 'syrup)
       (list 'toppings '=
        (remove nil (list (and nuts 'nuts)
                          (and cherries 'cherries)
                          (and whipped-cream 'whipped-cream))))))
