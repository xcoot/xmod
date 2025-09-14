.class public final Lcom/android/server/biometrics/BiometricCameraManagerImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIsCameraAvailable:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorPrivacyManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mIsCameraAvailable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    new-instance v0, Lcom/android/server/biometrics/BiometricCameraManagerImpl$1;

    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricCameraManagerImpl$1;-><init>(Lcom/android/server/biometrics/BiometricCameraManagerImpl;)V

    .line 16
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 18
    return-void
.end method
