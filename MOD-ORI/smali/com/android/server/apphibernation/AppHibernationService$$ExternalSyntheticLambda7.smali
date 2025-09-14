.class public final synthetic Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/apphibernation/AppHibernationService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/android/server/apphibernation/GlobalLevelState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;Lcom/android/server/apphibernation/GlobalLevelState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/apphibernation/AppHibernationService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda7;->f$2:Lcom/android/server/apphibernation/GlobalLevelState;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/apphibernation/AppHibernationService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda7;->f$2:Lcom/android/server/apphibernation/GlobalLevelState;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string/jumbo v2, "hibernatePackageGlobally"

    .line 11
    .line 12
    .line 13
    const-wide/32 v3, 0x80000

    .line 14
    .line 15
    .line 16
    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-boolean v2, v0, Lcom/android/server/apphibernation/AppHibernationService;->mOatArtifactDeletionEnabled:Z

    .line 20
    .line 21
    const-wide/16 v5, 0x0

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-object v2, v0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 26
    .line 27
    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->deleteOatArtifactsOfPackage(Ljava/lang/String;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    :cond_0
    iget-object v0, v0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter v0

    .line 45
    :try_start_0
    iput-wide v5, p0, Lcom/android/server/apphibernation/GlobalLevelState;->savedByte:J

    .line 46
    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw p0
.end method
