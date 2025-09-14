.class public final Lcom/android/server/appop/AppOpsService$8;
.super Landroid/os/RemoteCallbackList;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field public final synthetic val$key:Landroid/util/Pair;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/util/Pair;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$8;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$8;->val$key:Landroid/util/Pair;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCallbackDied(Landroid/os/IInterface;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$8;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$8;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$8;->val$key:Landroid/util/Pair;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit p1

    .line 25
    return-void

    .line 26
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method
