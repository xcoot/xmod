.class public final Lcom/android/server/RealTimeTokenService;
.super Lcom/android/server/IRealTimeTokenService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mContext:Landroid/content/Context;


# instance fields
.field public bootingTime:J

.field public currentTime:J

.field public elapsedTime:J

.field public final mBootCompletedReceiver:Lcom/android/server/RealTimeTokenService$2;

.field public final mNetWorkReceiver:Lcom/android/server/RealTimeTokenService$2;

.field public final mTimeChangedReceiver:Lcom/android/server/RealTimeTokenService$2;

.field public mTimerObserve:Ljava/util/Timer;

.field public mTimerTask:Lcom/android/server/RealTimeTokenService$1;


# direct methods
.method public static -$$Nest$misNetworkAvailable(Lcom/android/server/RealTimeTokenService;Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string/jumbo p0, "connectivity"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    :goto_1
    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "rtts_jni"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    const-string v0, "RealTimeTokenService"

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/IRealTimeTokenService$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/server/RealTimeTokenService$2;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p0, v2}, Lcom/android/server/RealTimeTokenService$2;-><init>(Lcom/android/server/RealTimeTokenService;I)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/android/server/RealTimeTokenService$2;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-direct {v2, p0, v3}, Lcom/android/server/RealTimeTokenService$2;-><init>(Lcom/android/server/RealTimeTokenService;I)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lcom/android/server/RealTimeTokenService$2;

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    invoke-direct {v3, p0, v4}, Lcom/android/server/RealTimeTokenService$2;-><init>(Lcom/android/server/RealTimeTokenService;I)V

    .line 22
    .line 23
    .line 24
    sput-object p1, Lcom/android/server/RealTimeTokenService;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    :try_start_0
    const-string/jumbo p0, "register for NetWork Broadcasts"

    .line 27
    .line 28
    .line 29
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    new-instance p0, Landroid/content/IntentFilter;

    .line 33
    .line 34
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string p1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object p1, Lcom/android/server/RealTimeTokenService;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {p1, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    const-string/jumbo p0, "register for Boot Completed Broadcasts"

    .line 48
    .line 49
    .line 50
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    new-instance p0, Landroid/content/IntentFilter;

    .line 54
    .line 55
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string p1, "android.intent.action.BOOT_COMPLETED"

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object p1, Lcom/android/server/RealTimeTokenService;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {p1, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    const-string/jumbo p0, "register for TimeChange Broadcasts"

    .line 69
    .line 70
    .line 71
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    new-instance p0, Landroid/content/IntentFilter;

    .line 75
    .line 76
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string p1, "android.intent.action.TIME_SET"

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string p1, "android.intent.action.TIMEZONE_CHANGED"

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string p1, "android.intent.action.DATE_CHANGED"

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sget-object p1, Lcom/android/server/RealTimeTokenService;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    invoke-virtual {p1, v2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    :goto_0
    return-void
.end method


# virtual methods
.method public native checkAllTokenExpiry()I
.end method

.method public native checkTokenExpiry(J)I
.end method

.method public final checkTokenInfoExpiry(J)I
    .locals 2

    .line 1
    const-string v0, "RealTimeTokenService"

    .line 2
    .line 3
    const-string v1, "IRealTimeTokenService - checkTokenExpiry"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/RealTimeTokenService;->checkTokenExpiry(J)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public native getActiveTokenNumber()I
.end method

.method public native initTokenStorage()I
.end method

.method public native registerToken(JJ)I
.end method

.method public final registerTokenInfo(JJ)I
    .locals 2

    .line 1
    const-string v0, "RealTimeTokenService"

    .line 2
    .line 3
    const-string v1, "IRealTimeTokenService - registerToken"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/RealTimeTokenService;->registerToken(JJ)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public native setUserTime(J)I
.end method

.method public native unregisterAllToken()I
.end method

.method public final unregisterAllTokenInfo()I
    .locals 2

    .line 1
    const-string v0, "RealTimeTokenService"

    .line 2
    .line 3
    const-string v1, "IRealTimeTokenService - unregisterAllToken"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/RealTimeTokenService;->unregisterAllToken()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public native unregisterToken(J)I
.end method

.method public final unregisterTokenInfo(J)I
    .locals 2

    .line 1
    const-string v0, "RealTimeTokenService"

    .line 2
    .line 3
    const-string v1, "IRealTimeTokenService - unregisterToken"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/RealTimeTokenService;->unregisterToken(J)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method
