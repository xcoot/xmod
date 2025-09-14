.class public final Lcom/android/server/incident/IncidentCompanionService$BinderService;
.super Landroid/os/IIncidentCompanion$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/incident/IncidentCompanionService;


# direct methods
.method public constructor <init>(Lcom/android/server/incident/IncidentCompanionService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/IIncidentCompanion$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final approveReport(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.APPROVE_INCIDENT_REPORTS"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService;->mPendingReports:Lcom/android/server/incident/PendingReports;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/incident/PendingReports;->approveReport(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final authorizeReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "android.permission.REQUEST_INCIDENT_REPORT_APPROVAL"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    :try_start_0
    iget-object v0, v0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/incident/IncidentCompanionService;->mPendingReports:Lcom/android/server/incident/PendingReports;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-interface/range {p6 .. p6}, Landroid/os/IIncidentAuthListener;->asBinder()Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object v11

    .line 29
    new-instance v12, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    move-object v3, v12

    .line 32
    move-object v4, v0

    .line 33
    move v5, p1

    .line 34
    move-object v6, p2

    .line 35
    move-object/from16 v7, p3

    .line 36
    .line 37
    move-object/from16 v8, p4

    .line 38
    .line 39
    move/from16 v9, p5

    .line 40
    .line 41
    move-object/from16 v10, p6

    .line 42
    .line 43
    invoke-direct/range {v3 .. v10}, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/incident/PendingReports;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/server/incident/PendingReports;->mRequestQueue:Lcom/android/server/incident/RequestQueue;

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    invoke-virtual {v0, v11, v3, v12}, Lcom/android/server/incident/RequestQueue;->enqueue(Landroid/os/IBinder;ZLjava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    throw v0
.end method

.method public final cancelAuthorization(Landroid/os/IIncidentAuthListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.REQUEST_INCIDENT_REPORT_APPROVAL"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService;->mPendingReports:Lcom/android/server/incident/PendingReports;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Landroid/os/IIncidentAuthListener;->asBinder()Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda1;

    .line 29
    .line 30
    invoke-direct {v3, p0, p1}, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/incident/PendingReports;Landroid/os/IIncidentAuthListener;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/incident/PendingReports;->mRequestQueue:Lcom/android/server/incident/RequestQueue;

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/incident/RequestQueue;->enqueue(Landroid/os/IBinder;ZLjava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public final deleteAllIncidentReports(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceAccessReportsPermissions(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string/jumbo p0, "incident"

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0, p1}, Landroid/os/IIncidentManager;->deleteAllIncidentReports(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 45
    .line 46
    const-string p1, "Invalid pkg"

    .line 47
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method

.method public final deleteIncidentReports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceAccessReportsPermissions(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    :try_start_0
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    const-string/jumbo p0, "incident"

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-interface {p0, p1, p2, p3}, Landroid/os/IIncidentManager;->deleteIncidentReports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 61
    .line 62
    const-string p1, "Invalid pkg, cls or id"

    .line 63
    .line 64
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final denyReport(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.APPROVE_INCIDENT_REPORTS"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService;->mPendingReports:Lcom/android/server/incident/PendingReports;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/incident/PendingReports;->denyReport(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "IncidentCompanionService"

    .line 8
    .line 9
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    array-length v0, p3

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne v0, v2, :cond_3

    .line 20
    .line 21
    const-string v0, "--restricted_image"

    .line 22
    .line 23
    aget-object v2, p3, v1

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    sget-boolean p2, Landroid/os/Build;->IS_ENG:Z

    .line 32
    .line 33
    if-nez p2, :cond_1

    .line 34
    .line 35
    sget-boolean p2, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 36
    .line 37
    if-nez p2, :cond_1

    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_1
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const p2, 0x1070146

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    array-length p2, p0

    .line 59
    :goto_0
    if-ge v1, p2, :cond_5

    .line 60
    .line 61
    aget-object p3, p0, v1

    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v2, "Looking up service "

    .line 66
    .line 67
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v2, "IncidentCompanionService"

    .line 78
    .line 79
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    const-string v3, "Calling dump on service: "

    .line 89
    .line 90
    invoke-static {v3, p3, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :try_start_0
    sget-object v3, Lcom/android/server/incident/IncidentCompanionService;->RESTRICTED_IMAGE_DUMP_ARGS:[Ljava/lang/String;

    .line 94
    .line 95
    invoke-interface {v0, p1, v3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string/jumbo v4, "dump --restricted_image of "

    .line 103
    .line 104
    .line 105
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p3, " threw"

    .line 112
    .line 113
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    invoke-static {v2, p3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .line 122
    .line 123
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    .line 127
    .line 128
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService;->mPendingReports:Lcom/android/server/incident/PendingReports;

    .line 129
    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    const-string/jumbo p1, "mPending: ("

    .line 134
    .line 135
    .line 136
    array-length p3, p3

    .line 137
    if-nez p3, :cond_5

    .line 138
    .line 139
    new-instance p3, Ljava/text/SimpleDateFormat;

    .line 140
    .line 141
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 142
    .line 143
    .line 144
    invoke-direct {p3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    .line 148
    .line 149
    monitor-enter v0

    .line 150
    :try_start_1
    iget-object v2, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string p1, ")"

    .line 165
    .line 166
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :goto_2
    if-ge v1, v2, :cond_4

    .line 177
    .line 178
    iget-object p1, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Lcom/android/server/incident/PendingReports$PendingReportRec;

    .line 185
    .line 186
    const-string v3, "  %11d %s: %s"

    .line 187
    .line 188
    iget-wide v4, p1, Lcom/android/server/incident/PendingReports$PendingReportRec;->addedRealtime:J

    .line 189
    .line 190
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    new-instance v5, Ljava/util/Date;

    .line 195
    .line 196
    iget-wide v6, p1, Lcom/android/server/incident/PendingReports$PendingReportRec;->addedWalltime:J

    .line 197
    .line 198
    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-virtual {p1}, Lcom/android/server/incident/PendingReports$PendingReportRec;->getUri()Landroid/net/Uri;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    filled-new-array {v4, v5, p1}, [Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    add-int/lit8 v1, v1, 0x1

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :catchall_0
    move-exception p0

    .line 228
    goto :goto_3

    .line 229
    :cond_4
    monitor-exit v0

    .line 230
    goto :goto_4

    .line 231
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    throw p0

    .line 233
    :cond_5
    :goto_4
    return-void
.end method

.method public final enforceAccessReportsPermissions(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "Unknown package "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "android.permission.APPROVE_INCIDENT_REPORTS"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "android.permission.DUMP"

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    const-string v1, "Calling uid "

    .line 43
    .line 44
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const/4 v4, 0x0

    .line 63
    invoke-virtual {p0, p1, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    if-eqz p0, :cond_1

    .line 68
    .line 69
    iget v3, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 70
    .line 71
    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_0

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    .line 79
    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, " gave package "

    .line 89
    .line 90
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, " which is owned by uid "

    .line 97
    .line 98
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 102
    .line 103
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-direct {v3, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v3

    .line 114
    :catch_0
    move-exception p0

    .line 115
    goto :goto_0

    .line 116
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-direct {p0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    new-instance v1, Ljava/lang/SecurityException;

    .line 127
    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string p1, "\n"

    .line 137
    .line 138
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-direct {v1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v1

    .line 152
    :cond_2
    :goto_1
    return-void
.end method

.method public final getIncidentReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IncidentManager$IncidentReport;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceAccessReportsPermissions(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    :try_start_0
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    const-string/jumbo p0, "incident"

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-interface {p0, p1, p2, p3}, Landroid/os/IIncidentManager;->getIncidentReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IncidentManager$IncidentReport;

    .line 49
    .line 50
    .line 51
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    return-object p0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 62
    .line 63
    const-string p1, "Invalid pkg, cls or id"

    .line 64
    .line 65
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public final getIncidentReportList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceAccessReportsPermissions(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string/jumbo p0, "incident"

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p0, p1, p2}, Landroid/os/IIncidentManager;->getIncidentReportList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final getPendingReports()Ljava/util/List;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.APPROVE_INCIDENT_REPORTS"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService;->mPendingReports:Lcom/android/server/incident/PendingReports;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    :goto_0
    if-ge v3, v1, :cond_0

    .line 33
    .line 34
    iget-object v4, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lcom/android/server/incident/PendingReports$PendingReportRec;

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/android/server/incident/PendingReports$PendingReportRec;->getUri()Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    monitor-exit v0

    .line 59
    return-object v2

    .line 60
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method

.method public final sendReportReadyBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "sendReportReadyBroadcast sending currentUser="

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "android.permission.REQUEST_INCIDENT_REPORT_APPROVAL"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {}, Lcom/android/server/incident/IncidentCompanionService;->getCurrentUserIfAdmin()I

    .line 27
    .line 28
    .line 29
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    const/16 v4, -0x2710

    .line 31
    .line 32
    if-ne v3, v4, :cond_0

    .line 33
    .line 34
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    .line 39
    .line 40
    const-string v5, "android.intent.action.INCIDENT_REPORT_READY"

    .line 41
    .line 42
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v5, Landroid/content/ComponentName;

    .line 46
    .line 47
    invoke-direct {v5, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    const-string p1, "IncidentCompanionService"

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, " userHandle="

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v0, " intent="

    .line 76
    .line 77
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    sget-object p2, Lcom/android/server/incident/IncidentCompanionService;->DUMP_AND_USAGE_STATS_PERMISSIONS:[Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p0, v4, p1, p2}, Landroid/content/Context;->sendBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    .line 106
    .line 107
    throw p0
.end method
