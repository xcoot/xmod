.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;->f$1:I

    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;->f$2:I

    .line 10
    iput p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;->f$3:I

    .line 12
    iput p5, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;->f$4:I

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 3
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;->f$1:I

    .line 5
    iget v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;->f$2:I

    .line 7
    iget v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;->f$3:I

    .line 9
    iget v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;->f$4:I

    .line 11
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 13
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 16
    move-result-object p0

    .line 17
    const-string v8, "SemFace"

    .line 19
    if-nez p0, :cond_0

    .line 21
    const-string/jumbo p0, "sendImageProcessed: client is null"

    .line 24
    invoke-static {v8, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    goto/16 :goto_5

    .line 29
    :cond_0
    instance-of v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    .line 31
    const/4 v9, 0x0

    .line 32
    if-nez v1, :cond_2

    .line 34
    instance-of v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    .line 36
    if-eqz v1, :cond_1

    .line 38
    iget-boolean v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsAuthenticationExtOperation:Z

    .line 40
    if-nez v1, :cond_2

    .line 42
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v2, "sendImageProcessed : Wrong Client : "

    .line 47
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v2, ", Proto="

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getProtoEnum()I

    .line 65
    move-result p0

    .line 66
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    const-string p0, ", ext="

    .line 71
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-boolean p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsAuthenticationExtOperation:Z

    .line 76
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    invoke-static {v8, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iput-object v9, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLpreviewImage:[B

    .line 88
    goto/16 :goto_5

    .line 90
    :cond_2
    new-instance v7, Landroid/os/Bundle;

    .line 92
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 95
    :try_start_0
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLmemoryFileForPreview:Landroid/os/MemoryFile;

    .line 97
    if-nez v1, :cond_3

    .line 99
    new-instance v1, Landroid/os/MemoryFile;

    .line 101
    const-string/jumbo v2, "face_enroll_preview"

    .line 104
    iget-object v10, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLpreviewImage:[B

    .line 106
    array-length v10, v10

    .line 107
    invoke-direct {v1, v2, v10}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 110
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLmemoryFileForPreview:Landroid/os/MemoryFile;

    .line 112
    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    goto :goto_1

    .line 115
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLmemoryFileForPreview:Landroid/os/MemoryFile;

    .line 117
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLpreviewImage:[B

    .line 119
    array-length v10, v2

    .line 120
    const/4 v11, 0x0

    .line 121
    invoke-virtual {v1, v2, v11, v11, v10}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 124
    const-class v1, Landroid/os/MemoryFile;

    .line 126
    const-string/jumbo v2, "getFileDescriptor"

    .line 129
    new-array v10, v11, [Ljava/lang/Class;

    .line 131
    invoke-virtual {v1, v2, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 134
    move-result-object v1

    .line 135
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLmemoryFileForPreview:Landroid/os/MemoryFile;

    .line 137
    invoke-virtual {v1, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Ljava/io/FileDescriptor;

    .line 143
    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 146
    move-result-object v1

    .line 147
    const-string/jumbo v2, "memoryfile_descriptor"

    .line 150
    invoke-virtual {v7, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 153
    const/4 v1, 0x1

    .line 154
    new-array v1, v1, [B

    .line 156
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLpreviewImage:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    goto :goto_2

    .line 159
    :goto_1
    const-string/jumbo v2, "sendImageProcessed MemoryFile: "

    .line 162
    invoke-static {v8, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    :goto_2
    :try_start_1
    iget-boolean v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsAuthenticationExtOperation:Z

    .line 167
    if-eqz v1, :cond_4

    .line 169
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    .line 171
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLpreviewImage:[B

    .line 173
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 175
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 177
    if-eqz v1, :cond_5

    .line 179
    invoke-interface/range {v1 .. v7}, Landroid/hardware/face/IFaceServiceReceiver;->onSemImageProcessed([BIIIILandroid/os/Bundle;)V

    .line 182
    goto :goto_4

    .line 183
    :catch_1
    move-exception p0

    .line 184
    goto :goto_3

    .line 185
    :cond_4
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    .line 187
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLpreviewImage:[B

    .line 189
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 191
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 193
    if-eqz v1, :cond_5

    .line 195
    invoke-interface/range {v1 .. v7}, Landroid/hardware/face/IFaceServiceReceiver;->onSemImageProcessed([BIIIILandroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    goto :goto_4

    .line 199
    :goto_3
    const-string/jumbo v1, "sendImageProcessed onImageProcessed: "

    .line 202
    invoke-static {v8, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    :cond_5
    :goto_4
    iput-object v9, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLpreviewImage:[B

    .line 207
    :goto_5
    return-void
.end method
