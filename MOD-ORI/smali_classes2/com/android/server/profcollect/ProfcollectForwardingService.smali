.class public final Lcom/android/server/profcollect/ProfcollectForwardingService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final BG_PROCESS_INTERVAL:J

.field public static sSelfService:Lcom/android/server/profcollect/ProfcollectForwardingService;


# instance fields
.field public final mAppLaunchObserver:Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;

.field public final mBroadcastReceiver:Lcom/android/server/profcollect/ProfcollectForwardingService$2;

.field public final mHandler:Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;

.field public mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

.field public final mProviderStatusCallback:Lcom/android/server/profcollect/ProfcollectForwardingService$1;

.field public final mUploadEnabled:Z

.field public final mUsageSetting:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x4

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->BG_PROCESS_INTERVAL:J

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;

    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mHandler:Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;

    .line 18
    .line 19
    new-instance v0, Lcom/android/server/profcollect/ProfcollectForwardingService$1;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$1;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mProviderStatusCallback:Lcom/android/server/profcollect/ProfcollectForwardingService$1;

    .line 25
    .line 26
    new-instance v0, Lcom/android/server/profcollect/ProfcollectForwardingService$2;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mBroadcastReceiver:Lcom/android/server/profcollect/ProfcollectForwardingService$2;

    .line 32
    .line 33
    new-instance v0, Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mAppLaunchObserver:Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;

    .line 39
    .line 40
    sget-object v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sSelfService:Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 41
    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    sput-object p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sSelfService:Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 45
    .line 46
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string/jumbo v1, "multi_cb"

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mUsageSetting:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v2, "Usage setting not found: "

    .line 64
    .line 65
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v1, "ProfcollectForwardingService"

    .line 80
    .line 81
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mUsageSetting:I

    .line 86
    .line 87
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const v1, 0x1110205

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iput-boolean v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mUploadEnabled:Z

    .line 99
    .line 100
    const-string v0, "com.android.server.profcollect.UPLOAD_PROFILES"

    .line 101
    .line 102
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mBroadcastReceiver:Lcom/android/server/profcollect/ProfcollectForwardingService$2;

    .line 107
    .line 108
    const/4 v1, 0x4

    .line 109
    invoke-virtual {p1, p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 114
    .line 115
    const-string/jumbo p1, "only one service instance allowed"

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    throw p0
.end method

.method public static enabled()Z
    .locals 3

    .line 1
    const-string/jumbo v0, "profcollect_native_boot"

    .line 2
    .line 3
    .line 4
    const-string v1, "enabled"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string/jumbo v0, "persist.profcollectd.enabled_override"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    :cond_0
    const/4 v2, 0x1

    .line 23
    :cond_1
    return v2
.end method


# virtual methods
.method public final connectNativeService()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string/jumbo v1, "profcollectd"

    .line 3
    .line 4
    .line 5
    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/android/server/profcollect/IProfCollectd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/profcollect/IProfCollectd;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    move-object v2, v1

    .line 14
    check-cast v2, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 17
    .line 18
    new-instance v3, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdDeathRecipient;

    .line 19
    .line 20
    invoke-direct {v3, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdDeathRecipient;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v2, v3, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;
    :try_end_0
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :catch_0
    const-string p0, "ProfcollectForwardingService"

    .line 31
    .line 32
    const-string v1, "Failed to connect profcollectd binder service."

    .line 33
    .line 34
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return v0
.end method

.method public final onBootPhase(I)V
    .locals 2

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/android/internal/os/BackgroundThread;->getThreadHandler()Landroid/os/Handler;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v0, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, v1, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->connectNativeService()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method
