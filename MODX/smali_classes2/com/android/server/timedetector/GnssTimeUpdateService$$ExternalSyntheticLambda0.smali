.class public final synthetic Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timedetector/GnssTimeUpdateService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timedetector/GnssTimeUpdateService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    .line 2
    .line 3
    const-string p1, "handleLocationAvailable()"

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/location/LocationManagerInternal;->getGnssTimeMillis()Landroid/location/LocationTime;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "Passive location time received: "

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string/jumbo v0, "suggestGnssTime()"

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/location/LocationTime;->getUnixEpochTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    invoke-virtual {p1}, Landroid/location/LocationTime;->getElapsedRealtimeNanos()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    const-wide/32 v4, 0xf4240

    .line 56
    .line 57
    .line 58
    div-long/2addr v2, v4

    .line 59
    new-instance p1, Landroid/app/time/UnixEpochTime;

    .line 60
    .line 61
    invoke-direct {p1, v2, v3, v0, v1}, Landroid/app/time/UnixEpochTime;-><init>(JJ)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLastSuggestedGnssTime:Landroid/app/time/UnixEpochTime;

    .line 65
    .line 66
    new-instance v0, Lcom/android/server/timedetector/GnssTimeSuggestion;

    .line 67
    .line 68
    invoke-direct {v0, p1}, Lcom/android/server/timedetector/GnssTimeSuggestion;-><init>(Landroid/app/time/UnixEpochTime;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mTimeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;

    .line 72
    .line 73
    check-cast p1, Lcom/android/server/timedetector/TimeDetectorInternalImpl;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    new-instance v1, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    invoke-direct {v1, p1, v0, v2}, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/TimeDetectorInternalImpl;Ljava/lang/Object;I)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p1, Lcom/android/server/timedetector/TimeDetectorInternalImpl;->mHandler:Landroid/os/Handler;

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    const-string p1, "getGnssTimeMillis() returned null"

    .line 91
    .line 92
    invoke-static {p1}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :goto_0
    iget-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLock:Ljava/lang/Object;

    .line 96
    .line 97
    monitor-enter p1

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    if-nez v0, :cond_1

    .line 101
    .line 102
    const-string/jumbo v0, "mLocationListener unexpectedly null"

    .line 103
    .line 104
    .line 105
    const-string v1, "GnssTimeUpdateService"

    .line 106
    .line 107
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    .line 111
    .line 112
    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    goto :goto_2

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    .line 119
    .line 120
    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 121
    .line 122
    .line 123
    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;

    .line 125
    .line 126
    :goto_1
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;

    .line 127
    .line 128
    if-eqz v0, :cond_2

    .line 129
    .line 130
    const-string v0, "mAlarmListener was unexpectedly non-null"

    .line 131
    .line 132
    const-string v1, "GnssTimeUpdateService"

    .line 133
    .line 134
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    .line 138
    .line 139
    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 143
    .line 144
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 147
    .line 148
    .line 149
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 150
    .line 151
    .line 152
    move-result-wide v0

    .line 153
    sget-object v2, Lcom/android/server/timedetector/GnssTimeUpdateService;->GNSS_TIME_UPDATE_ALARM_INTERVAL:Ljava/time/Duration;

    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    .line 156
    .line 157
    .line 158
    move-result-wide v2

    .line 159
    add-long v6, v0, v2

    .line 160
    .line 161
    new-instance v9, Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;

    .line 162
    .line 163
    invoke-direct {v9, p0}, Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timedetector/GnssTimeUpdateService;)V

    .line 164
    .line 165
    .line 166
    iput-object v9, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;

    .line 167
    .line 168
    iget-object v4, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 169
    .line 170
    const-string v8, "GnssTimeUpdateService"

    .line 171
    .line 172
    iget-object v10, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mHandler:Landroid/os/Handler;

    .line 173
    .line 174
    const/4 v5, 0x2

    .line 175
    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 176
    .line 177
    .line 178
    monitor-exit p1

    .line 179
    return-void

    .line 180
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    throw p0
.end method
