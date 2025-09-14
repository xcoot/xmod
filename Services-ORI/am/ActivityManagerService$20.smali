.class public final Lcom/android/server/am/ActivityManagerService$20;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field public final synthetic val$dataFile:Ljava/io/File;

.field public final synthetic val$dbox:Landroid/os/DropBoxManager;

.field public final synthetic val$dropboxTag:Ljava/lang/String;

.field public final synthetic val$report:Ljava/lang/String;

.field public final synthetic val$runSynchronously:Z

.field public final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;ZLandroid/os/DropBoxManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$20;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$20;->val$report:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb:Ljava/lang/StringBuilder;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dropboxTag:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dataFile:Ljava/io/File;

    .line 10
    .line 11
    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$20;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 12
    .line 13
    iput-boolean p8, p0, Lcom/android/server/am/ActivityManagerService$20;->val$runSynchronously:Z

    .line 14
    .line 15
    iput-object p9, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dbox:Landroid/os/DropBoxManager;

    .line 16
    .line 17
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$20;->val$report:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb:Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v1, "logcat_for_"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dropboxTag:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string/jumbo v2, "kernel_logs_for_"

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dropboxTag:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string/jumbo v3, "max_error_bytes_for_"

    .line 47
    .line 48
    .line 49
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dropboxTag:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    sget-boolean v3, Landroid/os/Build;->IS_USER:Z

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    move v0, v4

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$20;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 69
    .line 70
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-static {v5, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    :goto_0
    if-eqz v3, :cond_2

    .line 81
    .line 82
    move v1, v4

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$20;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 85
    .line 86
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$20;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 97
    .line 98
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    const/high16 v5, 0x80000

    .line 105
    .line 106
    invoke-static {v3, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dataFile:Ljava/io/File;

    .line 111
    .line 112
    const/16 v5, 0xa

    .line 113
    .line 114
    if-eqz v3, :cond_4

    .line 115
    .line 116
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb:Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v6, "Data File: "

    .line 119
    .line 120
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dataFile:Ljava/io/File;

    .line 124
    .line 125
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb:Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    sub-int/2addr v2, v3

    .line 142
    mul-int/lit8 v3, v0, 0x64

    .line 143
    .line 144
    sub-int/2addr v2, v3

    .line 145
    mul-int/lit8 v3, v1, 0x64

    .line 146
    .line 147
    sub-int/2addr v2, v3

    .line 148
    add-int/lit8 v2, v2, -0xe

    .line 149
    .line 150
    if-lez v2, :cond_3

    .line 151
    .line 152
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb:Ljava/lang/StringBuilder;

    .line 153
    .line 154
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dataFile:Ljava/io/File;

    .line 155
    .line 156
    const-string v7, "\n\n[[TRUNCATED]]\n"

    .line 157
    .line 158
    invoke-static {v6, v2, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :catch_0
    move-exception v2

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v6, "Error reading "

    .line 170
    .line 171
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dataFile:Ljava/io/File;

    .line 175
    .line 176
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    const-string v6, "ActivityManager"

    .line 184
    .line 185
    invoke-static {v6, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .line 187
    .line 188
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb:Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v3, "End Data File\n"

    .line 191
    .line 192
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$20;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 196
    .line 197
    if-eqz v2, :cond_5

    .line 198
    .line 199
    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 200
    .line 201
    if-eqz v2, :cond_5

    .line 202
    .line 203
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb:Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    :cond_5
    if-gtz v0, :cond_6

    .line 209
    .line 210
    if-lez v1, :cond_7

    .line 211
    .line 212
    :cond_6
    const/4 v4, 0x1

    .line 213
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerService$20;->val$runSynchronously:Z

    .line 214
    .line 215
    if-nez v2, :cond_9

    .line 216
    .line 217
    if-eqz v4, :cond_9

    .line 218
    .line 219
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb:Ljava/lang/StringBuilder;

    .line 220
    .line 221
    const-string v3, "\n"

    .line 222
    .line 223
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    if-lez v0, :cond_8

    .line 227
    .line 228
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb:Ljava/lang/StringBuilder;

    .line 229
    .line 230
    const-string/jumbo v3, "main"

    .line 231
    .line 232
    .line 233
    const-string/jumbo v4, "crash"

    .line 234
    .line 235
    .line 236
    const-string/jumbo v6, "events"

    .line 237
    .line 238
    .line 239
    const-string/jumbo v7, "system"

    .line 240
    .line 241
    .line 242
    invoke-static {v6, v7, v3, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    invoke-static {v2, v0, v5, v3}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$smfetchLogcatBuffers(Ljava/lang/StringBuilder;IILjava/util/List;)V

    .line 247
    .line 248
    .line 249
    :cond_8
    if-lez v1, :cond_9

    .line 250
    .line 251
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb:Ljava/lang/StringBuilder;

    .line 252
    .line 253
    const-string/jumbo v2, "kernel"

    .line 254
    .line 255
    .line 256
    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    const/4 v3, 0x5

    .line 261
    invoke-static {v0, v1, v3, v2}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$smfetchLogcatBuffers(Ljava/lang/StringBuilder;IILjava/util/List;)V

    .line 262
    .line 263
    .line 264
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dbox:Landroid/os/DropBoxManager;

    .line 265
    .line 266
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dropboxTag:Ljava/lang/String;

    .line 267
    .line 268
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb:Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    invoke-virtual {v0, v1, p0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    return-void
.end method
