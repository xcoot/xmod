.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

.field public final synthetic f$1:Landroid/os/HidlMemory;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;Landroid/os/HidlMemory;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;->f$1:Landroid/os/HidlMemory;

    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;->f$1:Landroid/os/HidlMemory;

    .line 5
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;->f$2:I

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v2, Landroid/os/Bundle;

    .line 12
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 15
    invoke-static {v1}, Landroid/os/HidlMemoryUtil;->hidlMemoryToByteArray(Landroid/os/HidlMemory;)[B

    .line 18
    move-result-object v1

    .line 19
    const-string v3, "SemFace"

    .line 21
    if-eqz v1, :cond_3

    .line 23
    array-length v4, v1

    .line 24
    if-lez v4, :cond_3

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 28
    const-string/jumbo v5, "sehOnAuthenticatedFromMemory read "

    .line 31
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    array-length v5, v1

    .line 35
    invoke-static {v4, v5, v3}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 38
    sget-boolean v4, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 40
    if-eqz v4, :cond_1

    .line 42
    array-length v4, v1

    .line 43
    const/16 v5, 0x80

    .line 45
    if-le v4, v5, :cond_0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    array-length v5, v1

    .line 49
    :goto_0
    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 52
    move-result-object v4

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    .line 55
    const-string/jumbo v6, "data = "

    .line 58
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v4

    .line 72
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_1
    :try_start_0
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mMemoryFileForAuthPreviewResult:Landroid/os/MemoryFile;

    .line 77
    if-nez v4, :cond_2

    .line 79
    new-instance v4, Landroid/os/MemoryFile;

    .line 81
    const-string v5, "auth_preview"

    .line 83
    array-length v6, v1

    .line 84
    invoke-direct {v4, v5, v6}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 87
    iput-object v4, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mMemoryFileForAuthPreviewResult:Landroid/os/MemoryFile;

    .line 89
    goto :goto_1

    .line 90
    :catch_0
    move-exception v1

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    :goto_1
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mMemoryFileForAuthPreviewResult:Landroid/os/MemoryFile;

    .line 94
    array-length v5, v1

    .line 95
    const/4 v6, 0x0

    .line 96
    invoke-virtual {v4, v1, v6, v6, v5}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 99
    const-class v1, Landroid/os/MemoryFile;

    .line 101
    const-string/jumbo v4, "getFileDescriptor"

    .line 104
    new-array v5, v6, [Ljava/lang/Class;

    .line 106
    const/4 v5, 0x0

    .line 107
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 110
    move-result-object v1

    .line 111
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mMemoryFileForAuthPreviewResult:Landroid/os/MemoryFile;

    .line 113
    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Ljava/io/FileDescriptor;

    .line 119
    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 122
    move-result-object v1

    .line 123
    const-string/jumbo v4, "memoryfile_descriptor"

    .line 126
    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_3

    .line 130
    :goto_2
    const-string v4, "Unable to write statistics stream"

    .line 132
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    :goto_3
    const-string/jumbo v1, "sehOnAuthenticatedFromMemory save"

    .line 138
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    goto :goto_4

    .line 142
    :cond_3
    const-string/jumbo v1, "sehOnAuthenticatedFromMemory data is null or 0"

    .line 145
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_4
    if-lez p0, :cond_4

    .line 150
    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendSucceeded(Landroid/os/Bundle;)V

    .line 153
    goto :goto_5

    .line 154
    :cond_4
    const-string/jumbo p0, "sehOnAuthenticated: faceId is less than 0"

    .line 157
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_5
    return-void
.end method
