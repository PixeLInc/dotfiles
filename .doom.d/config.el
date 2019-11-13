(load! "+ruby") ;; Custom ruby mode. Make sure you disable ruby in init.el
(load! "+discord") ;; Discord Rich Presence
(load! "+smali") ;; Smali editing

(autoload 'smali-mode "smali-mode" "Major mode for editing and viewing smali issues" t)
(add-to-list 'auto-mode-alist '(".smali$" . smali-mode))

(setq tramp-debug-buffer t
      tramp-verbose 10)
(setq auth-sources (list "~/.authinfo"))
(discord-emacs-run "384815451978334208")
(setq default-buffer-file-coding-system 'unix)
(setq-default buffer-file-coding-system 'unix)
(setq-default default-buffer-file-coding-system 'unix)
(setq select-enable-clipboard t)

;; Rust
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)


(setq racer-cmd "~/.cargo/bin/racer")
(setq racer-rust-src-path "/home/pixel/.config/nvim/config/langs/rust/src")

(add-hook 'intero-mode-hook (lambda() (company-mode 0)))

(require 'rust-mode)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)

; make carriage returns blue and tabs green
(custom-set-faces
 '(my-carriage-return-face ((((class color)) (:background "blue"))) t)
 '(my-tab-face ((((class color)) (:background "green"))) t)
 )
; add custom font locks to all buffers and all files
(add-hook
 'font-lock-mode-hook
 (function
  (lambda ()
    (setq
     font-lock-keywords
     (append
      font-lock-keywords
      '(
        ("\r" (0 'my-carriage-return-face t))
        ("\t" (0 'my-tab-face t))
        ))))))

; make characters after column 80 purple
 (setq whitespace-style
  (quote (face trailing tab-mark)))
(add-hook 'find-file-hook 'whitespace-mode)

; transform literal tabs into a right-pointing triangle
(setq
 whitespace-display-mappings ;http://ergoemacs.org/emacs/whitespace-mode.html
 '(
   (tab-mark 9 [9654 9] [92 9])
   ;others substitutions...
   ))

; enable global clipboard copy / paste. Fuckin hell.
(global-set-key [(control shift ?w)] 'clipboard-kill-ring-save)
(global-set-key [(control shift ?y)] 'clipboard-yank)
