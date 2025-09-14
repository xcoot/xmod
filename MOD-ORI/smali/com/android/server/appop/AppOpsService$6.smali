.class public final Lcom/android/server/appop/AppOpsService$6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/appop/AppOpsManagerLocal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$6;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public isUidInForeground(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$6;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$6;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mUidStateTracker:Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->evalMode(III)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method
