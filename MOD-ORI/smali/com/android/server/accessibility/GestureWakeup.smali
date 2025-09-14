.class public final Lcom/android/server/accessibility/GestureWakeup;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public mIsSettingGestureWakeUp:Z

.field public mPM:Landroid/os/PowerManager;

.field public mSemContextListener:Lcom/android/server/accessibility/GestureWakeup$1;

.field public mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;


# virtual methods
.method public final StartGestureWakeup()Z
    .locals 6

    .line 1
    const-string v0, "GestureWakeup"

    .line 2
    .line 3
    const-string v1, "StartGestureWakeup()+"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput-boolean v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-string/jumbo v2, "power"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/os/PowerManager;

    .line 26
    .line 27
    iput-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mPM:Landroid/os/PowerManager;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    new-instance v1, Lcom/samsung/android/cover/CoverManager;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-direct {v1, v2}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 41
    .line 42
    const-string v1, "StartGestureWakeup() create mCoverManager instance"

    .line 43
    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iget-object v2, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string/jumbo v3, "com.sec.feature.sensorhub"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    iget-object v2, p0, Lcom/android/server/accessibility/GestureWakeup;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 67
    .line 68
    if-nez v2, :cond_1

    .line 69
    .line 70
    const-string/jumbo v2, "registerApproachListener, mSemContextManager is null, create again "

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    const-string/jumbo v3, "scontext"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Lcom/samsung/android/hardware/context/SemContextManager;

    .line 86
    .line 87
    iput-object v2, p0, Lcom/android/server/accessibility/GestureWakeup;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 88
    .line 89
    :cond_1
    new-instance v2, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;

    .line 90
    .line 91
    invoke-direct {v2, v1}, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;-><init>(I)V

    .line 92
    .line 93
    .line 94
    iget-object v3, p0, Lcom/android/server/accessibility/GestureWakeup;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 95
    .line 96
    iget-object v4, p0, Lcom/android/server/accessibility/GestureWakeup;->mSemContextListener:Lcom/android/server/accessibility/GestureWakeup$1;

    .line 97
    .line 98
    const/4 v5, 0x1

    .line 99
    invoke-virtual {v3, v4, v5, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    .line 100
    .line 101
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string/jumbo v3, "registerApproachListener, currentUser : "

    .line 105
    .line 106
    .line 107
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v2, v1, v0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object p0, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    const-string v1, "air_motion_wake_up"

    .line 120
    .line 121
    const/4 v2, -0x2

    .line 122
    invoke-static {p0, v1, v5, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 123
    .line 124
    .line 125
    const-string p0, "GestureWakeup start success"

    .line 126
    .line 127
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    return v5

    .line 131
    :cond_2
    const-string p0, "GestureWakeup: registerApproachListener fail"

    .line 132
    .line 133
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    const-string p0, "StartGestureWakeup() Can\'t use proximity sensor in sensor hub"

    .line 137
    .line 138
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    const/4 p0, 0x0

    .line 142
    return p0
.end method

.method public final StopGestureWakeup()V
    .locals 5

    .line 1
    const-string v0, "GestureWakeup"

    .line 2
    .line 3
    const-string v1, "StopGestureWakeup()+"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput-boolean v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "air_motion_wake_up"

    .line 25
    .line 26
    const/4 v3, -0x2

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string/jumbo v2, "com.sec.feature.sensorhub"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/server/accessibility/GestureWakeup;->mSemContextListener:Lcom/android/server/accessibility/GestureWakeup$1;

    .line 51
    .line 52
    const/4 v3, 0x1

    .line 53
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 54
    .line 55
    .line 56
    const-string v1, "GestureWakeupService : UnregisterApproachListener"

    .line 57
    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_0
    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 63
    .line 64
    iput-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mPM:Landroid/os/PowerManager;

    .line 65
    .line 66
    const-string/jumbo p0, "finish"

    .line 67
    .line 68
    .line 69
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    :goto_0
    const-string p0, "GestureWakeup stop success"

    .line 78
    .line 79
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_1
    const-string p0, "GestureWakeup is aleady stopped"

    .line 84
    .line 85
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final checkSettingCondition(Landroid/content/Context;)Z
    .locals 5

    .line 1
    const-string v0, " User mode : -2"

    .line 2
    .line 3
    const-string/jumbo v1, "checkSettingCondition() mIsSettingGestureWakeUp = "

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v2, "air_motion_wake_up"

    .line 12
    .line 13
    const/4 v3, -0x2

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static {p1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne p1, v2, :cond_0

    .line 21
    .line 22
    move v4, v2

    .line 23
    :cond_0
    iput-boolean v4, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    .line 24
    .line 25
    const-string p1, "GestureWakeup"

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    iget-boolean p1, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return p1

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p1
.end method
