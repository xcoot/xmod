.class public final Lcom/android/server/MasterClearReceiver$1;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/MasterClearReceiver;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$forceWipe:Z

.field public final synthetic val$intent:Landroid/content/Intent;

.field public final synthetic val$keepMemtagMode:Z

.field public final synthetic val$reason:Ljava/lang/String;

.field public final synthetic val$shutdown:Z


# direct methods
.method public constructor <init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;ZZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    .line 10
    .line 11
    iput-boolean p6, p0, Lcom/android/server/MasterClearReceiver$1;->val$forceWipe:Z

    .line 12
    .line 13
    iput-boolean p7, p0, Lcom/android/server/MasterClearReceiver$1;->val$keepMemtagMode:Z

    .line 14
    .line 15
    const-string p1, "Reboot"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    const-string v0, "args"

    .line 2
    .line 3
    const-string v1, "!@[MasterClearReceiver] thr.run: Can\'t perform master clear/factory reset"

    .line 4
    .line 5
    const-string v2, "MasterClear"

    .line 6
    .line 7
    const-string v3, "--just_exit\n--locale="

    .line 8
    .line 9
    const-string v4, "--wipe_data\n--wipe_carrier\n--locale="

    .line 10
    .line 11
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    .line 12
    .line 13
    const-string v6, "FactoryResetByCommand"

    .line 14
    .line 15
    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    const-string v5, "!@[MasterClearReceiver] thr.run: FactoryResetByATCommand"

    .line 22
    .line 23
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v5, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    .line 27
    .line 28
    invoke-static {v5}, Lcom/android/server/MasterClearReceiver;->-$$Nest$mremoveVZWResetDate(Lcom/android/server/MasterClearReceiver;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :catch_1
    move-exception p0

    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :catch_2
    move-exception p0

    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_0
    :goto_0
    const-string v5, "/omr/carrier"

    .line 42
    .line 43
    invoke-static {v5}, Lcom/android/server/MasterClearReceiver;->-$$Nest$smdeleteOmrDir(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v5, "/omr/update"

    .line 47
    .line 48
    invoke-static {v5}, Lcom/android/server/MasterClearReceiver;->-$$Nest$smdeleteOmrDir(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v5, "/omr/res"

    .line 52
    .line 53
    invoke-static {v5}, Lcom/android/server/MasterClearReceiver;->-$$Nest$smdeleteOmrDir(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v5, "/omr/temp"

    .line 57
    .line 58
    invoke-static {v5}, Lcom/android/server/MasterClearReceiver;->-$$Nest$smdeleteOmrDir(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v5, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    .line 62
    .line 63
    invoke-static {v5}, Lcom/android/server/MasterClearReceiver;->-$$Nest$mremoveFirstUseDate(Lcom/android/server/MasterClearReceiver;)V

    .line 64
    .line 65
    .line 66
    iget-object v5, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    .line 67
    .line 68
    const-string v6, "CustomWipe"

    .line 69
    .line 70
    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const-string v6, ""

    .line 75
    .line 76
    if-eqz v5, :cond_2

    .line 77
    .line 78
    :try_start_1
    const-string v3, "!@[MasterClearReceiver] thr.run: !!!call wipe customer!!!"

    .line 79
    .line 80
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    new-instance v3, Ljava/lang/String;

    .line 84
    .line 85
    invoke-direct {v3, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v4, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    .line 89
    .line 90
    invoke-virtual {v4, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_1

    .line 95
    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    .line 105
    .line 106
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v3, "--locale="

    .line 134
    .line 135
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    .line 154
    .line 155
    iget-object p0, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    .line 156
    .line 157
    invoke-static {v3, v0, p0}, Landroid/os/RecoverySystem;->rebootWipeCustomerPartition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_1

    .line 161
    .line 162
    :cond_2
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    .line 163
    .line 164
    const-string v5, "WipeCustomerPartiotion"

    .line 165
    .line 166
    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_3

    .line 171
    .line 172
    const-string v0, "!@[MasterClearReceiver] thr.run: !!!WipeData and WipeCustomerPartiotion!!!"

    .line 173
    .line 174
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    .line 178
    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    iget-object p0, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    .line 200
    .line 201
    invoke-static {v0, v3, p0}, Landroid/os/RecoverySystem;->rebootWipeCustomerPartition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    .line 206
    .line 207
    const-string v4, "WipeCache"

    .line 208
    .line 209
    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_4

    .line 214
    .line 215
    const-string v0, "!@[MasterClearReceiver] thr.run: !!!Just Exit (For Bypass Factory Reset)!!!"

    .line 216
    .line 217
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    .line 221
    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 228
    .line 229
    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    iget-object p0, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    .line 241
    .line 242
    invoke-static {v0, v3, p0}, Landroid/os/RecoverySystem;->rebootWipeCustomerPartition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_4
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    .line 247
    .line 248
    const-string v3, "Download"

    .line 249
    .line 250
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_5

    .line 255
    .line 256
    const-string v0, "!@[MasterClearReceiver] thr.run: !!!Enter the Download Mode for Factory Routine!!!"

    .line 257
    .line 258
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    .line 262
    .line 263
    iget-object p0, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    .line 264
    .line 265
    invoke-static {v0, v6, p0}, Landroid/os/RecoverySystem;->rebootWipeCustomerPartition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    goto :goto_1

    .line 269
    :cond_5
    const-string v0, "!@[MasterClearReceiver] thr.run: !!!No hasExtra, just call rebootWipeUserData!!!"

    .line 270
    .line 271
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    .line 275
    .line 276
    iget-boolean v4, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    .line 277
    .line 278
    iget-object v5, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    .line 279
    .line 280
    iget-boolean v6, p0, Lcom/android/server/MasterClearReceiver$1;->val$forceWipe:Z

    .line 281
    .line 282
    iget-boolean v8, p0, Lcom/android/server/MasterClearReceiver$1;->val$keepMemtagMode:Z

    .line 283
    .line 284
    iget-object p0, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    .line 285
    .line 286
    iget-object v9, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    .line 287
    .line 288
    const/4 v7, 0x0

    .line 289
    invoke-static/range {v3 .. v9}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZZLjava/lang/String;)V

    .line 290
    .line 291
    .line 292
    :goto_1
    const-string p0, "!@[MasterClearReceiver] thr.run: Still running after master clear?!"

    .line 293
    .line 294
    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 295
    .line 296
    .line 297
    goto :goto_5

    .line 298
    :goto_2
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    .line 300
    .line 301
    goto :goto_5

    .line 302
    :goto_3
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    .line 304
    .line 305
    goto :goto_5

    .line 306
    :goto_4
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    .line 308
    .line 309
    :goto_5
    return-void
.end method
