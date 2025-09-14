.class public final Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;
.super Landroid/debug/AdbManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/adb/AdbService;


# direct methods
.method public constructor <init>(Lcom/android/server/adb/AdbService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    .line 3
    invoke-direct {p0}, Landroid/debug/AdbManagerInternal;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final getAdbKeysFile()Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    .line 3
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    .line 5
    if-nez p0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mUserKeyFile:Ljava/io/File;

    .line 11
    :goto_0
    return-object p0
.end method

.method public final getAdbTempKeysFile()Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    .line 3
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    .line 5
    if-nez p0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTempKeysFile:Ljava/io/File;

    .line 11
    :goto_0
    return-object p0
.end method

.method public final isAdbEnabled(B)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    .line 5
    iget-boolean p0, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    if-ne p1, v0, :cond_1

    .line 11
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    .line 13
    iget-boolean p0, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    .line 15
    return p0

    .line 16
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 18
    const-string/jumbo v0, "isAdbEnabled called with unimplemented transport type="

    .line 21
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p0
.end method

.method public final notifyKeyFilesUpdated()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    .line 3
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    .line 5
    if-nez p0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 10
    const/16 v0, 0x1c

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 15
    return-void
.end method

.method public final registerTransport(Landroid/debug/IAdbTransport;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    .line 3
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mTransports:Landroid/util/ArrayMap;

    .line 5
    invoke-interface {p1}, Landroid/debug/IAdbTransport;->asBinder()Landroid/os/IBinder;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    return-void
.end method

.method public final startAdbdForTransport(B)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v2}, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;-><init>(I)V

    .line 11
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    .line 13
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 18
    move-result-object p1

    .line 19
    invoke-static {v1, p0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 26
    return-void
.end method

.method public final stopAdbdForTransport(B)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v2}, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;-><init>(I)V

    .line 11
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    .line 13
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 18
    move-result-object p1

    .line 19
    invoke-static {v1, p0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 26
    return-void
.end method

.method public final unregisterTransport(Landroid/debug/IAdbTransport;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    .line 3
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mTransports:Landroid/util/ArrayMap;

    .line 5
    invoke-interface {p1}, Landroid/debug/IAdbTransport;->asBinder()Landroid/os/IBinder;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    return-void
.end method
