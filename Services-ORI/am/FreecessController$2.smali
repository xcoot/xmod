.class public final Lcom/android/server/am/FreecessController$2;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/FreecessController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 3

    .line 1
    if-eqz p3, :cond_3

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    .line 4
    .line 5
    iput p2, p1, Lcom/android/server/am/FreecessController;->mLastTopUid:I

    .line 6
    .line 7
    const-string p3, "FGActivity"

    .line 8
    .line 9
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 29
    .line 30
    monitor-enter p1

    .line 31
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    :try_start_1
    iget-object p3, p0, Lcom/android/server/am/FreecessController;->mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 33
    .line 34
    if-eqz p3, :cond_0

    .line 35
    .line 36
    iget-object p3, p3, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    if-lez p3, :cond_0

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Lcom/android/server/am/FreecessPkgStatus;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_2

    .line 57
    :cond_0
    const/4 p0, 0x0

    .line 58
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    if-eqz p0, :cond_1

    .line 60
    .line 61
    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->cancelRestrictState()V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catchall_1
    move-exception p0

    .line 68
    goto :goto_3

    .line 69
    :cond_1
    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 70
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :goto_2
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    :try_start_4
    throw p0

    .line 75
    :goto_3
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 76
    throw p0

    .line 77
    :cond_2
    :goto_4
    return-void

    .line 78
    :cond_3
    iget-object p1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    .line 79
    .line 80
    iget-boolean p1, p1, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    .line 81
    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    return-void

    .line 85
    :cond_4
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 86
    .line 87
    monitor-enter p1

    .line 88
    const p3, 0x186a0

    .line 89
    .line 90
    .line 91
    if-ge p2, p3, :cond_5

    .line 92
    .line 93
    :try_start_5
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    if-eqz p3, :cond_a

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :catchall_2
    move-exception p0

    .line 101
    goto :goto_8

    .line 102
    :cond_5
    :goto_5
    iget-object p3, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    .line 103
    .line 104
    invoke-virtual {p3, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    if-nez p3, :cond_6

    .line 109
    .line 110
    monitor-exit p1

    .line 111
    return-void

    .line 112
    :cond_6
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 113
    .line 114
    iget-object v1, p3, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 115
    .line 116
    iget v2, p3, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 117
    .line 118
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_7

    .line 123
    .line 124
    monitor-exit p1

    .line 125
    return-void

    .line 126
    :cond_7
    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 127
    .line 128
    iget-object p3, p3, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 129
    .line 130
    iget-object p0, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    .line 131
    .line 132
    iget-boolean v1, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 133
    .line 134
    if-nez v1, :cond_9

    .line 135
    .line 136
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    .line 137
    .line 138
    if-eqz p0, :cond_8

    .line 139
    .line 140
    goto :goto_6

    .line 141
    :cond_8
    const/4 p0, 0x0

    .line 142
    goto :goto_7

    .line 143
    :cond_9
    :goto_6
    const/4 p0, 0x1

    .line 144
    :goto_7
    const-string v1, "Bg"

    .line 145
    .line 146
    invoke-virtual {v0, p2, p3, v1, p0}, Lcom/android/server/am/FreecessHandler;->sendUidLcdOnQuickFzMsg(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 147
    .line 148
    .line 149
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    if-eqz p0, :cond_a

    .line 154
    .line 155
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 156
    .line 157
    :cond_a
    monitor-exit p1

    .line 158
    return-void

    .line 159
    :goto_8
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 160
    throw p0
.end method

.method public final onForegroundServicesChanged(III)V
    .locals 2

    .line 1
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    const v0, 0x186a0

    .line 5
    .line 6
    .line 7
    if-ge p2, v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    .line 19
    .line 20
    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-nez p0, :cond_1

    .line 25
    .line 26
    monitor-exit p1

    .line 27
    return-void

    .line 28
    :cond_1
    sget-object p2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 31
    .line 32
    iget v1, p0, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 33
    .line 34
    invoke-virtual {p2, v1, v0}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-nez p2, :cond_2

    .line 39
    .line 40
    monitor-exit p1

    .line 41
    return-void

    .line 42
    :cond_2
    iput p3, p0, Lcom/android/server/am/FreecessPkgStatus;->serviceTypes:I

    .line 43
    .line 44
    :cond_3
    monitor-exit p1

    .line 45
    return-void

    .line 46
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

.method public final onProcessDied(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
