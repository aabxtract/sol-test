;; Simple Storage Contract
;; A basic contract for storing and retrieving data

;; Data Variables
(define-data-var stored-value uint u0)
(define-data-var stored-text (string-ascii 100) "")

;; Data Maps
(define-map user-values principal uint)
(define-map user-messages principal (string-ascii 200))

;; Public Functions

;; Store a number value (global)
(define-public (set-value (value uint))
  (begin
    (var-set stored-value value)
    (ok true)
  )
)

;; Store a text value (global)
(define-public (set-text (text (string-ascii 100)))
  (begin
    (var-set stored-text text)
    (ok true)
  )
)

;; Store a number for the caller
(define-public (set-my-value (value uint))
  (begin
    (map-set user-values tx-sender value)
    (ok true)
  )
)

;; Store a message for the caller
(define-public (set-my-message (message (string-ascii 200)))
  (begin
    (map-set user-messages tx-sender message)
    (ok true)
  )
)

;; Read-Only Functions

;; Get the global stored value
(define-read-only (get-value)
  (var-get stored-value)
)

;; Get the global stored text
(define-read-only (get-text)
  (var-get stored-text)
)

;; Get a user's stored value
(define-read-only (get-user-value (user principal))
  (default-to u0 (map-get? user-values user))
)

;; Get a user's stored message
(define-read-only (get-user-message (user principal))
  (default-to "" (map-get? user-messages user))
)

;; Get the caller's stored value
(define-read-only (get-my-value)
  (default-to u0 (map-get? user-values tx-sender))
)

;; Get the caller's stored message
(define-read-only (get-my-message)
  (default-to "" (map-get? user-messages tx-sender))
)
