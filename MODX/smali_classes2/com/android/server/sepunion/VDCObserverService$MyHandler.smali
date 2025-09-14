.class public final Lcom/android/server/sepunion/VDCObserverService$MyHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/VDCObserverService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/VDCObserverService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/VDCObserverService$MyHandler;->this$0:Lcom/android/server/sepunion/VDCObserverService;

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
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "VDC thread msg "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p1, Landroid/os/Message;->what:I

    .line 9
    .line 10
    const-string v2, "VDCObserverService"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v0, p1, Landroid/os/Message;->what:I

    .line 16
    .line 17
    const/16 v1, 0xa

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService$MyHandler;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    .line 21
    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    const/16 v1, 0x14

    .line 25
    .line 26
    if-eq v0, v1, :cond_2

    .line 27
    .line 28
    const/16 p1, 0x1e

    .line 29
    .line 30
    if-eq v0, p1, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    sget-object p1, Lcom/android/server/sepunion/VDCObserverService;->VDC_OBSERVER_URI:Landroid/net/Uri;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const-string/jumbo p1, "unregisterUsageStatsWatcher"

    .line 39
    .line 40
    .line 41
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    const-string/jumbo v0, "usagestats"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/app/usage/UsageStatsManager;

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mUsageStatsWatcher:Lcom/android/server/sepunion/VDCObserverService$3;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/app/usage/UsageStatsManager;->unregisterUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    .line 60
    .line 61
    .line 62
    iget p1, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    .line 63
    .line 64
    and-int/lit8 p1, p1, -0x9

    .line 65
    .line 66
    iput p1, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const-string p1, "get UsageStatsManager null"

    .line 70
    .line 71
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-static {p0}, Lcom/android/server/sepunion/VDCObserverService;->-$$Nest$mregisterUsageStatsWatcher(Lcom/android/server/sepunion/VDCObserverService;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    sget-object v0, Lcom/android/server/sepunion/VDCObserverService;->VDC_OBSERVER_URI:Landroid/net/Uri;

    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    const-string/jumbo v0, "onUsageStatsChanged"

    .line 88
    .line 89
    .line 90
    :try_start_0
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    sget-object v1, Lcom/android/server/sepunion/VDCObserverService;->VDC_OBSERVER_URI:Landroid/net/Uri;

    .line 100
    .line 101
    invoke-virtual {p0, v1, v0, v3, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catch_0
    move-exception p0

    .line 106
    const-string/jumbo p1, "onUsageStatsChanged call failed: "

    .line 107
    .line 108
    .line 109
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    sget-object v0, Lcom/android/server/sepunion/VDCObserverService;->VDC_OBSERVER_URI:Landroid/net/Uri;

    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    :try_start_1
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    sget-object v0, Lcom/android/server/sepunion/VDCObserverService;->VDC_OBSERVER_URI:Landroid/net/Uri;

    .line 129
    .line 130
    const-string/jumbo v1, "onForegroundServiceStateChanged"

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v0, v1, v3, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :catch_1
    move-exception p0

    .line 138
    const-string/jumbo p1, "onFgServiceStateChanged call failed: "

    .line 139
    .line 140
    .line 141
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .line 143
    .line 144
    :goto_1
    return-void
.end method
