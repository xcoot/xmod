.class public final Lcom/android/server/sepunion/OneHandService;
.super Lcom/samsung/android/sepunion/IOneHandService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBootCompleteReceiver:Lcom/android/server/sepunion/OneHandService$1;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mMonitor:Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

.field public final mServiceConnection:Lcom/android/server/sepunion/OneHandService$2;


# direct methods
.method public static -$$Nest$mbindService(Lcom/android/server/sepunion/OneHandService;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "OneHandService"

    .line 5
    .line 6
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "com.samsung.android.sidegesturepad"

    .line 12
    .line 13
    const-string v3, "com.samsung.android.sidegesturepad.SGPService"

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService;->mServiceConnection:Lcom/android/server/sepunion/OneHandService$2;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-virtual {v2, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 24
    .line 25
    .line 26
    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "exception on bindService() e="

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    :goto_0
    const-string v1, "bindService() ret="

    .line 48
    .line 49
    invoke-static {v1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static -$$Nest$mstartGestureService(Lcom/android/server/sepunion/OneHandService;)V
    .locals 4

    .line 1
    const-string v0, "com.samsung.android.sidegesturepad"

    .line 2
    .line 3
    const-string v1, "OneHandService"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x1

    .line 12
    :try_start_0
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    .line 14
    .line 15
    :try_start_1
    new-instance v2, Landroid/content/ComponentName;

    .line 16
    .line 17
    const-string v3, "com.samsung.android.sidegesturepad.SGPService"

    .line 18
    .line 19
    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Landroid/content/Intent;

    .line 23
    .line 24
    const-string v3, "com.samsung.action.SIDEGESTUREPAD_SERVICE"

    .line 25
    .line 26
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const v2, 0x1000020

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const-string/jumbo v2, "option"

    .line 40
    .line 41
    .line 42
    const-string/jumbo v3, "start"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    const-string v2, "extra"

    .line 49
    .line 50
    const-string/jumbo v3, "system"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    const-string v0, "exception on startGestureService() e="

    .line 64
    .line 65
    invoke-static {p0, v0, v1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    const-string/jumbo p0, "startGestureService()"

    .line 69
    .line 70
    .line 71
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :catch_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/sepunion/OneHandService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sepunion/IOneHandService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;-><init>(Lcom/android/server/sepunion/OneHandService;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mMonitor:Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/sepunion/OneHandService$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/OneHandService$1;-><init>(Lcom/android/server/sepunion/OneHandService;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mBootCompleteReceiver:Lcom/android/server/sepunion/OneHandService$1;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/sepunion/OneHandService$2;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mServiceConnection:Lcom/android/server/sepunion/OneHandService$2;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    new-instance p1, Landroid/os/Handler;

    .line 28
    .line 29
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/sepunion/OneHandService;->mHandler:Landroid/os/Handler;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final clickTile(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p0, "clickTile() componentName="

    .line 2
    .line 3
    const-string v0, "OneHandService"

    .line 4
    .line 5
    invoke-static {p0, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "\n##### OneHandService  #####\n##### (dumpsys sepunion onehand) #####\n"

    .line 2
    .line 3
    const-string p3, "    Service alive="

    .line 4
    .line 5
    invoke-static {p2, p1, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService;->mMonitor:Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    invoke-static {p1, p0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onBootPhase(I)V
    .locals 3

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :try_start_0
    const-string v1, "com.samsung.android.sidegesturepad"

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    const-string p1, "OneHandService"

    .line 18
    .line 19
    const-string/jumbo v1, "onBootPhase()"

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    new-instance p1, Landroid/content/IntentFilter;

    .line 26
    .line 27
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/sepunion/OneHandService;->mBootCompleteReceiver:Lcom/android/server/sepunion/OneHandService$1;

    .line 41
    .line 42
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    :catch_0
    :cond_0
    iget-object p1, p0, Lcom/android/server/sepunion/OneHandService;->mHandler:Landroid/os/Handler;

    .line 46
    .line 47
    new-instance v0, Lcom/android/server/sepunion/OneHandService$$ExternalSyntheticLambda0;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-direct {v0, v1, p0}, Lcom/android/server/sepunion/OneHandService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final onCleanupUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStartUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStopUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSwitchUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUnlockUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final registerListener(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "registerListener() name="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string p1, ", cb="

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, ", mMonitor="

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/server/sepunion/OneHandService;->mMonitor:Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "OneHandService"

    .line 35
    .line 36
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService;->mMonitor:Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string/jumbo v1, "registerWatcher() binder="

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ", watcher="

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :try_start_0
    iget-object p1, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    .line 73
    .line 74
    if-nez p1, :cond_0

    .line 75
    .line 76
    const/4 p1, 0x0

    .line 77
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 78
    .line 79
    .line 80
    iput-object p2, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->this$0:Lcom/android/server/sepunion/OneHandService;

    .line 83
    .line 84
    invoke-static {p0}, Lcom/android/server/sepunion/OneHandService;->-$$Nest$mbindService(Lcom/android/server/sepunion/OneHandService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception p0

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string p2, "exception on registerWatcher() e="

    .line 92
    .line 93
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    :cond_0
    :goto_0
    return-void
.end method

.method public final unRegisterListener(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "unRegisterListener() name="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string p1, ", cb="

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "OneHandService"

    .line 25
    .line 26
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService;->mMonitor:Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string/jumbo v1, "unregisterWatcher() binder="

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", watcher="

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    .line 63
    .line 64
    if-eqz p1, :cond_0

    .line 65
    .line 66
    if-ne p1, p2, :cond_0

    .line 67
    .line 68
    :try_start_0
    iget-object p1, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->this$0:Lcom/android/server/sepunion/OneHandService;

    .line 69
    .line 70
    iget-object v1, p1, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/android/server/sepunion/OneHandService;->mServiceConnection:Lcom/android/server/sepunion/OneHandService$2;

    .line 73
    .line 74
    invoke-virtual {v1, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 75
    .line 76
    .line 77
    const-string/jumbo p1, "unbindService()"

    .line 78
    .line 79
    .line 80
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 85
    .line 86
    .line 87
    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception p0

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string p2, "exception on unregisterWatcher() e="

    .line 95
    .line 96
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    :cond_0
    :goto_0
    return-void
.end method

.method public final writeSetting(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    const-string/jumbo p0, "writeSetting() type="

    .line 2
    .line 3
    .line 4
    const-string v0, ", key="

    .line 5
    .line 6
    const-string v1, ", value="

    .line 7
    .line 8
    invoke-static {p0, p1, v0, p2, v1}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string p1, "OneHandService"

    .line 13
    .line 14
    invoke-static {p0, p3, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
