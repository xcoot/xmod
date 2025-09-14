.class public final Lcom/android/server/incident/PendingReports;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public mNextPendingId:I

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPending:Ljava/util/ArrayList;

.field public final mPermissionManager:Landroid/permission/PermissionManager;

.field public final mRequestQueue:Lcom/android/server/incident/RequestQueue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 9
    new-instance v1, Lcom/android/server/incident/RequestQueue;

    .line 11
    invoke-direct {v1, v0}, Lcom/android/server/incident/RequestQueue;-><init>(Landroid/os/Handler;)V

    .line 14
    iput-object v1, p0, Lcom/android/server/incident/PendingReports;->mRequestQueue:Lcom/android/server/incident/RequestQueue;

    .line 16
    new-instance v0, Ljava/lang/Object;

    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    .line 30
    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lcom/android/server/incident/PendingReports;->mNextPendingId:I

    .line 33
    iput-object p1, p0, Lcom/android/server/incident/PendingReports;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/android/server/incident/PendingReports;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 41
    const-class v0, Landroid/app/AppOpsManager;

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/app/AppOpsManager;

    .line 49
    iput-object v0, p0, Lcom/android/server/incident/PendingReports;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 51
    const-class v0, Landroid/permission/PermissionManager;

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/permission/PermissionManager;

    .line 59
    iput-object p1, p0, Lcom/android/server/incident/PendingReports;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 61
    return-void
.end method

.method public static denyReportBeforeAddingRec(Landroid/os/IIncidentAuthListener;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p0}, Landroid/os/IIncidentAuthListener;->onReportDenied()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "Failed calling back for denial for "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    const-string v0, "IncidentCompanionService"

    .line 22
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    :goto_0
    return-void
.end method


# virtual methods
.method public final approveReport(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "confirmApproved: Couldn\'t find record for uri: "

    .line 4
    iget-object v1, p0, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/incident/PendingReports;->findAndRemovePendingReportRecLocked(Ljava/lang/String;)Lcom/android/server/incident/PendingReports$PendingReportRec;

    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_0

    .line 13
    const-string p0, "IncidentCompanionService"

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    monitor-exit v1

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_2

    .line 34
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {}, Lcom/android/server/incident/IncidentCompanionService;->getCurrentUserIfAdmin()I

    .line 38
    move-result v0

    .line 39
    const/16 v1, -0x2710

    .line 41
    if-ne v0, v1, :cond_1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/incident/PendingReports;->getApproverComponent(I)Landroid/content/ComponentName;

    .line 47
    move-result-object v1

    .line 48
    if-nez v1, :cond_2

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/server/incident/PendingReports;->sendBroadcast(ILandroid/content/ComponentName;)V

    .line 54
    :goto_0
    const-string p0, "IncidentCompanionService"

    .line 56
    const-string v0, "Approved report: "

    .line 58
    invoke-static {v0, p1, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :try_start_1
    iget-object p0, v2, Lcom/android/server/incident/PendingReports$PendingReportRec;->listener:Landroid/os/IIncidentAuthListener;

    .line 63
    invoke-interface {p0}, Landroid/os/IIncidentAuthListener;->onReportApproved()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    goto :goto_1

    .line 67
    :catch_0
    move-exception p0

    .line 68
    const-string v0, "IncidentCompanionService"

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    const-string v2, "Failed calling back for approval for: "

    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    :goto_1
    return-void

    .line 88
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    throw p0
.end method

.method public final cancelReportImpl(Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/incident/PendingReports;->removePendingReportRecLocked(Landroid/os/IIncidentAuthListener;)V

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0, p3, p2}, Lcom/android/server/incident/PendingReports;->sendBroadcast(ILandroid/content/ComponentName;)V

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw p0
.end method

.method public final denyReport(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "confirmDenied: Couldn\'t find record for uri: "

    .line 4
    iget-object v1, p0, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/incident/PendingReports;->findAndRemovePendingReportRecLocked(Ljava/lang/String;)Lcom/android/server/incident/PendingReports$PendingReportRec;

    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_0

    .line 13
    const-string p0, "IncidentCompanionService"

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    monitor-exit v1

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_2

    .line 34
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {}, Lcom/android/server/incident/IncidentCompanionService;->getCurrentUserIfAdmin()I

    .line 38
    move-result v0

    .line 39
    const/16 v1, -0x2710

    .line 41
    if-ne v0, v1, :cond_1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/incident/PendingReports;->getApproverComponent(I)Landroid/content/ComponentName;

    .line 47
    move-result-object v1

    .line 48
    if-nez v1, :cond_2

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/server/incident/PendingReports;->sendBroadcast(ILandroid/content/ComponentName;)V

    .line 54
    :goto_0
    const-string p0, "IncidentCompanionService"

    .line 56
    const-string v0, "Denied report: "

    .line 58
    invoke-static {v0, p1, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :try_start_1
    iget-object p0, v2, Lcom/android/server/incident/PendingReports$PendingReportRec;->listener:Landroid/os/IIncidentAuthListener;

    .line 63
    invoke-interface {p0}, Landroid/os/IIncidentAuthListener;->onReportDenied()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    goto :goto_1

    .line 67
    :catch_0
    move-exception p0

    .line 68
    const-string v0, "IncidentCompanionService"

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    const-string v2, "Failed calling back for denial for: "

    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    :goto_1
    return-void

    .line 88
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    throw p0
.end method

.method public final findAndRemovePendingReportRecLocked(Ljava/lang/String;)Lcom/android/server/incident/PendingReports$PendingReportRec;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    const-string/jumbo v2, "id"

    .line 9
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 16
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    iget-object p0, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p0

    .line 23
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/server/incident/PendingReports$PendingReportRec;

    .line 35
    iget v2, v0, Lcom/android/server/incident/PendingReports$PendingReportRec;->id:I

    .line 37
    if-ne v2, p1, :cond_0

    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 42
    return-object v0

    .line 43
    :cond_1
    return-object v1

    .line 44
    :catch_0
    const-string p0, "Can\'t parse id from: "

    .line 46
    const-string v0, "IncidentCompanionService"

    .line 48
    invoke-static {p0, p1, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-object v1
.end method

.method public final getApproverComponent(I)Landroid/content/ComponentName;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.intent.action.PENDING_INCIDENT_REPORTS_CHANGED"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/android/server/incident/PendingReports;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 10
    const/high16 v1, 0x1c0000

    .line 12
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 19
    move-result p1

    .line 20
    const/4 v0, 0x1

    .line 21
    if-ne p1, v0, :cond_0

    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 30
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    const-string v0, "Didn\'t find exactly one BroadcastReceiver to handle android.intent.action.PENDING_INCIDENT_REPORTS_CHANGED. The report will be denied. size="

    .line 43
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 49
    move-result v0

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string v0, ": matches="

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    const-string p1, "IncidentCompanionService"

    .line 67
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 p0, 0x0

    .line 71
    return-object p0
.end method

.method public final removePendingReportRecLocked(Landroid/os/IIncidentAuthListener;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/incident/PendingReports$PendingReportRec;

    .line 19
    iget-object v1, v0, Lcom/android/server/incident/PendingReports$PendingReportRec;->listener:Landroid/os/IIncidentAuthListener;

    .line 21
    invoke-interface {v1}, Landroid/os/IIncidentAuthListener;->asBinder()Landroid/os/IBinder;

    .line 24
    move-result-object v1

    .line 25
    invoke-interface {p1}, Landroid/os/IIncidentAuthListener;->asBinder()Landroid/os/IBinder;

    .line 28
    move-result-object v2

    .line 29
    if-ne v1, v2, :cond_0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    const-string v2, "  ...Removed PendingReportRec index="

    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const-string v2, ": "

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Lcom/android/server/incident/PendingReports$PendingReportRec;->getUri()Landroid/net/Uri;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    const-string v1, "IncidentCompanionService"

    .line 59
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method

.method public final sendBroadcast(ILandroid/content/ComponentName;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.intent.action.PENDING_INCIDENT_REPORTS_CHANGED"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 11
    const/high16 p2, 0x10000000

    .line 13
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 16
    const/high16 p2, 0x1000000

    .line 18
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 24
    move-result-object p2

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p2, v1}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 29
    iget-object p0, p0, Lcom/android/server/incident/PendingReports;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 34
    move-result-object p1

    .line 35
    const-string v1, "android.permission.APPROVE_INCIDENT_REPORTS"

    .line 37
    invoke-virtual {p2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 44
    return-void
.end method
