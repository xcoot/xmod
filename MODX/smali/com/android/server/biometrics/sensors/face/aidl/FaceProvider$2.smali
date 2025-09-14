.class public final Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final synthetic val$sensorId:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 5
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->val$sensorId:I

    .line 7
    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final onUserSwitching(I)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 8
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v1, "onUserSwitching: "

    .line 15
    const-string v2, ", "

    .line 17
    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 23
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mDaemon:Landroid/hardware/biometrics/face/IFace;

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 37
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->val$sensorId:I

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 43
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 45
    iget v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->val$sensorId:I

    .line 47
    new-instance v7, Landroid/os/Binder;

    .line 49
    invoke-direct {v7}, Landroid/os/Binder;-><init>()V

    .line 52
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 54
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 59
    iget-object p0, v4, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda9;

    .line 63
    const/4 v8, 0x0

    .line 64
    const/4 v9, 0x1

    .line 65
    move-object v3, v0

    .line 66
    move v6, p1

    .line 67
    invoke-direct/range {v3 .. v9}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I)V

    .line 70
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 76
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    const-string/jumbo v1, "onUserSwitching: "

    .line 83
    const-string v2, ", "

    .line 85
    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    move-result-object v1

    .line 89
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 91
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mDaemon:Landroid/hardware/biometrics/face/IFace;

    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 105
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 107
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->val$sensorId:I

    .line 109
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 111
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 114
    move-result-object v0

    .line 115
    if-nez v0, :cond_0

    .line 117
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 119
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 122
    move-result-object p0

    .line 123
    const-string/jumbo p1, "sensor is not added yet"

    .line 126
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 132
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mIsFirstOnUserSwitching:Ljava/lang/Boolean;

    .line 134
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 142
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 144
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mIsFirstOnUserSwitching:Ljava/lang/Boolean;

    .line 146
    if-nez p1, :cond_1

    .line 148
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 151
    move-result-object p0

    .line 152
    const-string/jumbo p1, "onUserSwitching: skip first event with user 0"

    .line 155
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 161
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->val$sensorId:I

    .line 163
    const/4 v1, 0x0

    .line 164
    invoke-virtual {v0, p0, p1, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 167
    :goto_0
    return-void

    .line 168
    nop

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
