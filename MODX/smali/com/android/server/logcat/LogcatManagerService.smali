.class public final Lcom/android/server/logcat/LogcatManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final PENDING_CONFIRMATION_TIMEOUT_MILLIS:I

.field static final STATUS_EXPIRATION_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field public final mActiveLogAccessCount:Ljava/util/Map;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mBinderService:Lcom/android/server/logcat/LogcatManagerService$BinderService;

.field public final mClock:Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;

.field public final mContext:Landroid/content/Context;

.field public final mDialogCallback:Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;

.field public final mHandler:Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;

.field public final mInjector:Lcom/android/server/logcat/LogcatManagerService$Injector;

.field public final mLogAccessStatus:Ljava/util/Map;

.field public mLogdService:Landroid/os/ILogd;

.field public final mSecurityLogHandlerCallback:Lcom/android/server/logcat/LogcatManagerService$KnoxSecurityLogHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const v0, 0x11170

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const v0, 0x61a80

    .line 12
    :goto_0
    sput v0, Lcom/android/server/logcat/LogcatManagerService;->PENDING_CONFIRMATION_TIMEOUT_MILLIS:I

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/logcat/LogcatManagerService$Injector;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance v1, Landroid/util/ArrayMap;

    .line 11
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    .line 16
    new-instance v1, Landroid/util/ArrayMap;

    .line 18
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    .line 23
    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mContext:Landroid/content/Context;

    .line 25
    iput-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mInjector:Lcom/android/server/logcat/LogcatManagerService$Injector;

    .line 27
    new-instance p1, Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;

    .line 29
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mClock:Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;

    .line 34
    new-instance p1, Lcom/android/server/logcat/LogcatManagerService$BinderService;

    .line 36
    invoke-direct {p1, p0}, Lcom/android/server/logcat/LogcatManagerService$BinderService;-><init>(Lcom/android/server/logcat/LogcatManagerService;)V

    .line 39
    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mBinderService:Lcom/android/server/logcat/LogcatManagerService$BinderService;

    .line 41
    new-instance p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;

    .line 43
    invoke-direct {p1, p0}, Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;-><init>(Lcom/android/server/logcat/LogcatManagerService;)V

    .line 46
    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mDialogCallback:Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;

    .line 48
    new-instance p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;

    .line 50
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 53
    move-result-object v0

    .line 54
    invoke-direct {p1, v0, p0}, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;-><init>(Landroid/os/Looper;Lcom/android/server/logcat/LogcatManagerService;)V

    .line 57
    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;

    .line 59
    new-instance p1, Lcom/android/server/logcat/LogcatManagerService$KnoxSecurityLogHandler;

    .line 61
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 64
    move-result-object v0

    .line 65
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 68
    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mSecurityLogHandlerCallback:Lcom/android/server/logcat/LogcatManagerService$KnoxSecurityLogHandler;

    .line 70
    return-void
.end method


# virtual methods
.method public final approveRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V
    .locals 6

    .line 1
    const-string v0, "LogcatManagerService"

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/logcat/LogcatManagerService;->getLogdService()Landroid/os/ILogd;

    .line 6
    move-result-object v1

    .line 7
    iget v2, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    .line 9
    iget v3, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    .line 11
    iget v4, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    .line 13
    iget v5, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    .line 15
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/ILogd;->approve(IIII)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :catch_1
    :try_start_1
    const-string v1, "Logd connection no longer valid while approving, trying once more."

    .line 23
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogdService:Landroid/os/ILogd;

    .line 29
    invoke-virtual {p0}, Lcom/android/server/logcat/LogcatManagerService;->getLogdService()Landroid/os/ILogd;

    .line 32
    move-result-object v1

    .line 33
    iget v2, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    .line 35
    iget v3, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    .line 37
    iget v4, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    .line 39
    iget p2, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    .line 41
    invoke-interface {v1, v2, v3, v4, p2}, Landroid/os/ILogd;->approve(IIII)V

    .line 44
    :goto_0
    iget-object p2, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v1

    .line 51
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Ljava/lang/Integer;

    .line 57
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    .line 59
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 62
    move-result p2

    .line 63
    add-int/lit8 p2, p2, 0x1

    .line 65
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object p2

    .line 69
    check-cast p0, Landroid/util/ArrayMap;

    .line 71
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    goto :goto_2

    .line 75
    :goto_1
    const-string p1, "Fails to call remote functions"

    .line 77
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    :goto_2
    return-void
.end method

.method public final declineRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V
    .locals 6

    .line 1
    const-string v0, "LogcatManagerService"

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/logcat/LogcatManagerService;->getLogdService()Landroid/os/ILogd;

    .line 6
    move-result-object v1

    .line 7
    iget v2, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    .line 9
    iget v3, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    .line 11
    iget v4, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    .line 13
    iget v5, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    .line 15
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/ILogd;->decline(IIII)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_1

    .line 19
    :catch_0
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :catch_1
    :try_start_1
    const-string v1, "Logd connection no longer valid while declining, trying once more."

    .line 23
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogdService:Landroid/os/ILogd;

    .line 29
    invoke-virtual {p0}, Lcom/android/server/logcat/LogcatManagerService;->getLogdService()Landroid/os/ILogd;

    .line 32
    move-result-object p0

    .line 33
    iget v1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    .line 35
    iget v2, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    .line 37
    iget v3, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    .line 39
    iget p1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    .line 41
    invoke-interface {p0, v1, v2, v3, p1}, Landroid/os/ILogd;->decline(IIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    goto :goto_1

    .line 45
    :goto_0
    const-string p1, "Fails to call remote functions"

    .line 47
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    :goto_1
    return-void
.end method

.method public getBinderService()Landroid/os/logcat/ILogcatManagerService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mBinderService:Lcom/android/server/logcat/LogcatManagerService$BinderService;

    .line 3
    return-object p0
.end method

.method public final getClientForRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "LogcatManagerService"

    .line 10
    if-nez v0, :cond_0

    .line 12
    const-string p0, "PackageManager is null, declining the logd access"

    .line 14
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :goto_0
    move-object v3, v1

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    iget v3, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    .line 21
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 28
    move-result v3

    .line 29
    const-string v4, "Unknown calling package name, declining the logd access"

    .line 31
    if-eqz v3, :cond_1

    .line 33
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v3, p0, Lcom/android/server/logcat/LogcatManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 39
    if-eqz v3, :cond_4

    .line 41
    iget v5, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    .line 43
    invoke-virtual {v3, v5}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    :goto_1
    if-eqz v3, :cond_2

    .line 49
    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    move-result v6

    .line 53
    if-nez v6, :cond_3

    .line 55
    :cond_2
    const/4 v6, -0x1

    .line 56
    if-eq v5, v6, :cond_3

    .line 58
    invoke-static {v5}, Landroid/os/Process;->getParentPid(I)I

    .line 61
    move-result v5

    .line 62
    iget-object v3, p0, Lcom/android/server/logcat/LogcatManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 64
    invoke-virtual {v3, v5}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    .line 67
    move-result-object v3

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    if-eqz v3, :cond_4

    .line 71
    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_4

    .line 77
    goto :goto_2

    .line 78
    :cond_4
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 81
    const/4 p0, 0x0

    .line 82
    aget-object v3, v0, p0

    .line 84
    if-eqz v3, :cond_5

    .line 86
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 89
    move-result p0

    .line 90
    if-eqz p0, :cond_6

    .line 92
    :cond_5
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    goto :goto_0

    .line 96
    :cond_6
    :goto_2
    if-nez v3, :cond_7

    .line 98
    return-object v1

    .line 99
    :cond_7
    new-instance p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    .line 101
    iget p1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    .line 103
    invoke-direct {p0, p1, v3}, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;-><init>(ILjava/lang/String;)V

    .line 106
    return-object p0
.end method

.method public getDialogCallback()Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mDialogCallback:Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;

    .line 3
    return-object p0
.end method

.method public final getLogdService()Landroid/os/ILogd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogdService:Landroid/os/ILogd;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mInjector:Lcom/android/server/logcat/LogcatManagerService$Injector;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string/jumbo v0, "logd"

    .line 13
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/os/ILogd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ILogd;

    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogdService:Landroid/os/ILogd;

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogdService:Landroid/os/ILogd;

    .line 25
    return-object p0
.end method

.method public final onAccessApprovedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->scheduleStatusExpiry(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    .line 4
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    .line 6
    check-cast v0, Landroid/util/ArrayMap;

    .line 8
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    .line 14
    if-eqz v0, :cond_1

    .line 16
    iget-object v1, v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    .line 18
    check-cast v1, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v1

    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    .line 36
    invoke-virtual {p0, p1, v2}, Lcom/android/server/logcat/LogcatManagerService;->approveRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p0, 0x2

    .line 41
    iput p0, v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mStatus:I

    .line 43
    iget-object p0, v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    .line 45
    check-cast p0, Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 50
    :cond_1
    return-void
.end method

.method public final onAccessDeclinedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->scheduleStatusExpiry(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    .line 4
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    .line 6
    check-cast v0, Landroid/util/ArrayMap;

    .line 8
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    .line 14
    if-eqz p1, :cond_1

    .line 16
    iget-object v0, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    .line 18
    check-cast v0, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    .line 36
    invoke-virtual {p0, v1}, Lcom/android/server/logcat/LogcatManagerService;->declineRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p0, 0x3

    .line 41
    iput p0, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mStatus:I

    .line 43
    iget-object p0, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    .line 45
    check-cast p0, Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 50
    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 9
    iput-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 11
    const-string/jumbo v0, "logcat"

    .line 14
    iget-object v1, p0, Lcom/android/server/logcat/LogcatManagerService;->mBinderService:Lcom/android/server/logcat/LogcatManagerService$BinderService;

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    const-string v0, "LogcatManagerService"

    .line 23
    const-string v1, "Could not start the LogcatManagerService."

    .line 25
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    :goto_0
    return-void
.end method

.method public final scheduleStatusExpiry(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    iget-object v1, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;

    .line 4
    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 7
    const/4 v0, 0x5

    .line 8
    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 14
    move-result-object p1

    .line 15
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mClock:Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;

    .line 17
    invoke-virtual {p0}, Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/Long;

    .line 23
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 26
    move-result-wide v2

    .line 27
    const-wide/32 v4, 0xea60

    .line 30
    add-long/2addr v2, v4

    .line 31
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 34
    return-void
.end method
