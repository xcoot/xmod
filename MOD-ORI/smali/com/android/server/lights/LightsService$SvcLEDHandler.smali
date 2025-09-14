.class public final Lcom/android/server/lights/LightsService$SvcLEDHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/LightsService;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/lights/LightsService$SvcLEDHandler;->this$0:Lcom/android/server/lights/LightsService;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/lights/LightsService$SvcLEDHandler;->this$0:Lcom/android/server/lights/LightsService;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string p1, "LightsService"

    .line 13
    .line 14
    const-string v0, "[SvcLED] handleForcedSvcLEDTask()"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    .line 21
    .line 22
    .line 23
    const/16 p1, 0x13

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->setSvcLedLightLocked(I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method
