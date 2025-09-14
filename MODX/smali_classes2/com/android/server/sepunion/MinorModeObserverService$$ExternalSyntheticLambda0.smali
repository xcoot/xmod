.class public final synthetic Lcom/android/server/sepunion/MinorModeObserverService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sepunion/MinorModeObserverService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/MinorModeObserverService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/MinorModeObserverService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/MinorModeObserverService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/MinorModeObserverService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/MinorModeObserverService;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/sepunion/MinorModeObserverService;->MM_URI:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "MinorModeObserverService"

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
    iget-object v1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    new-instance v2, Lcom/android/server/sepunion/MinorModeObserverService$1;

    .line 24
    .line 25
    invoke-direct {v2, p0}, Lcom/android/server/sepunion/MinorModeObserverService$1;-><init>(Lcom/android/server/sepunion/MinorModeObserverService;)V

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
    iget v1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    or-int/2addr v1, v2

    .line 42
    iput v1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    .line 43
    .line 44
    new-instance v1, Lcom/android/server/sepunion/MinorModeObserverService$3;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mHandler:Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;

    .line 47
    .line 48
    invoke-direct {v1, p0, v3}, Lcom/android/server/sepunion/MinorModeObserverService$3;-><init>(Lcom/android/server/sepunion/MinorModeObserverService;Landroid/os/Handler;)V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    sget-object v4, Lcom/android/server/sepunion/MinorModeObserverService;->MM_URI:Landroid/net/Uri;

    .line 60
    .line 61
    const-string v5, "limit_packages"

    .line 62
    .line 63
    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v3, v4, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 68
    .line 69
    .line 70
    iget v1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    .line 71
    .line 72
    or-int/lit8 v1, v1, 0x4

    .line 73
    .line 74
    iput v1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    const-string/jumbo v1, "registerLimitPackagesObserver fail: get ContentResolver null"

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :goto_0
    new-instance v1, Lcom/android/server/sepunion/MinorModeObserverService$4;

    .line 84
    .line 85
    iget-object v3, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mHandler:Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;

    .line 86
    .line 87
    invoke-direct {v1, p0, v3}, Lcom/android/server/sepunion/MinorModeObserverService$4;-><init>(Lcom/android/server/sepunion/MinorModeObserverService;Landroid/os/Handler;)V

    .line 88
    .line 89
    .line 90
    new-instance v3, Lcom/android/server/sepunion/MinorModeObserverService$5;

    .line 91
    .line 92
    iget-object v4, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mHandler:Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;

    .line 93
    .line 94
    invoke-direct {v3, p0, v4}, Lcom/android/server/sepunion/MinorModeObserverService$5;-><init>(Lcom/android/server/sepunion/MinorModeObserverService;Landroid/os/Handler;)V

    .line 95
    .line 96
    .line 97
    iget-object v4, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mContext:Landroid/content/Context;

    .line 98
    .line 99
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    if-eqz v4, :cond_1

    .line 104
    .line 105
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 106
    .line 107
    const-string/jumbo v5, "minors_mode"

    .line 108
    .line 109
    .line 110
    invoke-static {v0, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v4, v5, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 115
    .line 116
    .line 117
    const-string/jumbo v1, "minors_mode_enabled"

    .line 118
    .line 119
    .line 120
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v4, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 125
    .line 126
    .line 127
    iget v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    .line 128
    .line 129
    or-int/lit8 v0, v0, 0x8

    .line 130
    .line 131
    iput v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_1
    const-string/jumbo p0, "registerMinorModeStateObserver fail: get ContentResolver null"

    .line 135
    .line 136
    .line 137
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    :goto_1
    return-void
.end method
