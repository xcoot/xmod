.class public final Lcom/android/server/net/NetworkManagementService$NetdTetherEventListener;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/net/INetdTetherEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkManagementService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkManagementService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService$NetdTetherEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo p1, "com.android.internal.net.INetdTetherEventListener"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 10
    .line 11
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
    const-string/jumbo v0, "com.android.internal.net.INetdTetherEventListener"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-lt p1, v1, :cond_0

    .line 6
    .line 7
    const v2, 0xffffff

    .line 8
    .line 9
    .line 10
    if-gt p1, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const v2, 0x5f4e5446

    .line 16
    .line 17
    .line 18
    if-ne p1, v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    if-eq p1, v1, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    if-eq p1, v0, :cond_3

    .line 28
    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0

    .line 34
    :cond_2
    const-string p1, "NetworkManagement"

    .line 35
    .line 36
    const-string/jumbo p2, "send intent to KVES to inform tether has started"

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$NetdTetherEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 48
    .line 49
    .line 50
    move-result-wide p1

    .line 51
    :try_start_0
    new-instance p3, Landroid/content/Intent;

    .line 52
    .line 53
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string/jumbo p4, "com.samsung.android.knox.intent.action.INTERFACE_STATUS_INTERNAL"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    const-string/jumbo p4, "com.samsung.android.knox.intent.extra.ACTION_INTERNAL"

    .line 63
    .line 64
    .line 65
    const-string/jumbo v0, "tethering_info"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, p4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    const-string/jumbo p4, "com.samsung.android.knox.permission.KNOX_VPN_INTERNAL"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p3, p4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    :cond_3
    return v1

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    .line 86
    .line 87
    throw p0
.end method
