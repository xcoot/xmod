.class public final Lcom/android/server/adb/AdbService;
.super Landroid/debug/IAdbManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public final mConnectionPort:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mIsAdbUsbEnabled:Z

.field public mIsAdbWifiEnabled:Z

.field public final mObserver:Lcom/android/server/adb/AdbService$AdbSettingsObserver;

.field public final mPortListener:Lcom/android/server/adb/AdbService$AdbConnectionPortListener;

.field public mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

.field public final mTransports:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Landroid/debug/IAdbManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mConnectionPort:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    new-instance v0, Lcom/android/server/adb/AdbService$AdbConnectionPortListener;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/android/server/adb/AdbService$AdbConnectionPortListener;-><init>(Lcom/android/server/adb/AdbService;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mPortListener:Lcom/android/server/adb/AdbService$AdbConnectionPortListener;

    .line 18
    .line 19
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 30
    .line 31
    new-instance v0, Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mTransports:Landroid/util/ArrayMap;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mContentResolver:Landroid/content/ContentResolver;

    .line 45
    .line 46
    new-instance v8, Lcom/android/server/adb/AdbDebuggingManager;

    .line 47
    .line 48
    const-string v1, "adb_keys"

    .line 49
    .line 50
    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbFile(Ljava/lang/String;)Ljava/io/File;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const-string v1, "adb_temp_keys.xml"

    .line 55
    .line 56
    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbFile(Ljava/lang/String;)Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    sget-object v7, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    const/4 v6, 0x0

    .line 64
    move-object v1, v8

    .line 65
    move-object v2, p1

    .line 66
    invoke-direct/range {v1 .. v7}, Lcom/android/server/adb/AdbDebuggingManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;Lcom/android/server/adb/AdbDebuggingManager$Ticker;)V

    .line 67
    .line 68
    .line 69
    iput-object v8, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    .line 70
    .line 71
    :try_start_0
    new-instance p1, Lcom/android/server/adb/AdbService$AdbSettingsObserver;

    .line 72
    .line 73
    invoke-direct {p1, p0}, Lcom/android/server/adb/AdbService$AdbSettingsObserver;-><init>(Lcom/android/server/adb/AdbService;)V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lcom/android/server/adb/AdbService;->mObserver:Lcom/android/server/adb/AdbService$AdbSettingsObserver;

    .line 77
    .line 78
    const-string p1, "adb_enabled"

    .line 79
    .line 80
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget-object v1, p0, Lcom/android/server/adb/AdbService;->mObserver:Lcom/android/server/adb/AdbService$AdbSettingsObserver;

    .line 85
    .line 86
    const/4 v2, 0x0

    .line 87
    invoke-virtual {v0, p1, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 88
    .line 89
    .line 90
    const-string p1, "adb_wifi_enabled"

    .line 91
    .line 92
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget-object v1, p0, Lcom/android/server/adb/AdbService;->mObserver:Lcom/android/server/adb/AdbService$AdbSettingsObserver;

    .line 97
    .line 98
    invoke-virtual {v0, p1, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catch_0
    move-exception p1

    .line 103
    const-string v0, "AdbService"

    .line 104
    .line 105
    const-string v1, "Error in registerContentObservers"

    .line 106
    .line 107
    invoke-static {v0, v1, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .line 109
    .line 110
    :goto_0
    const-class p1, Landroid/debug/AdbManagerInternal;

    .line 111
    .line 112
    new-instance v0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;

    .line 113
    .line 114
    invoke-direct {v0, p0}, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;-><init>(Lcom/android/server/adb/AdbService;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method


# virtual methods
.method public final allowDebugging(ZLjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_DEBUGGING"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 24
    .line 25
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final allowWirelessDebugging(ZLjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_DEBUGGING"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 17
    .line 18
    const/16 v1, 0x12

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 25
    .line 26
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final clearDebuggingKeys()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_DEBUGGING"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 14
    .line 15
    const/4 v0, 0x6

    .line 16
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 21
    .line 22
    const-string v0, "Cannot clear ADB debugging keys, AdbDebuggingManager not enabled"

    .line 23
    .line 24
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public final denyDebugging()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_DEBUGGING"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final denyWirelessDebugging()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_DEBUGGING"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 14
    .line 15
    const/16 v0, 0x13

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final disablePairing()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_DEBUGGING"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 14
    .line 15
    const/16 v0, 0xe

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "AdbService"

    .line 4
    .line 5
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    .line 13
    .line 14
    const-string v1, "  "

    .line 15
    .line 16
    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    :try_start_0
    new-instance p2, Landroid/util/ArraySet;

    .line 24
    .line 25
    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {p2, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    const-string p3, "--proto"

    .line 32
    .line 33
    invoke-virtual {p2, p3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    const-string v4, "-a"

    .line 44
    .line 45
    invoke-virtual {p2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-nez p2, :cond_2

    .line 50
    .line 51
    if-eqz p3, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-string p0, "Dump current ADB state"

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string p0, "  No commands available"

    .line 60
    .line 61
    invoke-virtual {v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_3

    .line 67
    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 68
    .line 69
    new-instance p2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 70
    .line 71
    new-instance p3, Landroid/util/proto/ProtoOutputStream;

    .line 72
    .line 73
    invoke-direct {p3, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    const-string p1, "ADB MANAGER STATE (dumpsys adb):"

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance p2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 86
    .line 87
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    .line 88
    .line 89
    invoke-direct {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p2, p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    .line 96
    .line 97
    if-eqz p0, :cond_4

    .line 98
    .line 99
    invoke-virtual {p0, p2}, Lcom/android/server/adb/AdbDebuggingManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    invoke-virtual {p2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .line 104
    .line 105
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    .line 111
    .line 112
    throw p0
.end method

.method public final enablePairingByPairingCode()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_DEBUGGING"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 14
    .line 15
    const/16 v0, 0xf

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final enablePairingByQrCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_DEBUGGING"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v0, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v1, "serviceName"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string/jumbo p1, "password"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 40
    .line 41
    const/16 p2, 0x10

    .line 42
    .line 43
    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public final getAdbWirelessPort()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_DEBUGGING"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iget-object p0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    .line 19
    .line 20
    iget p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    .line 21
    .line 22
    monitor-exit v1

    .line 23
    return p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mConnectionPort:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public final getPairedDevices()[Landroid/debug/FingerprintAndPairDevice;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_DEBUGGING"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;-><init>(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getPairedDevices()Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    new-array v0, v0, [Landroid/debug/FingerprintAndPairDevice;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const/4 v1, 0x0

    .line 43
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/util/Map$Entry;

    .line 54
    .line 55
    new-instance v3, Landroid/debug/FingerprintAndPairDevice;

    .line 56
    .line 57
    invoke-direct {v3}, Landroid/debug/FingerprintAndPairDevice;-><init>()V

    .line 58
    .line 59
    .line 60
    aput-object v3, v0, v1

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Ljava/lang/String;

    .line 67
    .line 68
    iput-object v4, v3, Landroid/debug/FingerprintAndPairDevice;->keyFingerprint:Ljava/lang/String;

    .line 69
    .line 70
    aget-object v3, v0, v1

    .line 71
    .line 72
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Landroid/debug/PairDevice;

    .line 77
    .line 78
    iput-object v2, v3, Landroid/debug/FingerprintAndPairDevice;->device:Landroid/debug/PairDevice;

    .line 79
    .line 80
    add-int/lit8 v1, v1, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    return-object v0
.end method

.method public final handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/adb/AdbShellCommand;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/adb/AdbShellCommand;-><init>(Lcom/android/server/adb/AdbService;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    move-object v1, p0

    .line 19
    move-object v5, p4

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/android/modules/utils/BasicShellCommandHandler;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public final isAdbWifiQrSupported()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_DEBUGGING"

    .line 4
    .line 5
    const-string v2, "AdbService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/adb/AdbService;->isAdbWifiSupported()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v0, "android.hardware.camera.any"

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    :goto_0
    return p0
.end method

.method public final isAdbWifiSupported()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_DEBUGGING"

    .line 4
    .line 5
    const-string v2, "AdbService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "android.hardware.wifi"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v0, "android.hardware.ethernet"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p0, 0x0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 42
    :goto_1
    return p0
.end method

.method public final registerCallback(Landroid/debug/IAdbCallback;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Registering callback "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "AdbService"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final unpairDevice(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_DEBUGGING"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 17
    .line 18
    const/16 v1, 0x11

    .line 19
    .line 20
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final unregisterCallback(Landroid/debug/IAdbCallback;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Unregistering callback "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "AdbService"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method
