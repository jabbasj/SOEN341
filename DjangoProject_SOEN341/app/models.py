﻿"""
Definition of models.
"""

from django.db import models

class Courses(models.Model):
    cid = models.ForeignKey('Sequence', models.DO_NOTHING, db_column='cId')  # Field name made lowercase.
    sid = models.CharField(db_column='sId', max_length=8)  # Field name made lowercase.
    semester = models.CharField(max_length=6)
    year = models.IntegerField()
    type = models.CharField(max_length=3)
    credits = models.FloatField(blank=True, null=True)
    lecturer = models.CharField(max_length=75, blank=True, null=True)
    timeslot1 = models.ForeignKey('Timeslots', models.DO_NOTHING, db_column='timeSlot1', related_name='timeslot1')  # Field name made lowercase.
    timeslot2 = models.ForeignKey('Timeslots', models.DO_NOTHING, db_column='timeSlot2', related_name='timeslot2')  # Field name made lowercase.
    description = models.CharField(max_length=1000, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'courses'
        unique_together = (('cid', 'sid', 'semester', 'year', 'type'),)


class Prerequisites(models.Model):
    pid = models.CharField(max_length=8)
    rid = models.CharField(db_column='rId', max_length=8)  # Field name made lowercase.
    parallel = models.IntegerField(blank=True, null=True)
    altid = models.CharField(db_column='altId', max_length=8, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'prerequisites'


class Registered(models.Model):
    studentid = models.ForeignKey('Students', models.DO_NOTHING, db_column='studentId', related_name='r_studentId')  # Field name made lowercase.
    cid = models.ForeignKey(Courses, models.DO_NOTHING, db_column='cId', related_name='r_courseId')  # Field name made lowercase.
    sectionid = models.ForeignKey(Courses, models.DO_NOTHING, db_column='sectionId', related_name='r_sectionId')  # Field name made lowercase.
    semester = models.ForeignKey(Courses, models.DO_NOTHING, db_column='semester', related_name='r_semester')
    year = models.ForeignKey(Courses, models.DO_NOTHING, db_column='year', related_name='r_year')
    type = models.ForeignKey(Courses, models.DO_NOTHING, db_column='type', related_name='r_type')
    grade = models.CharField(max_length=4, blank=True, null=True)
    finished = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'registered'


class Students(models.Model):
    sid = models.IntegerField(db_column='sId', primary_key=True)  # Field name made lowercase.
    firstname = models.CharField(db_column='firstName', max_length=50)  # Field name made lowercase.
    lastname = models.CharField(db_column='lastName', max_length=50)  # Field name made lowercase.
    email = models.CharField(max_length=60)
    password = models.CharField(max_length=30)

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'students'


class Timeslots(models.Model):
    id = models.IntegerField(primary_key=True)
    starthour = models.TimeField(db_column='startHour')  # Field name made lowercase.
    endhour = models.TimeField(db_column='endHour')  # Field name made lowercase.
    day = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'timeslots'


class Sequence(models.Model):
    cid = models.CharField(db_column='cId', primary_key=True, max_length=8)  # Field name made lowercase.
    semester = models.CharField(max_length=6)
    year = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'sequence'

