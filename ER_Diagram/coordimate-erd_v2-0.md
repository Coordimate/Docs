# Coordimate - Database Schema v2.0

## User

```javascript 
{
  "_id": ObjectId(user),
  "username": "casual_meeter",
  "email": "meeter@gmail.com",
  "password": "iLikeMeetingUp",
  "schedule_link": "https://coordimate.com/schedules/john_doe"
  
  "allow_location_access": false,
  
  "groups": [
    {
      "name": "kittens",
      "id": ObjectId(group),
      "notify_chat": true,
      "notify_polls": true,
      "notify_meetings": true,
      "notify_changes": true,
      "is_admin": false
    }  
  ],
  
  "external_calendars": [
    {
      "name": "my uni calendar",
      "type": "Outlook",
      "link": "https://outlook.office365.com/owa/calendar/blah-blah"
    }
  ],
  
  "meetings": [
    {
      "name": "first group meeting",
      "id": ObjectId(meeting),
      "accepted": false,
      "refused": false
    }
  ],
  
  "meeting_constraints": [
    {
      "type": "before_time",
      "hours": "18",
      "minutes": "00",
      "timezone": "UTC+3"
    },
    {
      "type": "not_on_weekends",
      "value": true
    }
  ],
  
  "schedule": [
    {
      "_id": ObjectId(time_slot),
      "is_meeting": false,
      "start": "2023-04-01 05:00:30.001000",
      "end": "2023-04-01 06:00:30.001000"
    }
  ]
}
```


## Meeting

```javascript
{
  "_id": ObjectId(meeting),
  "group_id": ObjectId(group),
  "admin_id": ObjectId(user), 
  "link": "https://zoom.us/blah-blah",
  "summary": "we meet to discuss some unimportant stuff",
  "location": "https://maps.gooogle.com/coordinates"
  "start": "2023-04-01 05:00:30.001000",
  "end": "2023-04-01 06:00:30.001000",
  
  "agenda": [
    {
      "text": "talk about this stuff",
      "crossed_out_time": "2023-04-01 05:00:30.001000",
      "position": 1,
      "level": 1
    }
  ]
}
```

## Group

```javascript
{
  "_id": ObjectId(group),
  "name": "kittens",
  
  "members": [
    {
      "name": "casual_meeter",
      "id": ObjectId(user)
    } 
  ],
  
  "meetings": [
    {
      "name": "our first meeting",
      "id": ObjectId(meeting)
    } 
  ],
  
  "meeting_constraints": [
    {
      "type": "before_time",
      "hours": "18",
      "minutes": "00",
      "timezone": "UTC+3"
    },
    {
      "type": "not_on_weekends",
      "value": true
    }
  ],
  
  "polls": [
    {
      "id": ObjectId(poll),
      "name": "vote for the president"
    }
  ]
  
  "messages": [
    {
      "text": "Hi guys!",
      "username": "casual_meeter",
      "author_id": ObjectId(user),
      "timestamp": "2023-04-01 05:00:30.001000",
    }
  ],
  
  "schedule": [
    {
      "_id": ObjectId(time_slot),
      "is_meeting": false,
      "start": "2023-04-01 05:00:30.001000",
      "end": "2023-04-01 06:00:30.001000"
    }
  ]
}
```


## Poll

```javascript
{
  "_id": ObjectId(poll),
  "name": "vote for the president",
  "anonymous": false
  "options": [
    {
      "name": "Trump",
      "voters": [
        {
          "id": ObjectId(user),
          "name": "casual_meeter"
        }
      ]
      "vote_count": 1
    }
  ]
}
```


## To be done

```
[RandomCoffee] {bgcolor: "#d0e0d0"}
  random_coffee_id {label: "int"}
  first_accepted {label: "bool"}
  first_refused {label: "bool"}
  second_accepted {label: "bool"}
  second_refused {label: "bool"}
```
