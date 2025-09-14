.class public final synthetic Lcom/android/server/sepunion/SmartMeetingObserverService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sepunion/SmartMeetingObserverService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/SmartMeetingObserverService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/sepunion/SmartMeetingObserverService;->SMMT_OBSERVER_URI:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "SmartMeetingObserverService"

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
    iget-object v1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    new-instance v2, Lcom/android/server/sepunion/SmartMeetingObserverService$2;

    .line 24
    .line 25
    invoke-direct {v2, p0}, Lcom/android/server/sepunion/SmartMeetingObserverService$2;-><init>(Lcom/android/server/sepunion/SmartMeetingObserverService;)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Landroid/content/IntentFilter;

    .line 29
    .line 30
    const-string v4, "android.intent.action.USER_UNLOCKED"

    .line 31
    .line 32
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mObserverRegisterState:I

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    or-int/2addr v1, v2

    .line 42
    iput v1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mObserverRegisterState:I

    .line 43
    .line 44
    :try_start_0
    const-string/jumbo v1, "registerForegroundServiceObserver"

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object v3, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mForegroundServiceObserver:Lcom/android/server/sepunion/SmartMeetingObserverService$1;

    .line 55
    .line 56
    invoke-interface {v1, v3}, Landroid/app/IActivityManager;->registerForegroundServiceObserver(Landroid/app/IForegroundServiceObserver;)Z

    .line 57
    .line 58
    .line 59
    iget v1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mObserverRegisterState:I

    .line 60
    .line 61
    or-int/lit8 v1, v1, 0x2

    .line 62
    .line 63
    iput v1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mObserverRegisterState:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    const-string/jumbo v3, "registerForegroundServiceObserver: failed "

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .line 72
    .line 73
    :goto_0
    new-instance v1, Lcom/android/server/sepunion/SmartMeetingObserverService$4;

    .line 74
    .line 75
    iget-object v3, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mHandler:Lcom/android/server/sepunion/SmartMeetingObserverService$MyHandler;

    .line 76
    .line 77
    invoke-direct {v1, p0, v3}, Lcom/android/server/sepunion/SmartMeetingObserverService$4;-><init>(Lcom/android/server/sepunion/SmartMeetingObserverService;Landroid/os/Handler;)V

    .line 78
    .line 79
    .line 80
    iget-object v3, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    if-eqz v3, :cond_0

    .line 87
    .line 88
    sget-object v0, Lcom/android/server/sepunion/SmartMeetingObserverService;->SMMT_OBSERVER_URI:Landroid/net/Uri;

    .line 89
    .line 90
    invoke-virtual {v3, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 91
    .line 92
    .line 93
    iget v0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mObserverRegisterState:I

    .line 94
    .line 95
    or-int/lit8 v0, v0, 0x4

    .line 96
    .line 97
    iput v0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mObserverRegisterState:I

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_0
    const-string p0, "get ContentResolver null"

    .line 101
    .line 102
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    :goto_1
    return-void
.end method
