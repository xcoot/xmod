.class public final Lcom/android/server/notification/NotificationShellCmd;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBinderService:Landroid/app/INotificationManager;

.field public final mDirectService:Lcom/android/server/notification/NotificationManagerService;

.field public final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    return-void
.end method

.method public static parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    const-string v0, "/"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const-string v0, "file://"

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :cond_1
    const-string v0, "http:"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_5

    .line 30
    .line 31
    const-string v0, "https:"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_5

    .line 38
    .line 39
    const-string v0, "content:"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_5

    .line 46
    .line 47
    const-string v0, "file:"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_5

    .line 54
    .line 55
    const-string v0, "android.resource:"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const-string v0, "@"

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v2, 0x1

    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string v0, "drawable"

    .line 78
    .line 79
    const-string v2, "android"

    .line 80
    .line 81
    invoke-virtual {p0, p1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    invoke-static {p0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :cond_3
    const-string p0, "data:"

    .line 93
    .line 94
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-eqz p0, :cond_4

    .line 99
    .line 100
    const/16 p0, 0x2c

    .line 101
    .line 102
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    add-int/2addr p0, v2

    .line 107
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    const/4 p1, 0x0

    .line 112
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    array-length v0, p0

    .line 117
    invoke-static {p0, p1, v0}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0

    .line 122
    :cond_4
    return-object v1

    .line 123
    :cond_5
    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-static {p0}, Landroid/graphics/drawable/Icon;->createWithContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0
.end method


# virtual methods
.method public final doNotify(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    const-string/jumbo v2, "service"

    .line 8
    .line 9
    .line 10
    const-string v3, "broadcast"

    .line 11
    .line 12
    iget-object v7, v0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 13
    .line 14
    invoke-virtual {v7}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v8

    .line 22
    new-instance v15, Landroid/app/Notification$Builder;

    .line 23
    .line 24
    const-string/jumbo v14, "shell_cmd"

    .line 25
    .line 26
    .line 27
    invoke-direct {v15, v7, v14}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v10, 0x0

    .line 32
    const/4 v11, 0x0

    .line 33
    const/4 v12, 0x0

    .line 34
    const/4 v13, 0x0

    .line 35
    const/16 v18, 0x0

    .line 36
    .line 37
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const-string/jumbo v6, "usage: cmd notification post [flags] <tag> <text>\n\nflags:\n  -h|--help\n  -v|--verbose\n  -t|--title <text>\n  -i|--icon <iconspec>\n  -I|--large-icon <iconspec>\n  -S|--style <style> [styleargs]\n  -c|--content-intent <intentspec>\n\nstyles: (default none)\n  bigtext\n  bigpicture --picture <iconspec>\n  inbox --line <text> --line <text> ...\n  messaging --conversation <title> --message <who>:<text> ...\n  media\n\nan <iconspec> is one of\n  file:///data/local/tmp/<img.png>\n  content://<provider>/<path>\n  @[<package>:]drawable/<img>\n  data:base64,<B64DATA==>\n\nan <intentspec> is (broadcast|service|activity) <args>\n  <args> are as described in `am start`"

    .line 42
    .line 43
    .line 44
    if-eqz v5, :cond_17

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v21

    .line 50
    sparse-switch v21, :sswitch_data_0

    .line 51
    .line 52
    .line 53
    move-object/from16 v21, v14

    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :sswitch_0
    move-object/from16 v21, v14

    .line 58
    .line 59
    const-string v14, "large-icon"

    .line 60
    .line 61
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_0

    .line 66
    .line 67
    const/16 v5, 0x9

    .line 68
    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :sswitch_1
    move-object/from16 v21, v14

    .line 72
    .line 73
    const-string v14, "--verbose"

    .line 74
    .line 75
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_0

    .line 80
    .line 81
    const/4 v5, 0x1

    .line 82
    goto/16 :goto_2

    .line 83
    .line 84
    :sswitch_2
    move-object/from16 v21, v14

    .line 85
    .line 86
    const-string v14, "--line"

    .line 87
    .line 88
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_0

    .line 93
    .line 94
    const/16 v5, 0x18

    .line 95
    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :sswitch_3
    move-object/from16 v21, v14

    .line 99
    .line 100
    const-string v14, "--icon"

    .line 101
    .line 102
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_0

    .line 107
    .line 108
    const/16 v5, 0xb

    .line 109
    .line 110
    goto/16 :goto_2

    .line 111
    .line 112
    :sswitch_4
    move-object/from16 v21, v14

    .line 113
    .line 114
    const-string v14, "--help"

    .line 115
    .line 116
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_0

    .line 121
    .line 122
    const/16 v5, 0x1c

    .line 123
    .line 124
    goto/16 :goto_2

    .line 125
    .line 126
    :sswitch_5
    move-object/from16 v21, v14

    .line 127
    .line 128
    const-string v14, "--bigtext"

    .line 129
    .line 130
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_0

    .line 135
    .line 136
    const/16 v5, 0x15

    .line 137
    .line 138
    goto/16 :goto_2

    .line 139
    .line 140
    :sswitch_6
    move-object/from16 v21, v14

    .line 141
    .line 142
    const-string v14, "--bigText"

    .line 143
    .line 144
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-eqz v5, :cond_0

    .line 149
    .line 150
    const/16 v5, 0x14

    .line 151
    .line 152
    goto/16 :goto_2

    .line 153
    .line 154
    :sswitch_7
    move-object/from16 v21, v14

    .line 155
    .line 156
    const-string v14, "--largeicon"

    .line 157
    .line 158
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-eqz v5, :cond_0

    .line 163
    .line 164
    const/4 v5, 0x7

    .line 165
    goto/16 :goto_2

    .line 166
    .line 167
    :sswitch_8
    move-object/from16 v21, v14

    .line 168
    .line 169
    const-string v14, "--intent"

    .line 170
    .line 171
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    if-eqz v5, :cond_0

    .line 176
    .line 177
    const/16 v5, 0x10

    .line 178
    .line 179
    goto/16 :goto_2

    .line 180
    .line 181
    :sswitch_9
    move-object/from16 v21, v14

    .line 182
    .line 183
    const-string v14, "--picture"

    .line 184
    .line 185
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    if-eqz v5, :cond_0

    .line 190
    .line 191
    const/16 v5, 0x17

    .line 192
    .line 193
    goto/16 :goto_2

    .line 194
    .line 195
    :sswitch_a
    move-object/from16 v21, v14

    .line 196
    .line 197
    const-string v14, "largeicon"

    .line 198
    .line 199
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    if-eqz v5, :cond_0

    .line 204
    .line 205
    const/16 v5, 0x8

    .line 206
    .line 207
    goto/16 :goto_2

    .line 208
    .line 209
    :sswitch_b
    move-object/from16 v21, v14

    .line 210
    .line 211
    const-string v14, "--content-intent"

    .line 212
    .line 213
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    if-eqz v5, :cond_0

    .line 218
    .line 219
    const/16 v5, 0xe

    .line 220
    .line 221
    goto/16 :goto_2

    .line 222
    .line 223
    :sswitch_c
    move-object/from16 v21, v14

    .line 224
    .line 225
    const-string v14, "--big-text"

    .line 226
    .line 227
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    if-eqz v5, :cond_0

    .line 232
    .line 233
    const/16 v5, 0x16

    .line 234
    .line 235
    goto/16 :goto_2

    .line 236
    .line 237
    :sswitch_d
    move-object/from16 v21, v14

    .line 238
    .line 239
    const-string/jumbo v14, "title"

    .line 240
    .line 241
    .line 242
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    if-eqz v5, :cond_0

    .line 247
    .line 248
    const/4 v5, 0x4

    .line 249
    goto/16 :goto_2

    .line 250
    .line 251
    :sswitch_e
    move-object/from16 v21, v14

    .line 252
    .line 253
    const-string v14, "--wtf"

    .line 254
    .line 255
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    if-eqz v5, :cond_0

    .line 260
    .line 261
    const/16 v5, 0x1d

    .line 262
    .line 263
    goto/16 :goto_2

    .line 264
    .line 265
    :sswitch_f
    move-object/from16 v21, v14

    .line 266
    .line 267
    const-string v14, "icon"

    .line 268
    .line 269
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    if-eqz v5, :cond_0

    .line 274
    .line 275
    const/16 v5, 0xc

    .line 276
    .line 277
    goto/16 :goto_2

    .line 278
    .line 279
    :sswitch_10
    move-object/from16 v21, v14

    .line 280
    .line 281
    const-string v14, "-v"

    .line 282
    .line 283
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    if-eqz v5, :cond_0

    .line 288
    .line 289
    const/4 v5, 0x0

    .line 290
    goto/16 :goto_2

    .line 291
    .line 292
    :sswitch_11
    move-object/from16 v21, v14

    .line 293
    .line 294
    const-string v14, "-t"

    .line 295
    .line 296
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    if-eqz v5, :cond_0

    .line 301
    .line 302
    const/4 v5, 0x2

    .line 303
    goto/16 :goto_2

    .line 304
    .line 305
    :sswitch_12
    move-object/from16 v21, v14

    .line 306
    .line 307
    const-string v14, "-i"

    .line 308
    .line 309
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    if-eqz v5, :cond_0

    .line 314
    .line 315
    const/16 v5, 0xa

    .line 316
    .line 317
    goto/16 :goto_2

    .line 318
    .line 319
    :sswitch_13
    move-object/from16 v21, v14

    .line 320
    .line 321
    const-string v14, "-h"

    .line 322
    .line 323
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    if-eqz v5, :cond_0

    .line 328
    .line 329
    const/16 v5, 0x1b

    .line 330
    .line 331
    goto/16 :goto_2

    .line 332
    .line 333
    :sswitch_14
    move-object/from16 v21, v14

    .line 334
    .line 335
    const-string v14, "-c"

    .line 336
    .line 337
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    if-eqz v5, :cond_0

    .line 342
    .line 343
    const/16 v5, 0xd

    .line 344
    .line 345
    goto/16 :goto_2

    .line 346
    .line 347
    :sswitch_15
    move-object/from16 v21, v14

    .line 348
    .line 349
    const-string v14, "-S"

    .line 350
    .line 351
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v5

    .line 355
    if-eqz v5, :cond_0

    .line 356
    .line 357
    const/16 v5, 0x12

    .line 358
    .line 359
    goto/16 :goto_2

    .line 360
    .line 361
    :sswitch_16
    move-object/from16 v21, v14

    .line 362
    .line 363
    const-string v14, "-I"

    .line 364
    .line 365
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v5

    .line 369
    if-eqz v5, :cond_0

    .line 370
    .line 371
    const/4 v5, 0x5

    .line 372
    goto :goto_2

    .line 373
    :sswitch_17
    move-object/from16 v21, v14

    .line 374
    .line 375
    const-string v14, "--large-icon"

    .line 376
    .line 377
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v5

    .line 381
    if-eqz v5, :cond_0

    .line 382
    .line 383
    const/4 v5, 0x6

    .line 384
    goto :goto_2

    .line 385
    :sswitch_18
    move-object/from16 v21, v14

    .line 386
    .line 387
    const-string v14, "--conversation"

    .line 388
    .line 389
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v5

    .line 393
    if-eqz v5, :cond_0

    .line 394
    .line 395
    const/16 v5, 0x1a

    .line 396
    .line 397
    goto :goto_2

    .line 398
    :sswitch_19
    move-object/from16 v21, v14

    .line 399
    .line 400
    const-string v14, "intent"

    .line 401
    .line 402
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v5

    .line 406
    if-eqz v5, :cond_0

    .line 407
    .line 408
    const/16 v5, 0x11

    .line 409
    .line 410
    goto :goto_2

    .line 411
    :sswitch_1a
    move-object/from16 v21, v14

    .line 412
    .line 413
    const-string v14, "content-intent"

    .line 414
    .line 415
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v5

    .line 419
    if-eqz v5, :cond_0

    .line 420
    .line 421
    const/16 v5, 0xf

    .line 422
    .line 423
    goto :goto_2

    .line 424
    :sswitch_1b
    move-object/from16 v21, v14

    .line 425
    .line 426
    const-string v14, "--title"

    .line 427
    .line 428
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result v5

    .line 432
    if-eqz v5, :cond_0

    .line 433
    .line 434
    const/4 v5, 0x3

    .line 435
    goto :goto_2

    .line 436
    :sswitch_1c
    move-object/from16 v21, v14

    .line 437
    .line 438
    const-string v14, "--style"

    .line 439
    .line 440
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result v5

    .line 444
    if-eqz v5, :cond_0

    .line 445
    .line 446
    const/16 v5, 0x13

    .line 447
    .line 448
    goto :goto_2

    .line 449
    :sswitch_1d
    move-object/from16 v21, v14

    .line 450
    .line 451
    const-string v14, "--message"

    .line 452
    .line 453
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v5

    .line 457
    if-eqz v5, :cond_0

    .line 458
    .line 459
    const/16 v5, 0x19

    .line 460
    .line 461
    goto :goto_2

    .line 462
    :cond_0
    :goto_1
    const/4 v5, -0x1

    .line 463
    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 464
    .line 465
    .line 466
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    return-void

    .line 470
    :pswitch_0
    if-eqz v13, :cond_1

    .line 471
    .line 472
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v5

    .line 476
    invoke-virtual {v13, v5}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    .line 477
    .line 478
    .line 479
    move-object/from16 v19, v10

    .line 480
    .line 481
    move-object/from16 v23, v12

    .line 482
    .line 483
    move-object/from16 v24, v13

    .line 484
    .line 485
    move-object v6, v15

    .line 486
    move-object/from16 v5, v21

    .line 487
    .line 488
    const/4 v9, 0x0

    .line 489
    const/16 v20, 0x2

    .line 490
    .line 491
    const/16 v21, 0x1

    .line 492
    .line 493
    const/16 v22, 0x0

    .line 494
    .line 495
    goto/16 :goto_11

    .line 496
    .line 497
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 498
    .line 499
    const-string v1, "--conversation requires --style messaging"

    .line 500
    .line 501
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    throw v0

    .line 505
    :pswitch_1
    if-eqz v13, :cond_3

    .line 506
    .line 507
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v5

    .line 511
    const-string v6, ":"

    .line 512
    .line 513
    const/4 v14, 0x2

    .line 514
    invoke-virtual {v5, v6, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v5

    .line 518
    array-length v6, v5

    .line 519
    const/4 v14, 0x1

    .line 520
    if-le v6, v14, :cond_2

    .line 521
    .line 522
    aget-object v6, v5, v14

    .line 523
    .line 524
    move-object/from16 v19, v15

    .line 525
    .line 526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 527
    .line 528
    .line 529
    move-result-wide v14

    .line 530
    const/16 v17, 0x0

    .line 531
    .line 532
    aget-object v5, v5, v17

    .line 533
    .line 534
    invoke-virtual {v13, v6, v14, v15, v5}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    .line 535
    .line 536
    .line 537
    move-object/from16 v23, v12

    .line 538
    .line 539
    move-object/from16 v24, v13

    .line 540
    .line 541
    move/from16 v9, v17

    .line 542
    .line 543
    move-object/from16 v6, v19

    .line 544
    .line 545
    move-object/from16 v5, v21

    .line 546
    .line 547
    const/16 v20, 0x2

    .line 548
    .line 549
    :goto_3
    const/16 v21, 0x1

    .line 550
    .line 551
    const/16 v22, 0x0

    .line 552
    .line 553
    move-object/from16 v19, v10

    .line 554
    .line 555
    goto/16 :goto_11

    .line 556
    .line 557
    :cond_2
    move-object/from16 v19, v15

    .line 558
    .line 559
    const/16 v17, 0x0

    .line 560
    .line 561
    aget-object v5, v5, v17

    .line 562
    .line 563
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 564
    .line 565
    .line 566
    move-result-wide v14

    .line 567
    invoke-virtual {v13}, Landroid/app/Notification$MessagingStyle;->getUserDisplayName()Ljava/lang/CharSequence;

    .line 568
    .line 569
    .line 570
    move-result-object v6

    .line 571
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v6

    .line 575
    const-string v9, "Them"

    .line 576
    .line 577
    filled-new-array {v6, v9}, [Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v6

    .line 581
    invoke-virtual {v13}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    .line 582
    .line 583
    .line 584
    move-result-object v9

    .line 585
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 586
    .line 587
    .line 588
    move-result v9

    .line 589
    const/16 v20, 0x2

    .line 590
    .line 591
    rem-int/lit8 v9, v9, 0x2

    .line 592
    .line 593
    aget-object v6, v6, v9

    .line 594
    .line 595
    invoke-virtual {v13, v5, v14, v15, v6}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    .line 596
    .line 597
    .line 598
    :goto_4
    move-object/from16 v23, v12

    .line 599
    .line 600
    move-object/from16 v24, v13

    .line 601
    .line 602
    move-object/from16 v6, v19

    .line 603
    .line 604
    move-object/from16 v5, v21

    .line 605
    .line 606
    const/4 v9, 0x0

    .line 607
    goto :goto_3

    .line 608
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 609
    .line 610
    const-string v1, "--message requires --style messaging"

    .line 611
    .line 612
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    throw v0

    .line 616
    :pswitch_2
    move-object/from16 v19, v15

    .line 617
    .line 618
    const/16 v20, 0x2

    .line 619
    .line 620
    if-eqz v12, :cond_4

    .line 621
    .line 622
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v5

    .line 626
    invoke-virtual {v12, v5}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 627
    .line 628
    .line 629
    goto :goto_4

    .line 630
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 631
    .line 632
    const-string v1, "--line requires --style inbox"

    .line 633
    .line 634
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    throw v0

    .line 638
    :pswitch_3
    move-object/from16 v19, v15

    .line 639
    .line 640
    const/16 v20, 0x2

    .line 641
    .line 642
    if-eqz v11, :cond_7

    .line 643
    .line 644
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v5

    .line 648
    invoke-static {v8, v5}, Lcom/android/server/notification/NotificationShellCmd;->parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    .line 649
    .line 650
    .line 651
    move-result-object v6

    .line 652
    if-eqz v6, :cond_6

    .line 653
    .line 654
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 655
    .line 656
    .line 657
    move-result-object v6

    .line 658
    instance-of v9, v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 659
    .line 660
    if-eqz v9, :cond_5

    .line 661
    .line 662
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 663
    .line 664
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 665
    .line 666
    .line 667
    move-result-object v5

    .line 668
    invoke-virtual {v11, v5}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 669
    .line 670
    .line 671
    goto :goto_4

    .line 672
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 673
    .line 674
    const-string/jumbo v1, "not a bitmap: "

    .line 675
    .line 676
    .line 677
    invoke-static {v1, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v1

    .line 681
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    throw v0

    .line 685
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 686
    .line 687
    const-string v1, "bad picture spec: "

    .line 688
    .line 689
    invoke-static {v1, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    throw v0

    .line 697
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 698
    .line 699
    const-string v1, "--picture requires --style bigpicture"

    .line 700
    .line 701
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    throw v0

    .line 705
    :pswitch_4
    move-object/from16 v19, v15

    .line 706
    .line 707
    const/16 v20, 0x2

    .line 708
    .line 709
    if-eqz v10, :cond_8

    .line 710
    .line 711
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v5

    .line 715
    invoke-virtual {v10, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 716
    .line 717
    .line 718
    goto :goto_4

    .line 719
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 720
    .line 721
    const-string v1, "--bigtext requires --style bigtext"

    .line 722
    .line 723
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    throw v0

    .line 727
    :pswitch_5
    move-object/from16 v19, v15

    .line 728
    .line 729
    const/16 v20, 0x2

    .line 730
    .line 731
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v5

    .line 735
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v5

    .line 739
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 740
    .line 741
    .line 742
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 743
    .line 744
    .line 745
    move-result v6

    .line 746
    sparse-switch v6, :sswitch_data_1

    .line 747
    .line 748
    .line 749
    :goto_5
    const/4 v14, -0x1

    .line 750
    goto :goto_6

    .line 751
    :sswitch_1e
    const-string/jumbo v6, "media"

    .line 752
    .line 753
    .line 754
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 755
    .line 756
    .line 757
    move-result v6

    .line 758
    if-nez v6, :cond_9

    .line 759
    .line 760
    goto :goto_5

    .line 761
    :cond_9
    const/4 v14, 0x4

    .line 762
    goto :goto_6

    .line 763
    :sswitch_1f
    const-string v6, "inbox"

    .line 764
    .line 765
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 766
    .line 767
    .line 768
    move-result v6

    .line 769
    if-nez v6, :cond_a

    .line 770
    .line 771
    goto :goto_5

    .line 772
    :cond_a
    const/4 v14, 0x3

    .line 773
    goto :goto_6

    .line 774
    :sswitch_20
    const-string v6, "bigpicture"

    .line 775
    .line 776
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 777
    .line 778
    .line 779
    move-result v6

    .line 780
    if-nez v6, :cond_b

    .line 781
    .line 782
    goto :goto_5

    .line 783
    :cond_b
    move/from16 v14, v20

    .line 784
    .line 785
    goto :goto_6

    .line 786
    :sswitch_21
    const-string v6, "bigtext"

    .line 787
    .line 788
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 789
    .line 790
    .line 791
    move-result v6

    .line 792
    if-nez v6, :cond_c

    .line 793
    .line 794
    goto :goto_5

    .line 795
    :cond_c
    const/4 v14, 0x1

    .line 796
    goto :goto_6

    .line 797
    :sswitch_22
    const-string/jumbo v6, "messaging"

    .line 798
    .line 799
    .line 800
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 801
    .line 802
    .line 803
    move-result v6

    .line 804
    if-nez v6, :cond_d

    .line 805
    .line 806
    goto :goto_5

    .line 807
    :cond_d
    const/4 v14, 0x0

    .line 808
    :goto_6
    packed-switch v14, :pswitch_data_1

    .line 809
    .line 810
    .line 811
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 812
    .line 813
    const-string/jumbo v1, "unrecognized notification style: "

    .line 814
    .line 815
    .line 816
    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v1

    .line 820
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    throw v0

    .line 824
    :pswitch_6
    new-instance v5, Landroid/app/Notification$MediaStyle;

    .line 825
    .line 826
    invoke-direct {v5}, Landroid/app/Notification$MediaStyle;-><init>()V

    .line 827
    .line 828
    .line 829
    move-object/from16 v6, v19

    .line 830
    .line 831
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 832
    .line 833
    .line 834
    goto :goto_8

    .line 835
    :pswitch_7
    move-object/from16 v6, v19

    .line 836
    .line 837
    new-instance v12, Landroid/app/Notification$InboxStyle;

    .line 838
    .line 839
    invoke-direct {v12}, Landroid/app/Notification$InboxStyle;-><init>()V

    .line 840
    .line 841
    .line 842
    invoke-virtual {v6, v12}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 843
    .line 844
    .line 845
    goto :goto_8

    .line 846
    :pswitch_8
    move-object/from16 v6, v19

    .line 847
    .line 848
    new-instance v11, Landroid/app/Notification$BigPictureStyle;

    .line 849
    .line 850
    invoke-direct {v11}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v6, v11}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 854
    .line 855
    .line 856
    goto :goto_8

    .line 857
    :pswitch_9
    move-object/from16 v6, v19

    .line 858
    .line 859
    new-instance v10, Landroid/app/Notification$BigTextStyle;

    .line 860
    .line 861
    invoke-direct {v10}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 862
    .line 863
    .line 864
    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 865
    .line 866
    .line 867
    goto :goto_8

    .line 868
    :pswitch_a
    move-object/from16 v6, v19

    .line 869
    .line 870
    const-string v5, "--user"

    .line 871
    .line 872
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v9

    .line 876
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 877
    .line 878
    .line 879
    move-result v5

    .line 880
    if-eqz v5, :cond_e

    .line 881
    .line 882
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v5

    .line 889
    goto :goto_7

    .line 890
    :cond_e
    const-string v5, "You"

    .line 891
    .line 892
    :goto_7
    new-instance v13, Landroid/app/Notification$MessagingStyle;

    .line 893
    .line 894
    new-instance v9, Landroid/app/Person$Builder;

    .line 895
    .line 896
    invoke-direct {v9}, Landroid/app/Person$Builder;-><init>()V

    .line 897
    .line 898
    .line 899
    invoke-virtual {v9, v5}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    .line 900
    .line 901
    .line 902
    move-result-object v5

    .line 903
    invoke-virtual {v5}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    .line 904
    .line 905
    .line 906
    move-result-object v5

    .line 907
    invoke-direct {v13, v5}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    .line 908
    .line 909
    .line 910
    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 911
    .line 912
    .line 913
    :goto_8
    move-object/from16 v5, v21

    .line 914
    .line 915
    const/4 v9, 0x0

    .line 916
    const/16 v21, 0x1

    .line 917
    .line 918
    const/16 v22, 0x0

    .line 919
    .line 920
    goto/16 :goto_12

    .line 921
    .line 922
    :pswitch_b
    move-object v6, v15

    .line 923
    const/16 v20, 0x2

    .line 924
    .line 925
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 926
    .line 927
    .line 928
    move-result-object v5

    .line 929
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 930
    .line 931
    .line 932
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 933
    .line 934
    .line 935
    move-result v9

    .line 936
    sparse-switch v9, :sswitch_data_2

    .line 937
    .line 938
    .line 939
    :goto_9
    const/4 v14, -0x1

    .line 940
    goto :goto_a

    .line 941
    :sswitch_23
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 942
    .line 943
    .line 944
    move-result v5

    .line 945
    if-nez v5, :cond_f

    .line 946
    .line 947
    goto :goto_9

    .line 948
    :cond_f
    move/from16 v14, v20

    .line 949
    .line 950
    goto :goto_a

    .line 951
    :sswitch_24
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 952
    .line 953
    .line 954
    move-result v5

    .line 955
    if-nez v5, :cond_10

    .line 956
    .line 957
    goto :goto_9

    .line 958
    :cond_10
    const/4 v14, 0x1

    .line 959
    goto :goto_a

    .line 960
    :sswitch_25
    const-string v9, "activity"

    .line 961
    .line 962
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 963
    .line 964
    .line 965
    move-result v5

    .line 966
    if-nez v5, :cond_11

    .line 967
    .line 968
    goto :goto_9

    .line 969
    :cond_11
    const/4 v14, 0x0

    .line 970
    :goto_a
    packed-switch v14, :pswitch_data_2

    .line 971
    .line 972
    .line 973
    const/4 v5, 0x0

    .line 974
    :goto_b
    const/4 v9, 0x0

    .line 975
    goto :goto_c

    .line 976
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 977
    .line 978
    .line 979
    move-result-object v5

    .line 980
    goto :goto_b

    .line 981
    :goto_c
    invoke-static {v0, v9}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    .line 982
    .line 983
    .line 984
    move-result-object v14

    .line 985
    invoke-virtual {v14}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 986
    .line 987
    .line 988
    move-result-object v15

    .line 989
    if-nez v15, :cond_12

    .line 990
    .line 991
    new-instance v15, Ljava/lang/StringBuilder;

    .line 992
    .line 993
    const-string/jumbo v9, "xyz:"

    .line 994
    .line 995
    .line 996
    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 997
    .line 998
    .line 999
    move-object/from16 v19, v10

    .line 1000
    .line 1001
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1002
    .line 1003
    .line 1004
    move-result-wide v9

    .line 1005
    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v9

    .line 1012
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v9

    .line 1016
    invoke-virtual {v14, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1017
    .line 1018
    .line 1019
    goto :goto_d

    .line 1020
    :cond_12
    move-object/from16 v19, v10

    .line 1021
    .line 1022
    :goto_d
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1023
    .line 1024
    .line 1025
    move-result v9

    .line 1026
    const/high16 v10, 0xc000000

    .line 1027
    .line 1028
    if-eqz v9, :cond_13

    .line 1029
    .line 1030
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1031
    .line 1032
    const/4 v9, 0x0

    .line 1033
    invoke-static {v7, v9, v14, v10, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v5

    .line 1037
    :goto_e
    move-object v10, v5

    .line 1038
    move-object/from16 v23, v12

    .line 1039
    .line 1040
    move-object/from16 v24, v13

    .line 1041
    .line 1042
    move-object/from16 v5, v21

    .line 1043
    .line 1044
    const/16 v21, 0x1

    .line 1045
    .line 1046
    const/16 v22, 0x0

    .line 1047
    .line 1048
    goto :goto_f

    .line 1049
    :cond_13
    const/4 v9, 0x0

    .line 1050
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1051
    .line 1052
    .line 1053
    move-result v5

    .line 1054
    if-eqz v5, :cond_14

    .line 1055
    .line 1056
    invoke-static {v7, v9, v14, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v5

    .line 1060
    goto :goto_e

    .line 1061
    :cond_14
    sget-object v17, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1062
    .line 1063
    const/4 v5, 0x0

    .line 1064
    const/high16 v15, 0xc000000

    .line 1065
    .line 1066
    const/4 v10, 0x0

    .line 1067
    move-object/from16 v23, v12

    .line 1068
    .line 1069
    const/16 v22, 0x0

    .line 1070
    .line 1071
    move-object v12, v7

    .line 1072
    move-object/from16 v24, v13

    .line 1073
    .line 1074
    move v13, v5

    .line 1075
    move-object/from16 v5, v21

    .line 1076
    .line 1077
    const/16 v21, 0x1

    .line 1078
    .line 1079
    move-object/from16 v16, v10

    .line 1080
    .line 1081
    invoke-static/range {v12 .. v17}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v10

    .line 1085
    :goto_f
    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1086
    .line 1087
    .line 1088
    goto :goto_11

    .line 1089
    :pswitch_d
    move-object/from16 v19, v10

    .line 1090
    .line 1091
    move-object/from16 v23, v12

    .line 1092
    .line 1093
    move-object/from16 v24, v13

    .line 1094
    .line 1095
    move-object v6, v15

    .line 1096
    move-object/from16 v5, v21

    .line 1097
    .line 1098
    const/4 v9, 0x0

    .line 1099
    const/16 v20, 0x2

    .line 1100
    .line 1101
    const/16 v21, 0x1

    .line 1102
    .line 1103
    const/16 v22, 0x0

    .line 1104
    .line 1105
    move v13, v9

    .line 1106
    goto :goto_10

    .line 1107
    :pswitch_e
    move-object/from16 v19, v10

    .line 1108
    .line 1109
    move-object/from16 v23, v12

    .line 1110
    .line 1111
    move-object/from16 v24, v13

    .line 1112
    .line 1113
    move-object v6, v15

    .line 1114
    move-object/from16 v5, v21

    .line 1115
    .line 1116
    const/4 v9, 0x0

    .line 1117
    const/16 v20, 0x2

    .line 1118
    .line 1119
    const/16 v21, 0x1

    .line 1120
    .line 1121
    const/16 v22, 0x0

    .line 1122
    .line 1123
    move/from16 v13, v21

    .line 1124
    .line 1125
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v10

    .line 1129
    invoke-static {v8, v10}, Lcom/android/server/notification/NotificationShellCmd;->parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v12

    .line 1133
    if-nez v12, :cond_15

    .line 1134
    .line 1135
    const-string v0, "error: invalid icon: "

    .line 1136
    .line 1137
    invoke-static {v1, v0, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    .line 1139
    .line 1140
    return-void

    .line 1141
    :cond_15
    if-eqz v13, :cond_16

    .line 1142
    .line 1143
    invoke-virtual {v6, v12}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 1144
    .line 1145
    .line 1146
    goto :goto_11

    .line 1147
    :cond_16
    move-object v4, v12

    .line 1148
    :goto_11
    move-object/from16 v10, v19

    .line 1149
    .line 1150
    move-object/from16 v12, v23

    .line 1151
    .line 1152
    move-object/from16 v13, v24

    .line 1153
    .line 1154
    goto :goto_12

    .line 1155
    :pswitch_f
    move-object/from16 v19, v10

    .line 1156
    .line 1157
    move-object/from16 v23, v12

    .line 1158
    .line 1159
    move-object/from16 v24, v13

    .line 1160
    .line 1161
    move-object v6, v15

    .line 1162
    move-object/from16 v5, v21

    .line 1163
    .line 1164
    const/4 v9, 0x0

    .line 1165
    const/16 v20, 0x2

    .line 1166
    .line 1167
    const/16 v21, 0x1

    .line 1168
    .line 1169
    const/16 v22, 0x0

    .line 1170
    .line 1171
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v10

    .line 1175
    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1176
    .line 1177
    .line 1178
    goto :goto_11

    .line 1179
    :pswitch_10
    move-object/from16 v19, v10

    .line 1180
    .line 1181
    move-object/from16 v23, v12

    .line 1182
    .line 1183
    move-object/from16 v24, v13

    .line 1184
    .line 1185
    move-object v6, v15

    .line 1186
    move-object/from16 v5, v21

    .line 1187
    .line 1188
    const/4 v9, 0x0

    .line 1189
    const/16 v20, 0x2

    .line 1190
    .line 1191
    const/16 v21, 0x1

    .line 1192
    .line 1193
    const/16 v22, 0x0

    .line 1194
    .line 1195
    move/from16 v18, v21

    .line 1196
    .line 1197
    :goto_12
    move-object/from16 v9, p2

    .line 1198
    .line 1199
    move-object v14, v5

    .line 1200
    move-object v15, v6

    .line 1201
    goto/16 :goto_0

    .line 1202
    .line 1203
    :cond_17
    move-object v5, v14

    .line 1204
    move-object v10, v15

    .line 1205
    const/4 v9, 0x0

    .line 1206
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v11

    .line 1210
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v2

    .line 1214
    if-eqz v11, :cond_1e

    .line 1215
    .line 1216
    if-nez v2, :cond_18

    .line 1217
    .line 1218
    goto/16 :goto_17

    .line 1219
    .line 1220
    :cond_18
    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1221
    .line 1222
    .line 1223
    if-nez v4, :cond_19

    .line 1224
    .line 1225
    const v2, 0x1080077

    .line 1226
    .line 1227
    .line 1228
    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1229
    .line 1230
    .line 1231
    goto :goto_13

    .line 1232
    :cond_19
    invoke-virtual {v10, v4}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 1233
    .line 1234
    .line 1235
    :goto_13
    new-instance v2, Landroid/app/NotificationChannel;

    .line 1236
    .line 1237
    const-string v3, "Shell command"

    .line 1238
    .line 1239
    const/4 v12, 0x3

    .line 1240
    invoke-direct {v2, v5, v3, v12}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1241
    .line 1242
    .line 1243
    iget-object v3, v0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 1244
    .line 1245
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    .line 1246
    .line 1247
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v2

    .line 1251
    invoke-direct {v4, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 1252
    .line 1253
    .line 1254
    move-object/from16 v13, p2

    .line 1255
    .line 1256
    invoke-interface {v3, v13, v4}, Landroid/app/INotificationManager;->createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 1257
    .line 1258
    .line 1259
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1260
    .line 1261
    const-string v3, "created channel: "

    .line 1262
    .line 1263
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1264
    .line 1265
    .line 1266
    iget-object v3, v0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 1267
    .line 1268
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 1269
    .line 1270
    .line 1271
    move-result v4

    .line 1272
    invoke-interface {v3, v13, v4, v13, v5}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v3

    .line 1276
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1277
    .line 1278
    .line 1279
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v2

    .line 1283
    const-string v3, "NotificationService"

    .line 1284
    .line 1285
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    .line 1287
    .line 1288
    invoke-virtual {v10}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v7

    .line 1292
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1293
    .line 1294
    const-string/jumbo v3, "posting:\n  "

    .line 1295
    .line 1296
    .line 1297
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1298
    .line 1299
    .line 1300
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1301
    .line 1302
    .line 1303
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v2

    .line 1307
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1308
    .line 1309
    .line 1310
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1311
    .line 1312
    const-string/jumbo v3, "posting: "

    .line 1313
    .line 1314
    .line 1315
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1316
    .line 1317
    .line 1318
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1319
    .line 1320
    .line 1321
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v2

    .line 1325
    const-string v3, "NotificationManager"

    .line 1326
    .line 1327
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    .line 1329
    .line 1330
    iget-object v2, v0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 1331
    .line 1332
    const/16 v6, 0x7e4

    .line 1333
    .line 1334
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 1335
    .line 1336
    .line 1337
    move-result v8

    .line 1338
    move-object/from16 v3, p2

    .line 1339
    .line 1340
    move-object/from16 v4, p2

    .line 1341
    .line 1342
    move-object v5, v11

    .line 1343
    invoke-interface/range {v2 .. v8}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    .line 1344
    .line 1345
    .line 1346
    if-eqz v18, :cond_1d

    .line 1347
    .line 1348
    iget-object v2, v0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 1349
    .line 1350
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 1351
    .line 1352
    .line 1353
    move-result v3

    .line 1354
    const/16 v4, 0x7e4

    .line 1355
    .line 1356
    invoke-virtual {v2, v4, v3, v13, v11}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(IILjava/lang/String;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v2

    .line 1360
    move v10, v12

    .line 1361
    const/4 v3, -0x1

    .line 1362
    :goto_14
    add-int/lit8 v5, v10, -0x1

    .line 1363
    .line 1364
    if-lez v10, :cond_1b

    .line 1365
    .line 1366
    if-eqz v2, :cond_1a

    .line 1367
    .line 1368
    goto :goto_15

    .line 1369
    :cond_1a
    :try_start_0
    const-string/jumbo v2, "waiting for notification to post..."

    .line 1370
    .line 1371
    .line 1372
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1373
    .line 1374
    .line 1375
    const-wide/16 v6, 0x1f4

    .line 1376
    .line 1377
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1378
    .line 1379
    .line 1380
    :catch_0
    iget-object v2, v0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 1381
    .line 1382
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 1383
    .line 1384
    .line 1385
    move-result v6

    .line 1386
    invoke-virtual {v2, v4, v6, v13, v11}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(IILjava/lang/String;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v2

    .line 1390
    move v10, v5

    .line 1391
    goto :goto_14

    .line 1392
    :cond_1b
    :goto_15
    if-nez v2, :cond_1c

    .line 1393
    .line 1394
    const-string/jumbo v0, "warning: couldn\'t find notification after enqueueing"

    .line 1395
    .line 1396
    .line 1397
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1398
    .line 1399
    .line 1400
    goto :goto_16

    .line 1401
    :cond_1c
    const-string/jumbo v0, "posted: "

    .line 1402
    .line 1403
    .line 1404
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1405
    .line 1406
    .line 1407
    const-string v0, "  "

    .line 1408
    .line 1409
    invoke-virtual {v2, v1, v0, v9}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1410
    .line 1411
    .line 1412
    :cond_1d
    :goto_16
    return-void

    .line 1413
    :cond_1e
    :goto_17
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1414
    .line 1415
    .line 1416
    return-void

    .line 1417
    :sswitch_data_0
    .sparse-switch
        -0x74789999 -> :sswitch_1d
        -0x603263ef -> :sswitch_1c
        -0x60295f48 -> :sswitch_1b
        -0x4821dd90 -> :sswitch_1a
        -0x468ec964 -> :sswitch_19
        -0x32dd8ddd -> :sswitch_18
        -0x2bc1295 -> :sswitch_17
        0x5bc -> :sswitch_16
        0x5c6 -> :sswitch_15
        0x5d6 -> :sswitch_14
        0x5db -> :sswitch_13
        0x5dc -> :sswitch_12
        0x5e7 -> :sswitch_11
        0x5e9 -> :sswitch_10
        0x313c79 -> :sswitch_f
        0x2906389 -> :sswitch_e
        0x6942258 -> :sswitch_d
        0x2a056f7a -> :sswitch_c
        0x2a13d010 -> :sswitch_b
        0x2d3ae234 -> :sswitch_a
        0x302cc35e -> :sswitch_9
        0x487e843c -> :sswitch_8
        0x4a573094 -> :sswitch_7
        0x4bbf1cad -> :sswitch_6
        0x4bcda88d -> :sswitch_5
        0x4f7504e1 -> :sswitch_4
        0x4f757219 -> :sswitch_3
        0x4f76e594 -> :sswitch_2
        0x6789dfe2 -> :sswitch_1
        0x76d66fcb -> :sswitch_0
    .end sparse-switch

    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    :sswitch_data_1
    .sparse-switch
        -0x55d4c8fc -> :sswitch_22
        -0x6cebdd3 -> :sswitch_21
        -0x2a7c002 -> :sswitch_20
        0x5fb2286 -> :sswitch_1f
        0x62f6fe4 -> :sswitch_1e
    .end sparse-switch

    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    :sswitch_data_2
    .sparse-switch
        -0x62b40cf1 -> :sswitch_25
        -0x607e173f -> :sswitch_24
        0x7643c6b5 -> :sswitch_23
    .end sparse-switch

    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "error: no active notification matching key: "

    .line 6
    .line 7
    const-string v4, "error: no snoozed otification matching key: "

    .line 8
    .line 9
    const-string/jumbo v5, "unsnoozing: "

    .line 10
    .line 11
    .line 12
    const-string v6, "error: invalid value for --"

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0

    .line 21
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    .line 27
    .line 28
    move-result-wide v8

    .line 29
    const-string v10, "NotifShellCmd"

    .line 30
    .line 31
    const/4 v12, 0x0

    .line 32
    if-nez v7, :cond_1

    .line 33
    .line 34
    :try_start_0
    const-string/jumbo v0, "root"

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto/16 :goto_1f

    .line 40
    .line 41
    :catch_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    .line 44
    .line 45
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    array-length v13, v0

    .line 52
    if-lez v13, :cond_2

    .line 53
    .line 54
    aget-object v0, v0, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 v0, 0x0

    .line 58
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :goto_1
    :try_start_1
    const-string v13, "failed to get caller pkg"

    .line 63
    .line 64
    invoke-static {v10, v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    if-eqz v7, :cond_4

    .line 76
    .line 77
    const/16 v9, 0x7d0

    .line 78
    .line 79
    if-ne v7, v9, :cond_3

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v2, "error: permission denied: callingUid="

    .line 85
    .line 86
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v3, " callingPackage="

    .line 93
    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const/16 v0, 0xff

    .line 129
    .line 130
    return v0

    .line 131
    :cond_4
    :goto_3
    const/16 v9, 0x2d

    .line 132
    .line 133
    const/16 v13, 0x5f

    .line 134
    .line 135
    :try_start_2
    invoke-virtual {v2, v9, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 140
    .line 141
    .line 142
    move-result v13

    .line 143
    const/4 v14, 0x1

    .line 144
    const/4 v15, 0x3

    .line 145
    const/4 v12, 0x2

    .line 146
    const/16 v17, -0x1

    .line 147
    .line 148
    sparse-switch v13, :sswitch_data_0

    .line 149
    .line 150
    .line 151
    goto/16 :goto_4

    .line 152
    .line 153
    :sswitch_0
    const-string v13, "allow_assistant"

    .line 154
    .line 155
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    if-eqz v9, :cond_5

    .line 160
    .line 161
    const/4 v9, 0x5

    .line 162
    goto/16 :goto_5

    .line 163
    .line 164
    :catch_1
    move-exception v0

    .line 165
    goto/16 :goto_1d

    .line 166
    .line 167
    :sswitch_1
    const-string/jumbo v13, "set_dnd"

    .line 168
    .line 169
    .line 170
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    if-eqz v9, :cond_5

    .line 175
    .line 176
    const/4 v9, 0x0

    .line 177
    goto/16 :goto_5

    .line 178
    .line 179
    :sswitch_2
    const-string v13, "disallow_listener"

    .line 180
    .line 181
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    if-eqz v9, :cond_5

    .line 186
    .line 187
    const/4 v9, 0x4

    .line 188
    goto/16 :goto_5

    .line 189
    .line 190
    :sswitch_3
    const-string/jumbo v13, "reset_assistant_user_set"

    .line 191
    .line 192
    .line 193
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    if-eqz v9, :cond_5

    .line 198
    .line 199
    const/4 v9, 0x7

    .line 200
    goto/16 :goto_5

    .line 201
    .line 202
    :sswitch_4
    const-string v13, "allow_dnd"

    .line 203
    .line 204
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v9

    .line 208
    if-eqz v9, :cond_5

    .line 209
    .line 210
    move v9, v14

    .line 211
    goto/16 :goto_5

    .line 212
    .line 213
    :sswitch_5
    const-string/jumbo v13, "set_bubbles"

    .line 214
    .line 215
    .line 216
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v9

    .line 220
    if-eqz v9, :cond_5

    .line 221
    .line 222
    const/16 v9, 0x9

    .line 223
    .line 224
    goto/16 :goto_5

    .line 225
    .line 226
    :sswitch_6
    const-string/jumbo v13, "post"

    .line 227
    .line 228
    .line 229
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v9

    .line 233
    if-eqz v9, :cond_5

    .line 234
    .line 235
    const/16 v9, 0xb

    .line 236
    .line 237
    goto/16 :goto_5

    .line 238
    .line 239
    :sswitch_7
    const-string v13, "list"

    .line 240
    .line 241
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v9

    .line 245
    if-eqz v9, :cond_5

    .line 246
    .line 247
    const/16 v9, 0xd

    .line 248
    .line 249
    goto/16 :goto_5

    .line 250
    .line 251
    :sswitch_8
    const-string v13, "get"

    .line 252
    .line 253
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    if-eqz v9, :cond_5

    .line 258
    .line 259
    const/16 v9, 0xe

    .line 260
    .line 261
    goto/16 :goto_5

    .line 262
    .line 263
    :sswitch_9
    const-string/jumbo v13, "unsnooze"

    .line 264
    .line 265
    .line 266
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v9

    .line 270
    if-eqz v9, :cond_5

    .line 271
    .line 272
    const/16 v9, 0x10

    .line 273
    .line 274
    goto :goto_5

    .line 275
    :sswitch_a
    const-string v13, "get_approved_assistant"

    .line 276
    .line 277
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v9

    .line 281
    if-eqz v9, :cond_5

    .line 282
    .line 283
    const/16 v9, 0x8

    .line 284
    .line 285
    goto :goto_5

    .line 286
    :sswitch_b
    const-string v13, "disallow_dnd"

    .line 287
    .line 288
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v9

    .line 292
    if-eqz v9, :cond_5

    .line 293
    .line 294
    move v9, v12

    .line 295
    goto :goto_5

    .line 296
    :sswitch_c
    const-string v13, "allow_listener"

    .line 297
    .line 298
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v9

    .line 302
    if-eqz v9, :cond_5

    .line 303
    .line 304
    move v9, v15

    .line 305
    goto :goto_5

    .line 306
    :sswitch_d
    const-string/jumbo v13, "snooze"

    .line 307
    .line 308
    .line 309
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v9

    .line 313
    if-eqz v9, :cond_5

    .line 314
    .line 315
    const/16 v9, 0x11

    .line 316
    .line 317
    goto :goto_5

    .line 318
    :sswitch_e
    const-string/jumbo v13, "notify"

    .line 319
    .line 320
    .line 321
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v9

    .line 325
    if-eqz v9, :cond_5

    .line 326
    .line 327
    const/16 v9, 0xc

    .line 328
    .line 329
    goto :goto_5

    .line 330
    :sswitch_f
    const-string v13, "disallow_assistant"

    .line 331
    .line 332
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v9

    .line 336
    if-eqz v9, :cond_5

    .line 337
    .line 338
    const/4 v9, 0x6

    .line 339
    goto :goto_5

    .line 340
    :sswitch_10
    const-string/jumbo v13, "set_bubbles_channel"

    .line 341
    .line 342
    .line 343
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v9

    .line 347
    if-eqz v9, :cond_5

    .line 348
    .line 349
    const/16 v9, 0xa

    .line 350
    .line 351
    goto :goto_5

    .line 352
    :sswitch_11
    const-string/jumbo v13, "snoozed"

    .line 353
    .line 354
    .line 355
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 359
    if-eqz v9, :cond_5

    .line 360
    .line 361
    const/16 v9, 0xf

    .line 362
    .line 363
    goto :goto_5

    .line 364
    :cond_5
    :goto_4
    move/from16 v9, v17

    .line 365
    .line 366
    :goto_5
    const-string v13, "Invalid listener - must be a ComponentName"

    .line 367
    .line 368
    const-string v11, "Invalid assistant - must be a ComponentName"

    .line 369
    .line 370
    packed-switch v9, :pswitch_data_0

    .line 371
    .line 372
    .line 373
    :try_start_3
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    return v0

    .line 378
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 382
    const-string v2, "help"

    .line 383
    .line 384
    if-nez v0, :cond_6

    .line 385
    .line 386
    move-object v0, v2

    .line 387
    goto :goto_6

    .line 388
    :cond_6
    :try_start_4
    const-string v3, "--"

    .line 389
    .line 390
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 391
    .line 392
    .line 393
    move-result v3

    .line 394
    if-eqz v3, :cond_7

    .line 395
    .line 396
    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    :cond_7
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    if-nez v4, :cond_8

    .line 409
    .line 410
    goto :goto_7

    .line 411
    :cond_8
    move-object v2, v0

    .line 412
    :goto_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    sparse-switch v0, :sswitch_data_1

    .line 417
    .line 418
    .line 419
    goto :goto_8

    .line 420
    :sswitch_12
    const-string v0, "context"

    .line 421
    .line 422
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    if-eqz v0, :cond_9

    .line 427
    .line 428
    const/4 v0, 0x0

    .line 429
    goto :goto_9

    .line 430
    :sswitch_13
    const-string v0, "criterion"

    .line 431
    .line 432
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    if-eqz v0, :cond_9

    .line 437
    .line 438
    move v0, v12

    .line 439
    goto :goto_9

    .line 440
    :sswitch_14
    const-string/jumbo v0, "until"

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    if-eqz v0, :cond_9

    .line 448
    .line 449
    move v0, v15

    .line 450
    goto :goto_9

    .line 451
    :sswitch_15
    const-string v0, "for"

    .line 452
    .line 453
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    if-eqz v0, :cond_9

    .line 458
    .line 459
    const/4 v0, 0x4

    .line 460
    goto :goto_9

    .line 461
    :sswitch_16
    const-string v0, "condition"

    .line 462
    .line 463
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v0

    .line 467
    if-eqz v0, :cond_9

    .line 468
    .line 469
    move v0, v14

    .line 470
    goto :goto_9

    .line 471
    :sswitch_17
    const-string v0, "duration"

    .line 472
    .line 473
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v0

    .line 477
    if-eqz v0, :cond_9

    .line 478
    .line 479
    const/4 v0, 0x5

    .line 480
    goto :goto_9

    .line 481
    :cond_9
    :goto_8
    move/from16 v0, v17

    .line 482
    .line 483
    :goto_9
    const-wide/16 v18, 0x0

    .line 484
    .line 485
    if-eqz v0, :cond_b

    .line 486
    .line 487
    if-eq v0, v14, :cond_b

    .line 488
    .line 489
    if-eq v0, v12, :cond_b

    .line 490
    .line 491
    if-eq v0, v15, :cond_a

    .line 492
    .line 493
    const/4 v5, 0x4

    .line 494
    if-eq v0, v5, :cond_a

    .line 495
    .line 496
    const/4 v5, 0x5

    .line 497
    if-eq v0, v5, :cond_a

    .line 498
    .line 499
    const-string/jumbo v0, "usage: cmd notification snooze (--for <msec> | --context <snooze-criterion-id>) <key>"

    .line 500
    .line 501
    .line 502
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    return v14

    .line 506
    :cond_a
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 507
    .line 508
    .line 509
    move-result-wide v11

    .line 510
    const/4 v5, 0x0

    .line 511
    goto :goto_a

    .line 512
    :cond_b
    move-object v5, v3

    .line 513
    move-wide/from16 v11, v18

    .line 514
    .line 515
    :goto_a
    cmp-long v7, v11, v18

    .line 516
    .line 517
    if-gtz v7, :cond_d

    .line 518
    .line 519
    if-eqz v5, :cond_c

    .line 520
    .line 521
    goto :goto_b

    .line 522
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    const-string v1, ": "

    .line 531
    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    return v14

    .line 546
    :cond_d
    :goto_b
    new-instance v2, Lcom/android/server/notification/NotificationShellCmd$ShellNls;

    .line 547
    .line 548
    invoke-direct {v2}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 549
    .line 550
    .line 551
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 552
    .line 553
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    new-instance v1, Landroid/content/ComponentName;

    .line 558
    .line 559
    const-class v3, Lcom/android/server/notification/NotificationShellCmd$ShellNls;

    .line 560
    .line 561
    invoke-virtual {v3}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    const-class v6, Lcom/android/server/notification/NotificationShellCmd$ShellNls;

    .line 566
    .line 567
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v6

    .line 571
    invoke-direct {v1, v3, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 575
    .line 576
    .line 577
    move-result v3

    .line 578
    invoke-virtual {v2, v0, v1, v3}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 579
    .line 580
    .line 581
    const/4 v1, 0x0

    .line 582
    :goto_c
    const/16 v3, 0x14

    .line 583
    .line 584
    if-ge v1, v3, :cond_14

    .line 585
    .line 586
    iget-boolean v0, v2, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->isConnected:Z

    .line 587
    .line 588
    const-wide/16 v16, 0x64

    .line 589
    .line 590
    if-eqz v0, :cond_13

    .line 591
    .line 592
    const-string v0, "Bound Shell NLS"

    .line 593
    .line 594
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    .line 596
    .line 597
    if-lez v7, :cond_e

    .line 598
    .line 599
    const-string/jumbo v0, "snoozing <%s> until time: %s"

    .line 600
    .line 601
    .line 602
    new-instance v1, Ljava/util/Date;

    .line 603
    .line 604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 605
    .line 606
    .line 607
    move-result-wide v5

    .line 608
    add-long/2addr v5, v11

    .line 609
    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 610
    .line 611
    .line 612
    filled-new-array {v4, v1}, [Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    move-result-object v1

    .line 616
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v2, v4, v11, v12}, Landroid/service/notification/NotificationListenerService;->snoozeNotification(Ljava/lang/String;J)V

    .line 624
    .line 625
    .line 626
    goto :goto_d

    .line 627
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 628
    .line 629
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 630
    .line 631
    .line 632
    const-string/jumbo v1, "snoozing <"

    .line 633
    .line 634
    .line 635
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    const-string v1, "> until criterion: "

    .line 642
    .line 643
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v2, v4, v5}, Landroid/service/notification/NotificationListenerService;->snoozeNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    :goto_d
    const/4 v1, 0x0

    .line 660
    :goto_e
    if-ge v1, v3, :cond_11

    .line 661
    .line 662
    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService;->getSnoozedNotifications()[Landroid/service/notification/StatusBarNotification;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    array-length v5, v0

    .line 667
    const/4 v6, 0x0

    .line 668
    :goto_f
    if-ge v6, v5, :cond_10

    .line 669
    .line 670
    aget-object v7, v0, v6

    .line 671
    .line 672
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v7

    .line 676
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 677
    .line 678
    .line 679
    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 680
    if-eqz v7, :cond_f

    .line 681
    .line 682
    goto :goto_11

    .line 683
    :cond_f
    add-int/lit8 v6, v6, 0x1

    .line 684
    .line 685
    goto :goto_f

    .line 686
    :cond_10
    :try_start_5
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 687
    .line 688
    .line 689
    goto :goto_10

    .line 690
    :catch_2
    move-exception v0

    .line 691
    move-object v5, v0

    .line 692
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 693
    .line 694
    .line 695
    :goto_10
    add-int/lit8 v1, v1, 0x1

    .line 696
    .line 697
    goto :goto_e

    .line 698
    :cond_11
    :goto_11
    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V

    .line 699
    .line 700
    .line 701
    const/4 v1, 0x0

    .line 702
    const/16 v3, 0xa

    .line 703
    .line 704
    :goto_12
    if-ge v1, v3, :cond_2f

    .line 705
    .line 706
    iget-boolean v0, v2, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->isConnected:Z

    .line 707
    .line 708
    if-nez v0, :cond_12

    .line 709
    .line 710
    const-string v0, "Unbound Shell NLS"

    .line 711
    .line 712
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 713
    .line 714
    .line 715
    goto/16 :goto_1c

    .line 716
    .line 717
    :cond_12
    :try_start_7
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 718
    .line 719
    .line 720
    goto :goto_13

    .line 721
    :catch_3
    move-exception v0

    .line 722
    move-object v4, v0

    .line 723
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 724
    .line 725
    .line 726
    :goto_13
    add-int/lit8 v1, v1, 0x1

    .line 727
    .line 728
    goto :goto_12

    .line 729
    :cond_13
    const/16 v3, 0xa

    .line 730
    .line 731
    :try_start_9
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 732
    .line 733
    .line 734
    goto :goto_14

    .line 735
    :catch_4
    move-exception v0

    .line 736
    move-object v6, v0

    .line 737
    :try_start_a
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 738
    .line 739
    .line 740
    :goto_14
    add-int/lit8 v1, v1, 0x1

    .line 741
    .line 742
    goto/16 :goto_c

    .line 743
    .line 744
    :cond_14
    const-string v0, "error: could not bind a listener in time"

    .line 745
    .line 746
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    return v14

    .line 750
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    const-string v2, "--mute"

    .line 755
    .line 756
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 757
    .line 758
    .line 759
    move-result v2

    .line 760
    if-eqz v2, :cond_15

    .line 761
    .line 762
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    move v2, v14

    .line 767
    goto :goto_15

    .line 768
    :cond_15
    const/4 v2, 0x0

    .line 769
    :goto_15
    iget-object v3, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 770
    .line 771
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 772
    .line 773
    iget-object v6, v3, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    .line 774
    .line 775
    monitor-enter v6
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 776
    :try_start_b
    iget-object v3, v3, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 777
    .line 778
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    .line 780
    .line 781
    move-result-object v3

    .line 782
    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 783
    .line 784
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 785
    if-eqz v3, :cond_16

    .line 786
    .line 787
    :try_start_c
    new-instance v3, Ljava/lang/StringBuilder;

    .line 788
    .line 789
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    .line 794
    .line 795
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v3

    .line 799
    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 803
    .line 804
    const/4 v3, 0x0

    .line 805
    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/notification/NotificationManagerService;->unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    .line 806
    .line 807
    .line 808
    goto/16 :goto_1c

    .line 809
    .line 810
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 811
    .line 812
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    .line 817
    .line 818
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 823
    .line 824
    .line 825
    return v14

    .line 826
    :catchall_1
    move-exception v0

    .line 827
    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 828
    :try_start_e
    throw v0

    .line 829
    :pswitch_2
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 830
    .line 831
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 832
    .line 833
    invoke-virtual {v0}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed()Ljava/util/List;

    .line 834
    .line 835
    .line 836
    move-result-object v1

    .line 837
    check-cast v1, Ljava/util/ArrayList;

    .line 838
    .line 839
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 840
    .line 841
    .line 842
    move-result-object v1

    .line 843
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 844
    .line 845
    .line 846
    move-result v2

    .line 847
    if-eqz v2, :cond_2f

    .line 848
    .line 849
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object v2

    .line 853
    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 854
    .line 855
    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 856
    .line 857
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 861
    .line 862
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 863
    .line 864
    .line 865
    move-result-object v3

    .line 866
    new-instance v4, Ljava/lang/StringBuilder;

    .line 867
    .line 868
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 869
    .line 870
    .line 871
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    .line 873
    .line 874
    const-string v5, " snoozed, time="

    .line 875
    .line 876
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    .line 878
    .line 879
    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 880
    .line 881
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 882
    .line 883
    .line 884
    invoke-virtual {v0, v3}, Lcom/android/server/notification/SnoozeHelper;->getSnoozeTimeForUnpostedNotification(Ljava/lang/String;)Ljava/lang/Long;

    .line 885
    .line 886
    .line 887
    move-result-object v5

    .line 888
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 889
    .line 890
    .line 891
    const-string v5, " context="

    .line 892
    .line 893
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    .line 895
    .line 896
    iget-object v2, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 897
    .line 898
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 899
    .line 900
    .line 901
    invoke-virtual {v0, v3}, Lcom/android/server/notification/SnoozeHelper;->getSnoozeContextForUnpostedNotification(Ljava/lang/String;)Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v2

    .line 905
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    .line 907
    .line 908
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    move-result-object v2

    .line 912
    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 913
    .line 914
    .line 915
    goto :goto_16

    .line 916
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v0

    .line 920
    iget-object v2, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 921
    .line 922
    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationManagerService;->getNotificationRecord(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    .line 923
    .line 924
    .line 925
    move-result-object v2

    .line 926
    if-eqz v2, :cond_17

    .line 927
    .line 928
    const-string v0, ""

    .line 929
    .line 930
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 931
    .line 932
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 933
    .line 934
    .line 935
    const/4 v1, 0x0

    .line 936
    invoke-virtual {v2, v8, v0, v1}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 937
    .line 938
    .line 939
    goto/16 :goto_1c

    .line 940
    .line 941
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 942
    .line 943
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 944
    .line 945
    .line 946
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    .line 948
    .line 949
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v0

    .line 953
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 954
    .line 955
    .line 956
    return v14

    .line 957
    :pswitch_4
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 958
    .line 959
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 960
    .line 961
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 962
    .line 963
    .line 964
    move-result-object v0

    .line 965
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 970
    .line 971
    .line 972
    move-result v1

    .line 973
    if-eqz v1, :cond_2f

    .line 974
    .line 975
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 976
    .line 977
    .line 978
    move-result-object v1

    .line 979
    check-cast v1, Ljava/lang/String;

    .line 980
    .line 981
    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 982
    .line 983
    .line 984
    goto :goto_17

    .line 985
    :pswitch_5
    invoke-virtual {v1, v8, v0, v7}, Lcom/android/server/notification/NotificationShellCmd;->doNotify(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 986
    .line 987
    .line 988
    goto/16 :goto_1c

    .line 989
    .line 990
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 991
    .line 992
    .line 993
    move-result-object v2

    .line 994
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 995
    .line 996
    .line 997
    move-result-object v3

    .line 998
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 999
    .line 1000
    .line 1001
    move-result-object v4

    .line 1002
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1003
    .line 1004
    .line 1005
    move-result v4

    .line 1006
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 1007
    .line 1008
    .line 1009
    move-result v5

    .line 1010
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v6

    .line 1014
    if-eqz v6, :cond_18

    .line 1015
    .line 1016
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v5

    .line 1020
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1021
    .line 1022
    .line 1023
    move-result v5

    .line 1024
    :cond_18
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 1025
    .line 1026
    invoke-interface {v6, v0, v5, v2, v3}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v0

    .line 1030
    invoke-virtual {v0, v4}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    .line 1031
    .line 1032
    .line 1033
    iget-object v3, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    .line 1034
    .line 1035
    const/4 v4, 0x0

    .line 1036
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 1037
    .line 1038
    .line 1039
    move-result v3

    .line 1040
    invoke-static {v5, v3}, Landroid/os/UserHandle;->getUid(II)I

    .line 1041
    .line 1042
    .line 1043
    move-result v3

    .line 1044
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 1045
    .line 1046
    invoke-interface {v1, v2, v3, v0}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 1047
    .line 1048
    .line 1049
    goto/16 :goto_1c

    .line 1050
    .line 1051
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v0

    .line 1055
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v2

    .line 1059
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1060
    .line 1061
    .line 1062
    move-result v2

    .line 1063
    if-gt v2, v15, :cond_1b

    .line 1064
    .line 1065
    if-gez v2, :cond_19

    .line 1066
    .line 1067
    goto :goto_18

    .line 1068
    :cond_19
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 1069
    .line 1070
    .line 1071
    move-result v3

    .line 1072
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v4

    .line 1076
    if-eqz v4, :cond_1a

    .line 1077
    .line 1078
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v3

    .line 1082
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1083
    .line 1084
    .line 1085
    move-result v3

    .line 1086
    :cond_1a
    iget-object v4, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    .line 1087
    .line 1088
    const/4 v5, 0x0

    .line 1089
    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 1090
    .line 1091
    .line 1092
    move-result v4

    .line 1093
    invoke-static {v3, v4}, Landroid/os/UserHandle;->getUid(II)I

    .line 1094
    .line 1095
    .line 1096
    move-result v3

    .line 1097
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 1098
    .line 1099
    invoke-interface {v1, v0, v3, v2}, Landroid/app/INotificationManager;->setBubblesAllowed(Ljava/lang/String;II)V

    .line 1100
    .line 1101
    .line 1102
    goto/16 :goto_1c

    .line 1103
    .line 1104
    :cond_1b
    :goto_18
    const-string v0, "Invalid preference - must be between 0-3 (0=none 1=all 2=selected)"

    .line 1105
    .line 1106
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1107
    .line 1108
    .line 1109
    return v17

    .line 1110
    :pswitch_8
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 1111
    .line 1112
    .line 1113
    move-result v0

    .line 1114
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v2

    .line 1118
    if-eqz v2, :cond_1c

    .line 1119
    .line 1120
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v0

    .line 1124
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1125
    .line 1126
    .line 1127
    move-result v0

    .line 1128
    :cond_1c
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 1129
    .line 1130
    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService;->getApprovedAssistant(I)Landroid/content/ComponentName;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v0

    .line 1134
    if-nez v0, :cond_1d

    .line 1135
    .line 1136
    const-string/jumbo v0, "null"

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1140
    .line 1141
    .line 1142
    goto/16 :goto_1c

    .line 1143
    .line 1144
    :cond_1d
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v0

    .line 1148
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1149
    .line 1150
    .line 1151
    goto/16 :goto_1c

    .line 1152
    .line 1153
    :pswitch_9
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 1154
    .line 1155
    .line 1156
    move-result v0

    .line 1157
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v2

    .line 1161
    if-eqz v2, :cond_1e

    .line 1162
    .line 1163
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v0

    .line 1167
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1168
    .line 1169
    .line 1170
    move-result v0

    .line 1171
    :cond_1e
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 1172
    .line 1173
    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService;->resetAssistantUserSet(I)V

    .line 1174
    .line 1175
    .line 1176
    goto/16 :goto_1c

    .line 1177
    .line 1178
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v0

    .line 1182
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v0

    .line 1186
    if-nez v0, :cond_1f

    .line 1187
    .line 1188
    invoke-virtual {v8, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1189
    .line 1190
    .line 1191
    return v17

    .line 1192
    :cond_1f
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 1193
    .line 1194
    .line 1195
    move-result v2

    .line 1196
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v3

    .line 1200
    if-eqz v3, :cond_20

    .line 1201
    .line 1202
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v2

    .line 1206
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1207
    .line 1208
    .line 1209
    move-result v2

    .line 1210
    :cond_20
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 1211
    .line 1212
    const/4 v3, 0x0

    .line 1213
    invoke-interface {v1, v0, v2, v3}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 1214
    .line 1215
    .line 1216
    goto/16 :goto_1c

    .line 1217
    .line 1218
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v0

    .line 1222
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v0

    .line 1226
    if-nez v0, :cond_21

    .line 1227
    .line 1228
    invoke-virtual {v8, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1229
    .line 1230
    .line 1231
    return v17

    .line 1232
    :cond_21
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 1233
    .line 1234
    .line 1235
    move-result v2

    .line 1236
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v3

    .line 1240
    if-eqz v3, :cond_22

    .line 1241
    .line 1242
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v2

    .line 1246
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1247
    .line 1248
    .line 1249
    move-result v2

    .line 1250
    :cond_22
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 1251
    .line 1252
    invoke-interface {v1, v0, v2, v14}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 1253
    .line 1254
    .line 1255
    goto/16 :goto_1c

    .line 1256
    .line 1257
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v0

    .line 1261
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v0

    .line 1265
    if-nez v0, :cond_23

    .line 1266
    .line 1267
    invoke-virtual {v8, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1268
    .line 1269
    .line 1270
    return v17

    .line 1271
    :cond_23
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 1272
    .line 1273
    .line 1274
    move-result v2

    .line 1275
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v3

    .line 1279
    if-eqz v3, :cond_24

    .line 1280
    .line 1281
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v2

    .line 1285
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1286
    .line 1287
    .line 1288
    move-result v2

    .line 1289
    :cond_24
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 1290
    .line 1291
    const/4 v3, 0x0

    .line 1292
    invoke-interface {v1, v0, v2, v3, v14}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    .line 1293
    .line 1294
    .line 1295
    goto/16 :goto_1c

    .line 1296
    .line 1297
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v0

    .line 1301
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v0

    .line 1305
    if-nez v0, :cond_25

    .line 1306
    .line 1307
    invoke-virtual {v8, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1308
    .line 1309
    .line 1310
    return v17

    .line 1311
    :cond_25
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 1312
    .line 1313
    .line 1314
    move-result v2

    .line 1315
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v3

    .line 1319
    if-eqz v3, :cond_26

    .line 1320
    .line 1321
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v2

    .line 1325
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1326
    .line 1327
    .line 1328
    move-result v2

    .line 1329
    :cond_26
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 1330
    .line 1331
    invoke-interface {v1, v0, v2, v14, v14}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    .line 1332
    .line 1333
    .line 1334
    goto/16 :goto_1c

    .line 1335
    .line 1336
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v0

    .line 1340
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 1341
    .line 1342
    .line 1343
    move-result v2

    .line 1344
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v3

    .line 1348
    if-eqz v3, :cond_27

    .line 1349
    .line 1350
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v2

    .line 1354
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1355
    .line 1356
    .line 1357
    move-result v2

    .line 1358
    :cond_27
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 1359
    .line 1360
    const/4 v3, 0x0

    .line 1361
    invoke-interface {v1, v0, v2, v3}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    .line 1362
    .line 1363
    .line 1364
    goto/16 :goto_1c

    .line 1365
    .line 1366
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v0

    .line 1370
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 1371
    .line 1372
    .line 1373
    move-result v2

    .line 1374
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v3

    .line 1378
    if-eqz v3, :cond_28

    .line 1379
    .line 1380
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v2

    .line 1384
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1385
    .line 1386
    .line 1387
    move-result v2

    .line 1388
    :cond_28
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 1389
    .line 1390
    invoke-interface {v1, v0, v2, v14}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    .line 1391
    .line 1392
    .line 1393
    goto/16 :goto_1c

    .line 1394
    .line 1395
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v2

    .line 1399
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 1400
    .line 1401
    .line 1402
    move-result v3

    .line 1403
    sparse-switch v3, :sswitch_data_2

    .line 1404
    .line 1405
    .line 1406
    goto :goto_19

    .line 1407
    :sswitch_18
    const-string/jumbo v3, "none"

    .line 1408
    .line 1409
    .line 1410
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1411
    .line 1412
    .line 1413
    move-result v2

    .line 1414
    if-eqz v2, :cond_29

    .line 1415
    .line 1416
    const/4 v2, 0x0

    .line 1417
    goto :goto_1a

    .line 1418
    :sswitch_19
    const-string/jumbo v3, "off"

    .line 1419
    .line 1420
    .line 1421
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1422
    .line 1423
    .line 1424
    move-result v2

    .line 1425
    if-eqz v2, :cond_29

    .line 1426
    .line 1427
    const/4 v2, 0x5

    .line 1428
    goto :goto_1a

    .line 1429
    :sswitch_1a
    const-string v3, "all"

    .line 1430
    .line 1431
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1432
    .line 1433
    .line 1434
    move-result v2

    .line 1435
    if-eqz v2, :cond_29

    .line 1436
    .line 1437
    const/4 v2, 0x4

    .line 1438
    goto :goto_1a

    .line 1439
    :sswitch_1b
    const-string/jumbo v3, "on"

    .line 1440
    .line 1441
    .line 1442
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1443
    .line 1444
    .line 1445
    move-result v2

    .line 1446
    if-eqz v2, :cond_29

    .line 1447
    .line 1448
    move v2, v14

    .line 1449
    goto :goto_1a

    .line 1450
    :sswitch_1c
    const-string/jumbo v3, "priority"

    .line 1451
    .line 1452
    .line 1453
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1454
    .line 1455
    .line 1456
    move-result v2

    .line 1457
    if-eqz v2, :cond_29

    .line 1458
    .line 1459
    move v2, v12

    .line 1460
    goto :goto_1a

    .line 1461
    :sswitch_1d
    const-string v3, "alarms"

    .line 1462
    .line 1463
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1464
    .line 1465
    .line 1466
    move-result v2

    .line 1467
    if-eqz v2, :cond_29

    .line 1468
    .line 1469
    move v2, v15

    .line 1470
    goto :goto_1a

    .line 1471
    :cond_29
    :goto_19
    move/from16 v2, v17

    .line 1472
    .line 1473
    :goto_1a
    if-eqz v2, :cond_2d

    .line 1474
    .line 1475
    if-eq v2, v14, :cond_2d

    .line 1476
    .line 1477
    if-eq v2, v12, :cond_2c

    .line 1478
    .line 1479
    if-eq v2, v15, :cond_2b

    .line 1480
    .line 1481
    const/4 v3, 0x4

    .line 1482
    if-eq v2, v3, :cond_2a

    .line 1483
    .line 1484
    const/4 v3, 0x5

    .line 1485
    if-eq v2, v3, :cond_2a

    .line 1486
    .line 1487
    const/4 v15, 0x0

    .line 1488
    goto :goto_1b

    .line 1489
    :cond_2a
    move v15, v14

    .line 1490
    goto :goto_1b

    .line 1491
    :cond_2b
    const/4 v3, 0x4

    .line 1492
    move v15, v3

    .line 1493
    goto :goto_1b

    .line 1494
    :cond_2c
    move v15, v12

    .line 1495
    :cond_2d
    :goto_1b
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 1496
    .line 1497
    .line 1498
    move-result v2

    .line 1499
    if-eqz v2, :cond_2e

    .line 1500
    .line 1501
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 1502
    .line 1503
    invoke-interface {v1, v0, v15, v14}, Landroid/app/INotificationManager;->setInterruptionFilter(Ljava/lang/String;IZ)V

    .line 1504
    .line 1505
    .line 1506
    goto :goto_1c

    .line 1507
    :cond_2e
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 1508
    .line 1509
    const/4 v2, 0x0

    .line 1510
    invoke-interface {v1, v0, v15, v2}, Landroid/app/INotificationManager;->setInterruptionFilter(Ljava/lang/String;IZ)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 1511
    .line 1512
    .line 1513
    :cond_2f
    :goto_1c
    const/4 v1, 0x0

    .line 1514
    goto :goto_1e

    .line 1515
    :goto_1d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1516
    .line 1517
    const-string v2, "Error occurred. Check logcat for details. "

    .line 1518
    .line 1519
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1520
    .line 1521
    .line 1522
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v2

    .line 1526
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    .line 1528
    .line 1529
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v1

    .line 1533
    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1534
    .line 1535
    .line 1536
    const-string v1, "NotificationService"

    .line 1537
    .line 1538
    const-string v2, "Error running shell command"

    .line 1539
    .line 1540
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1541
    .line 1542
    .line 1543
    goto :goto_1c

    .line 1544
    :goto_1e
    return v1

    .line 1545
    :goto_1f
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1546
    .line 1547
    .line 1548
    throw v0

    .line 1549
    :sswitch_data_0
    .sparse-switch
        -0x7a8dd0c2 -> :sswitch_11
        -0x677a47b2 -> :sswitch_10
        -0x4f05a8e6 -> :sswitch_f
        -0x3df868b7 -> :sswitch_e
        -0x3580721a -> :sswitch_d
        -0x19cf0b16 -> :sswitch_c
        -0x199eb9aa -> :sswitch_b
        -0x18b58921 -> :sswitch_a
        -0xa97a41 -> :sswitch_9
        0x18f56 -> :sswitch_8
        0x32b09e -> :sswitch_7
        0x3498a0 -> :sswitch_6
        0xca4be8a -> :sswitch_5
        0x16318b24 -> :sswitch_4
        0x28bd431f -> :sswitch_3
        0x4af068f8 -> :sswitch_2
        0x76556fbd -> :sswitch_1
        0x7dcb4968 -> :sswitch_0
    .end sparse-switch

    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    :sswitch_data_1
    .sparse-switch
        -0x76bbb26c -> :sswitch_17
        -0x335692e5 -> :sswitch_16
        0x18cc9 -> :sswitch_15
        0x6a47f5e -> :sswitch_14
        0x16e20ea1 -> :sswitch_13
        0x38b735af -> :sswitch_12
    .end sparse-switch

    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    :sswitch_data_2
    .sparse-switch
        -0x545a2fbe -> :sswitch_1d
        -0x4577865c -> :sswitch_1c
        0xddf -> :sswitch_1b
        0x179a1 -> :sswitch_1a
        0x1ad6f -> :sswitch_19
        0x33af38 -> :sswitch_18
    .end sparse-switch
.end method

.method public final onHelp()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo v0, "usage: cmd notification SUBCMD [args]\n\nSUBCMDs:\n  allow_listener COMPONENT [user_id (current user if not specified)]\n  disallow_listener COMPONENT [user_id (current user if not specified)]\n  allow_assistant COMPONENT [user_id (current user if not specified)]\n  remove_assistant COMPONENT [user_id (current user if not specified)]\n  set_dnd [on|none (same as on)|priority|alarms|all|off (same as all)]\n  allow_dnd PACKAGE [user_id (current user if not specified)]\n  disallow_dnd PACKAGE [user_id (current user if not specified)]\n  reset_assistant_user_set [user_id (current user if not specified)]\n  get_approved_assistant [user_id (current user if not specified)]\n  post [--help | flags] TAG TEXT\n  set_bubbles PACKAGE PREFERENCE (0=none 1=all 2=selected) [user_id (current user if not specified)]\n  set_bubbles_channel PACKAGE CHANNEL_ID ALLOW [user_id (current user if not specified)]\n  list\n  get <notification-key>\n  snooze --for <msec> <notification-key>\n  unsnooze <notification-key>\n"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
