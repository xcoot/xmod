.class Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;
.super Landroid/app/IAppTraceRetriever$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppExitInfoTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 3
    invoke-direct {p0}, Landroid/app/IAppTraceRetriever$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final getTraceFileDescriptor(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 3
    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 5
    const-string/jumbo v1, "getTraceFileDescriptor"

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_3

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 23
    move-result v2

    .line 24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    move-result v0

    .line 28
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 31
    move-result p2

    .line 32
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 34
    iget-object v1, v1, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 36
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 38
    const-string/jumbo v7, "getTraceFileDescriptor"

    .line 41
    const/4 v5, 0x1

    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    move v3, v0

    .line 45
    move v4, p2

    .line 46
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 51
    iget-object v1, v1, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 53
    const-string/jumbo v2, "getTraceFileDescriptor"

    .line 56
    invoke-virtual {v1, p2, v0, p1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceDumpPermissionForPackage(IILjava/lang/String;Ljava/lang/String;)I

    .line 59
    move-result p2

    .line 60
    const/4 v0, -0x1

    .line 61
    const/4 v1, 0x0

    .line 62
    if-eq p2, v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 66
    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 68
    monitor-enter v0

    .line 69
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 71
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfoLocked(IILjava/lang/String;)Landroid/app/ApplicationExitInfo;

    .line 74
    move-result-object p0

    .line 75
    if-nez p0, :cond_0

    .line 77
    monitor-exit v0

    .line 78
    return-object v1

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    .line 84
    move-result-object p0

    .line 85
    if-nez p0, :cond_1

    .line 87
    monitor-exit v0

    .line 88
    return-object v1

    .line 89
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 92
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    const/high16 p3, 0x10000000

    .line 95
    :try_start_1
    invoke-static {p0, p3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 98
    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    :try_start_2
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    monitor-exit v0

    .line 103
    return-object p0

    .line 104
    :catchall_1
    move-exception p0

    .line 105
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    throw p0

    .line 109
    :catch_0
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 112
    monitor-exit v0

    .line 113
    return-object v1

    .line 114
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    throw p0

    .line 116
    :cond_2
    return-object v1

    .line 117
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 119
    const-string p1, "Invalid package name"

    .line 121
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    throw p0
.end method
