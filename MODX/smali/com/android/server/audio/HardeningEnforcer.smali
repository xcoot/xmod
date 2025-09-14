.class public final Lcom/android/server/audio/HardeningEnforcer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mContext:Landroid/content/Context;

.field public final mEventLogger:Lcom/android/server/utils/EventLogger;

.field public final mIsAutomotive:Z

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLandroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/utils/EventLogger;

    .line 6
    const/16 v1, 0x14

    .line 8
    const-string v2, "Hardening enforcement"

    .line 10
    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    .line 13
    iput-object v0, p0, Lcom/android/server/audio/HardeningEnforcer;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 15
    iput-object p1, p0, Lcom/android/server/audio/HardeningEnforcer;->mContext:Landroid/content/Context;

    .line 17
    iput-boolean p2, p0, Lcom/android/server/audio/HardeningEnforcer;->mIsAutomotive:Z

    .line 19
    iput-object p3, p0, Lcom/android/server/audio/HardeningEnforcer;->mAppOps:Landroid/app/AppOpsManager;

    .line 21
    const-class p2, Landroid/app/ActivityManager;

    .line 23
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/app/ActivityManager;

    .line 29
    iput-object p1, p0, Lcom/android/server/audio/HardeningEnforcer;->mActivityManager:Landroid/app/ActivityManager;

    .line 31
    iput-object p4, p0, Lcom/android/server/audio/HardeningEnforcer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 33
    return-void
.end method


# virtual methods
.method public final blockFocusMethod(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    .line 1
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/audio/HardeningEnforcer;->getPackNameForUid(I)Ljava/lang/String;

    .line 10
    move-result-object p4

    .line 11
    :cond_0
    move-object v3, p4

    .line 12
    iget-object v0, p0, Lcom/android/server/audio/HardeningEnforcer;->mAppOps:Landroid/app/AppOpsManager;

    .line 14
    const/4 v5, 0x0

    .line 15
    const/16 v1, 0x20

    .line 17
    move v2, p1

    .line 18
    move-object v4, p5

    .line 19
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    move-result p4

    .line 23
    const/4 p5, 0x0

    .line 24
    if-eqz p4, :cond_2

    .line 26
    const/16 p4, 0x23

    .line 28
    if-ge p6, p4, :cond_1

    .line 30
    return p5

    .line 31
    :cond_1
    const-string p4, "Focus request DENIED for uid:"

    .line 33
    const-string p6, " clientId:"

    .line 35
    const-string v0, " req:"

    .line 37
    invoke-static {p1, p4, p6, p3, v0}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    move-result-object p3

    .line 41
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string p2, " procState:"

    .line 46
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object p2, p0, Lcom/android/server/audio/HardeningEnforcer;->mActivityManager:Landroid/app/ActivityManager;

    .line 51
    invoke-virtual {p2, p1}, Landroid/app/ActivityManager;->getUidProcessState(I)I

    .line 54
    move-result p1

    .line 55
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    iget-object p0, p0, Lcom/android/server/audio/HardeningEnforcer;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 64
    const-string p2, "AS.HardeningEnforcer"

    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    new-instance p3, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 69
    invoke-direct {p3, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p3, p5, p2}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)V

    .line 75
    invoke-virtual {p0, p3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    .line 79
    const/4 p0, 0x1

    .line 80
    return p0

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    monitor-exit p0

    .line 83
    throw p1

    .line 84
    :cond_2
    return p5
.end method

.method public final blockVolumeMethod(I)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/audio/HardeningEnforcer;->mIsAutomotive:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 6
    invoke-static {}, Landroid/media/audio/Flags;->autoPublicVolumeApiHardening()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/HardeningEnforcer;->mContext:Landroid/content/Context;

    .line 15
    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    .line 17
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 23
    return v1

    .line 24
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    move-result v0

    .line 28
    const/16 v2, 0x2710

    .line 30
    if-ge v0, v2, :cond_2

    .line 32
    return v1

    .line 33
    :cond_2
    const-string v0, "Preventing volume method "

    .line 35
    const-string v1, " for "

    .line 37
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    move-result-object p1

    .line 41
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 44
    move-result v0

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/server/audio/HardeningEnforcer;->getPackNameForUid(I)Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    const-string p1, "AS.HardeningEnforcer"

    .line 58
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 p0, 0x1

    .line 62
    return p0

    .line 63
    :cond_3
    return v1
.end method

.method public final getPackNameForUid(I)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "["

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/HardeningEnforcer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 9
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_1

    .line 15
    array-length v3, p0

    .line 16
    if-eqz v3, :cond_1

    .line 18
    const/4 v3, 0x0

    .line 19
    aget-object v4, p0, v3

    .line 21
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    aget-object p0, p0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    return-object p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string p1, "]"

    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    return-object p0

    .line 57
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    throw p0
.end method
