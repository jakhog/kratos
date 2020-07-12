package courier

import (
	"time"

	"github.com/gofrs/uuid"
)

type MessageStatus int

const (
	MessageStatusQueued MessageStatus = iota + 1
	MessageStatusFailing
	MessageStatusSent
	MessageStatusAbandoned
)

type MessageType int

const (
	MessageTypeEmail MessageType = iota + 1
)

type Message struct {
	ID        uuid.UUID     `json:"-" faker:"-" db:"id"`
	Status    MessageStatus `json:"-" db:"status"`
	Type      MessageType   `json:"-" db:"type"`
	Recipient string        `json:"-" db:"recipient"`
	Body      string        `json:"-" db:"body"`
	Subject   string        `json:"-" db:"subject"`

	SendDeadline        *time.Time     `json:"-" db:"send_deadline"`
	LastSendAttemptedAt *time.Time     `json:"-" db:"last_send_attempted_at"`
	NextSendInterval    *time.Duration `json:"-" db:"next_send_interval"`

	// CreatedAt is a helper struct field for gobuffalo.pop.
	CreatedAt time.Time `json:"-" faker:"-" db:"created_at"`
	// UpdatedAt is a helper struct field for gobuffalo.pop.
	UpdatedAt time.Time `json:"-" faker:"-" db:"updated_at"`
}

func (m Message) TableName() string {
	return "courier_messages"
}
