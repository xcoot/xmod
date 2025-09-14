.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;


# static fields
.field static final SCREEN_OFF:I = 0x1

.field static final SCREEN_ON:I = 0x2


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$Injector;

.field mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

.field public mScreenStatus:I

.field public final mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$Injector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$Injector;

    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mScreenStatus:I

    .line 13
    return-void
.end method


# virtual methods
.method public final notifyScreenStatus()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mContext:Landroid/content/Context;

    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$Injector;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-class v1, Landroid/os/PowerManager;

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/os/PowerManager;

    .line 16
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    const/4 v0, 0x2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x1

    .line 25
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    const-string/jumbo v2, "notifyScreenStatus: "

    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mScreenStatus:I

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    const-string v2, ", "

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    const-string v2, "SemFpScreenStatusNotifier"

    .line 52
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mScreenStatus:I

    .line 57
    if-ne v1, v0, :cond_1

    .line 59
    return-void

    .line 60
    :cond_1
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mScreenStatus:I

    .line 62
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 64
    move-object v1, v0

    .line 65
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 67
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getSensorProperties()Ljava/util/List;

    .line 70
    move-result-object v1

    .line 71
    const/4 v2, 0x0

    .line 72
    check-cast v1, Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 80
    iget v3, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 82
    iget v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mScreenStatus:I

    .line 84
    const/4 v7, 0x0

    .line 85
    move-object v2, v0

    .line 86
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 88
    const/16 v4, 0x24

    .line 90
    const/4 v6, 0x0

    .line 91
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semRequest(III[B[B)I

    .line 94
    return-void
.end method

.method public final onAuthenticationFinished(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 3
    if-nez p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mContext:Landroid/content/Context;

    .line 8
    invoke-static {p2, p1}, Lcom/android/server/biometrics/Utils;->unregisterBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 14
    return-void
.end method

.method public final onAuthenticationStarted(II)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 3
    if-eqz p1, :cond_0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$1;

    .line 8
    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;)V

    .line 11
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 13
    const-string p1, "android.intent.action.SCREEN_ON"

    .line 15
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 17
    invoke-static {p1, p2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 20
    move-result-object v2

    .line 21
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mContext:Landroid/content/Context;

    .line 23
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 25
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 27
    sget-object p1, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 29
    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    .line 32
    move-result-object v5

    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    invoke-static/range {v0 .. v6}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Handler;I)V

    .line 38
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->notifyScreenStatus()V

    .line 41
    return-void
.end method
