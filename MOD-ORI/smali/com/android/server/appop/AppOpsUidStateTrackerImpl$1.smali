.class public final Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;


# instance fields
.field public final synthetic val$handler:Landroid/os/Handler;

.field public final synthetic val$lockingExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda11;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;->val$handler:Landroid/os/Handler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;->val$lockingExecutor:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;->val$handler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;->val$lockingExecutor:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    check-cast p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda11;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda11;Ljava/lang/Runnable;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final executeDelayed(Ljava/lang/Runnable;J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;->val$handler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;->val$lockingExecutor:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    check-cast p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda11;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda11;Ljava/lang/Runnable;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
