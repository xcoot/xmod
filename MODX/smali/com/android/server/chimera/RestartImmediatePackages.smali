.class public final Lcom/android/server/chimera/RestartImmediatePackages;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static INSTANCE:Lcom/android/server/chimera/RestartImmediatePackages;


# instance fields
.field public final sPackages:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/chimera/RestartImmediatePackages;->sPackages:Ljava/util/Map;

    .line 11
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/chimera/RestartImmediatePackages;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/chimera/RestartImmediatePackages;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/chimera/RestartImmediatePackages;->INSTANCE:Lcom/android/server/chimera/RestartImmediatePackages;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/chimera/RestartImmediatePackages;

    .line 10
    invoke-direct {v1}, Lcom/android/server/chimera/RestartImmediatePackages;-><init>()V

    .line 13
    sput-object v1, Lcom/android/server/chimera/RestartImmediatePackages;->INSTANCE:Lcom/android/server/chimera/RestartImmediatePackages;

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/chimera/RestartImmediatePackages;->INSTANCE:Lcom/android/server/chimera/RestartImmediatePackages;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw v1
.end method
