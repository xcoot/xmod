.class public final Lcom/samsung/android/camera/requestinjector/RequestInjectorService$RequestInjectorCallbackProxy;
.super Lcom/samsung/android/camera/IRequestInjectorCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/requestinjector/RequestInjectorService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$RequestInjectorCallbackProxy;->this$0:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/camera/IRequestInjectorCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final onCaptureResult(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$RequestInjectorCallbackProxy;->this$0:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mCallbackSet:Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/os/IBinder;

    .line 20
    .line 21
    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/camera/IRequestInjectorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/IRequestInjectorCallback;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    move-object v3, p1

    .line 26
    move-object v4, p2

    .line 27
    move-object v5, p3

    .line 28
    move v6, p4

    .line 29
    move-wide v7, p5

    .line 30
    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/camera/IRequestInjectorCallback;->onCaptureResult(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/String;Ljava/lang/String;IJ)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    const-string/jumbo v2, "onCaptureResult: Callback has removed by DeadObjectException clientName = "

    .line 35
    .line 36
    .line 37
    const-string v3, "RequestInjectorService"

    .line 38
    .line 39
    invoke-static {v2, p2, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$RequestInjectorCallbackProxy;->this$0:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->unregisterCallback(Landroid/os/IBinder;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method
