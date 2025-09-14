.class public final Lcom/android/server/usage/AppStandbyController$1;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppStandbyController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$1;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final opChanged(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p4, p0, Lcom/android/server/usage/AppStandbyController$1;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 6
    .line 7
    iget-object p4, p4, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    .line 8
    .line 9
    monitor-enter p4

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$1;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 15
    .line 16
    .line 17
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$1;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 21
    .line 22
    const/16 p4, 0xb

    .line 23
    .line 24
    invoke-virtual {p0, p4, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0
.end method
