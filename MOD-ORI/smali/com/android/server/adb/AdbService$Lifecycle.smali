.class public final Lcom/android/server/adb/AdbService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAdbService:Lcom/android/server/adb/AdbService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 6

    .line 1
    const/16 v0, 0x226

    .line 2
    .line 3
    if-ne p1, v0, :cond_5

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/adb/AdbService$Lifecycle;->mAdbService:Lcom/android/server/adb/AdbService;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string p1, "AdbService"

    .line 11
    .line 12
    const-string/jumbo v0, "systemReady"

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    const-string/jumbo v0, "persist.sys.usb.config"

    .line 19
    .line 20
    .line 21
    const-string v1, ""

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "adb"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x1

    .line 34
    const/4 v3, 0x0

    .line 35
    if-gez v1, :cond_0

    .line 36
    .line 37
    :goto_0
    move v0, v3

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/16 v4, 0x2c

    .line 40
    .line 41
    if-lez v1, :cond_1

    .line 42
    .line 43
    add-int/lit8 v5, v1, -0x1

    .line 44
    .line 45
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eq v5, v4, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v5, 0x3

    .line 53
    add-int/2addr v5, v1

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-ge v5, v1, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eq v0, v4, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move v0, v2

    .line 68
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    .line 69
    .line 70
    if-nez v0, :cond_4

    .line 71
    .line 72
    const-string/jumbo v0, "persist.sys.test_harness"

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    move v2, v3

    .line 83
    :cond_4
    :goto_2
    const-string/jumbo v0, "persist.adb.tls_server.enable"

    .line 84
    .line 85
    .line 86
    const-string v1, "0"

    .line 87
    .line 88
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v1, "1"

    .line 93
    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iput-boolean v0, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    .line 99
    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContentResolver:Landroid/content/ContentResolver;

    .line 101
    .line 102
    const-string v1, "adb_enabled"

    .line 103
    .line 104
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContentResolver:Landroid/content/ContentResolver;

    .line 108
    .line 109
    const-string v1, "adb_wifi_enabled"

    .line 110
    .line 111
    iget-boolean p0, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    .line 112
    .line 113
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :catch_0
    const-string p0, "ADB_ENABLED is restricted."

    .line 118
    .line 119
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_5
    const/16 v0, 0x3e8

    .line 124
    .line 125
    if-ne p1, v0, :cond_6

    .line 126
    .line 127
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    new-instance v0, Lcom/android/server/adb/AdbService$Lifecycle$$ExternalSyntheticLambda0;

    .line 132
    .line 133
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 134
    .line 135
    .line 136
    iget-object p0, p0, Lcom/android/server/adb/AdbService$Lifecycle;->mAdbService:Lcom/android/server/adb/AdbService;

    .line 137
    .line 138
    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    .line 144
    .line 145
    :cond_6
    :goto_3
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/adb/AdbService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/android/server/adb/AdbService;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/adb/AdbService$Lifecycle;->mAdbService:Lcom/android/server/adb/AdbService;

    .line 11
    .line 12
    const-string v1, "adb"

    .line 13
    .line 14
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
