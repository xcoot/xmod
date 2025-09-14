.class public final Lcom/android/server/integrity/AppIntegrityManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p1, p0, Lcom/android/server/integrity/AppIntegrityManagerService;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 9

    .line 1
    iget-object v1, p0, Lcom/android/server/integrity/AppIntegrityManagerService;->mContext:Landroid/content/Context;

    .line 3
    sget-object v0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->PACKAGE_INSTALLER:Ljava/util/Set;

    .line 5
    const-string v0, "AppIntegrityManagerServiceHandler"

    .line 7
    invoke-static {v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 10
    move-result-object v0

    .line 11
    new-instance v7, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

    .line 13
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 15
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 21
    new-instance v3, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda0;

    .line 23
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v4, Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    .line 28
    monitor-enter v4

    .line 29
    :try_start_0
    new-instance v5, Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    .line 31
    invoke-static {}, Lcom/android/server/integrity/IntegrityFileManager;->getInstance()Lcom/android/server/integrity/IntegrityFileManager;

    .line 34
    move-result-object v6

    .line 35
    invoke-direct {v5, v6}, Lcom/android/server/integrity/engine/RuleEvaluationEngine;-><init>(Lcom/android/server/integrity/IntegrityFileManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit v4

    .line 39
    invoke-static {}, Lcom/android/server/integrity/IntegrityFileManager;->getInstance()Lcom/android/server/integrity/IntegrityFileManager;

    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 46
    move-result-object v8

    .line 47
    move-object v0, v7

    .line 48
    move-object v4, v5

    .line 49
    move-object v5, v6

    .line 50
    move-object v6, v8

    .line 51
    invoke-direct/range {v0 .. v6}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/integrity/engine/RuleEvaluationEngine;Lcom/android/server/integrity/IntegrityFileManager;Landroid/os/Handler;)V

    .line 54
    const-string v0, "app_integrity"

    .line 56
    invoke-virtual {p0, v0, v7}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    monitor-exit v4

    .line 62
    throw p0
.end method
