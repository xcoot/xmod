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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;->f$1:Landroid/os/HidlMemory;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;->f$1:Landroid/os/HidlMemory;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;->f$2:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v2, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Landroid/os/HidlMemoryUtil;->hidlMemoryToByteArray(Landroid/os/HidlMemory;)[B

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v3, "SemFace"

    .line 20
    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    array-length v4, v1

    .line 24
    if-lez v4, :cond_3

    .line 25
    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string/jumbo v5, "sehOnAuthenticatedFromMemory read "

    .line 29
    .line 30
    .line 31
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    array-length v5, v1

    .line 35
    invoke-static {v4, v5, v3}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-boolean v4, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    array-length v4, v1

    .line 43
    const/16 v5, 0x80

    .line 44
    .line 45
    if-le v4, v5, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    array-length v5, v1

    .line 49
    :goto_0
    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string/jumbo v6, "data = "

    .line 56
    .line 57
    .line 58
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_1
    :try_start_0
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mMemoryFileForAuthPreviewResult:Landroid/os/MemoryFile;

    .line 76
    .line 77
    if-nez v4, :cond_2

    .line 78
    .line 79
    new-instance v4, Landroid/os/MemoryFile;

    .line 80
    .line 81
    const-string v5, "auth_preview"

    .line 82
    .line 83
    array-length v6, v1

    .line 84
    invoke-direct {v4, v5, v6}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    iput-object v4, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mMemoryFileForAuthPreviewResult:Landroid/os/MemoryFile;

    .line 88
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

    .line 93
    .line 94
    array-length v5, v1

    .line 95
    const/4 v6, 0x0

    .line 96
    invoke-virtual {v4, v1, v6, v6, v5}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 97
    .line 98
    .line 99
    const-class v1, Landroid/os/MemoryFile;

    .line 100
    .line 101
    const-string/jumbo v4, "getFileDescriptor"

    .line 102
    .line 103
    .line 104
    new-array v5, v6, [Ljava/lang/Class;

    .line 105
    .line 106
    const/4 v5, 0x0

    .line 107
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mMemoryFileForAuthPreviewResult:Landroid/os/MemoryFile;

    .line 112
    .line 113
    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Ljava/io/FileDescriptor;

    .line 118
    .line 119
    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const-string/jumbo v4, "memoryfile_descriptor"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :goto_2
    const-string v4, "Unable to write statistics stream"

    .line 131
    .line 132
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .line 134
    .line 135
    :goto_3
    const-string/jumbo v1, "sehOnAuthenticatedFromMemory save"

    .line 136
    .line 137
    .line 138
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_3
    const-string/jumbo v1, "sehOnAuthenticatedFromMemory data is null or 0"

    .line 143
    .line 144
    .line 145
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    :goto_4
    if-lez p0, :cond_4

    .line 149
    .line 150
    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendSucceeded(Landroid/os/Bundle;)V

    .line 151
    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_4
    const-string/jumbo p0, "sehOnAuthenticated: faceId is less than 0"

    .line 155
    .line 156
    .line 157
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    :goto_5
    return-void
.end method
