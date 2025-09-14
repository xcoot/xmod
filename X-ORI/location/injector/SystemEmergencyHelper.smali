.class public final Lcom/android/server/location/injector/SystemEmergencyHelper;
.super Lcom/android/server/location/injector/EmergencyHelper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEmergencyCallEndRealtimeMs:J

.field public final mEmergencyCallTelephonyCallback:Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;

.field public mIsInEmergencyCall:Z

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/server/location/injector/EmergencyHelper;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;-><init>(Lcom/android/server/location/injector/SystemEmergencyHelper;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallTelephonyCallback:Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;

    .line 10
    .line 11
    const-wide/high16 v0, -0x8000000000000000L

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallEndRealtimeMs:J

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final declared-synchronized isInEmergency(J)Z
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallEndRealtimeMs:J

    .line 10
    .line 11
    const-wide/high16 v4, -0x8000000000000000L

    .line 12
    .line 13
    cmp-long v0, v2, v4

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    iget-wide v5, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallEndRealtimeMs:J

    .line 23
    .line 24
    sub-long/2addr v3, v5

    .line 25
    cmp-long p1, v3, p1

    .line 26
    .line 27
    if-gez p1, :cond_1

    .line 28
    .line 29
    move p1, v2

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_3

    .line 33
    :cond_1
    move p1, v1

    .line 34
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/flags/Flags;->enforceTelephonyFeatureMapping()Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-nez p2, :cond_4

    .line 39
    .line 40
    iget-boolean p2, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mIsInEmergencyCall:Z

    .line 41
    .line 42
    if-nez p2, :cond_2

    .line 43
    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isInEmergencySmsMode()Z

    .line 57
    .line 58
    .line 59
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    :cond_2
    move v1, v2

    .line 63
    :cond_3
    monitor-exit p0

    .line 64
    return v1

    .line 65
    :cond_4
    :try_start_2
    iget-object p2, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    const-string v0, "android.hardware.telephony.calling"

    .line 72
    .line 73
    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    goto :goto_1

    .line 86
    :cond_5
    move v0, v1

    .line 87
    :goto_1
    const-string v3, "android.hardware.telephony.messaging"

    .line 88
    .line 89
    invoke-virtual {p2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-eqz p2, :cond_6

    .line 94
    .line 95
    iget-object p2, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 96
    .line 97
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isInEmergencySmsMode()Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    goto :goto_2

    .line 102
    :cond_6
    move p2, v1

    .line 103
    :goto_2
    iget-boolean v3, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mIsInEmergencyCall:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    .line 105
    if-nez v3, :cond_7

    .line 106
    .line 107
    if-nez p1, :cond_7

    .line 108
    .line 109
    if-nez v0, :cond_7

    .line 110
    .line 111
    if-eqz p2, :cond_8

    .line 112
    .line 113
    :cond_7
    move v1, v2

    .line 114
    :cond_8
    monitor-exit p0

    .line 115
    return v1

    .line 116
    :goto_3
    monitor-exit p0

    .line 117
    throw p1
.end method

.method public final declared-synchronized onSystemReady()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 17
    .line 18
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-object v1, v0

    .line 22
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 25
    .line 26
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallTelephonyCallback:Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    new-instance v1, Lcom/android/server/location/injector/SystemEmergencyHelper$1;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-direct {v1, p0, v2}, Lcom/android/server/location/injector/SystemEmergencyHelper$1;-><init>(Lcom/android/server/location/injector/SystemEmergencyHelper;I)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Landroid/content/IntentFilter;

    .line 44
    .line 45
    const-string v3, "android.intent.action.NEW_OUTGOING_CALL"

    .line 46
    .line 47
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    new-instance v1, Lcom/android/server/location/injector/SystemEmergencyHelper$1;

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    invoke-direct {v1, p0, v2}, Lcom/android/server/location/injector/SystemEmergencyHelper$1;-><init>(Lcom/android/server/location/injector/SystemEmergencyHelper;I)V

    .line 59
    .line 60
    .line 61
    new-instance v2, Landroid/content/IntentFilter;

    .line 62
    .line 63
    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 64
    .line 65
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    monitor-exit p0

    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    monitor-exit p0

    .line 75
    throw v0
.end method
