;; flx-ido completion system, recommended by Projectile
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
(setq ido-use-faces nil)
;; change it if you have a fast processor.
(setq flx-ido-threshhold 1000)
