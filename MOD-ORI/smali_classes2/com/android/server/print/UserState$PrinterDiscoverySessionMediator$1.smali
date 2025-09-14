.class public final Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;
.super Landroid/os/RemoteCallbackList;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/print/UserState$1;


# direct methods
.method public constructor <init>(Lcom/android/server/print/UserState$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;->this$1:Lcom/android/server/print/UserState$1;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCallbackDied(Landroid/os/IInterface;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/print/IPrinterDiscoveryObserver;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;->this$1:Lcom/android/server/print/UserState$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/print/UserState$1;->this$0$1:Lcom/android/server/print/UserState;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;->this$1:Lcom/android/server/print/UserState$1;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$1;->stopPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;->this$1:Lcom/android/server/print/UserState$1;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/print/UserState$1;->mDiscoveryObservers:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/print/UserState$1;->destroyLocked()V

    .line 29
    .line 30
    .line 31
    :cond_0
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method
