.class public final Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;
.super Landroid/hardware/biometrics/face/ISession$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

.field public final synthetic val$cb:Landroid/hardware/biometrics/face/ISessionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;Landroid/hardware/biometrics/face/ISessionCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/hardware/biometrics/face/ISession$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 3

    .line 1
    const-string/jumbo p1, "face.aidl.SehTestHal"

    .line 2
    .line 3
    .line 4
    const-string p2, "authenticate"

    .line 5
    .line 6
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 10
    .line 11
    iget p2, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mSensorId:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {p2, v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p2, v1, v2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    const/4 v1, 0x1

    .line 34
    if-lt p2, v1, :cond_0

    .line 35
    .line 36
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 37
    .line 38
    iget-object v0, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    .line 41
    .line 42
    iput-object v0, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionList:Ljava/util/List;

    .line 43
    .line 44
    iput v2, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionListPos:I

    .line 45
    .line 46
    check-cast v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 53
    .line 54
    iput-object v0, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 55
    .line 56
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 57
    .line 58
    iget-object v0, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mH:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$1;

    .line 59
    .line 60
    iget-object p2, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 61
    .line 62
    iget-wide v1, p2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    .line 63
    .line 64
    const/16 p2, 0x64

    .line 65
    .line 66
    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 67
    .line 68
    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string/jumbo v0, "start authenticate: "

    .line 72
    .line 73
    .line 74
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 78
    .line 79
    iget v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mFaceId:I

    .line 80
    .line 81
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, ", action size = "

    .line 85
    .line 86
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionList:Ljava/util/List;

    .line 92
    .line 93
    check-cast v0, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$1;

    .line 110
    .line 111
    const/4 p2, 0x1

    .line 112
    invoke-direct {p1, p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;I)V

    .line 113
    .line 114
    .line 115
    return-object p1

    .line 116
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mCallback:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 119
    .line 120
    const/16 p2, 0x8

    .line 121
    .line 122
    invoke-interface {p0, p2, v2}, Landroid/hardware/biometrics/face/ISessionCallback;->onError(BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :catch_0
    move-exception p0

    .line 127
    const-string/jumbo p2, "enroll no enrolled : "

    .line 128
    .line 129
    .line 130
    invoke-static {p0, p2, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :goto_0
    return-object v0
.end method

.method public final authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final close()V
    .locals 2

    .line 1
    const-string/jumbo v0, "face.aidl.SehTestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "close"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 11
    .line 12
    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISessionCallback;->onSessionClosed()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 2

    .line 1
    const-string/jumbo v0, "face.aidl.SehTestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "detectInteraction"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$1;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;I)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 4

    .line 1
    const-string/jumbo p1, "face.aidl.SehTestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo p2, "enroll"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 11
    .line 12
    iget-boolean p3, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->isEnrollSessionOpen:Z

    .line 13
    .line 14
    if-eqz p3, :cond_3

    .line 15
    .line 16
    iget p3, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mSensorId:I

    .line 17
    .line 18
    const/4 p4, 0x0

    .line 19
    invoke-static {p3, p4}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    iget-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 24
    .line 25
    iget-object p4, p4, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p3, p4, v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    const/4 p4, 0x1

    .line 33
    move v2, p4

    .line 34
    :goto_0
    move v1, v0

    .line 35
    :goto_1
    if-nez v1, :cond_2

    .line 36
    .line 37
    move-object v1, p3

    .line 38
    check-cast v1, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroid/hardware/face/Face;

    .line 55
    .line 56
    invoke-virtual {v3}, Landroid/hardware/face/Face;->getBiometricId()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-ne v2, v3, :cond_0

    .line 61
    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move v1, p4

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    iput v2, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mFaceId:I

    .line 68
    .line 69
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 70
    .line 71
    iget-object p3, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 72
    .line 73
    iget-object p3, p3, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    .line 74
    .line 75
    iput-object p3, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionList:Ljava/util/List;

    .line 76
    .line 77
    iput v0, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionListPos:I

    .line 78
    .line 79
    iput-boolean v0, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mGlassesOn:Z

    .line 80
    .line 81
    check-cast p3, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    check-cast p3, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 88
    .line 89
    iput-object p3, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 90
    .line 91
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 92
    .line 93
    iget-object p3, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mH:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$1;

    .line 94
    .line 95
    iget-object p2, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 96
    .line 97
    iget-wide v0, p2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    .line 98
    .line 99
    const/16 p2, 0x64

    .line 100
    .line 101
    invoke-virtual {p3, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 102
    .line 103
    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string/jumbo p3, "start enroll: "

    .line 107
    .line 108
    .line 109
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 113
    .line 114
    iget p3, p3, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mFaceId:I

    .line 115
    .line 116
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string p3, ", action size = "

    .line 120
    .line 121
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 125
    .line 126
    iget-object p3, p3, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionList:Ljava/util/List;

    .line 127
    .line 128
    check-cast p3, Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 131
    .line 132
    .line 133
    move-result p3

    .line 134
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_3
    const-string/jumbo p2, "enroll : generateChallenge not done"

    .line 146
    .line 147
    .line 148
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    :goto_2
    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$1;

    .line 152
    .line 153
    const/4 p2, 0x0

    .line 154
    invoke-direct {p1, p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;I)V

    .line 155
    .line 156
    .line 157
    return-object p1
.end method

.method public final enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final enrollWithOptions(Landroid/hardware/biometrics/face/FaceEnrollOptions;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 1

    .line 1
    const-string/jumbo p1, "face.aidl.SehTestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "enrollWithOptions"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$1;

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    invoke-direct {p1, p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;I)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final enumerateEnrollments()V
    .locals 2

    .line 1
    const-string/jumbo v0, "face.aidl.SehTestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "enumerateEnrollments"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    new-array v0, v0, [I

    .line 14
    .line 15
    invoke-interface {p0, v0}, Landroid/hardware/biometrics/face/ISessionCallback;->onEnrollmentsEnumerated([I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final generateChallenge()V
    .locals 2

    .line 1
    const-string/jumbo v0, "face.aidl.SehTestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "generateChallenge"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->isEnrollSessionOpen:Z

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 16
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onChallengeGenerated(J)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final getAuthenticatorId()V
    .locals 2

    .line 1
    const-string/jumbo v0, "face.aidl.SehTestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "getAuthenticatorId"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticatorIdRetrieved(J)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final getEnrollmentConfig(B)[Landroid/hardware/biometrics/face/EnrollmentStageConfig;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [Landroid/hardware/biometrics/face/EnrollmentStageConfig;

    .line 3
    .line 4
    return-object p0
.end method

.method public final getFeatures()V
    .locals 2

    .line 1
    const-string/jumbo v0, "face.aidl.SehTestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "getFeatures"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    new-array v0, v0, [B

    .line 14
    .line 15
    invoke-interface {p0, v0}, Landroid/hardware/biometrics/face/ISessionCallback;->onFeaturesRetrieved([B)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "c43fbb9be4a662cc9ace640dba21cccdb84c6c21"

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    .line 1
    const/4 p0, 0x4

    .line 2
    return p0
.end method

.method public final invalidateAuthenticatorId()V
    .locals 2

    .line 1
    const-string/jumbo v0, "face.aidl.SehTestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "invalidateAuthenticatorId"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticatorIdInvalidated(J)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    .locals 0

    .line 1
    const-string/jumbo p0, "face.aidl.SehTestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo p1, "onContextChanged"

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final removeEnrollments([I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "face.aidl.SehTestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "removeEnrollments"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 11
    .line 12
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/ISessionCallback;->onEnrollmentsRemoved([I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V
    .locals 1

    .line 1
    const-string/jumbo p1, "face.aidl.SehTestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "resetLockout"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 11
    .line 12
    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISessionCallback;->onLockoutCleared()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final revokeChallenge(J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "revokeChallenge: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string/jumbo v1, "face.aidl.SehTestHal"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-boolean v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->isEnrollSessionOpen:Z

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 28
    .line 29
    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/ISessionCallback;->onChallengeRevoked(J)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final setFeature(Landroid/hardware/keymaster/HardwareAuthToken;BZ)V
    .locals 0

    .line 1
    const-string/jumbo p1, "face.aidl.SehTestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo p3, "setFeature"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 11
    .line 12
    invoke-interface {p0, p2}, Landroid/hardware/biometrics/face/ISessionCallback;->onFeatureSet(B)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
