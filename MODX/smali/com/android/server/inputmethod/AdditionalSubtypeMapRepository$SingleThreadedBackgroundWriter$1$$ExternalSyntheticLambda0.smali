.class public final synthetic Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;

    .line 3
    iget-object p0, p1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->subtypeMap:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 5
    iget-object v0, p1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->inputMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 7
    iget p1, p1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->userId:I

    .line 9
    if-nez p1, :cond_0

    .line 11
    new-instance p1, Ljava/io/File;

    .line 13
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 16
    move-result-object v1

    .line 17
    const-string/jumbo v2, "system"

    .line 20
    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 27
    move-result-object p1

    .line 28
    :goto_0
    new-instance v1, Ljava/io/File;

    .line 30
    const-string/jumbo v2, "inputmethod"

    .line 33
    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->mMap:Landroid/util/ArrayMap;

    .line 38
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 41
    move-result p1

    .line 42
    const-string/jumbo v2, "input-subtypes"

    .line 45
    const-string/jumbo v3, "subtypes.xml"

    .line 48
    const-string v4, "AdditionalSubtypeUtils"

    .line 50
    if-eqz p1, :cond_3

    .line 52
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 55
    move-result p0

    .line 56
    if-nez p0, :cond_1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    new-instance p0, Ljava/io/File;

    .line 61
    invoke-direct {p0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    new-instance p1, Landroid/util/AtomicFile;

    .line 66
    invoke-direct {p1, p0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Landroid/util/AtomicFile;->exists()Z

    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_2

    .line 75
    invoke-virtual {p1}, Landroid/util/AtomicFile;->delete()V

    .line 78
    :cond_2
    invoke-static {v1}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    .line 81
    move-result-object p0

    .line 82
    array-length p0, p0

    .line 83
    if-nez p0, :cond_5

    .line 85
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 88
    move-result p0

    .line 89
    if-nez p0, :cond_5

    .line 91
    new-instance p0, Ljava/lang/StringBuilder;

    .line 93
    const-string p1, "Failed to delete the empty parent directory "

    .line 95
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 105
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    goto :goto_1

    .line 109
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_4

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_4

    .line 121
    new-instance p0, Ljava/lang/StringBuilder;

    .line 123
    const-string p1, "Failed to create a parent directory "

    .line 125
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p0

    .line 135
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    goto :goto_1

    .line 139
    :cond_4
    new-instance p1, Ljava/io/File;

    .line 141
    invoke-direct {p1, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    new-instance v1, Landroid/util/AtomicFile;

    .line 146
    invoke-direct {v1, p1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    invoke-static {p0, v0, v1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->saveToFile(Lcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;Landroid/util/AtomicFile;)V

    .line 152
    :cond_5
    :goto_1
    return-void
.end method
