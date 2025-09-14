.class public final Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mListener:Landroid/hardware/ISensorPrivacyListener;

.field public final synthetic this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;


# direct methods
.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;Landroid/hardware/ISensorPrivacyListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;->mListener:Landroid/hardware/ISensorPrivacyListener;

    .line 7
    .line 8
    :try_start_0
    invoke-interface {p2}, Landroid/hardware/ISensorPrivacyListener;->asBinder()Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;->mListener:Landroid/hardware/ISensorPrivacyListener;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    .line 8
    .line 9
    sget v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->$r8$clinit:I

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->removeDeathRecipient(Landroid/hardware/ISensorPrivacyListener;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
