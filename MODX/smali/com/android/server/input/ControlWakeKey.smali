.class public final Lcom/android/server/input/ControlWakeKey;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mWakeKeyRefCount:Ljava/util/HashMap;


# direct methods
.method public static writeWakeKeyVolume(Ljava/lang/String;Z)V
    .locals 5

    .line 1
    const-string v0, "InputManager.ControlWakeKey"

    .line 3
    const-string/jumbo v1, "fosWakeKeyvolume writing is passed "

    .line 6
    if-eqz p1, :cond_0

    .line 8
    const-string p1, "1"

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p1, "0"

    .line 13
    :goto_0
    new-instance v2, Ljava/io/File;

    .line 15
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    const/4 v3, 0x0

    .line 19
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    .line 21
    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    :try_start_1
    const-string v2, "FileOutputStreamvolume is passed"

    .line 26
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-object v3, v4

    .line 31
    :catch_1
    const-string/jumbo v2, "file not found: "

    .line 34
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    move-object v4, v3

    .line 42
    :goto_1
    if-eqz v4, :cond_1

    .line 44
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v4, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 58
    goto :goto_2

    .line 59
    :catch_2
    const-string/jumbo p0, "fosWakeKeyvolume writing is failed"

    .line 62
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    .line 67
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 70
    const-string/jumbo p0, "closing fosWakeKeyvolume is passed"

    .line 73
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 76
    goto :goto_3

    .line 77
    :catch_3
    const-string/jumbo p0, "closing fosWakeKeyvolume is failed"

    .line 80
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_2
    :goto_3
    return-void
.end method


# virtual methods
.method public final makeWakeKeyRefCount(Ljava/lang/String;Z)V
    .locals 8

    .line 1
    const-string v0, ","

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const-string/jumbo v0, "mWakeKeyRefCount("

    .line 10
    const/4 v1, 0x0

    .line 11
    const-string v2, "InputManager.ControlWakeKey"

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz p2, :cond_1

    .line 16
    array-length p2, p1

    .line 17
    :goto_0
    if-ge v1, p2, :cond_4

    .line 19
    aget-object v4, p1, v1

    .line 21
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 24
    move-result-object v4

    .line 25
    iget-object v5, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    .line 27
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_0

    .line 33
    iget-object v5, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    .line 35
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Ljava/lang/Integer;

    .line 41
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 44
    move-result v5

    .line 45
    add-int/2addr v5, v3

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    move v5, v3

    .line 48
    :goto_1
    iget-object v6, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    .line 50
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v4, ") is increased: "

    .line 67
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v4

    .line 77
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    add-int/lit8 v1, v1, 0x1

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    array-length p2, p1

    .line 84
    :goto_2
    if-ge v1, p2, :cond_4

    .line 86
    aget-object v4, p1, v1

    .line 88
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 91
    move-result-object v4

    .line 92
    iget-object v5, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    .line 94
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_3

    .line 100
    iget-object v5, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    .line 102
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    move-result-object v5

    .line 106
    check-cast v5, Ljava/lang/Integer;

    .line 108
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 111
    move-result v5

    .line 112
    sub-int/2addr v5, v3

    .line 113
    if-gtz v5, :cond_2

    .line 115
    iget-object v5, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    .line 117
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    .line 122
    const-string/jumbo v6, "keyCode is removed: "

    .line 125
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v4

    .line 135
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    goto :goto_3

    .line 139
    :cond_2
    iget-object v6, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    .line 141
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    move-result-object v7

    .line 145
    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    .line 150
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v4, ") is decreased: "

    .line 158
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object v4

    .line 168
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 173
    goto :goto_2

    .line 174
    :cond_4
    return-void
.end method

.method public final makeWakeKeyString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    const-string v2, "InputManager.ControlWakeKey"

    .line 14
    if-nez v1, :cond_1

    .line 16
    iget-object v1, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    .line 18
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 21
    move-result v1

    .line 22
    new-array v3, v1, [Ljava/lang/String;

    .line 24
    iget-object p0, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    .line 26
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 33
    const/4 p0, 0x0

    .line 34
    :goto_0
    if-ge p0, v1, :cond_0

    .line 36
    aget-object v4, v3, p0

    .line 38
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    const-string v4, ","

    .line 43
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    add-int/lit8 p0, p0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 52
    move-result p0

    .line 53
    add-int/lit8 p0, p0, -0x1

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 58
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    const-string/jumbo v1, "keyCodes in makeWakeKeyString is "

    .line 63
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const-string/jumbo p0, "mWakeKeyRefCount is empty"

    .line 84
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_1
    new-instance p0, Ljava/lang/String;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 96
    return-object p0
.end method

.method public final setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const-string/jumbo v1, "setWakeKeyDynamically: pkg="

    .line 8
    const-string/jumbo v2, "empty"

    .line 11
    const-string/jumbo v3, "null"

    .line 14
    const-string v4, "InputManager.ControlWakeKey"

    .line 16
    if-eqz v0, :cond_1

    .line 18
    if-nez p1, :cond_0

    .line 20
    move-object v2, v3

    .line 21
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void

    .line 29
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v0

    .line 33
    const-string v5, ", keyCodes="

    .line 35
    if-eqz v0, :cond_3

    .line 37
    invoke-static {v1, p1, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    move-result-object p0

    .line 41
    if-nez p3, :cond_2

    .line 43
    move-object v2, v3

    .line 44
    :cond_2
    invoke-static {p0, v2, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void

    .line 48
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 51
    move-result v0

    .line 52
    const-string v6, ", uid="

    .line 54
    invoke-static {v0, v1, p1, v6, v5}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v5, ", put="

    .line 63
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/android/server/input/ControlWakeKey;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 81
    move-result-object v1

    .line 82
    if-nez v1, :cond_4

    .line 84
    const-string/jumbo p0, "pm is null"

    .line 87
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void

    .line 91
    :cond_4
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 94
    move-result-object v5

    .line 95
    if-eqz v5, :cond_d

    .line 97
    array-length v6, v5

    .line 98
    if-nez v6, :cond_5

    .line 100
    goto/16 :goto_4

    .line 102
    :cond_5
    array-length v2, v5

    .line 103
    const/4 v3, 0x0

    .line 104
    move v6, v3

    .line 105
    :goto_0
    if-ge v6, v2, :cond_7

    .line 107
    aget-object v7, v5, v6

    .line 109
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    move-result v7

    .line 113
    if-eqz v7, :cond_6

    .line 115
    const/4 v2, 0x1

    .line 116
    goto :goto_1

    .line 117
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 119
    goto :goto_0

    .line 120
    :cond_7
    move v2, v3

    .line 121
    :goto_1
    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 124
    move-result-object v1

    .line 125
    if-nez v1, :cond_8

    .line 127
    const-string p0, "appinfo is null"

    .line 129
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    return-void

    .line 133
    :cond_8
    if-eqz v2, :cond_9

    .line 135
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    .line 138
    move-result v6

    .line 139
    if-nez v6, :cond_b

    .line 141
    :cond_9
    const-string/jumbo v6, "uidHasPackage is "

    .line 144
    const-string v7, ", appinfo.privateFlags is "

    .line 146
    invoke-static {v6, v7, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 149
    move-result-object v6

    .line 150
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 152
    invoke-static {v6, v1, v4}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 155
    if-nez v2, :cond_a

    .line 157
    array-length v1, v5

    .line 158
    :goto_2
    if-ge v3, v1, :cond_a

    .line 160
    aget-object v2, v5, v3

    .line 162
    new-instance v6, Ljava/lang/StringBuilder;

    .line 164
    const-string/jumbo v7, "packages with uid "

    .line 167
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    const-string v7, ": "

    .line 175
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object v2

    .line 185
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    add-int/lit8 v3, v3, 0x1

    .line 190
    goto :goto_2

    .line 191
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 194
    move-result v0

    .line 195
    const/16 v1, 0x3e8

    .line 197
    if-ne v0, v1, :cond_c

    .line 199
    :cond_b
    :try_start_1
    invoke-virtual {p0, p3, p2}, Lcom/android/server/input/ControlWakeKey;->setWakeKeyDynamicallyInternal(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    goto :goto_3

    .line 203
    :catch_0
    move-exception p0

    .line 204
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 207
    :goto_3
    return-void

    .line 208
    :cond_c
    new-instance p0, Ljava/lang/SecurityException;

    .line 210
    const-string/jumbo p2, "only system app can use this method, but "

    .line 213
    const-string p3, " is not system app"

    .line 215
    invoke-static {p2, p1, p3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    move-result-object p1

    .line 219
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 222
    throw p0

    .line 223
    :catch_1
    const-string p0, "NameNotFoundException is occured"

    .line 225
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void

    .line 229
    :cond_d
    :goto_4
    if-nez v5, :cond_e

    .line 231
    move-object v2, v3

    .line 232
    :cond_e
    const-string/jumbo p0, "packages: "

    .line 235
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    move-result-object p0

    .line 239
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void
.end method

.method public final setWakeKeyDynamicallyInternal(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const-string v0, "116,172"

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/ControlWakeKey;->makeWakeKeyRefCount(Ljava/lang/String;Z)V

    .line 15
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/ControlWakeKey;->makeWakeKeyRefCount(Ljava/lang/String;Z)V

    .line 18
    iget-object p1, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    .line 20
    const-string p2, "114"

    .line 22
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_2

    .line 28
    iget-object p1, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    .line 30
    const-string p2, "115"

    .line 32
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    :cond_2
    :goto_0
    const-string p1, "/sys/power/volkey_wakeup"

    .line 42
    invoke-static {p1, v1}, Lcom/android/server/input/ControlWakeKey;->writeWakeKeyVolume(Ljava/lang/String;Z)V

    .line 45
    const-string p1, "/sys/class/sec/ap_pmic/volkey_wakeup"

    .line 47
    invoke-static {p1, v1}, Lcom/android/server/input/ControlWakeKey;->writeWakeKeyVolume(Ljava/lang/String;Z)V

    .line 50
    invoke-virtual {p0}, Lcom/android/server/input/ControlWakeKey;->makeWakeKeyString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/input/ControlWakeKey;->writeWakeKeyString(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public final writeWakeKeyString(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p0, "InputManager.ControlWakeKey"

    .line 3
    new-instance v0, Ljava/io/File;

    .line 5
    const-string v1, "/sys/class/sec/sec_key/wakeup_keys"

    .line 7
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    const/4 v1, 0x0

    .line 11
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 13
    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    :try_start_1
    const-string v0, "FileOutputStream is passed"

    .line 18
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-object v1, v2

    .line 23
    :catch_1
    const-string/jumbo v0, "file not found: /sys/class/sec/sec_key/wakeup_keys"

    .line 26
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    move-object v2, v1

    .line 30
    :goto_0
    if-eqz v2, :cond_0

    .line 32
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 39
    const-string/jumbo p1, "fosWakeKey writing is passed"

    .line 42
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 45
    goto :goto_1

    .line 46
    :catch_2
    const-string/jumbo p1, "fosWakeKey writing is failed"

    .line 49
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 54
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 57
    const-string/jumbo p1, "closing fosWakeKey is passed"

    .line 60
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 63
    goto :goto_2

    .line 64
    :catch_3
    const-string/jumbo p1, "closing fosWakeKey is failed"

    .line 67
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_1
    :goto_2
    return-void
.end method
