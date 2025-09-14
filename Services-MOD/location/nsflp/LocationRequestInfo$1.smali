.class public final Lcom/android/server/location/nsflp/LocationRequestInfo$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance p0, Lcom/android/server/location/nsflp/LocationRequestInfo;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isPassive:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isHighPowerRequest:Z

    .line 11
    const-wide/16 v1, 0x0

    .line 13
    iput-wide v1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->lastUpdateTime:J

    .line 15
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isAllowed:Z

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    iput-object v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->packageName:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    iput-object v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->versionName:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    iput-object v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->listenerId:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    iput-object v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->provider:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 45
    move-result v2

    .line 46
    iput v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->quality:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 51
    move-result-wide v2

    .line 52
    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->requestTime:J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 57
    move-result-wide v2

    .line 58
    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->removedTime:J

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 63
    move-result-wide v2

    .line 64
    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundTime:J

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 69
    move-result-wide v2

    .line 70
    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundDuration:J

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 75
    move-result-wide v2

    .line 76
    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->interval:J

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 81
    move-result-wide v2

    .line 82
    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->minUpdateInterval:J

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 87
    move-result-wide v2

    .line 88
    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->maxWaitTime:J

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 93
    move-result v2

    .line 94
    iput v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->requester:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_0

    .line 102
    move v2, v1

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    move v2, v0

    .line 105
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isForeground:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 110
    move-result v2

    .line 111
    iput v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->numUpdates:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 116
    move-result v2

    .line 117
    iput v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->uid:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 122
    move-result v2

    .line 123
    iput v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->pid:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_1

    .line 131
    move v2, v1

    .line 132
    goto :goto_1

    .line 133
    :cond_1
    move v2, v0

    .line 134
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isListenerType:Z

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_2

    .line 142
    move v2, v1

    .line 143
    goto :goto_2

    .line 144
    :cond_2
    move v2, v0

    .line 145
    :goto_2
    iput-boolean v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isSystemApp:Z

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 150
    move-result v2

    .line 151
    if-eqz v2, :cond_3

    .line 153
    move v2, v1

    .line 154
    goto :goto_3

    .line 155
    :cond_3
    move v2, v0

    .line 156
    :goto_3
    iput-boolean v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isPassive:Z

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_4

    .line 164
    move v2, v1

    .line 165
    goto :goto_4

    .line 166
    :cond_4
    move v2, v0

    .line 167
    :goto_4
    iput-boolean v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isHighPowerRequest:Z

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 172
    move-result-wide v2

    .line 173
    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->lastUpdateTime:J

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_5

    .line 181
    move v0, v1

    .line 182
    :cond_5
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isAllowed:Z

    .line 184
    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Lcom/android/server/location/nsflp/LocationRequestInfo;

    .line 3
    return-object p0
.end method
