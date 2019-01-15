class AttendanceForm < ApplicationRecord
  has_many :attendances

  enum name_sel: { 名前を必須にする: 0, 名前を必須にしない: 1 }
  enum kana_sel: { かなを必須にする: 0, かなを必須にしない: 1 }
  enum postcode_sel: { 郵便番号を必須にする: 0, 郵便番号を必須にしない: 1 }
  enum address_sel: { 住所を必須にする: 0, 住所を必須にしない: 1 }
  enum phonenumber_sel: { 電話番号を必須にする: 0, 電話番号を必須にしない: 1 }
  enum email_sel: { メールアドレスを必須にする: 0, メールアドレスを必須にしない: 1 }
  enum allergy_sel: { アレルギーを必須にする: 0, アレルギーを必須にしない: 1 }
  enum message_sel: { メッセージを必須にする: 0, メッセージを必須にしない: 1 }
end
