.class public final Lcom/android/server/broadcastradio/BroadcastRadioService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mServiceImpl:Landroid/hardware/radio/IRadioService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    sget-object p1, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->SERVICE_NAMES:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    sget-object v1, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->SERVICE_NAMES:Ljava/util/List;

    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 17
    move-result v2

    .line 18
    if-ge v0, v2, :cond_1

    .line 20
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 26
    invoke-static {v2}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_0

    .line 32
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 38
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 50
    new-instance p1, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;

    .line 52
    invoke-direct {p1, p0}, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;-><init>(Lcom/android/server/broadcastradio/BroadcastRadioService;)V

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    new-instance v0, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;

    .line 58
    new-instance v1, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 60
    invoke-direct {v1, p1}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;-><init>(Ljava/util/ArrayList;)V

    .line 63
    invoke-direct {v0, p0, v1}, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;-><init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)V

    .line 66
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 69
    move-result-object p1

    .line 70
    const-string v1, "BcRadioSrvAidl"

    .line 72
    const-string v2, "Initialize BroadcastRadioServiceAidl(%s)"

    .line 74
    invoke-static {v1, v2, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    move-object p1, v0

    .line 78
    :goto_1
    iput-object p1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mServiceImpl:Landroid/hardware/radio/IRadioService;

    .line 80
    return-void
.end method


# virtual methods
.method public final enforcePolicyAccess()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "android.permission.ACCESS_BROADCAST_RADIO"

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 16
    const-string v0, "ACCESS_BROADCAST_RADIO permission not granted"

    .line 18
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0
.end method

.method public final onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mServiceImpl:Landroid/hardware/radio/IRadioService;

    .line 3
    invoke-interface {v0}, Landroid/hardware/radio/IRadioService;->asBinder()Landroid/os/IBinder;

    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "broadcastradio"

    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 13
    return-void
.end method
