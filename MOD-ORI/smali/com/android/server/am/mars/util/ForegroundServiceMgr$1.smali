.class public final Lcom/android/server/am/mars/util/ForegroundServiceMgr$1;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/util/ForegroundServiceMgr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$1;->this$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

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
    .locals 0

    .line 1
    return-void
.end method

.method public final onForegroundServicesChanged(III)V
    .locals 2

    .line 1
    sget-boolean p1, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 2
    .line 3
    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 4
    .line 5
    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    :try_start_0
    iget-object p1, p1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_2

    .line 30
    :catch_0
    move-exception p1

    .line 31
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    :goto_0
    if-nez p1, :cond_0

    .line 39
    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string/jumbo v0, "package name not found for uid "

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v0, "MARsPolicyManager"

    .line 56
    .line 57
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    const/4 v0, 0x0

    .line 66
    aget-object p1, p1, v0

    .line 67
    .line 68
    :goto_1
    if-eqz p1, :cond_2

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$1;->this$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->isFGSTarget(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$1;->this$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mMapFGSRecord:Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    .line 85
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Lcom/android/server/am/mars/ForegroundServiceRecord;

    .line 94
    .line 95
    if-nez v0, :cond_1

    .line 96
    .line 97
    new-instance v0, Lcom/android/server/am/mars/ForegroundServiceRecord;

    .line 98
    .line 99
    invoke-direct {v0, p1}, Lcom/android/server/am/mars/ForegroundServiceRecord;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$1;->this$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mMapFGSRecord:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    .line 106
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    :cond_1
    iget p0, v0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mForegroundType:I

    .line 114
    .line 115
    or-int/2addr p0, p3

    .line 116
    iput p0, v0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mForegroundType:I

    .line 117
    .line 118
    :cond_2
    return-void

    .line 119
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    .line 121
    .line 122
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
