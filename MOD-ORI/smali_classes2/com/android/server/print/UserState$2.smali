.class public final Lcom/android/server/print/UserState$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final appId:I

.field public final listener:Landroid/print/IPrintJobStateChangeListener;

.field public final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method public constructor <init>(Lcom/android/server/print/UserState;Landroid/print/IPrintJobStateChangeListener;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/print/UserState$2;->this$0:Lcom/android/server/print/UserState;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/print/UserState$2;->listener:Landroid/print/IPrintJobStateChangeListener;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/print/UserState$2;->appId:I

    .line 9
    .line 10
    invoke-interface {p2}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/print/UserState$2;->listener:Landroid/print/IPrintJobStateChangeListener;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/print/UserState$2;->this$0:Lcom/android/server/print/UserState;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/UserState$2;->this$0:Lcom/android/server/print/UserState;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    check-cast v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method
