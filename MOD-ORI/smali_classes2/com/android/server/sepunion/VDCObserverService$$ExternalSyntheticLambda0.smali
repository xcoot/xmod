.class public final synthetic Lcom/android/server/sepunion/VDCObserverService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sepunion/VDCObserverService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/VDCObserverService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/VDCObserverService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/VDCObserverService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/VDCObserverService;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/sepunion/VDCObserverService;->VDC_OBSERVER_URI:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "VDCObserverService"

    .line 9
    .line 10
    const-string v1, "init"

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    const-string/jumbo v1, "registerUserUnlockedObserver"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "get ContentResolver null"

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    new-instance v4, Lcom/android/server/sepunion/VDCObserverService$2;

    .line 35
    .line 36
    invoke-direct {v4, p0}, Lcom/android/server/sepunion/VDCObserverService$2;-><init>(Lcom/android/server/sepunion/VDCObserverService;)V

    .line 37
    .line 38
    .line 39
    new-instance v5, Landroid/content/IntentFilter;

    .line 40
    .line 41
    const-string v6, "android.intent.action.USER_UNLOCKED"

    .line 42
    .line 43
    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    iget v1, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    .line 50
    .line 51
    or-int/2addr v1, v3

    .line 52
    iput v1, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :goto_0
    :try_start_0
    const-string/jumbo v1, "registerForegroundServiceObserver"

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object v4, p0, Lcom/android/server/sepunion/VDCObserverService;->mForegroundServiceObserver:Lcom/android/server/sepunion/VDCObserverService$1;

    .line 69
    .line 70
    invoke-interface {v1, v4}, Landroid/app/IActivityManager;->registerForegroundServiceObserver(Landroid/app/IForegroundServiceObserver;)Z

    .line 71
    .line 72
    .line 73
    iget v1, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    .line 74
    .line 75
    or-int/lit8 v1, v1, 0x2

    .line 76
    .line 77
    iput v1, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception v1

    .line 81
    const-string/jumbo v4, "registerForegroundServiceObserver: failed "

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .line 86
    .line 87
    :goto_1
    new-instance v1, Lcom/android/server/sepunion/VDCObserverService$4;

    .line 88
    .line 89
    iget-object v4, p0, Lcom/android/server/sepunion/VDCObserverService;->mHandler:Lcom/android/server/sepunion/VDCObserverService$MyHandler;

    .line 90
    .line 91
    invoke-direct {v1, p0, v4}, Lcom/android/server/sepunion/VDCObserverService$4;-><init>(Lcom/android/server/sepunion/VDCObserverService;Landroid/os/Handler;)V

    .line 92
    .line 93
    .line 94
    iget-object v4, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    if-eqz v4, :cond_1

    .line 101
    .line 102
    sget-object v0, Lcom/android/server/sepunion/VDCObserverService;->VDC_OBSERVER_URI:Landroid/net/Uri;

    .line 103
    .line 104
    invoke-virtual {v4, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 105
    .line 106
    .line 107
    iget v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    .line 108
    .line 109
    or-int/lit8 v0, v0, 0x4

    .line 110
    .line 111
    iput v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_1
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    :goto_2
    return-void
.end method
