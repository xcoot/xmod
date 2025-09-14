.class public final Lcom/android/server/lights/LightsService$SvcLEDReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo p2, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Lcom/android/server/lights/LightsService$1;

    .line 17
    .line 18
    monitor-enter p1

    .line 19
    :try_start_0
    iget-object p2, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    .line 20
    .line 21
    invoke-static {p2}, Lcom/android/server/lights/LightsService;->-$$Nest$macquireWakeLockForLED(Lcom/android/server/lights/LightsService;)V

    .line 22
    .line 23
    .line 24
    const-string p2, "LightsService"

    .line 25
    .line 26
    const-string v0, "[api] onReceive : SvcLEDReceiver re-enables LightSenor and sends MSG_FORCEDSVCLEDTASK"

    .line 27
    .line 28
    invoke-static {p2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    invoke-virtual {p2, v0}, Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    .line 38
    .line 39
    iget-object p2, p2, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    .line 45
    .line 46
    iget-object p2, p2, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 47
    .line 48
    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    iget-object p0, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 55
    .line 56
    iget p0, p0, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    .line 57
    .line 58
    int-to-long v1, p0

    .line 59
    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 60
    .line 61
    .line 62
    monitor-exit p1

    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0

    .line 67
    :cond_0
    :goto_0
    return-void
.end method
