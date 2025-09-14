.class public abstract Lcom/android/server/biometrics/sensors/BiometricUserState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBiometrics:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public final mFile:Ljava/io/File;

.field public mInvalidationInProgress:Z

.field public final mWriteStateRunnable:Lcom/android/server/biometrics/sensors/BiometricUserState$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .line 1
    const-string v0, "BiometricUserState: migration result = "

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    .line 13
    new-instance v1, Lcom/android/server/biometrics/sensors/BiometricUserState$$ExternalSyntheticLambda0;

    .line 15
    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/BiometricUserState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/BiometricUserState;)V

    .line 18
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mWriteStateRunnable:Lcom/android/server/biometrics/sensors/BiometricUserState$$ExternalSyntheticLambda0;

    .line 20
    new-instance v1, Ljava/io/File;

    .line 22
    invoke-static {p3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mFile:Ljava/io/File;

    .line 31
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mContext:Landroid/content/Context;

    .line 33
    monitor-enter p0

    .line 34
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getLegacyFileName()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    new-instance p2, Ljava/io/File;

    .line 46
    invoke-static {p3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 49
    move-result-object p3

    .line 50
    invoke-direct {p2, p3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 62
    move-result p1

    .line 63
    const-string p2, "UserState"

    .line 65
    new-instance p3, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    goto :goto_1

    .line 83
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->readStateSyncLocked()V

    .line 86
    monitor-exit p0

    .line 87
    return-void

    .line 88
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p1
.end method


# virtual methods
.method public abstract doWriteState(Lcom/android/modules/utils/TypedXmlSerializer;)V
.end method

.method public final getBiometrics()Ljava/util/List;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 7
    move-result-object v0

    .line 8
    monitor-exit p0

    .line 9
    return-object v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw v0
.end method

.method public abstract getBiometricsTag()Ljava/lang/String;
.end method

.method public abstract getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
.end method

.method public abstract getLegacyFileName()Ljava/lang/String;
.end method

.method public abstract getNameTemplateResource()I
.end method

.method public final getUniqueName()Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getNameTemplateResource()I

    .line 7
    move-result v2

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v3

    .line 12
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v2

    .line 26
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 38
    invoke-virtual {v3}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getName()Ljava/lang/CharSequence;

    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_0

    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-object v1
.end method

.method public abstract parseBiometricsLocked(Lcom/android/modules/utils/TypedXmlPullParser;)V
.end method

.method public final parseStateLocked(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 4
    move-result v0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_4

    .line 12
    const/4 v2, 0x3

    .line 13
    if-ne v1, v2, :cond_1

    .line 15
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 18
    move-result v3

    .line 19
    if-le v3, v0, :cond_4

    .line 21
    :cond_1
    if-eq v1, v2, :cond_0

    .line 23
    const/4 v2, 0x4

    .line 24
    if-ne v1, v2, :cond_2

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getBiometricsTag()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_3

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricUserState;->parseBiometricsLocked(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const-string v2, "authenticatorIdInvalidation_tag"

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_0

    .line 53
    const/4 v1, 0x0

    .line 54
    const-string v2, "authenticatorIdInvalidation_attr"

    .line 56
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    move-result v1

    .line 60
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mInvalidationInProgress:Z

    .line 62
    goto :goto_0

    .line 63
    :cond_4
    return-void
.end method

.method public final readStateSyncLocked()V
    .locals 5

    .line 1
    const-string v0, "UserState"

    .line 3
    const-string v1, "Failed parsing settings file: "

    .line 5
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mFile:Ljava/io/File;

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 16
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mFile:Ljava/io/File;

    .line 18
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 21
    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p0, v3}, Lcom/android/server/biometrics/sensors/BiometricUserState;->parseStateLocked(Lcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception v3

    .line 35
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mFile:Ljava/io/File;

    .line 42
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 55
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mFile:Ljava/io/File;

    .line 57
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 60
    move-result v1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v3, "file corruption: delete result = "

    .line 66
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-nez v1, :cond_1

    .line 81
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mWriteStateRunnable:Lcom/android/server/biometrics/sensors/BiometricUserState$$ExternalSyntheticLambda0;

    .line 83
    invoke-static {p0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 86
    :cond_1
    const/4 p0, 0x1

    .line 87
    sput-boolean p0, Lcom/android/server/biometrics/Utils;->mDBCorrupted:Z

    .line 89
    :goto_0
    return-void

    .line 90
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 93
    throw p0

    .line 94
    :catch_1
    const-string p0, "No fingerprint state"

    .line 96
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method public final removeBiometric(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 9
    if-ge v0, v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 19
    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    .line 22
    move-result v1

    .line 23
    if-ne v1, p1, :cond_0

    .line 25
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 30
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mWriteStateRunnable:Lcom/android/server/biometrics/sensors/BiometricUserState$$ExternalSyntheticLambda0;

    .line 32
    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    :goto_1
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p1
.end method
