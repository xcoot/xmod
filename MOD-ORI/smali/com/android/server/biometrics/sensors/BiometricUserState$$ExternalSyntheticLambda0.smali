.class public final synthetic Lcom/android/server/biometrics/sensors/BiometricUserState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/BiometricUserState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/BiometricUserState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/BiometricUserState;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/BiometricUserState;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "UserState"

    .line 7
    .line 8
    const-string v1, "authenticatorIdInvalidation_tag"

    .line 9
    .line 10
    const-string v2, "Failed to write to file: "

    .line 11
    .line 12
    new-instance v3, Landroid/util/AtomicFile;

    .line 13
    .line 14
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mFile:Ljava/io/File;

    .line 15
    .line 16
    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    :try_start_0
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 21
    .line 22
    .line 23
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    invoke-static {v5}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    const-string/jumbo v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 29
    .line 30
    .line 31
    const/4 v8, 0x1

    .line 32
    invoke-interface {v6, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-interface {v6, v4, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v6, v4, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 41
    .line 42
    .line 43
    const-string v7, "authenticatorIdInvalidation_attr"

    .line 44
    .line 45
    iget-boolean v8, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mInvalidationInProgress:Z

    .line 46
    .line 47
    invoke-interface {v6, v4, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 48
    .line 49
    .line 50
    invoke-interface {v6, v4, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v6}, Lcom/android/server/biometrics/sensors/BiometricUserState;->doWriteState(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception v1

    .line 67
    move-object v4, v5

    .line 68
    goto :goto_0

    .line 69
    :catchall_1
    move-exception v1

    .line 70
    :goto_0
    :try_start_2
    const-string v5, "Failed to write settings, restoring backup"

    .line 71
    .line 72
    invoke-static {v0, v5, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 76
    .line 77
    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mFile:Ljava/io/File;

    .line 84
    .line 85
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {v0, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 93
    .line 94
    .line 95
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 96
    .line 97
    .line 98
    :goto_1
    return-void

    .line 99
    :catchall_2
    move-exception p0

    .line 100
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 101
    .line 102
    .line 103
    throw p0
.end method
