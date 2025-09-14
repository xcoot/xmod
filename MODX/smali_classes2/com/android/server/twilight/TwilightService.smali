.class public final Lcom/android/server/twilight/TwilightService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/location/LocationListener;


# instance fields
.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mBootCompleted:Z

.field public final mHandler:Landroid/os/Handler;

.field public mHasListeners:Z

.field public mLastLocation:Landroid/location/Location;

.field public mLastTwilightState:Lcom/android/server/twilight/TwilightState;

.field public final mListeners:Landroid/util/ArrayMap;

.field public mLocationManager:Landroid/location/LocationManager;

.field public mTimeChangedReceiver:Lcom/android/server/twilight/TwilightService$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "TwilightService"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    .line 16
    .line 17
    new-instance p1, Landroid/os/Handler;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_4

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    .line 12
    .line 13
    if-eqz p1, :cond_3

    .line 14
    .line 15
    iput-boolean v2, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    .line 18
    .line 19
    if-eqz p1, :cond_3

    .line 20
    .line 21
    const-string p1, "TwilightService"

    .line 22
    .line 23
    const-string/jumbo v1, "stopListening"

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Lcom/android/server/twilight/TwilightService$2;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Lcom/android/server/twilight/TwilightService$2;

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Lcom/android/server/twilight/TwilightService$2;

    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    iget-object p1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 55
    .line 56
    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    .line 60
    .line 61
    :cond_3
    return v0

    .line 62
    :cond_4
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    .line 63
    .line 64
    if-nez p1, :cond_5

    .line 65
    .line 66
    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    .line 67
    .line 68
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    .line 69
    .line 70
    if-eqz p1, :cond_5

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->startListening()V

    .line 73
    .line 74
    .line 75
    :cond_5
    return v0
.end method

.method public final onAlarm()V
    .locals 2

    .line 1
    const-string v0, "TwilightService"

    .line 2
    .line 3
    const-string/jumbo v1, "onAlarm"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "alarm"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/app/AlarmManager;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 18
    .line 19
    const-string v0, "location"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/location/LocationManager;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    .line 31
    .line 32
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->startListening()V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v1, "onLocationChanged: provider="

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " accuracy="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " time="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "TwilightService"

    .line 47
    .line 48
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/twilight/TwilightService$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$1;-><init>(Lcom/android/server/twilight/TwilightService;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/android/server/twilight/TwilightManager;

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final startListening()V
    .locals 5

    .line 1
    const-string v0, "TwilightService"

    .line 2
    .line 3
    const-string/jumbo v1, "startListening"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    new-instance v0, Landroid/location/LocationRequest$Builder;

    .line 10
    .line 11
    const-wide/32 v1, 0x36ee80

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x68

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Landroid/os/Handler;

    .line 28
    .line 29
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 37
    .line 38
    new-instance v3, Landroid/os/HandlerExecutor;

    .line 39
    .line 40
    invoke-direct {v3, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 41
    .line 42
    .line 43
    const-string v1, "fused"

    .line 44
    .line 45
    invoke-virtual {v2, v1, v0, v3, p0}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 57
    .line 58
    const-string/jumbo v1, "network"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v2, 0x0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    new-instance v4, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda0;

    .line 79
    .line 80
    invoke-direct {v4, p0}, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/twilight/TwilightService;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/location/LocationManager;->getCurrentLocation(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 88
    .line 89
    const-string v1, "gps"

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_1

    .line 96
    .line 97
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    new-instance v4, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda0;

    .line 108
    .line 109
    invoke-direct {v4, p0}, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/twilight/TwilightService;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/location/LocationManager;->getCurrentLocation(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 113
    .line 114
    .line 115
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Lcom/android/server/twilight/TwilightService$2;

    .line 116
    .line 117
    if-nez v0, :cond_2

    .line 118
    .line 119
    new-instance v0, Lcom/android/server/twilight/TwilightService$2;

    .line 120
    .line 121
    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$2;-><init>(Lcom/android/server/twilight/TwilightService;)V

    .line 122
    .line 123
    .line 124
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Lcom/android/server/twilight/TwilightService$2;

    .line 125
    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    .line 127
    .line 128
    const-string v1, "android.intent.action.TIME_SET"

    .line 129
    .line 130
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Lcom/android/server/twilight/TwilightService$2;

    .line 143
    .line 144
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method public final updateTwilightState()V
    .locals 15

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    :goto_0
    const/4 v3, 0x1

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_1
    new-instance v4, Lcom/ibm/icu/impl/CalendarAstronomer;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    .line 29
    .line 30
    .line 31
    move-result-wide v7

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v9

    .line 36
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    const-wide/16 v11, 0x0

    .line 40
    .line 41
    iput-wide v11, v4, Lcom/ibm/icu/impl/CalendarAstronomer;->fLatitude:D

    .line 42
    .line 43
    const-wide/16 v11, 0x0

    .line 44
    .line 45
    iput-wide v11, v4, Lcom/ibm/icu/impl/CalendarAstronomer;->fGmtOffset:J

    .line 46
    .line 47
    const-wide/16 v11, 0x1

    .line 48
    .line 49
    iput-wide v11, v4, Lcom/ibm/icu/impl/CalendarAstronomer;->julianDay:D

    .line 50
    .line 51
    iput-wide v11, v4, Lcom/ibm/icu/impl/CalendarAstronomer;->sunLongitude:D

    .line 52
    .line 53
    iput-wide v11, v4, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipObliquity:D

    .line 54
    .line 55
    iput-wide v11, v4, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealT0:D

    .line 56
    .line 57
    iput-wide v9, v4, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J

    .line 58
    .line 59
    const-wide v9, 0x3f91df46a2529d39L    # 0.017453292519943295

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    mul-double/2addr v5, v9

    .line 65
    const-wide v11, 0x400921fb54442d18L    # Math.PI

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    add-double/2addr v5, v11

    .line 71
    const-wide v13, 0x401921fb54442d18L    # 6.283185307179586

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    invoke-static {v5, v6, v13, v14}, Lcom/ibm/icu/impl/CalendarAstronomer;->normalize(DD)D

    .line 77
    .line 78
    .line 79
    move-result-wide v5

    .line 80
    sub-double/2addr v5, v11

    .line 81
    mul-double/2addr v7, v9

    .line 82
    add-double/2addr v7, v11

    .line 83
    invoke-static {v7, v8, v13, v14}, Lcom/ibm/icu/impl/CalendarAstronomer;->normalize(DD)D

    .line 84
    .line 85
    .line 86
    move-result-wide v7

    .line 87
    sub-double/2addr v7, v11

    .line 88
    iput-wide v7, v4, Lcom/ibm/icu/impl/CalendarAstronomer;->fLatitude:D

    .line 89
    .line 90
    const-wide/high16 v7, 0x4038000000000000L    # 24.0

    .line 91
    .line 92
    mul-double/2addr v5, v7

    .line 93
    const-wide v7, 0x414b774000000000L    # 3600000.0

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    mul-double/2addr v5, v7

    .line 99
    div-double/2addr v5, v13

    .line 100
    double-to-long v5, v5

    .line 101
    iput-wide v5, v4, Lcom/ibm/icu/impl/CalendarAstronomer;->fGmtOffset:J

    .line 102
    .line 103
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 108
    .line 109
    .line 110
    const/16 v5, 0xb

    .line 111
    .line 112
    const/16 v6, 0xc

    .line 113
    .line 114
    invoke-virtual {v2, v5, v6}, Landroid/icu/util/Calendar;->set(II)V

    .line 115
    .line 116
    .line 117
    const/4 v5, 0x0

    .line 118
    invoke-virtual {v2, v6, v5}, Landroid/icu/util/Calendar;->set(II)V

    .line 119
    .line 120
    .line 121
    const/16 v6, 0xd

    .line 122
    .line 123
    invoke-virtual {v2, v6, v5}, Landroid/icu/util/Calendar;->set(II)V

    .line 124
    .line 125
    .line 126
    const/16 v6, 0xe

    .line 127
    .line 128
    invoke-virtual {v2, v6, v5}, Landroid/icu/util/Calendar;->set(II)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    .line 132
    .line 133
    .line 134
    move-result-wide v6

    .line 135
    invoke-virtual {v4, v6, v7}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, v3}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    .line 139
    .line 140
    .line 141
    move-result-wide v6

    .line 142
    invoke-virtual {v4, v5}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    .line 143
    .line 144
    .line 145
    move-result-wide v8

    .line 146
    cmp-long v10, v8, v0

    .line 147
    .line 148
    const/4 v11, 0x5

    .line 149
    if-gez v10, :cond_2

    .line 150
    .line 151
    invoke-virtual {v2, v11, v3}, Landroid/icu/util/Calendar;->add(II)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    .line 155
    .line 156
    .line 157
    move-result-wide v0

    .line 158
    invoke-virtual {v4, v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v3}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    .line 162
    .line 163
    .line 164
    move-result-wide v6

    .line 165
    goto :goto_1

    .line 166
    :cond_2
    cmp-long v0, v6, v0

    .line 167
    .line 168
    if-lez v0, :cond_3

    .line 169
    .line 170
    const/4 v0, -0x1

    .line 171
    invoke-virtual {v2, v11, v0}, Landroid/icu/util/Calendar;->add(II)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    .line 175
    .line 176
    .line 177
    move-result-wide v0

    .line 178
    invoke-virtual {v4, v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, v5}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    .line 182
    .line 183
    .line 184
    move-result-wide v8

    .line 185
    :cond_3
    :goto_1
    new-instance v0, Lcom/android/server/twilight/TwilightState;

    .line 186
    .line 187
    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    .line 188
    .line 189
    .line 190
    :goto_2
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    .line 191
    .line 192
    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    .line 194
    .line 195
    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-nez v2, :cond_4

    .line 200
    .line 201
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    .line 202
    .line 203
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    .line 204
    .line 205
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    sub-int/2addr v2, v3

    .line 210
    :goto_3
    if-ltz v2, :cond_4

    .line 211
    .line 212
    iget-object v3, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    .line 213
    .line 214
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    check-cast v3, Lcom/android/server/twilight/TwilightListener;

    .line 219
    .line 220
    iget-object v4, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    .line 221
    .line 222
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    check-cast v4, Landroid/os/Handler;

    .line 227
    .line 228
    new-instance v5, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda1;

    .line 229
    .line 230
    invoke-direct {v5, v3, v0}, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/twilight/TwilightListener;Lcom/android/server/twilight/TwilightState;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 234
    .line 235
    .line 236
    add-int/lit8 v2, v2, -0x1

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :catchall_0
    move-exception p0

    .line 240
    goto :goto_6

    .line 241
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    if-eqz v0, :cond_6

    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-eqz v1, :cond_5

    .line 249
    .line 250
    iget-wide v0, v0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    .line 251
    .line 252
    :goto_4
    move-wide v4, v0

    .line 253
    goto :goto_5

    .line 254
    :cond_5
    iget-wide v0, v0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    .line 255
    .line 256
    goto :goto_4

    .line 257
    :goto_5
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 258
    .line 259
    const-string v6, "TwilightService"

    .line 260
    .line 261
    iget-object v8, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    .line 262
    .line 263
    const/4 v3, 0x1

    .line 264
    move-object v7, p0

    .line 265
    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 266
    .line 267
    .line 268
    :cond_6
    return-void

    .line 269
    :goto_6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    throw p0
.end method
