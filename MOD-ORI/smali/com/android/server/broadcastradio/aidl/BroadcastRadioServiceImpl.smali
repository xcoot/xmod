.class public final Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mModules:Landroid/util/SparseArray;

.field public mNextModuleId:I

.field public final mServiceListener:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;

.field public final mServiceNameToModuleIdMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "BcRadioAidlSrv"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->DEBUG:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mServiceNameToModuleIdMap:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;-><init>(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mServiceListener:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mNextModuleId:I

    .line 34
    .line 35
    sget-boolean v1, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->DEBUG:Z

    .line 36
    .line 37
    const-string v2, "BcRadioAidlSrv"

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    sget-object v1, Landroid/hardware/broadcastradio/IBroadcastRadio;->DESCRIPTOR:Ljava/lang/String;

    .line 42
    .line 43
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v3, "Initializing BroadcastRadioServiceImpl %s"

    .line 48
    .line 49
    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-ge v0, v1, :cond_1

    .line 57
    .line 58
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/lang/String;

    .line 63
    .line 64
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mServiceListener:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;

    .line 65
    .line 66
    invoke-static {v1, v3}, Landroid/os/ServiceManager;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catch_0
    move-exception v1

    .line 71
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const-string/jumbo v4, "failed to register for service notifications for service %s"

    .line 80
    .line 81
    .line 82
    invoke-static {v2, v1, v4, v3}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    return-void
.end method
