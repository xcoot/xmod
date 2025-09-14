.class public final Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAidlInstanceNameSupplier:Ljava/util/function/Supplier;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

.field public final mAuthenticationSyncLock:Ljava/lang/Object;

.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field public final mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

.field public final mFingerprintProviderFunction:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintProviderFunction;

.field public final mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

.field public final mHandler:Landroid/os/Handler;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

.field public final mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

.field final mServiceWrapper:Landroid/hardware/fingerprint/IFingerprintService$Stub;


# direct methods
.method public static -$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-object v7, p1

    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "android.permission.USE_FINGERPRINT"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "android.permission.USE_BIOMETRIC"

    .line 20
    .line 21
    invoke-static {v1, v2}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/16 v2, 0x3e8

    .line 29
    .line 30
    const/4 v8, 0x1

    .line 31
    if-ne v1, v2, :cond_1

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1, p1}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    move/from16 v2, p6

    .line 50
    .line 51
    invoke-static {v1, v2}, Lcom/android/server/biometrics/Utils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/4 v9, 0x0

    .line 56
    const-string v10, "Rejecting "

    .line 57
    .line 58
    const-string v11, "FingerprintService"

    .line 59
    .line 60
    if-nez v1, :cond_3

    .line 61
    .line 62
    const-string v0, "; not a current user or profile"

    .line 63
    .line 64
    invoke-static {v10, p1, v0, v11}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    move v8, v9

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    .line 70
    .line 71
    const/16 v2, 0x4e

    .line 72
    .line 73
    const/4 v6, 0x0

    .line 74
    move/from16 v3, p4

    .line 75
    .line 76
    move-object v4, p1

    .line 77
    move-object v5, p2

    .line 78
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_4

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    .line 86
    .line 87
    const/16 v2, 0x37

    .line 88
    .line 89
    const/4 v6, 0x0

    .line 90
    move/from16 v3, p4

    .line 91
    .line 92
    move-object v4, p1

    .line 93
    move-object v5, p2

    .line 94
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_5

    .line 99
    .line 100
    :goto_1
    if-eqz p3, :cond_6

    .line 101
    .line 102
    move/from16 v1, p4

    .line 103
    .line 104
    move/from16 v2, p5

    .line 105
    .line 106
    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->isForeground(II)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_6

    .line 111
    .line 112
    const-string v0, "; not in foreground"

    .line 113
    .line 114
    invoke-static {v10, p1, v0, v11}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    const-string v0, "; permission denied"

    .line 119
    .line 120
    invoke-static {v10, p1, v0, v11}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_6
    :goto_2
    return v8
.end method

.method public static -$$Nest$mgetEnrolledFingerprintsDeprecated(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;ILjava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string p1, "Null provider for getEnrolledFingerprintsDeprecated, caller: "

    .line 12
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string p1, "FingerprintService"

    .line 24
    .line 25
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p2, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 36
    .line 37
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    check-cast p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    iget-object p2, p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    :goto_0
    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContextProvider;

    move-result-object v2

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda1;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintProviderFunction;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintProviderFunction;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticationSyncLock:Ljava/lang/Object;

    .line 4
    new-instance p5, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;

    invoke-direct {p5, p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V

    iput-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceWrapper:Landroid/hardware/fingerprint/IFingerprintService$Stub;

    .line 5
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 6
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAidlInstanceNameSupplier:Ljava/util/function/Supplier;

    .line 7
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    .line 8
    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    invoke-direct {p2}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    .line 9
    new-instance p2, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    invoke-direct {p2, p1}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 10
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 11
    new-instance p2, Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p4

    invoke-direct {p2, p4}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;-><init>(Landroid/os/UserManager;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 12
    new-instance p2, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    invoke-direct {p2}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    if-eqz p6, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p6, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda0;

    invoke-direct {p6, p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V

    :goto_0
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mFingerprintProviderFunction:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintProviderFunction;

    .line 14
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getFpLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p2, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    .line 15
    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    invoke-direct {p2, p5, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;Ljava/util/function/Supplier;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 16
    new-instance p3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$2;

    invoke-direct {p3, p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V

    invoke-virtual {p2, p3}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->addAllRegisteredCallback(Landroid/os/IInterface;)V

    .line 17
    new-instance p3, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 18
    sget-object p4, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    invoke-virtual {p4}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p4

    new-instance p5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    invoke-direct {p5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;-><init>()V

    .line 19
    invoke-direct {p3, p1, p4, p2, p5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;)V

    .line 20
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    return-void
.end method


# virtual methods
.method public getFpLooper()Landroid/os/Looper;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public getServiceExtImpl()Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method public getUserOrWorkProfileId(I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public isForeground(II)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/android/server/biometrics/Utils;->isForeground(II)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final onBootPhase(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda3;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string/jumbo v0, "fingerprint"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceWrapper:Landroid/hardware/fingerprint/IFingerprintService$Stub;

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
