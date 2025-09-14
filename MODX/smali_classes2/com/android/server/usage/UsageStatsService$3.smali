.class public final Lcom/android/server/usage/UsageStatsService$3;
.super Landroid/app/UidObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$3;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUidGone(IZ)V
    .locals 6

    .line 1
    const-wide/16 v3, 0x0

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    const/16 v2, 0x14

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move v1, p1

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService$3;->onUidStateChanged(IIJI)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onUidStateChanged(IIJI)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$3;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mIoHandler:Landroid/os/Handler;

    .line 4
    .line 5
    const/4 p3, 0x3

    .line 6
    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
