.class public final Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder;
.super Landroid/view/ISensitiveContentProtectionManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/SensitiveContentProtectionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SensitiveContentProtectionManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    .line 3
    invoke-direct {p0}, Landroid/view/ISensitiveContentProtectionManager$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final setSensitiveContentProtection(Landroid/os/IBinder;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    const-string/jumbo v0, "window token is not know to WMS, can\'t apply protection, token: "

    .line 4
    const-string v1, "SensitiveContentProtectionManagerService.setSensitiveContentProtection"

    .line 6
    const-wide/32 v2, 0x80000

    .line 9
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 12
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 15
    move-result v1

    .line 16
    iget-object v4, p0, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    .line 18
    iget-object v4, v4, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 20
    const-wide/16 v5, 0x0

    .line 22
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 25
    move-result v7

    .line 26
    invoke-virtual {v4, p2, v5, v6, v7}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 29
    move-result v4

    .line 30
    if-ne v4, v1, :cond_1

    .line 32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 35
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-eqz p3, :cond_0

    .line 38
    :try_start_1
    iget-object v6, p0, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    .line 40
    iget-object v6, v6, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 42
    invoke-virtual {v6, p1}, Lcom/android/server/wm/WindowManagerInternal;->getWindowName(Landroid/os/IBinder;)Ljava/lang/String;

    .line 45
    move-result-object v6

    .line 46
    if-nez v6, :cond_0

    .line 48
    const-string p0, "SensitiveContentProtect"

    .line 50
    new-instance p3, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    const-string p1, ", package: "

    .line 60
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 79
    return-void

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :catchall_1
    move-exception p0

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    :try_start_3
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    .line 86
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/server/SensitiveContentProtectionManagerService;->setSensitiveContentProtection(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 92
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 95
    return-void

    .line 96
    :goto_0
    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    throw p0

    .line 100
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 102
    const-string p1, "Specified calling package ["

    .line 104
    const-string p3, "] does not match the calling uid "

    .line 106
    invoke-static {v1, p1, p2, p3}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object p1

    .line 110
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 113
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 114
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 117
    throw p0
.end method
