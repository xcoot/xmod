.class public final Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcfds/lib/DeviceSyncManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    const-string p1, "[MCF_DS_LIB]_DeviceSyncManager"

    .line 2
    .line 3
    const-string/jumbo v0, "onServiceConnected"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    iput v0, p1, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceState:I

    .line 13
    .line 14
    sget v1, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub;->$r8$clinit:I

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v1, "com.samsung.android.mcfds.lib.IMcfDeviceSyncService"

    .line 21
    .line 22
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    instance-of v2, v1, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    move-object p2, v1

    .line 33
    check-cast p2, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance v1, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub$Proxy;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p2, v1, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 42
    .line 43
    move-object p2, v1

    .line 44
    :goto_0
    iput-object p2, p1, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    .line 45
    .line 46
    iget-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    .line 47
    .line 48
    invoke-static {p1, v0}, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->access$200(Lcom/samsung/android/mcfds/lib/DeviceSyncManager;I)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    new-instance p1, Landroid/os/Bundle;

    .line 57
    .line 58
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceStateListener:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;

    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    const-string v0, "CALLBACK"

    .line 67
    .line 68
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    const/16 v0, 0xa

    .line 81
    .line 82
    iput v0, p2, Landroid/os/Message;->what:I

    .line 83
    .line 84
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 85
    .line 86
    invoke-virtual {p0, p2}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->sendMessage(Landroid/os/Message;)I

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    const-string p1, "[MCF_DS_LIB]_DeviceSyncManager"

    .line 2
    .line 3
    const-string/jumbo v0, "onServiceDisconnected"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p1, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceState:I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p1, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    .line 21
    .line 22
    invoke-static {p0, v0}, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->access$200(Lcom/samsung/android/mcfds/lib/DeviceSyncManager;I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
