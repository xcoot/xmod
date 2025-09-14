.class public Lcom/android/server/biometrics/sensors/face/FaceService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAidlInstanceNameSupplier:Ljava/util/function/Supplier;

.field public final mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

.field public final mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

.field public final mFaceProvider:Ljava/util/function/Function;

.field public final mFaceProviderFunction:Lcom/android/server/biometrics/sensors/face/FaceService$FaceProviderFunction;

.field public final mIsEnrollSession:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

.field final mServiceWrapper:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    new-instance v3, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda2;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v5, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda2;-><init>(I)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/FaceService;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/face/FaceService$FaceProviderFunction;Ljava/util/function/Supplier;Ljava/util/function/Function;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/face/FaceService$FaceProviderFunction;Ljava/util/function/Supplier;Ljava/util/function/Function;Ljava/util/function/Supplier;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mIsEnrollSession:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    .line 5
    new-instance v1, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    invoke-direct {v1, p1}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 6
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance v1, Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;-><init>(Landroid/os/UserManager;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 8
    new-instance p1, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    invoke-direct {p1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 9
    new-instance p1, Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    invoke-direct {p1, v0, p3}, Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;-><init>(Landroid/hardware/face/IFaceService;Ljava/util/function/Supplier;)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 10
    new-instance p3, Lcom/android/server/biometrics/sensors/face/FaceService$1;

    invoke-direct {p3, p0}, Lcom/android/server/biometrics/sensors/face/FaceService$1;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    invoke-virtual {p1, p3}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->addAllRegisteredCallback(Landroid/os/IInterface;)V

    .line 11
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mAidlInstanceNameSupplier:Ljava/util/function/Supplier;

    if-eqz p4, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance p4, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    :goto_0
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mFaceProvider:Ljava/util/function/Function;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    new-instance p2, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    :goto_1
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mFaceProviderFunction:Lcom/android/server/biometrics/sensors/face/FaceService$FaceProviderFunction;

    return-void
.end method

.method public static native acquireSurfaceHandle(Landroid/view/Surface;)Landroid/os/NativeHandle;
.end method

.method public static native releaseSurfaceHandle(Landroid/os/NativeHandle;)V
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 9
    const-string p0, "FaceService"

    .line 11
    const-string p1, "Null provider for onBootPhase"

    .line 13
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 19
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 21
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 23
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V

    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string/jumbo v0, "face"

    .line 4
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 9
    return-void
.end method
