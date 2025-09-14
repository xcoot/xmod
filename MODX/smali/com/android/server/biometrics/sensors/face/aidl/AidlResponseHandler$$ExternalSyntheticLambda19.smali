.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/hardware/biometrics/face/AuthenticationFrame;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/biometrics/face/AuthenticationFrame;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda19;->f$0:Landroid/hardware/biometrics/face/AuthenticationFrame;

    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda19;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda19;->f$0:Landroid/hardware/biometrics/face/AuthenticationFrame;

    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda19;->f$1:I

    .line 5
    check-cast p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    .line 7
    if-nez v0, :cond_0

    .line 9
    const-string p0, "AidlResponseHandler"

    .line 11
    const-string p1, "Received null enrollment frame for face authentication client."

    .line 13
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    goto/16 :goto_3

    .line 18
    :cond_0
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 21
    move-result-object v1

    .line 22
    iget-object v2, v0, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    .line 24
    iget v2, v2, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    .line 26
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 28
    if-eqz v1, :cond_4

    .line 30
    const/4 v2, 0x4

    .line 31
    if-eq p0, v2, :cond_3

    .line 33
    const/4 v2, 0x5

    .line 34
    if-eq p0, v2, :cond_2

    .line 36
    const/16 v2, 0xb

    .line 38
    if-eq p0, v2, :cond_1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget p0, v1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityNoFace:I

    .line 43
    add-int/lit8 p0, p0, 0x1

    .line 45
    iput p0, v1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityNoFace:I

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget p0, v1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualitySmallFace:I

    .line 50
    add-int/lit8 p0, p0, 0x1

    .line 52
    iput p0, v1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualitySmallFace:I

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iget p0, v1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityBigFace:I

    .line 57
    add-int/lit8 p0, p0, 0x1

    .line 59
    iput p0, v1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityBigFace:I

    .line 61
    :cond_4
    :goto_0
    new-instance p0, Landroid/hardware/face/FaceAuthenticationFrame;

    .line 63
    iget-object v0, v0, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    .line 65
    new-instance v8, Landroid/hardware/face/FaceDataFrame;

    .line 67
    iget-byte v1, v0, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    .line 69
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkAcquiredInfo(B)I

    .line 72
    move-result v2

    .line 73
    iget v3, v0, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    .line 75
    iget v4, v0, Landroid/hardware/biometrics/face/BaseFrame;->pan:F

    .line 77
    iget v5, v0, Landroid/hardware/biometrics/face/BaseFrame;->tilt:F

    .line 79
    iget v6, v0, Landroid/hardware/biometrics/face/BaseFrame;->distance:F

    .line 81
    iget-boolean v7, v0, Landroid/hardware/biometrics/face/BaseFrame;->isCancellable:Z

    .line 83
    move-object v1, v8

    .line 84
    invoke-direct/range {v1 .. v7}, Landroid/hardware/face/FaceDataFrame;-><init>(IIFFFZ)V

    .line 87
    invoke-direct {p0, v8}, Landroid/hardware/face/FaceAuthenticationFrame;-><init>(Landroid/hardware/face/FaceDataFrame;)V

    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    invoke-virtual {p0}, Landroid/hardware/face/FaceAuthenticationFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getAcquiredInfo()I

    .line 100
    move-result v0

    .line 101
    invoke-virtual {p0}, Landroid/hardware/face/FaceAuthenticationFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1}, Landroid/hardware/face/FaceDataFrame;->getVendorCode()I

    .line 108
    move-result v1

    .line 109
    const/4 v2, 0x0

    .line 110
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquiredInternal(IIZ)V

    .line 113
    invoke-virtual {p1, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->shouldSendAcquiredMessage$1(II)Z

    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_7

    .line 119
    if-eqz v3, :cond_6

    .line 121
    :try_start_0
    iget-object v3, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 123
    new-instance v4, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;

    .line 125
    sget-object v5, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 127
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    .line 130
    move-result v6

    .line 131
    invoke-direct {v4, v5, v6, v0}, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;II)V

    .line 134
    invoke-virtual {v4}, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;

    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v3, v4}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationAcquired(Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;)V

    .line 141
    iget-object v3, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 143
    invoke-static {v3, v0, v1}, Landroid/hardware/face/FaceManager;->getAuthHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    .line 146
    move-result-object v3

    .line 147
    if-eqz v3, :cond_6

    .line 149
    const/16 v4, 0x16

    .line 151
    if-ne v0, v4, :cond_5

    .line 153
    add-int/lit16 v0, v1, 0x3e8

    .line 155
    :cond_5
    iget-object v1, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 157
    new-instance v4, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;

    .line 159
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    .line 162
    move-result v6

    .line 163
    invoke-direct {v4, v5, v6, v3, v0}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    .line 166
    invoke-virtual {v4}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationHelpInfo;

    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationHelp(Landroid/hardware/biometrics/events/AuthenticationHelpInfo;)V

    .line 173
    goto :goto_1

    .line 174
    :catch_0
    move-exception p0

    .line 175
    goto :goto_2

    .line 176
    :cond_6
    :goto_1
    iget-object v0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 178
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 180
    if-eqz v0, :cond_7

    .line 182
    invoke-interface {v0, p0}, Landroid/hardware/face/IFaceServiceReceiver;->onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    goto :goto_3

    .line 186
    :goto_2
    const-string v0, "FaceAuthenticationClient"

    .line 188
    const-string v1, "Failed to send authentication frame"

    .line 190
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    iget-object p0, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 195
    new-instance v0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    .line 197
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 199
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    .line 202
    move-result v3

    .line 203
    invoke-direct {v0, v1, v3}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 206
    invoke-virtual {v0}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    .line 213
    iget-object p0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 215
    invoke-interface {p0, p1, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 218
    :cond_7
    :goto_3
    return-void
.end method
