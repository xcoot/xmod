.class public final Lcom/android/server/AppStateTrackerImpl$UidObserver;
.super Landroid/app/UidObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$UidObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUidActive(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$UidObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    .line 4
    .line 5
    const/16 v0, 0xc

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onUidCachedChanged(IZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$UidObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    .line 4
    .line 5
    const/16 v0, 0xf

    .line 6
    .line 7
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onUidGone(IZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$UidObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    .line 4
    .line 5
    const/16 v0, 0xd

    .line 6
    .line 7
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onUidIdle(IZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$UidObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    .line 4
    .line 5
    const/16 v0, 0xe

    .line 6
    .line 7
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
