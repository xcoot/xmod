.class public final Lcom/android/server/AppStateTrackerImpl$StandbyTracker;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 2
    .line 3
    iget-object p3, p3, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p3

    .line 6
    const/4 p5, 0x5

    .line 7
    if-ne p4, p5, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object p4, p0, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 10
    .line 11
    iget-object p4, p4, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 12
    .line 13
    invoke-virtual {p4, p2, p1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object p4, p0, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 21
    .line 22
    iget-object p4, p4, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 23
    .line 24
    invoke-virtual {p4, p2, p1}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    :goto_0
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    .line 33
    .line 34
    const/16 p1, 0xa

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 44
    .line 45
    .line 46
    :cond_1
    monitor-exit p3

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method
