.class public abstract Lcom/android/server/ondeviceintelligence/BundleUtil;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static canMarshall(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p0, [B

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p0, Landroid/os/PersistableBundle;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-static {p0}, Landroid/os/PersistableBundle;->isValidType(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
.end method

.method public static ensureValidBundle(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/Bundle;->hasBinders()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 11
    .line 12
    const-string v0, "Bundle should not contain IBinder objects."

    .line 13
    .line 14
    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "Request passed is expected to be non-null"

    .line 21
    .line 22
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public static sanitizeInferenceParams(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->ensureValidBundle(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_9

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->canMarshall(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    instance-of v1, v2, Landroid/database/CursorWindow;

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    instance-of v1, v2, Landroid/os/Bundle;

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    check-cast v2, Landroid/os/Bundle;

    .line 58
    .line 59
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeInferenceParams(Landroid/os/Bundle;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    instance-of v1, v2, Landroid/os/ParcelFileDescriptor;

    .line 64
    .line 65
    if-eqz v1, :cond_5

    .line 66
    .line 67
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 68
    .line 69
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_5
    instance-of v1, v2, Landroid/os/SharedMemory;

    .line 74
    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    check-cast v2, Landroid/os/SharedMemory;

    .line 78
    .line 79
    sget v1, Landroid/system/OsConstants;->PROT_READ:I

    .line 80
    .line 81
    invoke-virtual {v2, v1}, Landroid/os/SharedMemory;->setProtect(I)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_6
    instance-of v1, v2, Landroid/graphics/Bitmap;

    .line 86
    .line 87
    if-eqz v1, :cond_7

    .line 88
    .line 89
    check-cast v2, Landroid/graphics/Bitmap;

    .line 90
    .line 91
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validateBitmap(Landroid/graphics/Bitmap;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_7
    instance-of v1, v2, [Landroid/os/Parcelable;

    .line 96
    .line 97
    if-eqz v1, :cond_8

    .line 98
    .line 99
    check-cast v2, [Landroid/os/Parcelable;

    .line 100
    .line 101
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validateParcelableArray([Landroid/os/Parcelable;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-string v1, "Unsupported Parcelable type encountered in the Bundle: "

    .line 116
    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :cond_9
    return-void
.end method

.method public static sanitizeResponseParams(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->ensureValidBundle(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_7

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->canMarshall(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    instance-of v1, v2, Landroid/os/Bundle;

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    check-cast v2, Landroid/os/Bundle;

    .line 54
    .line 55
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeResponseParams(Landroid/os/Bundle;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    instance-of v1, v2, Landroid/os/ParcelFileDescriptor;

    .line 60
    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 64
    .line 65
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    instance-of v1, v2, Landroid/graphics/Bitmap;

    .line 70
    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    check-cast v2, Landroid/graphics/Bitmap;

    .line 74
    .line 75
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validateBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    instance-of v1, v2, [Landroid/os/Parcelable;

    .line 80
    .line 81
    if-eqz v1, :cond_6

    .line 82
    .line 83
    check-cast v2, [Landroid/os/Parcelable;

    .line 84
    .line 85
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validateParcelableArray([Landroid/os/Parcelable;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v1, "Unsupported Parcelable type encountered in the Bundle: "

    .line 100
    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0

    .line 109
    :cond_7
    return-void
.end method

.method public static sanitizeStateParams(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->ensureValidBundle(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_4

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->canMarshall(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    instance-of v1, v2, Landroid/os/ParcelFileDescriptor;

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 54
    .line 55
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    new-instance p0, Landroid/os/BadParcelableException;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "Unsupported Parcelable type encountered in the Bundle: "

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0

    .line 79
    :cond_4
    return-void
.end method

.method public static tryCloseResource(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :try_start_0
    instance-of v3, v2, Landroid/os/ParcelFileDescriptor;

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v2

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    instance-of v3, v2, Landroid/database/CursorWindow;

    .line 53
    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    check-cast v2, Landroid/database/CursorWindow;

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/database/CursorWindow;->close()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    instance-of v3, v2, Landroid/os/SharedMemory;

    .line 63
    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    check-cast v2, Landroid/os/SharedMemory;

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/os/SharedMemory;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v4, "Error closing resource with key: "

    .line 75
    .line 76
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const-string v3, "BundleUtil"

    .line 87
    .line 88
    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    :goto_2
    return-void
.end method

.method public static validateBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Landroid/os/BadParcelableException;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "Encountered a mutable Bitmap in the Bundle at key : "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public static validateParcelableArray([Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    aget-object v0, p0, v1

    .line 6
    .line 7
    instance-of v0, v0, Landroid/os/ParcelFileDescriptor;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    array-length v0, p0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_1

    .line 13
    .line 14
    aget-object v2, p0, v1

    .line 15
    .line 16
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    array-length v0, p0

    .line 25
    if-lez v0, :cond_2

    .line 26
    .line 27
    aget-object v0, p0, v1

    .line 28
    .line 29
    instance-of v0, v0, Landroid/graphics/Bitmap;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    array-length v0, p0

    .line 34
    :goto_1
    if-ge v1, v0, :cond_1

    .line 35
    .line 36
    aget-object v2, p0, v1

    .line 37
    .line 38
    check-cast v2, Landroid/graphics/Bitmap;

    .line 39
    .line 40
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validateBitmap(Landroid/graphics/Bitmap;)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    return-void

    .line 47
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 48
    .line 49
    const-string v0, "Could not cast to any known parcelable array"

    .line 50
    .line 51
    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method public static validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    sget v0, Landroid/system/OsConstants;->F_GETFL:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {p0, v0, v1}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    sget v0, Landroid/system/OsConstants;->O_ACCMODE:I

    .line 16
    .line 17
    and-int/2addr p0, v0

    .line 18
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    .line 19
    .line 20
    if-ne p0, v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance p0, Landroid/os/BadParcelableException;

    .line 24
    .line 25
    const-string v0, "Bundle contains a parcel file descriptor which is not read-only."

    .line 26
    .line 27
    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    new-instance v0, Landroid/os/BadParcelableException;

    .line 33
    .line 34
    const-string v1, "Invalid File descriptor passed in the Bundle."

    .line 35
    .line 36
    invoke-direct {v0, v1, p0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method
