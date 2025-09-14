.class public final Lcom/android/server/power/shutdown/ResourceManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final chameleonCode:Ljava/lang/String;

.field public static final knoxAnimPath:Ljava/lang/String;

.field public static final knoxSoundPath:Ljava/lang/String;

.field public static final knoxSubAnimPath:Ljava/lang/String;

.field public static final supportChameleon:Z


# instance fields
.field public final mainImages:Ljava/util/List;

.field public final mainLoopImage:Ljava/io/File;

.field public final player:Lcom/android/server/power/shutdown/AnimationPlayer;

.field public final subImages:Ljava/util/List;

.field public final subLoopImage:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "CscFeature_Common_UseChameleon"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    sput-boolean v0, Lcom/android/server/power/shutdown/ResourceManager;->supportChameleon:Z

    .line 13
    .line 14
    const-string v1, "Shutdown-ResourceManager"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_0
    const-string v0, "/carrier/chameleon.xml"

    .line 22
    .line 23
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_4

    .line 30
    :cond_1
    const-string v0, "Operators.SubscriberCarrierId"

    .line 31
    .line 32
    invoke-static {v0}, Lcom/android/server/power/shutdown/ResourceManager;->search(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_6

    .line 37
    .line 38
    const-string v0, "Operators.AndroidOperatorNetworkCode"

    .line 39
    .line 40
    invoke-static {v0}, Lcom/android/server/power/shutdown/ResourceManager;->search(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v3, "!@Power off sound CHAMELEON network code : "

    .line 45
    .line 46
    invoke-static {v3, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    const-string v0, "310000"

    .line 52
    .line 53
    :cond_2
    const/4 v3, -0x1

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    sparse-switch v4, :sswitch_data_0

    .line 59
    .line 60
    .line 61
    :goto_0
    move v2, v3

    .line 62
    goto :goto_1

    .line 63
    :sswitch_0
    const-string v2, "311870"

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    const/4 v2, 0x2

    .line 73
    goto :goto_1

    .line 74
    :sswitch_1
    const-string v2, "311490"

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_4

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    const/4 v2, 0x1

    .line 84
    goto :goto_1

    .line 85
    :sswitch_2
    const-string v4, "310120"

    .line 86
    .line 87
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_5

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 95
    .line 96
    .line 97
    const-string v0, "XAS"

    .line 98
    .line 99
    :goto_2
    move-object v3, v0

    .line 100
    goto :goto_3

    .line 101
    :pswitch_0
    const-string v0, "BST"

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :pswitch_1
    const-string v0, "VMU"

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :pswitch_2
    const-string v0, "SPR"

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :goto_3
    const-string v0, "!@Power off sound CHAMELEON is activated : "

    .line 111
    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    :cond_6
    :goto_4
    sput-object v3, Lcom/android/server/power/shutdown/ResourceManager;->chameleonCode:Ljava/lang/String;

    .line 120
    .line 121
    const-string v0, "//data/system/b2b/ShutdownFileInfo.txt"

    .line 122
    .line 123
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_8

    .line 128
    .line 129
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    .line 130
    .line 131
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 132
    .line 133
    invoke-direct {v2, v0, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 135
    .line 136
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    .line 137
    .line 138
    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    .line 140
    .line 141
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    sput-object v3, Lcom/android/server/power/shutdown/ResourceManager;->knoxAnimPath:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    sput-object v3, Lcom/android/server/power/shutdown/ResourceManager;->knoxSoundPath:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    if-eqz v3, :cond_7

    .line 158
    .line 159
    sput-object v3, Lcom/android/server/power/shutdown/ResourceManager;->knoxSubAnimPath:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :catchall_0
    move-exception v3

    .line 163
    goto :goto_6

    .line 164
    :cond_7
    :goto_5
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 165
    .line 166
    .line 167
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 168
    .line 169
    .line 170
    goto :goto_c

    .line 171
    :catch_0
    move-exception v0

    .line 172
    goto :goto_a

    .line 173
    :catch_1
    move-exception v0

    .line 174
    goto :goto_b

    .line 175
    :catchall_1
    move-exception v0

    .line 176
    goto :goto_8

    .line 177
    :goto_6
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 178
    .line 179
    .line 180
    goto :goto_7

    .line 181
    :catchall_2
    move-exception v0

    .line 182
    :try_start_6
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    :goto_7
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 186
    :goto_8
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 187
    .line 188
    .line 189
    goto :goto_9

    .line 190
    :catchall_3
    move-exception v2

    .line 191
    :try_start_8
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 192
    .line 193
    .line 194
    :goto_9
    throw v0
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 195
    :goto_a
    const-string v2, "getKnoxShutdownPath(): An exception occurred while reading the file"

    .line 196
    .line 197
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    .line 199
    .line 200
    goto :goto_c

    .line 201
    :goto_b
    const-string v2, "getKnoxShutdownPath(): File not found"

    .line 202
    .line 203
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .line 205
    .line 206
    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string v2, "Knox sound : "

    .line 209
    .line 210
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    sget-object v2, Lcom/android/server/power/shutdown/ResourceManager;->knoxSoundPath:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const-string v2, "Knox img : "

    .line 228
    .line 229
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    sget-object v2, Lcom/android/server/power/shutdown/ResourceManager;->knoxAnimPath:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    const-string v2, "Knox subImg : "

    .line 247
    .line 248
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    sget-object v2, Lcom/android/server/power/shutdown/ResourceManager;->knoxSubAnimPath:Ljava/lang/String;

    .line 252
    .line 253
    invoke-static {v0, v2, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    :cond_8
    return-void

    .line 257
    :sswitch_data_0
    .sparse-switch
        0x59d0375d -> :sswitch_2
        0x59d0b7d8 -> :sswitch_1
        0x59d0c69e -> :sswitch_0
    .end sparse-switch

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/server/power/shutdown/AnimationPlayer;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/shutdown/ResourceManager;->mainImages:Ljava/util/List;

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/power/shutdown/ResourceManager;->subImages:Ljava/util/List;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/power/shutdown/ResourceManager;->player:Lcom/android/server/power/shutdown/AnimationPlayer;

    .line 19
    .line 20
    const-string v2, "Shutdown-ResourceManager"

    .line 21
    .line 22
    iget-object v3, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->FILE_EXTENSION:Ljava/lang/String;

    .line 23
    .line 24
    const-string v4, "/media/video/shutdown/"

    .line 25
    .line 26
    const-string/jumbo v5, "persist.sys.omc_respath"

    .line 27
    .line 28
    .line 29
    const-string v6, "//system/media/"

    .line 30
    .line 31
    sget-object v7, Lcom/android/server/power/shutdown/ResourceManager;->chameleonCode:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v7, :cond_0

    .line 34
    .line 35
    new-instance v8, Ljava/lang/StringBuffer;

    .line 36
    .line 37
    invoke-direct {v8, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    const-string v9, "_shutdown"

    .line 44
    .line 45
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-static {v8, v0}, Lcom/android/server/power/shutdown/ResourceManager;->addToPlaylistIfExists(Ljava/lang/String;Ljava/util/List;)Z

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    if-eqz v8, :cond_0

    .line 60
    .line 61
    goto/16 :goto_4

    .line 62
    .line 63
    :cond_0
    sget-object v8, Lcom/android/server/power/shutdown/ResourceManager;->knoxAnimPath:Ljava/lang/String;

    .line 64
    .line 65
    if-eqz v8, :cond_1

    .line 66
    .line 67
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-nez v9, :cond_1

    .line 72
    .line 73
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-nez v9, :cond_1

    .line 78
    .line 79
    invoke-virtual {v8, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-eqz v8, :cond_1

    .line 84
    .line 85
    sget-object v8, Lcom/android/server/power/shutdown/ResourceManager;->knoxAnimPath:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v8, v0}, Lcom/android/server/power/shutdown/ResourceManager;->addToPlaylistIfExists(Ljava/lang/String;Ljava/util/List;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    sget-object p1, Lcom/android/server/power/shutdown/ResourceManager;->knoxSubAnimPath:Ljava/lang/String;

    .line 94
    .line 95
    if-eqz p1, :cond_b

    .line 96
    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_b

    .line 102
    .line 103
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_b

    .line 108
    .line 109
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_b

    .line 114
    .line 115
    sget-object p1, Lcom/android/server/power/shutdown/ResourceManager;->knoxSubAnimPath:Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {p1, v1}, Lcom/android/server/power/shutdown/ResourceManager;->addToPlaylistIfExists(Ljava/lang/String;Ljava/util/List;)Z

    .line 118
    .line 119
    .line 120
    goto/16 :goto_4

    .line 121
    .line 122
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const/4 v1, 0x0

    .line 128
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    .line 129
    .line 130
    new-instance v9, Ljava/io/FileReader;

    .line 131
    .line 132
    const-string v10, "/sys/class/lcd/panel/window_type"

    .line 133
    .line 134
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 135
    .line 136
    invoke-direct {v9, v10, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 140
    .line 141
    .line 142
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    if-eqz v9, :cond_2

    .line 147
    .line 148
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v9, "\n"

    .line 152
    .line 153
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :catchall_0
    move-exception p0

    .line 158
    move-object v1, v8

    .line 159
    goto/16 :goto_6

    .line 160
    .line 161
    :catch_0
    move-exception v9

    .line 162
    goto :goto_1

    .line 163
    :cond_2
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :catch_1
    move-exception v8

    .line 168
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :catchall_1
    move-exception p0

    .line 177
    goto/16 :goto_6

    .line 178
    .line 179
    :catch_2
    move-exception v9

    .line 180
    move-object v8, v1

    .line 181
    :goto_1
    :try_start_3
    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    invoke-static {v2, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    .line 187
    .line 188
    if-eqz v8, :cond_3

    .line 189
    .line 190
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 191
    .line 192
    .line 193
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    const/4 v8, 0x0

    .line 202
    if-eqz v0, :cond_4

    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 205
    .line 206
    .line 207
    move-result v9

    .line 208
    if-lez v9, :cond_4

    .line 209
    .line 210
    const/16 v9, 0x20

    .line 211
    .line 212
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    .line 213
    .line 214
    .line 215
    move-result v9

    .line 216
    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    if-eqz v0, :cond_4

    .line 221
    .line 222
    const/16 v8, 0x10

    .line 223
    .line 224
    invoke-static {v0, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    and-int/lit8 v8, v0, 0xf

    .line 229
    .line 230
    :cond_4
    const-string/jumbo v0, "ro.build.product"

    .line 231
    .line 232
    .line 233
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    const-string v9, "dream"

    .line 238
    .line 239
    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_5

    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_5
    packed-switch v8, :pswitch_data_0

    .line 247
    .line 248
    .line 249
    goto :goto_3

    .line 250
    :pswitch_0
    const-string/jumbo v0, "ro.color.pinkgold"

    .line 251
    .line 252
    .line 253
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    goto :goto_3

    .line 258
    :pswitch_1
    const-string/jumbo v0, "ro.color.blue"

    .line 259
    .line 260
    .line 261
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    goto :goto_3

    .line 266
    :pswitch_2
    const-string/jumbo v0, "ro.color.green"

    .line 267
    .line 268
    .line 269
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    goto :goto_3

    .line 274
    :pswitch_3
    const-string v1, "WH"

    .line 275
    .line 276
    :goto_3
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    iget-object v8, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->SHUTDOWN_MAIN_ANI_FILES:[Ljava/lang/String;

    .line 281
    .line 282
    iget-object p1, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->SHUTDOWN_SUB_ANI_FILES:[Ljava/lang/String;

    .line 283
    .line 284
    const/4 v9, 0x1

    .line 285
    if-eqz v0, :cond_9

    .line 286
    .line 287
    sget-boolean v10, Lcom/android/server/power/shutdown/ResourceManager;->supportChameleon:Z

    .line 288
    .line 289
    if-eqz v10, :cond_6

    .line 290
    .line 291
    if-eqz v7, :cond_9

    .line 292
    .line 293
    :cond_6
    const-string/jumbo v10, "ro.csc.sales_code"

    .line 294
    .line 295
    .line 296
    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v10

    .line 300
    if-eqz v10, :cond_7

    .line 301
    .line 302
    if-eqz v7, :cond_7

    .line 303
    .line 304
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v11

    .line 308
    if-nez v11, :cond_7

    .line 309
    .line 310
    invoke-virtual {v0, v10, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    const-string v7, "!@Power off sound CHAMELEON - update animation path to : "

    .line 315
    .line 316
    invoke-static {v7, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    :cond_7
    if-eqz v1, :cond_8

    .line 320
    .line 321
    const-string/jumbo v2, "shutdown_"

    .line 322
    .line 323
    .line 324
    invoke-static {v2, v1, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    new-instance v7, Ljava/io/File;

    .line 329
    .line 330
    invoke-static {v0, v4, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v10

    .line 334
    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    .line 338
    .line 339
    .line 340
    move-result v7

    .line 341
    if-eqz v7, :cond_8

    .line 342
    .line 343
    aput-object v2, v8, v9

    .line 344
    .line 345
    invoke-static {v0, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    invoke-virtual {p0, v2, v8}, Lcom/android/server/power/shutdown/ResourceManager;->addMainAniIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    if-eqz v2, :cond_8

    .line 354
    .line 355
    invoke-static {v0, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/shutdown/ResourceManager;->addSubAniIfExists(Ljava/lang/String;[Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    goto :goto_4

    .line 363
    :cond_8
    invoke-static {v0, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    invoke-virtual {p0, v2, v8}, Lcom/android/server/power/shutdown/ResourceManager;->addMainAniIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    if-eqz v2, :cond_9

    .line 372
    .line 373
    invoke-static {v0, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/shutdown/ResourceManager;->addSubAniIfExists(Ljava/lang/String;[Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    goto :goto_4

    .line 381
    :cond_9
    if-eqz v1, :cond_a

    .line 382
    .line 383
    const-string v0, "//system/media/shutdown_"

    .line 384
    .line 385
    invoke-static {v0, v1, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    new-instance v1, Ljava/io/File;

    .line 390
    .line 391
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-eqz v0, :cond_a

    .line 399
    .line 400
    invoke-virtual {p0, v6, v8}, Lcom/android/server/power/shutdown/ResourceManager;->addMainAniIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 401
    .line 402
    .line 403
    invoke-virtual {p0, v6, p1}, Lcom/android/server/power/shutdown/ResourceManager;->addSubAniIfExists(Ljava/lang/String;[Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    goto :goto_4

    .line 407
    :cond_a
    new-instance v0, Ljava/io/File;

    .line 408
    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    aget-object v2, v8, v9

    .line 415
    .line 416
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    if-eqz v0, :cond_b

    .line 431
    .line 432
    invoke-virtual {p0, v6, v8}, Lcom/android/server/power/shutdown/ResourceManager;->addMainAniIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 433
    .line 434
    .line 435
    invoke-virtual {p0, v6, p1}, Lcom/android/server/power/shutdown/ResourceManager;->addSubAniIfExists(Ljava/lang/String;[Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    :cond_b
    :goto_4
    sget-object p1, Lcom/android/server/power/shutdown/ResourceManager;->knoxAnimPath:Ljava/lang/String;

    .line 439
    .line 440
    if-nez p1, :cond_10

    .line 441
    .line 442
    iget-object p1, p0, Lcom/android/server/power/shutdown/ResourceManager;->player:Lcom/android/server/power/shutdown/AnimationPlayer;

    .line 443
    .line 444
    iget-object v0, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->SHUTDOWN_MAIN_LOOP_FILE:Ljava/lang/String;

    .line 445
    .line 446
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    iget-object p1, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->SHUTDOWN_SUB_LOOP_FILE:Ljava/lang/String;

    .line 451
    .line 452
    if-eqz v1, :cond_e

    .line 453
    .line 454
    invoke-static {v1, v4, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    new-instance v3, Ljava/io/File;

    .line 459
    .line 460
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 464
    .line 465
    .line 466
    move-result v2

    .line 467
    if-eqz v2, :cond_c

    .line 468
    .line 469
    iput-object v3, p0, Lcom/android/server/power/shutdown/ResourceManager;->mainLoopImage:Ljava/io/File;

    .line 470
    .line 471
    :cond_c
    if-nez v2, :cond_10

    .line 472
    .line 473
    invoke-static {v1, v4, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    new-instance v2, Ljava/io/File;

    .line 478
    .line 479
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 483
    .line 484
    .line 485
    move-result v1

    .line 486
    if-eqz v1, :cond_d

    .line 487
    .line 488
    iput-object v2, p0, Lcom/android/server/power/shutdown/ResourceManager;->subLoopImage:Ljava/io/File;

    .line 489
    .line 490
    :cond_d
    if-eqz v1, :cond_e

    .line 491
    .line 492
    goto :goto_5

    .line 493
    :cond_e
    invoke-static {v6, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    new-instance v1, Ljava/io/File;

    .line 498
    .line 499
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    if-eqz v0, :cond_f

    .line 507
    .line 508
    iput-object v1, p0, Lcom/android/server/power/shutdown/ResourceManager;->mainLoopImage:Ljava/io/File;

    .line 509
    .line 510
    :cond_f
    invoke-static {v6, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object p1

    .line 514
    new-instance v0, Ljava/io/File;

    .line 515
    .line 516
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 520
    .line 521
    .line 522
    move-result p1

    .line 523
    if-eqz p1, :cond_10

    .line 524
    .line 525
    iput-object v0, p0, Lcom/android/server/power/shutdown/ResourceManager;->subLoopImage:Ljava/io/File;

    .line 526
    .line 527
    :cond_10
    :goto_5
    return-void

    .line 528
    :goto_6
    if-eqz v1, :cond_11

    .line 529
    .line 530
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 531
    .line 532
    .line 533
    goto :goto_7

    .line 534
    :catch_3
    move-exception p1

    .line 535
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object p1

    .line 539
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .line 541
    .line 542
    :cond_11
    :goto_7
    throw p0

    .line 543
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static addToPlaylistIfExists(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public static search(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "/carrier/chameleon.xml"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_8

    .line 9
    .line 10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    .line 42
    .line 43
    .line 44
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-string v1, "Shutdown-ResourceManager"

    .line 48
    .line 49
    const-string v3, "Exception"

    .line 50
    .line 51
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    :cond_1
    move-object v0, v2

    .line 55
    :goto_0
    if-nez v0, :cond_2

    .line 56
    .line 57
    return-object v2

    .line 58
    :cond_2
    new-instance v1, Ljava/util/StringTokenizer;

    .line 59
    .line 60
    const-string v3, "."

    .line 61
    .line 62
    invoke-direct {v1, p0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_6

    .line 70
    .line 71
    :cond_3
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_6

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    const/4 v4, 0x0

    .line 92
    :goto_1
    if-ge v4, v3, :cond_5

    .line 93
    .line 94
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_4

    .line 107
    .line 108
    move-object v0, v5

    .line 109
    goto :goto_2

    .line 110
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    move-object v0, v2

    .line 114
    :goto_2
    if-nez v0, :cond_3

    .line 115
    .line 116
    return-object v2

    .line 117
    :cond_6
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    if-nez p0, :cond_7

    .line 122
    .line 123
    return-object v2

    .line 124
    :cond_7
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0

    .line 129
    :cond_8
    :goto_3
    return-object v2
.end method


# virtual methods
.method public final addMainAniIfExists(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    .line 6
    aget-object v3, p2, v1

    .line 7
    .line 8
    invoke-static {p1, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    iget-object v4, p0, Lcom/android/server/power/shutdown/ResourceManager;->mainImages:Ljava/util/List;

    .line 13
    .line 14
    invoke-static {v3, v4}, Lcom/android/server/power/shutdown/ResourceManager;->addToPlaylistIfExists(Ljava/lang/String;Ljava/util/List;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    or-int/2addr v2, v3

    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return v2
.end method

.method public final addSubAniIfExists(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-object v2, p2, v1

    .line 6
    .line 7
    invoke-static {p1, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/android/server/power/shutdown/ResourceManager;->subImages:Ljava/util/List;

    .line 12
    .line 13
    invoke-static {v2, v3}, Lcom/android/server/power/shutdown/ResourceManager;->addToPlaylistIfExists(Ljava/lang/String;Ljava/util/List;)Z

    .line 14
    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method
