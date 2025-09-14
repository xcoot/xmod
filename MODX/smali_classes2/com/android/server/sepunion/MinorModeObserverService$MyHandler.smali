.class public final Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/MinorModeObserverService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/MinorModeObserverService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;->this$0:Lcom/android/server/sepunion/MinorModeObserverService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;->this$0:Lcom/android/server/sepunion/MinorModeObserverService;

    .line 6
    .line 7
    if-eq v0, v1, :cond_5

    .line 8
    .line 9
    const/16 v1, 0x14

    .line 10
    .line 11
    if-eq v0, v1, :cond_4

    .line 12
    .line 13
    const/16 p1, 0x1e

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eq v0, p1, :cond_2

    .line 18
    .line 19
    const/16 p1, 0x28

    .line 20
    .line 21
    if-eq v0, p1, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    sget-object p1, Lcom/android/server/sepunion/MinorModeObserverService;->MM_URI:Landroid/net/Uri;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string/jumbo v0, "minors_mode_enabled"

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-ne p1, v1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move v1, v2

    .line 43
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mMinorModeEnabled:Z

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    sget-object p1, Lcom/android/server/sepunion/MinorModeObserverService;->MM_URI:Landroid/net/Uri;

    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string/jumbo v0, "minors_mode"

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-ne p1, v1, :cond_3

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    move v1, v2

    .line 65
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mMinorModeSupport:Z

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    sget-object v0, Lcom/android/server/sepunion/MinorModeObserverService;->MM_URI:Landroid/net/Uri;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    sget-object v0, Lcom/android/server/sepunion/MinorModeObserverService;->MM_URI:Landroid/net/Uri;

    .line 84
    .line 85
    const-string/jumbo v1, "on_usage_stats_changed"

    .line 86
    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catch_0
    move-exception p0

    .line 94
    const-string p1, "MinorModeObserverService"

    .line 95
    .line 96
    const-string/jumbo v0, "onUsageStatsChanged call failed: "

    .line 97
    .line 98
    .line 99
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    sget-object p1, Lcom/android/server/sepunion/MinorModeObserverService;->MM_URI:Landroid/net/Uri;

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/android/server/sepunion/MinorModeObserverService;->handleLimitPackages()V

    .line 106
    .line 107
    .line 108
    :goto_2
    return-void
.end method
