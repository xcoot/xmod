.class public abstract Lcom/android/server/LogMteState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static register(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-class v0, Landroid/app/StatsManager;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/StatsManager;

    .line 9
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 11
    new-instance v1, Lcom/android/server/LogMteState$1;

    .line 13
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v2, 0x27c5

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 22
    return-void
.end method
