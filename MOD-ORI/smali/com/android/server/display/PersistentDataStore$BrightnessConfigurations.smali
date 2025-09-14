.class public final Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConfigurations:Landroid/util/SparseArray;

.field public final mPackageNames:Landroid/util/SparseArray;

.field public final mSetConfigurations:Landroid/util/SparseArray;

.field public final mSetPackageNames:Landroid/util/SparseArray;

.field public final mSetTimeStamps:Landroid/util/SparseLongArray;

.field public final mTimeStamps:Landroid/util/SparseLongArray;


# direct methods
.method public static -$$Nest$msetBrightnessConfigurationForUser(Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/hardware/display/BrightnessConfiguration;

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetPackageNames:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetPackageNames:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetTimeStamps:Landroid/util/SparseLongArray;

    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-virtual {v1, p2, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 31
    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetConfigurations:Landroid/util/SparseArray;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetConfigurations:Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_1
    if-eq v0, p1, :cond_6

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_6

    .line 62
    .line 63
    :cond_3
    if-eqz p1, :cond_5

    .line 64
    .line 65
    if-nez p3, :cond_4

    .line 66
    .line 67
    iget-object p3, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    .line 68
    .line 69
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    .line 74
    .line 75
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :goto_2
    iget-object p3, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    .line 79
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    invoke-virtual {p3, p2, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 85
    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 88
    .line 89
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_5
    iget-object p1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroid/util/SparseLongArray;->delete(I)V

    .line 101
    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 104
    .line 105
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 106
    .line 107
    .line 108
    :goto_3
    const/4 p0, 0x1

    .line 109
    goto :goto_4

    .line 110
    :cond_6
    const/4 p0, 0x0

    .line 111
    :goto_4
    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseLongArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    .line 24
    .line 25
    new-instance v0, Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetConfigurations:Landroid/util/SparseArray;

    .line 31
    .line 32
    new-instance v0, Landroid/util/SparseLongArray;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetTimeStamps:Landroid/util/SparseLongArray;

    .line 38
    .line 39
    new-instance v0, Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetPackageNames:Landroid/util/SparseArray;

    .line 45
    .line 46
    return-void
.end method

.method public static fileWriteInt(I)V
    .locals 4

    .line 1
    const-string v0, "/data/log/BC_Position"

    .line 2
    .line 3
    const-string/jumbo v1, "fileWriteInt : /data/log/BC_Position  value : "

    .line 4
    .line 5
    .line 6
    const-string v2, "DisplayManager.PersistentDataStore"

    .line 7
    .line 8
    invoke-static {p0, v1, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 13
    .line 14
    new-instance v3, Ljava/io/File;

    .line 15
    .line 16
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    .line 21
    .line 22
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    move-object v1, v2

    .line 41
    goto :goto_0

    .line 42
    :catch_1
    move-exception p0

    .line 43
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catch_2
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :catch_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const-string v2, "  "

    .line 9
    .line 10
    if-ge v0, v1, :cond_2

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    .line 19
    .line 20
    const-wide/16 v3, -0x1

    .line 21
    .line 22
    invoke-virtual {v2, v1, v3, v4}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/String;

    .line 33
    .line 34
    const-string v7, "      User "

    .line 35
    .line 36
    const-string v8, ":"

    .line 37
    .line 38
    invoke-static {v1, p1, v7, v8}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    cmp-long v1, v5, v3

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v3, "        set at: "

    .line 48
    .line 49
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    if-eqz v2, :cond_1

    .line 67
    .line 68
    const-string v1, "        set by: "

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v2, "        "

    .line 80
    .line 81
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 85
    .line 86
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    add-int/lit8 v0, v0, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    const-string p0, "UTF-8"

    .line 104
    .line 105
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, "\n\n dumpSetBrightnessConfiguration_1"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    new-instance v0, Ljava/io/File;

    .line 126
    .line 127
    const-string v1, "/data/log/Brightness_Configurations_1"

    .line 128
    .line 129
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_4

    .line 137
    .line 138
    new-instance v1, Ljava/util/Scanner;

    .line 139
    .line 140
    invoke-direct {v1, v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :goto_1
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_3

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    goto :goto_2

    .line 159
    :cond_3
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :goto_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 164
    .line 165
    .line 166
    :cond_4
    :goto_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v1, "\n\n dumpSetBrightnessConfiguration_2"

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    new-instance v0, Ljava/io/File;

    .line 187
    .line 188
    const-string v1, "/data/log/Brightness_Configurations_2"

    .line 189
    .line 190
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_6

    .line 198
    .line 199
    new-instance v1, Ljava/util/Scanner;

    .line 200
    .line 201
    invoke-direct {v1, v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :goto_4
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    if-eqz p0, :cond_5

    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    goto :goto_4

    .line 218
    :catch_1
    move-exception p0

    .line 219
    goto :goto_5

    .line 220
    :cond_5
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    .line 222
    .line 223
    goto :goto_6

    .line 224
    :goto_5
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 225
    .line 226
    .line 227
    :cond_6
    :goto_6
    return-void
.end method

.method public final loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 10

    .line 1
    const-string v0, "DisplayManager.PersistentDataStore"

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    :cond_0
    :goto_0
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    const-string/jumbo v2, "brightness-configuration"

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    :try_start_0
    const-string/jumbo v3, "user-serial"

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception v3

    .line 36
    const-string v4, "Failed to read in brightness configuration"

    .line 37
    .line 38
    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    const/4 v3, -0x1

    .line 42
    :goto_1
    const-string/jumbo v4, "package-name"

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v2, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const-string/jumbo v5, "timestamp"

    .line 50
    .line 51
    .line 52
    const-wide/16 v6, -0x1

    .line 53
    .line 54
    invoke-interface {p1, v2, v5, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 55
    .line 56
    .line 57
    move-result-wide v8

    .line 58
    :try_start_1
    invoke-static {p1}, Landroid/hardware/display/BrightnessConfiguration;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/hardware/display/BrightnessConfiguration;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-ltz v3, :cond_0

    .line 63
    .line 64
    if-eqz v2, :cond_0

    .line 65
    .line 66
    iget-object v5, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 67
    .line 68
    invoke-virtual {v5, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    cmp-long v2, v8, v6

    .line 72
    .line 73
    if-eqz v2, :cond_1

    .line 74
    .line 75
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    .line 76
    .line 77
    invoke-virtual {v2, v3, v8, v9}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :catch_1
    move-exception v2

    .line 82
    goto :goto_3

    .line 83
    :cond_1
    :goto_2
    if-eqz v4, :cond_0

    .line 84
    .line 85
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    .line 86
    .line 87
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :goto_3
    const-string v3, "Failed to load brightness configuration!"

    .line 92
    .line 93
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    return-void
.end method

.method public final saveHistory(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    const-string v2, "\n  set at: "

    .line 3
    .line 4
    const-string/jumbo v0, "readFromFile /data/log/BC_Position: "

    .line 5
    .line 6
    .line 7
    const-string v3, "/data/log/BC_Position"

    .line 8
    .line 9
    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v5, 0x1

    .line 14
    const/4 v6, 0x0

    .line 15
    const-string v7, "DisplayManager.PersistentDataStore"

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    if-eqz v4, :cond_2

    .line 19
    .line 20
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    .line 21
    .line 22
    new-instance v9, Ljava/io/File;

    .line 23
    .line 24
    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v3, "r"

    .line 28
    .line 29
    .line 30
    invoke-direct {v4, v9, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    .line 32
    .line 33
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 38
    .line 39
    .line 40
    new-instance v9, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catch_0
    move-object v3, v8

    .line 57
    goto :goto_0

    .line 58
    :catch_1
    move-object v3, v8

    .line 59
    move-object v4, v3

    .line 60
    :catch_2
    :goto_0
    const-string v0, "IOException in readFromFile"

    .line 61
    .line 62
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    if-eqz v4, :cond_0

    .line 66
    .line 67
    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catch_3
    const-string v0, "Exception in readFromFile"

    .line 72
    .line 73
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    .line 77
    .line 78
    const-string v0, "/data/log/BC_Position : data is null."

    .line 79
    .line 80
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    const/4 v0, -0x1

    .line 84
    goto :goto_3

    .line 85
    :cond_1
    :try_start_4
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 89
    goto :goto_3

    .line 90
    :catch_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v4, "/data/log/BC_Position : data is \""

    .line 93
    .line 94
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v3, "\""

    .line 101
    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    const-string/jumbo v0, "make new position file"

    .line 114
    .line 115
    .line 116
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    invoke-static {v5}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->fileWriteInt(I)V

    .line 120
    .line 121
    .line 122
    :goto_2
    move v0, v6

    .line 123
    :goto_3
    const-string v3, "/data/log/Brightness_Configurations_1"

    .line 124
    .line 125
    if-eqz v0, :cond_7

    .line 126
    .line 127
    const v4, 0x186a0

    .line 128
    .line 129
    .line 130
    const-string v9, "/data/log/Brightness_Configurations_2"

    .line 131
    .line 132
    const/4 v10, 0x2

    .line 133
    if-eq v0, v5, :cond_5

    .line 134
    .line 135
    if-eq v0, v10, :cond_3

    .line 136
    .line 137
    :try_start_5
    const-string v0, "Error case"

    .line 138
    .line 139
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :catch_5
    move-exception v0

    .line 144
    move-object v3, v8

    .line 145
    goto/16 :goto_7

    .line 146
    .line 147
    :cond_3
    new-instance v0, Ljava/io/File;

    .line 148
    .line 149
    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    new-instance v7, Ljava/io/FileInputStream;

    .line 153
    .line 154
    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 155
    .line 156
    .line 157
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->available()I

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    if-gt v9, v4, :cond_4

    .line 162
    .line 163
    new-instance v3, Ljava/io/FileOutputStream;

    .line 164
    .line 165
    invoke-direct {v3, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 166
    .line 167
    .line 168
    :goto_4
    move-object v8, v7

    .line 169
    goto :goto_8

    .line 170
    :catch_6
    move-exception v0

    .line 171
    :goto_5
    move-object v3, v7

    .line 172
    goto :goto_7

    .line 173
    :cond_4
    new-instance v0, Ljava/io/File;

    .line 174
    .line 175
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    new-instance v3, Ljava/io/FileOutputStream;

    .line 179
    .line 180
    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 181
    .line 182
    .line 183
    :try_start_7
    invoke-static {v5}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->fileWriteInt(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 184
    .line 185
    .line 186
    goto :goto_4

    .line 187
    :catch_7
    move-exception v0

    .line 188
    move-object v8, v3

    .line 189
    goto :goto_5

    .line 190
    :cond_5
    :try_start_8
    new-instance v0, Ljava/io/File;

    .line 191
    .line 192
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    new-instance v3, Ljava/io/FileInputStream;

    .line 196
    .line 197
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 198
    .line 199
    .line 200
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    if-gt v7, v4, :cond_6

    .line 205
    .line 206
    new-instance v4, Ljava/io/FileOutputStream;

    .line 207
    .line 208
    invoke-direct {v4, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 209
    .line 210
    .line 211
    :goto_6
    move-object v8, v3

    .line 212
    move-object v3, v4

    .line 213
    goto :goto_8

    .line 214
    :catch_8
    move-exception v0

    .line 215
    goto :goto_7

    .line 216
    :cond_6
    new-instance v0, Ljava/io/File;

    .line 217
    .line 218
    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    new-instance v4, Ljava/io/FileOutputStream;

    .line 222
    .line 223
    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 224
    .line 225
    .line 226
    :try_start_a
    invoke-static {v10}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->fileWriteInt(I)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 227
    .line 228
    .line 229
    goto :goto_6

    .line 230
    :catch_9
    move-exception v0

    .line 231
    move-object v8, v4

    .line 232
    goto :goto_7

    .line 233
    :cond_7
    :try_start_b
    new-instance v0, Ljava/io/File;

    .line 234
    .line 235
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    new-instance v3, Ljava/io/FileOutputStream;

    .line 239
    .line 240
    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 241
    .line 242
    .line 243
    goto :goto_8

    .line 244
    :goto_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 245
    .line 246
    .line 247
    move-object v14, v8

    .line 248
    move-object v8, v3

    .line 249
    move-object v3, v14

    .line 250
    :goto_8
    if-eqz v3, :cond_f

    .line 251
    .line 252
    :goto_9
    iget-object v0, v1, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetTimeStamps:Landroid/util/SparseLongArray;

    .line 253
    .line 254
    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-ge v6, v0, :cond_f

    .line 259
    .line 260
    iget-object v0, v1, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetConfigurations:Landroid/util/SparseArray;

    .line 261
    .line 262
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    iget-object v4, v1, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetTimeStamps:Landroid/util/SparseLongArray;

    .line 267
    .line 268
    const-wide/16 v9, -0x1

    .line 269
    .line 270
    invoke-virtual {v4, v0, v9, v10}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 271
    .line 272
    .line 273
    move-result-wide v4

    .line 274
    iget-object v7, v1, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetPackageNames:Landroid/util/SparseArray;

    .line 275
    .line 276
    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v7

    .line 280
    check-cast v7, Ljava/lang/String;

    .line 281
    .line 282
    :try_start_c
    new-instance v9, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .line 286
    .line 287
    const-string v10, "\n\n User "

    .line 288
    .line 289
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string v0, ":"

    .line 296
    .line 297
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 305
    .line 306
    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 311
    .line 312
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v10

    .line 325
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 337
    .line 338
    .line 339
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-virtual {v0, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    int-to-long v10, v0

    .line 348
    const-wide/32 v12, 0x36ee80

    .line 349
    .line 350
    .line 351
    div-long v12, v10, v12

    .line 352
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    add-long/2addr v4, v10

    .line 362
    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string v4, " GMT : "

    .line 370
    .line 371
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 390
    .line 391
    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    const-string v4, "\n  set by: "

    .line 398
    .line 399
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 414
    .line 415
    .line 416
    iget-object v0, v1, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetConfigurations:Landroid/util/SparseArray;

    .line 417
    .line 418
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    if-nez v0, :cond_8

    .line 423
    .line 424
    const-string v0, "\n   Same Configuration"

    .line 425
    .line 426
    goto/16 :goto_d

    .line 427
    .line 428
    :catch_a
    move-exception v0

    .line 429
    goto/16 :goto_e

    .line 430
    .line 431
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .line 435
    .line 436
    const-string v4, "\n   "

    .line 437
    .line 438
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    iget-object v4, v1, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetConfigurations:Landroid/util/SparseArray;

    .line 442
    .line 443
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v4

    .line 447
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 455
    .line 456
    .line 457
    move-result-object v4

    .line 458
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 459
    .line 460
    .line 461
    const-string v4, "),"

    .line 462
    .line 463
    const-string v5, " ("

    .line 464
    .line 465
    if-eqz p1, :cond_a

    .line 466
    .line 467
    :try_start_d
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 468
    .line 469
    .line 470
    move-result v7

    .line 471
    if-eqz v7, :cond_a

    .line 472
    .line 473
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    const-string v7, "\n   weight: "

    .line 478
    .line 479
    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 480
    .line 481
    .line 482
    move-result-object v9

    .line 483
    invoke-virtual {v3, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 484
    .line 485
    .line 486
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 487
    .line 488
    .line 489
    move-result v9

    .line 490
    if-eqz v9, :cond_9

    .line 491
    .line 492
    new-instance v7, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v9

    .line 504
    check-cast v9, Ljava/lang/String;

    .line 505
    .line 506
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v7

    .line 516
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 517
    .line 518
    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 519
    .line 520
    .line 521
    move-result-object v9

    .line 522
    invoke-virtual {v3, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 523
    .line 524
    .line 525
    goto :goto_a

    .line 526
    :cond_9
    move-object v0, v7

    .line 527
    :cond_a
    if-eqz p2, :cond_c

    .line 528
    .line 529
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 530
    .line 531
    .line 532
    move-result v7

    .line 533
    if-eqz v7, :cond_c

    .line 534
    .line 535
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    const-string v7, "\n   timeWeights: "

    .line 540
    .line 541
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 542
    .line 543
    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 544
    .line 545
    .line 546
    move-result-object v9

    .line 547
    invoke-virtual {v3, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 548
    .line 549
    .line 550
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 551
    .line 552
    .line 553
    move-result v9

    .line 554
    if-eqz v9, :cond_b

    .line 555
    .line 556
    new-instance v7, Ljava/lang/StringBuilder;

    .line 557
    .line 558
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v9

    .line 568
    check-cast v9, Ljava/lang/String;

    .line 569
    .line 570
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v7

    .line 580
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 581
    .line 582
    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 583
    .line 584
    .line 585
    move-result-object v9

    .line 586
    invoke-virtual {v3, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 587
    .line 588
    .line 589
    goto :goto_b

    .line 590
    :cond_b
    move-object v0, v7

    .line 591
    :cond_c
    if-eqz p3, :cond_e

    .line 592
    .line 593
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 594
    .line 595
    .line 596
    move-result v7

    .line 597
    if-eqz v7, :cond_e

    .line 598
    .line 599
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    const-string v7, "\n   continuityWeights: "

    .line 604
    .line 605
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 606
    .line 607
    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 608
    .line 609
    .line 610
    move-result-object v9

    .line 611
    invoke-virtual {v3, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 612
    .line 613
    .line 614
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 615
    .line 616
    .line 617
    move-result v9

    .line 618
    if-eqz v9, :cond_d

    .line 619
    .line 620
    new-instance v7, Ljava/lang/StringBuilder;

    .line 621
    .line 622
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v9

    .line 632
    check-cast v9, Ljava/lang/String;

    .line 633
    .line 634
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v7

    .line 644
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 645
    .line 646
    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 647
    .line 648
    .line 649
    move-result-object v9

    .line 650
    invoke-virtual {v3, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 651
    .line 652
    .line 653
    goto :goto_c

    .line 654
    :cond_d
    move-object v0, v7

    .line 655
    :cond_e
    :goto_d
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 656
    .line 657
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 662
    .line 663
    .line 664
    goto :goto_f

    .line 665
    :goto_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 666
    .line 667
    .line 668
    :goto_f
    add-int/lit8 v6, v6, 0x1

    .line 669
    .line 670
    goto/16 :goto_9

    .line 671
    .line 672
    :cond_f
    if-eqz v3, :cond_10

    .line 673
    .line 674
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 675
    .line 676
    .line 677
    goto :goto_10

    .line 678
    :catch_b
    move-exception v0

    .line 679
    move-object v1, v0

    .line 680
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 681
    .line 682
    .line 683
    :cond_10
    :goto_10
    if-eqz v8, :cond_11

    .line 684
    .line 685
    :try_start_f
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    .line 686
    .line 687
    .line 688
    goto :goto_11

    .line 689
    :catch_c
    move-exception v0

    .line 690
    move-object v1, v0

    .line 691
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 692
    .line 693
    .line 694
    :cond_11
    :goto_11
    return-void
.end method

.method public final saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/hardware/display/BrightnessConfiguration;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const-string/jumbo v4, "brightness-configuration"

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 29
    .line 30
    .line 31
    const-string/jumbo v5, "user-serial"

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v3, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 35
    .line 36
    .line 37
    iget-object v5, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v5, :cond_0

    .line 46
    .line 47
    const-string/jumbo v6, "package-name"

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v3, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object v5, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    .line 54
    .line 55
    const-wide/16 v6, -0x1

    .line 56
    .line 57
    invoke-virtual {v5, v1, v6, v7}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 58
    .line 59
    .line 60
    move-result-wide v8

    .line 61
    cmp-long v1, v8, v6

    .line 62
    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    const-string/jumbo v1, "timestamp"

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v3, v1, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {v2, p1}, Landroid/hardware/display/BrightnessConfiguration;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    .line 76
    .line 77
    add-int/lit8 v0, v0, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    return-void
.end method
