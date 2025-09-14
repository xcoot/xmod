.class public final Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;
.super Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

.field public final synthetic val$modelBroadcastKeys:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->val$modelBroadcastKeys:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFailure(ILjava/lang/String;)V
    .locals 0

    .line 1
    sget p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->$r8$clinit:I

    .line 2
    .line 3
    new-instance p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;-><init>(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "OnDeviceIntelligenceManagerService"

    .line 9
    .line 10
    const-string p2, "Failed to register model loading callback with status code"

    .line 11
    .line 12
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onSuccess(Landroid/os/PersistableBundle;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    const-string/jumbo v1, "model_loaded"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->val$modelBroadcastKeys:[Ljava/lang/String;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    aget-object p1, p1, v1

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    new-instance v1, Landroid/content/Intent;

    .line 32
    .line 33
    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mBroadcastPackageName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    const-string p1, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    .line 48
    .line 49
    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    const-string/jumbo v1, "model_unloaded"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->val$modelBroadcastKeys:[Ljava/lang/String;

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    aget-object p1, p1, v1

    .line 68
    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_1

    .line 76
    .line 77
    new-instance v1, Landroid/content/Intent;

    .line 78
    .line 79
    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mBroadcastPackageName:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    const-string p1, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    .line 94
    .line 95
    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_1
    :goto_0
    monitor-exit v0

    .line 99
    return-void

    .line 100
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    throw p0
.end method
