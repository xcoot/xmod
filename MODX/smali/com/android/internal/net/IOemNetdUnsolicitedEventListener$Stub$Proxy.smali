.class Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;


# instance fields
.field public final mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 6
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 3
    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "com.android.internal.net.IOemNetdUnsolicitedEventListener"

    .line 4
    return-object p0
.end method

.method public onRegistered()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 8
    move-result-object v0

    .line 9
    :try_start_0
    const-string/jumbo v1, "com.android.internal.net.IOemNetdUnsolicitedEventListener"

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15
    iget-object p0, p0, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 30
    throw p0
.end method
