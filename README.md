## テーブル設計

### users テーブル

| Column             | Type   | Options                   |
| :----------------- | :----- | :------------------------ |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| birthday           | date   | null: false               |

#### Association

- has_many :objectives
- has_many :rules
- has_many :success
- has_one  :likes

<br>

### objectives テーブル

| Column      | Type       | Options                        |
| :---------- | :--------- | :----------------------------- |
| user        | references | null: false, foreign_key: true |
| title       | string     | null: false                    |
| category_id | integer    | null: false                    |
| wish        | text       | null: false                    |
| outcome     | text       | null: false                    |
| obstacle    | text       | null: false                    |
| plan        | text       | null: false                    |

#### Association

- belongs_to :user

<br>

### rules テーブル

| Column | Type       | Options                        |
| :----- | :--------- | :----------------------------- |
| user   | references | null: false, foreign_key: true |
| if     | text       | null: false                    |
| then   | text       | null: false                    |

#### Association

- belongs_to :user

<br>

### successes テーブル

| Column    | Type       | Options                        |
| :-------- | :--------- | :----------------------------- |
| user      | references | null: false, foreign_key: true |
| success   | text       | null: false                    |
| day       | date       | null: false                    |
| status    | integer    | null: false                    |

#### Association

- has_many :likes
- belongs_to :user

<br>

### likes テーブル

| Column    | Type       | Options                        |
| :-------- | :--------- | :----------------------------- |
| user      | references | null: false, foreign_key: true |
| success   | references | null: false, foreign_key: true |

#### Association

- belongs_to :user
- belongs_to :success