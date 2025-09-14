.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;

.field public final synthetic f$1:Landroid/hardware/fingerprint/FingerprintSensorConfigurations;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;Landroid/hardware/fingerprint/FingerprintSensorConfigurations;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/fingerprint/FingerprintSensorConfigurations;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/fingerprint/FingerprintSensorConfigurations;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->getSensorInstance()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->isSingleSensorConfigurationPresent()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    new-instance v4, Landroid/util/Pair;

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->getSensorPropForInstance(Ljava/lang/String;)[Landroid/hardware/biometrics/fingerprint/SensorProps;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-direct {v4, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const-string/jumbo v4, "virtual"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v4}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->doesInstanceExist(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-static {v6}, Lcom/android/server/biometrics/Utils;->isFingerprintVirtualEnabled(Landroid/content/Context;)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_2

    .line 53
    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    new-instance v3, Landroid/util/Pair;

    .line 57
    .line 58
    invoke-virtual {v0, v4}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->getSensorPropForInstance(Ljava/lang/String;)[Landroid/hardware/biometrics/fingerprint/SensorProps;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    move-object v4, v3

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const-string v4, "FingerprintService"

    .line 68
    .line 69
    const-string v5, "Could not find virtual interface while it is enabled"

    .line 70
    .line 71
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    new-instance v4, Landroid/util/Pair;

    .line 75
    .line 76
    invoke-virtual {v0, v3}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->getSensorPropForInstance(Ljava/lang/String;)[Landroid/hardware/biometrics/fingerprint/SensorProps;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-direct {v4, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    if-eqz v5, :cond_3

    .line 85
    .line 86
    invoke-virtual {v0, v4}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->getSensorNameNotForInstance(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    if-eqz v4, :cond_3

    .line 91
    .line 92
    new-instance v3, Landroid/util/Pair;

    .line 93
    .line 94
    invoke-virtual {v0, v4}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->getSensorPropForInstance(Ljava/lang/String;)[Landroid/hardware/biometrics/fingerprint/SensorProps;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    new-instance v4, Landroid/util/Pair;

    .line 103
    .line 104
    invoke-virtual {v0, v3}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->getSensorPropForInstance(Ljava/lang/String;)[Landroid/hardware/biometrics/fingerprint/SensorProps;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-direct {v4, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :goto_1
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->getResetLockoutRequiresHardwareAuthToken()Z

    .line 112
    .line 113
    .line 114
    move-result v16

    .line 115
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mFingerprintProviderFunction:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintProviderFunction;

    .line 116
    .line 117
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda0;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 131
    .line 132
    move-object v9, v3

    .line 133
    check-cast v9, [Landroid/hardware/biometrics/fingerprint/SensorProps;

    .line 134
    .line 135
    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 136
    .line 137
    move-object v10, v3

    .line 138
    check-cast v10, Ljava/lang/String;

    .line 139
    .line 140
    sget-object v15, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 141
    .line 142
    iget-object v12, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    .line 143
    .line 144
    iget-object v13, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 145
    .line 146
    iget-object v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 147
    .line 148
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 149
    .line 150
    iget-object v11, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 151
    .line 152
    const/4 v14, 0x0

    .line 153
    const/16 v17, 0x0

    .line 154
    .line 155
    move-object v5, v1

    .line 156
    invoke-direct/range {v5 .. v17}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;[Landroid/hardware/biometrics/fingerprint/SensorProps;Ljava/lang/String;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/log/BiometricContext;Landroid/hardware/biometrics/fingerprint/IFingerprint;Lcom/android/server/biometrics/BiometricHandlerProvider;ZZ)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    return-object v2
.end method
