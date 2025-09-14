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

    .line 3
    const-string v1, "StartGestureWakeup()+"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    .line 13
    move-result v1

    .line 14
    iput-boolean v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    .line 16
    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 18
    const-string/jumbo v2, "power"

    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/os/PowerManager;

    .line 27
    iput-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mPM:Landroid/os/PowerManager;

    .line 29
    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 31
    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/samsung/android/cover/CoverManager;

    .line 35
    iget-object v2, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 37
    invoke-direct {v1, v2}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 42
    const-string v1, "StartGestureWakeup() create mCoverManager instance"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 50
    move-result v1

    .line 51
    iget-object v2, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 56
    move-result-object v2

    .line 57
    const-string/jumbo v3, "com.sec.feature.sensorhub"

    .line 60
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_2

    .line 66
    iget-object v2, p0, Lcom/android/server/accessibility/GestureWakeup;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 68
    if-nez v2, :cond_1

    .line 70
    const-string/jumbo v2, "registerApproachListener, mSemContextManager is null, create again "

    .line 73
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v2, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 78
    const-string/jumbo v3, "scontext"

    .line 81
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Lcom/samsung/android/hardware/context/SemContextManager;

    .line 87
    iput-object v2, p0, Lcom/android/server/accessibility/GestureWakeup;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 89
    :cond_1
    new-instance v2, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;

    .line 91
    invoke-direct {v2, v1}, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;-><init>(I)V

    .line 94
    iget-object v3, p0, Lcom/android/server/accessibility/GestureWakeup;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 96
    iget-object v4, p0, Lcom/android/server/accessibility/GestureWakeup;->mSemContextListener:Lcom/android/server/accessibility/GestureWakeup$1;

    .line 98
    const/4 v5, 0x1

    .line 99
    invoke-virtual {v3, v4, v5, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    .line 104
    const-string/jumbo v3, "registerApproachListener, currentUser : "

    .line 107
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-static {v2, v1, v0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 113
    iget-object p0, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 118
    move-result-object p0

    .line 119
    const-string v1, "air_motion_wake_up"

    .line 121
    const/4 v2, -0x2

    .line 122
    invoke-static {p0, v1, v5, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 125
    const-string p0, "GestureWakeup start success"

    .line 127
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return v5

    .line 131
    :cond_2
    const-string p0, "GestureWakeup: registerApproachListener fail"

    .line 133
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string p0, "StartGestureWakeup() Can\'t use proximity sensor in sensor hub"

    .line 138
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 p0, 0x0

    .line 142
    return p0
.end method

.method public final StopGestureWakeup()V
    .locals 5

    .line 1
    const-string v0, "GestureWakeup"

    .line 3
    const-string v1, "StopGestureWakeup()+"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    .line 13
    move-result v1

    .line 14
    iput-boolean v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    .line 16
    if-eqz v1, :cond_1

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    move-result-object v1

    .line 24
    const-string v2, "air_motion_wake_up"

    .line 26
    const/4 v3, -0x2

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 31
    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 36
    move-result-object v1

    .line 37
    const-string/jumbo v2, "com.sec.feature.sensorhub"

    .line 40
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 48
    if-eqz v1, :cond_0

    .line 50
    iget-object v2, p0, Lcom/android/server/accessibility/GestureWakeup;->mSemContextListener:Lcom/android/server/accessibility/GestureWakeup$1;

    .line 52
    const/4 v3, 0x1

    .line 53
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 56
    const-string v1, "GestureWakeupService : UnregisterApproachListener"

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 64
    iput-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mPM:Landroid/os/PowerManager;

    .line 66
    const-string/jumbo p0, "finish"

    .line 69
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    :goto_0
    const-string p0, "GestureWakeup stop success"

    .line 79
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void

    .line 83
    :cond_1
    const-string p0, "GestureWakeup is aleady stopped"

    .line 85
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public final checkSettingCondition(Landroid/content/Context;)Z
    .locals 5

    .line 1
    const-string v0, " User mode : -2"

    .line 3
    const-string/jumbo v1, "checkSettingCondition() mIsSettingGestureWakeUp = "

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object p1

    .line 11
    const-string v2, "air_motion_wake_up"

    .line 13
    const/4 v3, -0x2

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static {p1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 18
    move-result p1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne p1, v2, :cond_0

    .line 22
    move v4, v2

    .line 23
    :cond_0
    iput-boolean v4, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    .line 25
    const-string p1, "GestureWakeup"

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    iget-boolean v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-boolean p1, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

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
