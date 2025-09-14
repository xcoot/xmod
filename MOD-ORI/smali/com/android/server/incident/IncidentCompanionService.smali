.class public final Lcom/android/server/incident/IncidentCompanionService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DUMP_AND_USAGE_STATS_PERMISSIONS:[Ljava/lang/String;

.field public static final RESTRICTED_IMAGE_DUMP_ARGS:[Ljava/lang/String;


# instance fields
.field public final mPendingReports:Lcom/android/server/incident/PendingReports;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "--hal"

    .line 2
    .line 3
    const-string v1, "--restricted_image"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/android/server/incident/IncidentCompanionService;->RESTRICTED_IMAGE_DUMP_ARGS:[Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "android.permission.DUMP"

    .line 12
    .line 13
    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    .line 14
    .line 15
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/android/server/incident/IncidentCompanionService;->DUMP_AND_USAGE_STATS_PERMISSIONS:[Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/incident/PendingReports;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/android/server/incident/PendingReports;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/incident/IncidentCompanionService;->mPendingReports:Lcom/android/server/incident/PendingReports;

    .line 10
    .line 11
    return-void
.end method

.method public static getCurrentUserIfAdmin()I
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    const/16 v1, -0x2710

    .line 10
    .line 11
    const-string v2, "IncidentCompanionService"

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string v0, "No current user.  Nobody to approve the report. The report will be denied."

    .line 16
    .line 17
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    const-string v0, "Only an admin user running in foreground can approve bugreports, but the current foreground user is not an admin user. The report will be denied."

    .line 28
    .line 29
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return v1

    .line 33
    :cond_1
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 34
    .line 35
    return v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    new-instance v1, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw v1
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3e8

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService;->mPendingReports:Lcom/android/server/incident/PendingReports;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/incident/PendingReports;->mRequestQueue:Lcom/android/server/incident/RequestQueue;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    .line 14
    .line 15
    monitor-enter p1

    .line 16
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/incident/RequestQueue;->mStarted:Z

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-lez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/incident/RequestQueue;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/incident/RequestQueue;->mWorker:Lcom/android/server/incident/RequestQueue$1;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/android/server/incident/RequestQueue;->mStarted:Z

    .line 40
    .line 41
    :cond_2
    monitor-exit p1

    .line 42
    :goto_1
    return-void

    .line 43
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/incident/IncidentCompanionService$BinderService;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/incident/IncidentCompanionService$BinderService;-><init>(Lcom/android/server/incident/IncidentCompanionService;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "incidentcompanion"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
