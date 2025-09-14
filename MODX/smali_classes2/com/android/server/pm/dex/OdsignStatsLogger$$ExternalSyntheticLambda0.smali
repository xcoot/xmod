.class public final synthetic Lcom/android/server/pm/dex/OdsignStatsLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    const-string p0, "/data/misc/odsign/metrics/odsign-metrics.txt"

    .line 2
    .line 3
    const-string v0, "1"

    .line 4
    .line 5
    const-string v1, "OdsignStatsLogger"

    .line 6
    .line 7
    :try_start_0
    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Ljava/io/File;

    .line 12
    .line 13
    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    const-string p0, "Failed to delete metrics file"

    .line 23
    .line 24
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    goto/16 :goto_6

    .line 30
    .line 31
    :cond_0
    :goto_0
    const-string p0, "\n"

    .line 32
    .line 33
    invoke-virtual {v2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    array-length v2, p0

    .line 38
    const/4 v3, 0x0

    .line 39
    move v4, v3

    .line 40
    :goto_1
    if-ge v4, v2, :cond_a

    .line 41
    .line 42
    aget-object v5, p0, v4

    .line 43
    .line 44
    const-string v6, " "

    .line 45
    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-nez v7, :cond_9

    .line 55
    .line 56
    array-length v7, v6

    .line 57
    const/4 v8, 0x1

    .line 58
    if-ge v7, v8, :cond_1

    .line 59
    .line 60
    goto/16 :goto_4

    .line 61
    .line 62
    :cond_1
    aget-object v7, v6, v3

    .line 63
    .line 64
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    const v10, 0x3510781e

    .line 69
    .line 70
    .line 71
    if-eq v9, v10, :cond_3

    .line 72
    .line 73
    const v10, 0x3d07e991

    .line 74
    .line 75
    .line 76
    if-eq v9, v10, :cond_2

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    const-string v9, "comp_os_artifacts_check_record"

    .line 80
    .line 81
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_4

    .line 86
    .line 87
    move v7, v3

    .line 88
    goto :goto_3

    .line 89
    :cond_3
    const-string/jumbo v9, "odsign_record"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v7
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    if-eqz v7, :cond_4

    .line 97
    .line 98
    move v7, v8

    .line 99
    goto :goto_3

    .line 100
    :cond_4
    :goto_2
    const/4 v7, -0x1

    .line 101
    :goto_3
    const/4 v9, 0x2

    .line 102
    const-string v10, "\'"

    .line 103
    .line 104
    if-eqz v7, :cond_7

    .line 105
    .line 106
    if-eq v7, v8, :cond_5

    .line 107
    .line 108
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v7, "Malformed metrics line \'"

    .line 114
    .line 115
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    goto/16 :goto_5

    .line 132
    .line 133
    :cond_5
    array-length v7, v6
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    const-string v11, "Malformed odsign metrics line \'"

    .line 135
    .line 136
    if-eq v7, v9, :cond_6

    .line 137
    .line 138
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 157
    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_6
    :try_start_3
    aget-object v6, v6, v8

    .line 161
    .line 162
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    const/16 v7, 0x224

    .line 167
    .line 168
    invoke-static {v7, v6}, Lcom/android/internal/art/ArtStatsLog;->write(II)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 169
    .line 170
    .line 171
    goto :goto_5

    .line 172
    :catch_1
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_7
    array-length v7, v6

    .line 195
    const/4 v11, 0x4

    .line 196
    if-eq v7, v11, :cond_8

    .line 197
    .line 198
    new-instance v6, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    const-string v7, "Malformed CompOS metrics line \'"

    .line 204
    .line 205
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_8
    aget-object v5, v6, v8

    .line 223
    .line 224
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    aget-object v7, v6, v9

    .line 229
    .line 230
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v7

    .line 234
    const/4 v8, 0x3

    .line 235
    aget-object v6, v6, v8

    .line 236
    .line 237
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    const/16 v8, 0x1a3

    .line 242
    .line 243
    invoke-static {v8, v5, v7, v6}, Lcom/android/internal/art/ArtStatsLog;->write(IZZZ)V

    .line 244
    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_9
    :goto_4
    const-string v5, "Empty metrics line"

    .line 248
    .line 249
    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 250
    .line 251
    .line 252
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 253
    .line 254
    goto/16 :goto_1

    .line 255
    .line 256
    :goto_6
    const-string v0, "Reading metrics file failed"

    .line 257
    .line 258
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    .line 260
    .line 261
    :catch_2
    :cond_a
    return-void
.end method
