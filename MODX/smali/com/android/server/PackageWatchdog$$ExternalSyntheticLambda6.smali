.class public final synthetic Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/PackageWatchdog;

.field public final synthetic f$1:Lcom/android/server/PackageWatchdog$ObserverInternal;

.field public final synthetic f$2:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/PackageWatchdog;

    .line 6
    iput-object p2, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda6;->f$1:Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 8
    iput-object p3, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda6;->f$2:Ljava/util/Set;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/PackageWatchdog;

    .line 3
    iget-object v1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda6;->f$1:Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 5
    iget-object p0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda6;->f$2:Ljava/util/Set;

    .line 7
    iget-object v2, v0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v1, v1, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 12
    if-eqz v1, :cond_1

    .line 14
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 30
    iget-object v3, v3, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mPackageName:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v3}, Lcom/android/server/PackageWatchdog;->getVersionedPackage(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;

    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_0

    .line 38
    const-string v4, "PackageWatchdog"

    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    const-string v6, "Explicit health check failed for package "

    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v5

    .line 57
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v4, 0x2

    .line 61
    const/4 v5, 0x1

    .line 62
    invoke-interface {v1, v3, v4, v5}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->execute(Landroid/content/pm/VersionedPackage;II)Z

    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    monitor-exit v2

    .line 69
    return-void

    .line 70
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p0
.end method
