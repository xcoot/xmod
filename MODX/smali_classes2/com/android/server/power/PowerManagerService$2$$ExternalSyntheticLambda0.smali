.class public final synthetic Lcom/android/server/power/PowerManagerService$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/PowerManagerService$1;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService$1;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/PowerManagerService$1;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/power/PowerManagerService$2$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/PowerManagerService$1;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService$2$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 11
    .line 12
    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mUseAdaptiveScreenOffTimeout:Z

    .line 13
    .line 14
    if-eq v2, p0, :cond_1

    .line 15
    .line 16
    iput-boolean p0, v0, Lcom/android/server/power/PowerManagerService;->mUseAdaptiveScreenOffTimeout:Z

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    iget-object p0, v0, Lcom/android/server/power/PowerManagerService;->mForegroundPackageObserver:Lcom/android/server/power/ForegroundPackageObserver;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mAdaptiveScreenOffTimeoutController:Lcom/android/server/power/AdaptiveScreenOffTimeoutController;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/android/server/power/ForegroundPackageObserver;->addObserver(Ljava/util/Observer;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object p0, v0, Lcom/android/server/power/PowerManagerService;->mForegroundPackageObserver:Lcom/android/server/power/ForegroundPackageObserver;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mAdaptiveScreenOffTimeoutController:Lcom/android/server/power/AdaptiveScreenOffTimeoutController;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/android/server/power/ForegroundPackageObserver;->deleteObserver(Ljava/util/Observer;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    monitor-exit v1

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method
