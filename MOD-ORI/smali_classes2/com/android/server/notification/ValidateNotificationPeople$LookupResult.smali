.class public Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAffinity:F

.field public final mExpireMillis:J

.field public mHasPhone:Z

.field public mPhoneLookupKey:Ljava/lang/String;

.field public final mPhoneNumbers:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mHasPhone:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneLookupKey:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Landroid/util/ArraySet;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneNumbers:Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    const-wide/32 v2, 0x36ee80

    .line 25
    .line 26
    .line 27
    add-long/2addr v0, v2

    .line 28
    iput-wide v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mExpireMillis:J

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final getAffinity()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isExpired()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget p0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    .line 16
    .line 17
    return p0

    .line 18
    :cond_1
    :goto_0
    return v1
.end method

.method public isExpired()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mExpireMillis:J

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    cmp-long p0, v0, v2

    .line 8
    .line 9
    if-gez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final mergeContact(Landroid/database/Cursor;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    .line 2
    .line 3
    const/high16 v1, 0x3f000000    # 0.5f

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    .line 10
    .line 11
    const-string v0, "_id"

    .line 12
    .line 13
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "ValidateNoPeople"

    .line 18
    .line 19
    if-ltz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sget-boolean v2, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    const-string v2, "contact _ID is: "

    .line 30
    .line 31
    invoke-static {v0, v2, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v0, "invalid cursor: no _ID"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    const-string v0, "lookup"

    .line 41
    .line 42
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-ltz v0, :cond_2

    .line 47
    .line 48
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneLookupKey:Ljava/lang/String;

    .line 53
    .line 54
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v2, "contact LOOKUP_KEY is: "

    .line 61
    .line 62
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneLookupKey:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v0, v2, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    const-string v0, "invalid cursor: no LOOKUP_KEY"

    .line 76
    .line 77
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_1
    const-string/jumbo v0, "starred"

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const/4 v2, 0x0

    .line 88
    const/4 v3, 0x1

    .line 89
    if-ltz v0, :cond_6

    .line 90
    .line 91
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    move v0, v3

    .line 98
    goto :goto_2

    .line 99
    :cond_4
    move v0, v2

    .line 100
    :goto_2
    if-eqz v0, :cond_5

    .line 101
    .line 102
    iget v4, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    .line 103
    .line 104
    const/high16 v5, 0x3f800000    # 1.0f

    .line 105
    .line 106
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    iput v4, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    .line 111
    .line 112
    :cond_5
    sget-boolean v4, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 113
    .line 114
    if-eqz v4, :cond_7

    .line 115
    .line 116
    const-string v4, "contact STARRED is: "

    .line 117
    .line 118
    invoke-static {v4, v1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_6
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 123
    .line 124
    if-eqz v0, :cond_7

    .line 125
    .line 126
    const-string v0, "invalid cursor: no STARRED"

    .line 127
    .line 128
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    :cond_7
    :goto_3
    const-string v0, "has_phone_number"

    .line 132
    .line 133
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-ltz v0, :cond_9

    .line 138
    .line 139
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_8

    .line 144
    .line 145
    move v2, v3

    .line 146
    :cond_8
    iput-boolean v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mHasPhone:Z

    .line 147
    .line 148
    sget-boolean p1, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 149
    .line 150
    if-eqz p1, :cond_a

    .line 151
    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v0, "contact HAS_PHONE_NUMBER is: "

    .line 155
    .line 156
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-boolean p0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mHasPhone:Z

    .line 160
    .line 161
    invoke-static {v1, p1, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 162
    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_9
    sget-boolean p0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 166
    .line 167
    if-eqz p0, :cond_a

    .line 168
    .line 169
    const-string p0, "invalid cursor: no HAS_PHONE_NUMBER"

    .line 170
    .line 171
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    :cond_a
    :goto_4
    return-void
.end method

.method public final mergePhoneNumber(Landroid/database/Cursor;)V
    .locals 3

    .line 1
    const-string v0, "data4"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "ValidateNoPeople"

    .line 8
    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneNumbers:Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const-string v0, "cursor data not found: no NORMALIZED_NUMBER"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    const-string v0, "data1"

    .line 31
    .line 32
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-ltz v0, :cond_2

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneNumbers:Landroid/util/ArraySet;

    .line 39
    .line 40
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    sget-boolean p0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 49
    .line 50
    if-eqz p0, :cond_3

    .line 51
    .line 52
    const-string p0, "cursor data not found: no NUMBER"

    .line 53
    .line 54
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_1
    return-void
.end method
