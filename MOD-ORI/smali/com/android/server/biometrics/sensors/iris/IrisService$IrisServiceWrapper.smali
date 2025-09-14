.class public final Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;
.super Landroid/hardware/iris/IIrisService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/iris/IrisService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/iris/IrisService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/iris/IrisService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/iris/IIrisService$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final registerAuthenticators(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/iris/IIrisService$Stub;->registerAuthenticators_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const-string v2, "IrisService"

    .line 8
    .line 9
    invoke-static {v0, v2, v1}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Landroid/os/Handler;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method
