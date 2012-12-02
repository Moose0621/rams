package com.rams


class Activity {

    // These are the attributes of an activity. Clearly.
    String name
    String number
    Date date
    java.sql.Time startTime
    java.sql.Time endTime
    int maxEnrollment
    int minAge
    int maxAge

    // You have to put it somewhere.
    static belongsTo = [ facility : Facility ]

    // It has enrollments in it. The field is called 'enrollments'
    static hasMany = [ enrollments : Enrollment ]

    static constraints = {

	// Name must not be blank
	name(blank:false)

	// An activity number has the form Decimal (5,3), first digit must not be 0
	// and must be unique. Format subject to change if we want
	number(matches:'[1-9][0-9]{4}[.][0-9]{3}', unique:true)

	// needs a date, cannot be blank
	date(blank:false)

	// Must have a start time
	startTime(nullable:false
		// there is a shinier way to do this using dynamic finders. Possibly
		// TODO collision test
		)

	// Must have an end time, cannot be earlier than start time
	endTime(nullable:false,
		validator: {endTime,activity ->
		    return endTime.after(activity.startTime)})

	// Max enrollment may be null, for no maximum
	maxEnrollment(nullable:true)

	// Min age may be null if there is no minimum age
	minAge(nullable:true)

	// Max age may be null if there is no maximum, but must be greater than min age if it is specidied
	maxAge(nullable:true,
		validator: {maxAge,activity ->
		    if (activity.minAge != null){

		    } else {
			return maxAge >= activity.minAge}})
    }
}

