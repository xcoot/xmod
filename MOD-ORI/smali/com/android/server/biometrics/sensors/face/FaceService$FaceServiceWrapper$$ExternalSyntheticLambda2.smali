.class public final synthetic Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

.field public final synthetic f$1:Landroid/hardware/face/FaceSensorConfigurations;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;Landroid/hardware/face/FaceSensorConfigurations;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/face/FaceSensorConfigurations;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/face/FaceSensorConfigurations;

    .line 4
    .line 5
    sget v1, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->$r8$clinit:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/hardware/face/FaceSensorConfigurations;->getSensorInstance()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p0}, Landroid/hardware/face/FaceSensorConfigurations;->isSingleSensorConfigurationPresent()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    new-instance v3, Landroid/util/Pair;

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Landroid/hardware/face/FaceSensorConfigurations;->getSensorPropForInstance(Ljava/lang/String;)[Landroid/hardware/biometrics/face/SensorProps;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-direct {v3, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string/jumbo v3, "virtual"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v3}, Landroid/hardware/face/FaceSensorConfigurations;->doesInstanceExist(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-static {}, Lcom/android/server/biometrics/Flags;->faceVhalFeature()Z

    .line 43
    .line 44
    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0, v3}, Landroid/hardware/face/FaceSensorConfigurations;->getSensorNameNotForInstance(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    new-instance v2, Landroid/util/Pair;

    .line 54
    .line 55
    invoke-virtual {p0, v3}, Landroid/hardware/face/FaceSensorConfigurations;->getSensorPropForInstance(Ljava/lang/String;)[Landroid/hardware/biometrics/face/SensorProps;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    move-object v3, v2

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    new-instance v3, Landroid/util/Pair;

    .line 65
    .line 66
    invoke-virtual {p0, v2}, Landroid/hardware/face/FaceSensorConfigurations;->getSensorPropForInstance(Ljava/lang/String;)[Landroid/hardware/biometrics/face/SensorProps;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-direct {v3, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/FaceService;->mFaceProviderFunction:Lcom/android/server/biometrics/sensors/face/FaceService$FaceProviderFunction;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/hardware/face/FaceSensorConfigurations;->getResetLockoutRequiresChallenge()Z

    .line 78
    .line 79
    .line 80
    move-result v12

    .line 81
    check-cast v0, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda1;

    .line 82
    .line 83
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 95
    .line 96
    move-object v8, v2

    .line 97
    check-cast v8, [Landroid/hardware/biometrics/face/SensorProps;

    .line 98
    .line 99
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 100
    .line 101
    move-object v9, v2

    .line 102
    check-cast v9, Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {v2}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    iget-object v7, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 113
    .line 114
    iget-object v10, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 115
    .line 116
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 117
    .line 118
    move-object v4, v0

    .line 119
    invoke-direct/range {v4 .. v12}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;[Landroid/hardware/biometrics/face/SensorProps;Ljava/lang/String;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/log/BiometricContextProvider;Z)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    return-object v1
.end method
