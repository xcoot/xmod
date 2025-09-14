.class public final Lcom/android/server/sepunion/cover/CoverDisabler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCoverManagerDisabled:Z

.field public final mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mDisableRecords:Ljava/util/ArrayList;

.field public final mHandler:Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler;

.field public final mLock:Ljava/lang/Object;

.field public mRealCoverSwitchState:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mCoverManagerDisabled:Z

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mRealCoverSwitchState:Z

    .line 23
    .line 24
    const-string/jumbo v2, "power"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Landroid/os/PowerManager;

    .line 32
    .line 33
    new-instance v2, Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler;

    .line 34
    .line 35
    invoke-direct {v2, p0, p1}, Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler;-><init>(Lcom/android/server/sepunion/cover/CoverDisabler;Landroid/os/Looper;)V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mHandler:Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler;

    .line 39
    .line 40
    const-string p1, "disable covermanager"

    .line 41
    .line 42
    invoke-virtual {p2, v1, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 49
    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final disableCoverManagerLocked(ZLandroid/os/IBinder;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_5

    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    goto/16 :goto_4

    .line 7
    .line 8
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "disableCoverManagerLocked : disable="

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " pkg="

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " token="

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "CoverManager_CoverDisabler"

    .line 39
    .line 40
    invoke-static {v2, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverDisabler;->manageDisableListLocked(ZLandroid/os/IBinder;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    move p3, v0

    .line 57
    :goto_0
    const/4 v3, 0x1

    .line 58
    if-ge p3, p2, :cond_2

    .line 59
    .line 60
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;

    .line 67
    .line 68
    iget-boolean v4, v4, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->disable:Z

    .line 69
    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    move p2, v3

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    move p2, v0

    .line 78
    :goto_1
    iget-boolean p3, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mCoverManagerDisabled:Z

    .line 79
    .line 80
    if-eq p2, p3, :cond_4

    .line 81
    .line 82
    iput-boolean p2, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mCoverManagerDisabled:Z

    .line 83
    .line 84
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 85
    .line 86
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-nez p2, :cond_3

    .line 91
    .line 92
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 93
    .line 94
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto :goto_3

    .line 100
    :cond_3
    :goto_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    iput v0, p2, Landroid/os/Message;->what:I

    .line 105
    .line 106
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 107
    .line 108
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mHandler:Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler;

    .line 109
    .line 110
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .line 112
    .line 113
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    .line 115
    .line 116
    return v3

    .line 117
    :cond_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    .line 119
    .line 120
    return v0

    .line 121
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :cond_5
    :goto_4
    return v0
.end method

.method public final manageDisableListLocked(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;

    .line 18
    .line 19
    iget-object v4, v3, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->token:Landroid/os/IBinder;

    .line 20
    .line 21
    if-ne v4, p2, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v3, 0x0

    .line 28
    :goto_1
    if-eqz p1, :cond_4

    .line 29
    .line 30
    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_2
    if-nez v3, :cond_3

    .line 38
    .line 39
    new-instance v3, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;

    .line 40
    .line 41
    invoke-direct {v3, p0}, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;-><init>(Lcom/android/server/sepunion/cover/CoverDisabler;)V

    .line 42
    .line 43
    .line 44
    :try_start_0
    invoke-interface {p2, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :catch_0
    return-void

    .line 54
    :cond_3
    :goto_2
    const/4 p0, 0x1

    .line 55
    iput-boolean p0, v3, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->disable:Z

    .line 56
    .line 57
    iput-object p2, v3, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->token:Landroid/os/IBinder;

    .line 58
    .line 59
    iput-object p3, v3, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->pkg:Ljava/lang/String;

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    iget-object p0, v3, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->token:Landroid/os/IBinder;

    .line 70
    .line 71
    invoke-interface {p0, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 72
    .line 73
    .line 74
    :cond_5
    :goto_4
    return-void
.end method
