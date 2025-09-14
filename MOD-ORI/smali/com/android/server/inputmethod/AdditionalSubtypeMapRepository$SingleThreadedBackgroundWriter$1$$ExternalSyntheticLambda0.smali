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

    .line 2
    .line 3
    iget-object p0, p1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->subtypeMap:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->inputMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 6
    .line 7
    iget p1, p1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->userId:I

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Ljava/io/File;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string/jumbo v2, "system"

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_0
    new-instance v1, Ljava/io/File;

    .line 29
    .line 30
    const-string/jumbo v2, "inputmethod"

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->mMap:Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const-string/jumbo v2, "input-subtypes"

    .line 43
    .line 44
    .line 45
    const-string/jumbo v3, "subtypes.xml"

    .line 46
    .line 47
    .line 48
    const-string v4, "AdditionalSubtypeUtils"

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-nez p0, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    new-instance p0, Ljava/io/File;

    .line 60
    .line 61
    invoke-direct {p0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance p1, Landroid/util/AtomicFile;

    .line 65
    .line 66
    invoke-direct {p1, p0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/util/AtomicFile;->exists()Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_2

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/util/AtomicFile;->delete()V

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-static {v1}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    array-length p0, p0

    .line 83
    if-nez p0, :cond_5

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-nez p0, :cond_5

    .line 90
    .line 91
    new-instance p0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string p1, "Failed to delete the empty parent directory "

    .line 94
    .line 95
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_4

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_4

    .line 120
    .line 121
    new-instance p0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string p1, "Failed to create a parent directory "

    .line 124
    .line 125
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_4
    new-instance p1, Ljava/io/File;

    .line 140
    .line 141
    invoke-direct {p1, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    new-instance v1, Landroid/util/AtomicFile;

    .line 145
    .line 146
    invoke-direct {v1, p1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-static {p0, v0, v1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->saveToFile(Lcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;Landroid/util/AtomicFile;)V

    .line 150
    .line 151
    .line 152
    :cond_5
    :goto_1
    return-void
.end method
