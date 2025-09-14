.class public final synthetic Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker$1;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker$1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    iget-object p1, v0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker$1;->this$1:Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;

    .line 8
    .line 9
    const-string v0, "CameraService_worker"

    .line 10
    .line 11
    iget-object p1, p1, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const-class v1, Landroid/hardware/camera2/CameraManager;

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    const-string v2, "DeviceInjector, Exception = "

    .line 43
    .line 44
    invoke-static {p1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    move p1, v1

    .line 48
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v3, "DeviceInjector, isExternalCamera = "

    .line 51
    .line 52
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p0, " facing = "

    .line 59
    .line 60
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    const/4 p0, 0x2

    .line 74
    if-ne p1, p0, :cond_0

    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method
