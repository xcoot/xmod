.class public final Lcom/samsung/android/camera/CameraServiceWorker$CPRCommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final ACTION_RESET_CAMERAPROVIDER:Ljava/lang/String;

.field public final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$CPRCommandReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "com.samsung.cmh.action.cameraprovider"

    .line 7
    .line 8
    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$CPRCommandReceiver;->ACTION_RESET_CAMERAPROVIDER:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    iget-object v1, p1, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v5, p1, Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    const/4 v6, 0x2

    .line 19
    const/4 v4, 0x0

    .line 20
    move-object v2, p0

    .line 21
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$CPRCommandReceiver;->ACTION_RESET_CAMERAPROVIDER:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v0, "ACTION***"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string p2, "CameraService_worker"

    .line 32
    .line 33
    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$CPRCommandReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    const-wide v0, 0x400000000L

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeLocked(JZ)Landroid/util/Pair;

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method
