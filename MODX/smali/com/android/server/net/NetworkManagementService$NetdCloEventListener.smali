.class public final Lcom/android/server/net/NetworkManagementService$NetdCloEventListener;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/net/INetdCloEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkManagementService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkManagementService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService$NetdCloEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 6
    const-string/jumbo p1, "com.android.internal.net.INetdCloEventListener"

    .line 9
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    const-string/jumbo v0, "com.android.internal.net.INetdCloEventListener"

    .line 4
    const/4 v1, 0x1

    .line 5
    if-lt p1, v1, :cond_0

    .line 7
    const v2, 0xffffff

    .line 10
    if-gt p1, v2, :cond_0

    .line 12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 15
    :cond_0
    const v2, 0x5f4e5446

    .line 18
    if-ne p1, v2, :cond_1

    .line 20
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    return v1

    .line 24
    :cond_1
    if-eq p1, v1, :cond_2

    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 38
    iget-object p2, p0, Lcom/android/server/net/NetworkManagementService$NetdCloEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 40
    iget-object p2, p2, Lcom/android/server/net/NetworkManagementService;->mCloLock:Ljava/lang/Object;

    .line 42
    monitor-enter p2

    .line 43
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$NetdCloEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 45
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mICloEventObserver:Landroid/net/ICloEventObserver;

    .line 47
    if-nez p0, :cond_3

    .line 49
    const-string p0, "NetworkManagement"

    .line 51
    const-string/jumbo p1, "onUpdatedGroRlEnvironment: no mICloEventObserver"

    .line 54
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    :try_start_1
    invoke-interface {p0, p1}, Landroid/net/ICloEventObserver;->onUpdatedGroRlEnvironment(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :try_start_2
    monitor-exit p2

    .line 65
    :goto_0
    return v1

    .line 66
    :catch_0
    move-exception p0

    .line 67
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 69
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 72
    throw p1

    .line 73
    :goto_1
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    throw p0
.end method
