.class public final synthetic Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/BroadcastReceiver;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda0;->f$2:Landroid/content/BroadcastReceiver;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda0;->f$2:Landroid/content/BroadcastReceiver;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda0;->f$3:I

    .line 8
    .line 9
    sget v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->$r8$clinit:I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v5, Landroid/content/IntentFilter;

    .line 15
    .line 16
    invoke-direct {v5, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_1

    .line 58
    .line 59
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const-string v2, "android.intent.action.PROVIDER_CHANGED"

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    const-string v1, "content"

    .line 77
    .line 78
    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    :goto_0
    const-string/jumbo v1, "package"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    :goto_1
    :try_start_0
    iget-object v2, v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    iget-object v7, v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 95
    .line 96
    const/4 v8, 0x2

    .line 97
    const/4 v6, 0x0

    .line 98
    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catch_0
    move-exception p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    :goto_2
    return-void
.end method
