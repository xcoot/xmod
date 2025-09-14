.class public final Lcom/android/server/aod/AODManagerService$BinderService;
.super Lcom/samsung/android/aod/IAODManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/aod/IAODManager$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final acquireDoze(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 3
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUidOrSystemApp(Lcom/android/server/aod/AODManagerService;)V

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    move-result v5

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 13
    move-result v6

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    move-result-wide v7

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 20
    move-object v2, p1

    .line 21
    move-object v3, p2

    .line 22
    move-object v4, p3

    .line 23
    invoke-static/range {v1 .. v6}, Lcom/android/server/aod/AODManagerService;->-$$Nest$macquireDozeInternal(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    throw p0
.end method

.method public final addLogText(Ljava/util/List;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 3
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUid(Lcom/android/server/aod/AODManagerService;)V

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 18
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mAODLogHandler:Lcom/android/server/aod/AODManagerService$2;

    .line 20
    const/16 v2, 0x64

    .line 22
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 25
    move-result-object v2

    .line 26
    new-instance v3, Landroid/os/Bundle;

    .line 28
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 31
    new-instance v4, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    const-string/jumbo p1, "logs"

    .line 39
    invoke-virtual {v3, p1, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 42
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 3
    iget-object p1, p1, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    .line 5
    const-string p3, "android.permission.DUMP"

    .line 7
    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    const-string p1, "Permission Denial: can\'t dump AODManagerService from from pid="

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string p1, ", uid="

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 35
    move-result p1

    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const-string p1, " without permission android.permission.DUMP"

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    return-void

    .line 52
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 55
    move-result-wide v0

    .line 56
    :try_start_0
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 58
    invoke-static {p0, p2}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mdumpInternal(Lcom/android/server/aod/AODManagerService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    throw p0
.end method

.method public final getActiveImageInfo()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 7
    sget v2, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    throw p0
.end method

.method public final getAodActiveArea(Z)Ljava/lang/String;
    .locals 6

    .line 1
    const-string/jumbo v0, "getAodActiveArea isSubDisplay="

    .line 4
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 6
    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUidOrSystemApp(Lcom/android/server/aod/AODManagerService;)V

    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    move-result-wide v1

    .line 13
    if-eqz p1, :cond_0

    .line 15
    const/4 v3, 0x2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v3, 0x1

    .line 18
    :goto_0
    :try_start_0
    const-string v4, "AODManagerService"

    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    const-string p1, " devid="

    .line 30
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 45
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 47
    if-eqz p0, :cond_1

    .line 49
    invoke-virtual {p0, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->getAodActiveArea(I)Ljava/lang/String;

    .line 52
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_2

    .line 56
    :cond_1
    const-string p0, "NG"

    .line 58
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    return-object p0

    .line 62
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    throw p0
.end method

.method public final isAODState()Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 7
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 9
    iget-object p0, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    .line 11
    const-string v2, "aod_show_state"

    .line 13
    const/4 v3, -0x2

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static {p0, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 18
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne p0, v2, :cond_0

    .line 22
    move v4, v2

    .line 23
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    return v4

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    throw p0
.end method

.method public final isSViewCoverBrightnessHigh()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 3
    invoke-static {p0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUid(Lcom/android/server/aod/AODManagerService;)V

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7d0

    .line 7
    if-eq v0, v1, :cond_1

    .line 9
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 14
    const-string v1, "Caller must be shell"

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0

    .line 20
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 23
    move-result-wide v1

    .line 24
    :try_start_0
    new-instance v3, Lcom/android/server/aod/AODManagerShellCommand;

    .line 26
    move-object v0, p0

    .line 27
    iget-object v4, v0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 29
    iget-object v4, v4, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    .line 31
    invoke-direct {v3}, Landroid/os/ShellCommand;-><init>()V

    .line 34
    iput-object v4, v3, Lcom/android/server/aod/AODManagerShellCommand;->mContext:Landroid/content/Context;

    .line 36
    move-object v4, p0

    .line 37
    move-object v5, p1

    .line 38
    move-object v6, p2

    .line 39
    move-object v7, p3

    .line 40
    move-object v8, p4

    .line 41
    move-object/from16 v9, p5

    .line 43
    move-object/from16 v10, p6

    .line 45
    invoke-virtual/range {v3 .. v10}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    throw v0
.end method

.method public final readyToScreenTurningOn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 3
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUid(Lcom/android/server/aod/AODManagerService;)V

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 12
    invoke-static {p0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mreadyToScreenTurningOnInternal(Lcom/android/server/aod/AODManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    throw p0
.end method

.method public final registerAODDozeCallback(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 3
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUid(Lcom/android/server/aod/AODManagerService;)V

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 12
    invoke-static {p0, p1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mregisterAODDozeCallbackInternal(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    throw p0
.end method

.method public final registerAODListener(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 3
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUid(Lcom/android/server/aod/AODManagerService;)V

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 12
    invoke-static {p0, p1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mregisterAODListenerInternal(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    throw p0
.end method

.method public final releaseDoze(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 3
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUidOrSystemApp(Lcom/android/server/aod/AODManagerService;)V

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 12
    invoke-static {p0, p1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mreleaseDozeInternal(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    throw p0
.end method

.method public final requestAODToast(Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 3
    invoke-static {p1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUidOrSystemApp(Lcom/android/server/aod/AODManagerService;)V

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 12
    invoke-static {p0, p2}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mrequestAODToastInternal(Lcom/android/server/aod/AODManagerService;Lcom/samsung/android/aod/AODToast;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    throw p0
.end method

.method public final setGripData(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 3
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUidOrSystemApp(Lcom/android/server/aod/AODManagerService;)V

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 12
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setGripData(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    throw p0
.end method

.method public final setLiveClockCommand(III[I)I
    .locals 2

    .line 1
    const-string/jumbo p1, "failed setLiveClockCommand = "

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide p2

    .line 8
    const-string v0, "AODManagerService"

    .line 10
    const/4 v1, -0x1

    .line 11
    if-nez p4, :cond_0

    .line 13
    sget p0, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 15
    const-string/jumbo p0, "setLiveClockCommand dataArray is null"

    .line 18
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return v1

    .line 22
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 24
    sget p4, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 32
    const-string p0, "AODConfig.SUPPORT_ACTIVE_CLOCK is FALSE"

    .line 34
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :goto_0
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :catch_0
    move-exception p0

    .line 44
    :try_start_1
    sget p4, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 46
    new-instance p4, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {p4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    goto :goto_0

    .line 62
    :goto_1
    return v1

    .line 63
    :goto_2
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    throw p0
.end method

.method public final setLiveClockImage(II[BLjava/lang/String;)I
    .locals 2

    .line 1
    const-string/jumbo p1, "failed setLiveClockImage = "

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    const-string p2, "AODManagerService"

    .line 10
    const/4 p4, -0x1

    .line 11
    if-nez p3, :cond_0

    .line 13
    sget p0, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 15
    const-string/jumbo p0, "setLiveClockImage img_buf is null"

    .line 18
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return p4

    .line 22
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 24
    sget p3, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 32
    const-string p0, "AODConfig.SUPPORT_ACTIVE_CLOCK is FALSE"

    .line 34
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :catch_0
    move-exception p0

    .line 44
    :try_start_1
    sget p3, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 46
    new-instance p3, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    goto :goto_0

    .line 62
    :goto_1
    return p4

    .line 63
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    throw p0
.end method

.method public final setLiveClockInfo(IJJJJJJJJ)I
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v1

    .line 5
    move-object v0, p0

    .line 6
    :try_start_0
    iget-object v0, v0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 8
    sget v3, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    const/4 v0, -0x1

    .line 20
    return v0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    throw v0
.end method

.method public final setLiveClockNeedle([B)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 7
    sget p1, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    throw p0
.end method

.method public final setTspEnabled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SEM_FIRST_SDK_INT:I

    .line 3
    const/16 v1, 0x1f

    .line 5
    const-string v2, "AODManagerService"

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ge v0, v1, :cond_0

    .line 10
    sget p0, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 12
    const-string/jumbo p0, "setTSPEnabled: First SDK version is less than S OS"

    .line 15
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return v3

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 21
    iget-object v1, v0, Lcom/android/server/aod/AODManagerService;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 23
    if-nez v1, :cond_1

    .line 25
    sget p0, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 27
    const-string/jumbo p0, "setTSPEnabled: mInputDeviceManager is null"

    .line 30
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return v3

    .line 34
    :cond_1
    iget-boolean v0, v0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    .line 36
    if-eqz v0, :cond_2

    .line 38
    const/16 v0, 0x16

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/16 v0, 0x15

    .line 43
    :goto_0
    const-string v1, "/sys/class/sec/sec_epen/input/enabled"

    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v1

    .line 49
    const/4 v4, 0x1

    .line 50
    if-eqz v1, :cond_3

    .line 52
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 54
    iget-object v1, v1, Lcom/android/server/aod/AODManagerService;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 56
    const/16 v5, 0xb

    .line 58
    invoke-virtual {v1, v5, v0, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSpenEnabled(IIZ)I

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    const-string v1, "/sys/class/sec/tsp2/input/enabled"

    .line 64
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_4

    .line 70
    const/4 v1, 0x2

    .line 71
    move v5, v1

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    move v5, v4

    .line 74
    :goto_1
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 76
    iget-object v1, v1, Lcom/android/server/aod/AODManagerService;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 78
    invoke-virtual {v1, v5, v0, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setTspEnabled(IIZ)I

    .line 81
    :goto_2
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 83
    iget-boolean v3, v1, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    .line 85
    iput-boolean v3, v1, Lcom/android/server/aod/AODManagerService;->requestedReCalToTSP:Z

    .line 87
    sget v1, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 89
    const-string/jumbo v1, "setTspEnabled: location="

    .line 92
    const-string v3, ", cmd="

    .line 94
    const-string v6, ", devid="

    .line 96
    invoke-static {v1, p1, v3, p2, v6}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    move-result-object p1

    .line 100
    const-string p2, ", mode="

    .line 102
    const-string v1, ", mIsSingleTouchMode="

    .line 104
    invoke-static {v5, v0, p2, v1, p1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 107
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 109
    iget-boolean p0, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    .line 111
    invoke-static {v2, p1, p0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 114
    return v4
.end method

.method public final unregisterAODDozeCallback(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 3
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUid(Lcom/android/server/aod/AODManagerService;)V

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 12
    invoke-static {p0, p1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$munregisterAODDozeCallbackInternal(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    throw p0
.end method

.method public final unregisterAODListener(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 3
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUid(Lcom/android/server/aod/AODManagerService;)V

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 12
    invoke-static {p0, p1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$munregisterAODListenerInternal(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    throw p0
.end method

.method public final updateAODNotiTspRect(IIIILjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 3
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUidOrSystemApp(Lcom/android/server/aod/AODManagerService;)V

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 12
    move v3, p1

    .line 13
    move v4, p2

    .line 14
    move v5, p3

    .line 15
    move v6, p4

    .line 16
    move-object v7, p5

    .line 17
    invoke-static/range {v2 .. v7}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mupdateAODNotiTspRectInternal(Lcom/android/server/aod/AODManagerService;IIIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    throw p0
.end method

.method public final updateAODTspRect(IIIILjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 3
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUidOrSystemApp(Lcom/android/server/aod/AODManagerService;)V

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 12
    move v3, p1

    .line 13
    move v4, p2

    .line 14
    move v5, p3

    .line 15
    move v6, p4

    .line 16
    move-object v7, p5

    .line 17
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/aod/AODManagerService;->updateAODTspRectInternal(IIIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    throw p0
.end method

.method public final writeAODCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 3
    invoke-static {p3}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUid(Lcom/android/server/aod/AODManagerService;)V

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide p3

    .line 10
    :try_start_0
    const-string p5, "/sys/class/sec/tsp/input/enabled"

    .line 12
    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result p5

    .line 16
    if-nez p5, :cond_0

    .line 18
    const-string p5, "/sys/class/sec/sec_epen/input/enabled"

    .line 20
    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p5

    .line 24
    if-nez p5, :cond_0

    .line 26
    const-string p5, "/sys/class/sec/tsp1/input/enabled"

    .line 28
    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result p5

    .line 32
    if-nez p5, :cond_0

    .line 34
    const-string p5, "/sys/class/sec/tsp2/input/enabled"

    .line 36
    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result p5

    .line 40
    if-eqz p5, :cond_1

    .line 42
    :cond_0
    iget-object p5, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 44
    const-string v0, "1"

    .line 46
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v0

    .line 50
    iput-boolean v0, p5, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/android/server/aod/AODManagerService$BinderService;->setTspEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    move-result p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    if-eqz p5, :cond_1

    .line 58
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    return-void

    .line 62
    :cond_1
    :try_start_1
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 64
    invoke-static {p0, p1, p2}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mwriteAODCommandInternal(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    throw p0
.end method
