.class public final synthetic Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:[Ljava/lang/String;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroid/content/Context;

.field public final synthetic f$5:Landroid/hardware/fingerprint/IFingerprintService;


# direct methods
.method public synthetic constructor <init>(Z[Ljava/lang/String;[Ljava/lang/String;ZLandroid/content/Context;Landroid/hardware/fingerprint/IFingerprintService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;->f$0:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;->f$1:[Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;->f$2:[Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;->f$3:Z

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;->f$4:Landroid/content/Context;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;->f$5:Landroid/hardware/fingerprint/IFingerprintService;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;->f$0:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;->f$1:[Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;->f$2:[Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;->f$3:Z

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;->f$4:Landroid/content/Context;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;->f$5:Landroid/hardware/fingerprint/IFingerprintService;

    .line 12
    .line 13
    sget-boolean v5, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 14
    .line 15
    const-string v6, "AuthService"

    .line 16
    .line 17
    if-eqz v5, :cond_2

    .line 18
    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v7, "registerFingerprintSensors: {"

    .line 22
    .line 23
    .line 24
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v7, ", "

    .line 28
    .line 29
    const/4 v8, 0x0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const-string v9, "aidl="

    .line 33
    .line 34
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    array-length v9, v1

    .line 38
    :goto_0
    if-ge v8, v9, :cond_1

    .line 39
    .line 40
    aget-object v10, v1, v8

    .line 41
    .line 42
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    add-int/lit8 v8, v8, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const-string/jumbo v9, "hidl="

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    array-length v9, v2

    .line 58
    :goto_1
    if-ge v8, v9, :cond_1

    .line 59
    .line 60
    aget-object v10, v2, v8

    .line 61
    .line 62
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    add-int/lit8 v8, v8, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const-string/jumbo v7, "}"

    .line 72
    .line 73
    .line 74
    invoke-static {v5, v7, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    new-instance v5, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;

    .line 78
    .line 79
    invoke-direct {v5, v3}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;-><init>(Z)V

    .line 80
    .line 81
    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    invoke-virtual {v5, v1}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->addAidlSensors([Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    invoke-virtual {v5, v2, v4}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->addHidlSensors([Ljava/lang/String;Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    :goto_2
    if-eqz p0, :cond_4

    .line 92
    .line 93
    :try_start_0
    invoke-interface {p0, v5}, Landroid/hardware/fingerprint/IFingerprintService;->registerAuthenticators(Landroid/hardware/fingerprint/FingerprintSensorConfigurations;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :catch_0
    move-exception p0

    .line 98
    const-string v0, "RemoteException when registering fingerprint authenticators"

    .line 99
    .line 100
    invoke-static {v6, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    invoke-virtual {v5}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->hasSensorConfigurations()Z

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    if-eqz p0, :cond_5

    .line 109
    .line 110
    const-string p0, "Fingerprint configuration exists, but FingerprintService is null."

    .line 111
    .line 112
    invoke-static {v6, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    :cond_5
    :goto_3
    return-void
.end method
