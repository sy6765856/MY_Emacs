;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Filename:      .emacs
;;                
;; Copyright (C) 2010,  admirestator
;; Version:       
;; Author:        admirestator <admirestator@gmail.com>
;; Created at:    Thu Apr 29 16:40:59 2010
;;                
;; Description:   Customize configuration file of emacs editor,
;;                which could be used in emacs 22.3.1 or later
;;                in different distributions of Linux.
;; 
;; Ustage:        1. Put this file in you home directory as ~/.emacs.
;;                Load path is ~/.emacs.d/plugins/ ,which includes
;;                all the plugins contained in this configuration.
;;
;;                2. Put the directory .emacs.d/ in you home directory
;;                as ~/.emacs.d/ , then enjoy youself in the most 
;;                powerful text editor in the world, Emacs!
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;####################################################################
;;************************  	常用配置部分	**********************
;;####################################################################
(setq diary-file "~/emacs/diary")
(setq diary-mail-addr "admirestator@gmail.com")
(add-hook 'diary-hook 'appt-make-list)
;;	31,	设置个人信息
(setq user-full-name "admirestator")
(setq user-mail-address "admirestator@gmail.com") 


;;	1,	自动补全代码插件
(add-to-list 'load-path"~/.emacs.d/plugins")
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/")

;;	2,	显示日期,时间以及其他相关功能
;;(setq display-time-24hr-format t)
;;(setq display-time-day-and-date t)
;;(display-time)


;;时间显示设置
;;启用时间显示设置，在minibuffer上面的那个杠上（忘了叫什么来着）
(display-time-mode 1)
;;时间使用24小时制
(setq display-time-24hr-format t)
;;时间显示包括日期和具体时间
(setq display-time-day-and-date t)
;;时间栏旁边启用邮件设置
(setq display-time-use-mail-icon t)
;;时间的变化频率，单位多少来着？
(setq display-time-interval 10)
;;	19,	显示时间，格式如下
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t) 

(setq todo-file-do "~/emacs/todo/do")
(setq todo-file-done "~/emacs/todo/done")
(setq todo-file-top "~/emacs/todo/top")




;; 调用linum.el(line number)来显示行号：
;;(add-to-list 'load-path"~/.emacs.d/plugins")
(require 'linum)
(global-linum-mode 1)

;;4. 这个显示行号,内置的。新加内容
;;(global-linum-mode 1)
;;(global-linum-mode t)

;;5,不要生成临时文件
(setq-default make-backup-files nil)

;;6,设置中文语言环境
;;(set-language-environment 'Chinese-GB)

;;	7,	写文件的编码方式
;;(set-buffer-file-coding-system 'gb2312)

;;	8,	新建文件的编码方式
(setq default-buffer-file-coding-system 'gb2312)

;;	9,	终端方式的编码方式
(set-terminal-coding-system 'utf-8)

;;	10,	键盘输入的编码方式
;;(set-keyboard-coding-system 'gb2312) 
    
;;	11,	读取或写入文件名的编码方式
(setq file-name-coding-system 'utf-8) 

;;	12,	打开就启用 text 模式
(setq default-major-mode 'text-mode)

;;	13,	禁用启动信息
;;(setq inhibit-startup-message t) 
    
;;	14,	语法高亮
(global-font-lock-mode t) 

;;	15,	打开图片显示功能
;;(auto-image-file-mode t) 
    
;;	16,	以 y/n 替代 yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;;	17,	显示行列号
(column-number-mode t) 
    
;;	18,	显示括号匹配
(show-paren-mode t) 


   
;;	20,	隐藏工具栏
;;(tool-bar-mode nil) 
    
;;	21,	隐藏滚动条。实际上再本机上的emacs-2.23是没有这个模式的。
;;(scroll-bar-mode nil) 
;;去掉工具栏
;;(tool-bar-mode nil)
;;去掉菜单栏，我将F10绑定为显示菜单栏，万一什么东西忘了，需要菜单栏了可以摁F10调出，再摁F10就去掉菜单
(menu-bar-mode nil)
    
;;	22,	光标靠近鼠标指针时，让鼠标指针自动让开
;;(mouse-avoidance-mode 'animate) 
    
;;	23,	不要在鼠标光标出插入
;;(setq mouse-yank-at-point t) 
    
;;	24,	高亮显示选中的区域
(transient-mark-mode t) 
    
;;	25,	支持emacs和外部程序的拷贝粘贴
(setq x-select-enable-clipboard t) 
    
;;	26,	在标题栏提示当前位置
(setq frame-title-format "Fiona@%b")
 
;;	27,	显示80列就换行
(setq default-fill-column 80) 
    
;;	28,	禁止终端响铃
(setq visiable-bell t) 
    
;;	29,	设置tab为4个空格的宽度
(setq default-tab-width 4)
 
;;	30,	代码折叠
(load-library "hideshow")
(add-hook 'java-mode-hook 'hs-minor-mode)
(add-hook 'perl-mode-hook 'hs-minor-mode)
(add-hook 'php-mode-hook 'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode) 



;;	32,	字体
(set-default-font "10x20")

;;  33, 约会提醒
(setq appt-issue-message t)

;;******************加载auto-header.el文件,自动添加文件头************
(add-to-list 'load-path "~/.emacs.d/plugins/")
(require 'auto-header)
;;加载auto-header.el文件,自动添加文件头
(require 'auto-header)
;; 设置文件头中的姓名
(setq header-full-name "admirestator")
;; 设置邮箱
(setq header-email-address "admirestator@gmail.com")


;; 设置每次保存时要更新的项目
(setq header-update-on-save 
    '(  filename
        modified
        counter
        copyright))
;; 设置文件头的显示格式
(setq header-field-list 
'(  filename  ;;文件名
    blank     ;空行，下同
    copyright ;版权
    version
    author    ;作者
    created   ;创建人
    blank
    description   ;描述
    blank
    ;;modified_by ;更改者
    blank
    ;;status  ;状态，是否发布
    ;;更新
    ;;blank
  ))
;;***********************************************************************

;; 指针颜色设置为白色
;;(set-cursor-color "white")
;; 鼠标颜色设置为白色
;;(set-mouse-color "white")
;; 设置背景颜色和字体颜色
;;(set-foreground-color "white")
;;(set-background-color "darkblue")
;; 设置另外一些颜色：语法高亮显示的背景和主题，区域选择的背景和主题，二次选择的背景和选择
(set-face-foreground 'highlight "white")
(set-face-background 'highlight "blue")
(set-face-foreground 'region "cyan")
(set-face-background 'region "blue")
(set-face-foreground 'secondary-selection "skyblue")
(set-face-background 'secondary-selection "darkblue")
;;设置日历的一些颜色
(setq calendar-load-hook
'(lambda ()
(set-face-foreground 'diary-face "skyblue")
(set-face-background 'holiday-face "slate blue")
(set-face-foreground 'holiday-face "white")))


;;时间戳设置(time-stamp)，设定文档上次保存的信息
;;只要里在你得文档里有Time-stamp:的设置，就会自动保存时间戳
;;启用time-stamp
(setq time-stamp-active t)
;;去掉time-stamp的警告？
(setq time-stamp-warn-inactive t)
;;设置time-stamp的格式，我如下的格式所得的一个例子：<hans 05/18/2004 12:01:12>
(setq time-stamp-format "%:u %02m/%02d/%04y %02H02M02S")
;;将修改时间戳添加到保存文件的动作里。
(add-hook 'write-file-hooks 'time-stamp)

;;在文档最后自动插入空白一行，好像某些系统配置文件是需要这样的
(setq require-final-newline t)
(setq track-eol t)

;;使用C-k删掉指针到改行末的所有东西
(setq-default kill-whole-line t)

;;设定删除保存记录为200，可以方便以后无限恢复
(setq kill-ring-max 200)

;;增大使用查找函数和变量的寻找范围
(setq apropos-do-all t)

;;是用aspell程序作为Emacs的拼写检查成学 
(setq-default ispell-program-name "aspell")

;;使用narrow功能时的一个设置
(put 'narrow-to-region 'disabled nil)

;;启动Emacs自动设置为两个窗口(上下各一个)
;;(split-window-vertically)

;;改变emacs标题栏的标题
;;(setq frame-title-format "%b@vj.org")

;;允许emacs和外部其他程序的粘贴
(setq x-select-enable-clipboard t)


;;功能是将当前行设为本页第一行，同终端下的clear命令有点相似 
(defun hvj-line-to-top-of-window () 
"Move the line point is on to top of window." 
(interactive) 
(recenter 0)) 




;;中文设置 
(setq gnus-default-charset 'cn-gb-2312 
gnus-group-name-charset-group-alist '((".*" . gb2312)) 
gnus-summary-show-article-charset-alist '((1 . cn-gb-2312) (2 . big5) (3 . chinese-gbk) (4 . utf-8)) 
gnus-newsgroup-ignored-charsets '(unknown-8bit x-unknown iso-8859-1) 
gnus-group-posting-charset-alist '((".*" gb2312 (gb2312)))) 
(define-coding-system-alias 'gb18030 'gb2312) 

;;窗口设置 
(gnus-add-configuration '(article (vertical 1.0 (summary .35 point) (article 1.0)))) 

;;Group Buffer设置 
;;自动进入Topic-mode 
(add-hook 'gnus-group-mode-hook 'gnus-topic-mode) 

;;Sumarry Buffer设置 
(setq gnus-summary-line-format ":%U%R %B %s %-60=|%4L |%-20,20f |%&user-date; \n") 

;;Article Buffer设置 
;;设定要显示的头消息格式 
(setq gnus-visible-headers 
"^\\(^To:\\|^CC:\\|^From:\\|^Subject:\\|^Date:\\|^Followup-To: 
\\|^X-Newsreader:\\|^User-Agent:\\|^X-Mailer: 
\\|Line:\\|Lines:\\|Content-Type:\\|NNTP-Posting-Host\\)") 

;;自动断行，每行72个字符 
;;(add-hook 'message-mode-hook (lambda () 
;;(setq fill-column 72) 
;;(turn-on-auto-fill))) 


;;字体解码优先顺序
;;从王垠那拷过来的，不用怎么再改吧。
;;(setq font-encoding-alist
;;(append '(("MuleTibetan-0" (tibetan . 0))
;;("GB2312" (chinese-gb2312 . 0)) 
;;("JISX0208" (japanese-jisx0208 . 0)) 
;;("JISX0212" (japanese-jisx0212 . 0)) 
;;("VISCII" (vietnamese-viscii-lower . 0)) 
;;("KSC5601" (korean-ksc5601 . 0)) 
;;("MuleArabic-0" (arabic-digit . 0)) 
;;("MuleArabic-1" (arabic-1-column . 0)) 
;;("MuleArabic-2" (arabic-2-column . 0))) font-encoding-alist)) 

;;####################################################################################





;;####################################################################################
;;******************************	常用编程插件部分	******************************
;;####################################################################################

;;	1,	gdb-many-window
;;这个功能插件可以使emacs的调试界面像VC一样，有watch, stacktrace等窗口，真正实现图形化gdb.
;;在emacs中编译好程序，然后M-x gdb，连按两次ret，多窗口gdb就出来了
;;http://www.inet.net.nz/~nickrob/multi-gud.el
;;http://www.inet.net.nz/~nickrob/multi-gdb-ui.el

(add-to-list 'load-path"~/.emacs.d/plugins")
(setq gdb-many-windows t)
(load-library "multi-gud.el")
(load-library "multi-gdb-ui.el")


;;(require 'yasnippet) ;; not yasnippet-bundle
;;(yas/initialize)
;;(yas/load-directory "~/.emacs.d/plugins/")


;;***********************************	Cedet	**************************************
;;(add-to-list 'load-path "~/.emacs.d/plugins")
;;(load-file "~/.emacs.d/plugins/cedet.el")
;;(require 'cedet)
;;(require 'semantic-ia)

;; Enable EDE (Project Management) features
;;(global-ede-mode 1)
;;
;; (semantic-load-enable-excessive-code-helpers)
;; (semantic-load-enable-semantic-debugging-helpers)
;;
;; Enable SRecode (Template management) minor-mode.
;;(global-srecode-minor-mode 1)
;;************************************************************************************


;;*********************************	 Load CEDET 	**********************************
;; See cedet/common/cedet.info for configuration details.
;;(load-file "~/.cedet-1.0pre6/common/cedet.el")
 
;; Enable EDE (Project Management) features
;;(global-ede-mode 1)
 
;; Enable EDE for a pre-existing C++ project
;;(ede-cpp-root-project "NAME" :file "~/myproject/Makefile")
 
 

;; Enabling Semantic (code-parsing, smart completion) features
;; Select one of the following:
;;(setq semanticdb-project-roots 
;;(list (expand-file-name "/")))

;; * This enables the database and idle reparse engines
;;(semantic-load-enable-minimum-features)
 
;; * This enables some tools useful for coding, such as summary mode
;;  imenu support, and the semantic navigator
;;(semantic-load-enable-code-helpers)
 
;; * This enables even more coding tools such as intellisense mode
;;  decoration mode, and stickyfunc mode (plus regular code helpers)
;; (semantic-load-enable-gaudy-code-helpers)
 
;; * This enables the use of Exuberent ctags if you have it installed.
;; If you use C++ templates or boost, you should NOT enable it.
;; (semantic-load-enable-all-exuberent-ctags-support)
 
;; Enable SRecode (Template management) minor-mode.
;; (global-srecode-minor-mode 1)
;;**********************************************************************************



;;************************************	ECB调用	************************************
;;(add-to-list 'load-path "~/.ecb-2.40/")
;;(load-file "~/.ecb-2.40/ecb.el") 
;;(require 'ecb)
;;(require 'ecb-autoloads)

;;(add-to-list 'load-path "~/
;;(require 'cscope)
;;(require 'doxyacs
;;**********************************************************************************

;;##############################################################################
;;########### 	CC-mode配置  http://cc-mode.sourceforge.net/ 	################
;;##############################################################################
(require 'cc-mode)
(c-set-offset 'inline-open 0)
(c-set-offset 'friend '-)
(c-set-offset 'substatement-open 0)
:;(setq indent-tabs-mode nil)
(setq c-basic-offset 4 )
(setq default-tab-width 4)
;;(setq tab-stop-list())
(loop for x downfrom 40 to 1 do
    (setq tab-stop-list (cons(* x 4) tab-stop-list)))

;;##########################***********************##########################	
;;默认Linux内核编程风格，取自Linux内核说明文档                             ;#
(setq auto-mode-alist (cons '("/usr/src/linux.*/.*\\.[ch]$" . linux-c-mode);#
   auto-mode-alist))                                                       ;#
                                                                           ;#
(defun linux-c-mode ()                                                     ;#
  "C mode with adjusted defaults for use with the Linux kernel."           ;#
   (interactive)                                                           ;#
   (c-mode)                                                                ;#
   (c-set-style "K&R")                                                     ;#
   (setq tab-width 4) ;;默认风格是8个缩进                                  ;#
   (setq indent-tabs-mode t)                                               ;#
   (setq c-basic-offset 4))  ;;默认风格是8个缩进                           ;#
;;##########################***********************##########################	


;;c-mode或cc-mode下缩进只有4格
(add-hook 'c-mode-hook
          '(lambda ()
             (c-set-style "Stroustrup")))

;;****************************************************************
;;C/C++语言编辑策略
;;有些问题
(defun my-c-mode-common-hook()
(define-key c-mode-base-map [(f7)] 'compile)
(setq tab-width 4 indent-tabs-mode nil)
;; hungry-delete and auto-newline
(c-toggle-auto-hungry-state 1)

;;C++语言编辑策略
(defun my-c++-mode-hook()
    (setq c-basic-offset 4 )
    (setq tab-width 4 indent-tabs-mode nil)
    (c-set-style "stroustrup")
    (define-key c++-mode-map [f3] 'replace-regexp)
)
;;****************************************************************
;;############################	按键定义	################################
(define-key c-mode-base-map [(control \`)] 'hs-toggle-hiding)
(define-key c-mode-base-map [(return)] 'newline-and-indent)
(define-key c-mode-base-map [(meta \`)] 'c-indent-command)
(define-key c-mode-base-map [(tab)] 'hippie-expand)
(define-key c-mode-base-map [(tab)] 'my-indent-or-complete)
(define-key c-mode-base-map [(meta ?/)] 'semantic-ia-complete-symbol-menu)
;;(define-key c-mode-base-map [(f7)] 'compile)

(global-set-key [(control tab)] 'my-indent-or-complete)


;;[f1] was defined to the global help information
(global-set-key [f2] 'eshell) 
(global-set-key [f3] 'shell) 
;;(global-set-key [f3] 'display-line-number-mode-on)
;;(global-set-key [f4] 'other-window)
(global-set-key [(f4)] 'kill-this-buffer) 
(global-set-key [(f5)] 'speedbar)
(global-set-key [f6] 'compile)
(setq-default compile-command "make")
(global-set-key [f7] 'compile)
(global-set-key [f8] 'gdb)
(global-set-key [f9] 'previous-error)
(global-set-key [f10] 'next-error)

;;[f11] define to maximise present window
;;习惯设置，打开／关闭菜单 
(global-set-key [f12] 'menu-bar-mode) 

(global-set-key [(home)] 'beginning-of-buffer) 
(global-set-key [end] 'end-of-buffer)
;;用Emacs时常用多个窗口，窗口之间的移动很常见 
;;默认的绑定感觉不对劲，换了 
 
;;切换buffer的设置，同windows操作相识 
(global-set-key [(control o)] 'other-window)
(global-set-key [(control tab)] 'tabbar-forward) 
;;这个设置是改变outline的快捷键前缀 
;;outline主要用于编程等，目前用的不多 
(setq outline-minor-mode-prefix [(control o)]) 


;;make
'(compile-command "make")

;;预处理设置
    (setq c-macro-shrink-window-flag t)
    (setq c-macro-preprocessor "cpp")
    (setq c-macro-cppflags " ")
    (setq c-macro-prompt-flag t)
    (setq abbrev-mode t)
 )
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)


;;Create MyCppStyle
;;(defconst MyCppStyle
;;'((c-tab-always-indent . t)
;;    (c-comment-only-line-offset . 0)
;;        (c-hanging-braces-alist . ((substatement-open after)
;;            (brace-list-open)))
;;(c-cleanup-list . (comment-close-slash
;;    compact-empty-funcall))
;;(c-offsets-alist . ((substatement-open . 0)
;;    (innamespace . 0)                   ;;在namespace中不缩进
;;(case-label      . +)                   ;;case标签缩进一个c-basic-offset单位
;;(access-label . -)                      ;;private/public等标签少缩进一单位
;;(inline-open . 0)                       ;;在.h文件中写函数，括号不缩进
;;(block-open     . 0)))                  ;;在一个新块开始时不缩进
;;(c-echo-syntactic-information-p t)
;;(setq comment-start "/*"
;;    comment-end "*/")
;;        (setq indent-tabs-mode nil))


;;"My Cpp Coding Style")
;;(c-add-style "MyCppStyle" MyCppStyle)   ;;定义完自己的style，将其添加到cc-mode的style中。


;;Define own hook
;;(defun MyCppHook ()
;;(company-mode)
;;(setq indent-tabs-mode nil)
;;(setq global-hl-line-mode t)
;;c-set-style "MyCppStyle"))             ;;设置这个hook对应于MyCppStyle
;;(add-hook 'c++-mode-hook 'MyCppHook)    ;;将此hook应用于所有的c++模式。


;;最后，可以设置对于不同的文件绑定不同的模式，可以用以下语句实现：
;;set *.h and *.c and *.cpp files use c++ mode
;;(setq auto-mode-alist
;;    (cons '("\\.h$" . c++-mode) auto-mode-alist))
;;(setq auto-mode-alist
;;    (cons '("\\.c$" . c++-mode) auto-mode-alist))
;;(setq auto-mode-alist
;;(cons '("\\.cpp$" . c++-mode) auto-mode-alist))

;;自动补齐
;;(defun my-indent-or-complete ()
;;    (interactive)
;;    (if (looking-at "\\>")
;;    (hippie-expand nil)
;;    (indent-for-tab-command))
;;)

;;自动补全功能，这事从王垠的网站直接Copy过来的，引用一些他对此的说明
;;设置以下 hippie-expand 的补全方式。它是一个优先列表， hippie-expand 会优先使用表最前面的函数来补全
;;这是说，首先使用当前的buffer补全，如果找不到，就到别的可见的窗口里寻找，如果还找不到，那么到所有打开的buffer去找，如果还……那么到kill-ring里，到文件名，到简称列表里，到list，…… 当前使用的匹配方式会在 echo 区域显示。
;;特别有意思的是 try-expand-line，它可以帮你补全整整一行文字。我很多时后有两行文字大致相同，只有几个字不一样，但是我懒得去拷贝粘贴以下。那么我就输入这行文字的前面几个字。然后多按几下 M-/ 就能得到那一行。
(global-set-key [(meta ?/)] 'hippie-expand)
(setq hippie-expand-try-functions-list
'(try-expand-line
try-expand-line-all-buffers
try-expand-list
try-expand-list-all-buffers
try-expand-dabbrev
try-expand-dabbrev-visible
try-expand-dabbrev-all-buffers
try-expand-dabbrev-from-kill
try-complete-file-name
try-complete-file-name-partially
try-complete-lisp-symbol
try-complete-lisp-symbol-partially
try-expand-whole-kill))

;;hippie的自动补齐策略，优先调用了senator的分析结果：
(autoload 'senator-try-expand-semantic "senator")

;;******************************************************************************
