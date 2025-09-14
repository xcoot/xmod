.class public final Lcom/android/server/pdb/PersistentDataBlockService$1$1;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;


# direct methods
.method public constructor <init>(Lcom/android/server/pdb/PersistentDataBlockService$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static hashSecretString(Ljava/lang/String;)[B
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "SHA-256"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string v0, "ShellCommand"

    .line 18
    .line 19
    const-string v1, "Can\'t happen"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    const/16 p0, 0x20

    .line 25
    .line 26
    new-array p0, p0, [B

    .line 27
    .line 28
    return-object p0
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "failed"

    .line 14
    .line 15
    const-string/jumbo v3, "succeeded"

    .line 16
    .line 17
    .line 18
    const/4 v4, -0x1

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    sparse-switch v5, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :sswitch_0
    const-string v5, "auto_deactivate"

    .line 28
    .line 29
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v4, 0x4

    .line 37
    goto :goto_0

    .line 38
    :sswitch_1
    const-string/jumbo v5, "status"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v4, 0x3

    .line 49
    goto :goto_0

    .line 50
    :sswitch_2
    const-string/jumbo v5, "set_secret"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const/4 v4, 0x2

    .line 61
    goto :goto_0

    .line 62
    :sswitch_3
    const-string v5, "activate"

    .line 63
    .line 64
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_4

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    move v4, v0

    .line 72
    goto :goto_0

    .line 73
    :sswitch_4
    const-string v5, "deactivate"

    .line 74
    .line 75
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-nez v5, :cond_5

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    const/4 v4, 0x0

    .line 83
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/android/server/pdb/PersistentDataBlockService;->automaticallyDeactivateFrpIfPossible()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    move-object v2, v3

    .line 103
    :cond_6
    const-string p1, "Automatic deactivation "

    .line 104
    .line 105
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    .line 113
    .line 114
    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 115
    .line 116
    iget-boolean p1, p1, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 117
    .line 118
    xor-int/2addr p1, v0

    .line 119
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pdb/PersistentDataBlockService$1;->printFrpStatus(Ljava/io/PrintWriter;Z)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_1

    .line 123
    .line 124
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    .line 125
    .line 126
    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 127
    .line 128
    iget-boolean p1, p1, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 129
    .line 130
    xor-int/2addr p1, v0

    .line 131
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pdb/PersistentDataBlockService$1;->printFrpStatus(Ljava/io/PrintWriter;Z)V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_1

    .line 135
    .line 136
    :pswitch_2
    const/16 p1, 0x20

    .line 137
    .line 138
    new-array p1, p1, [B

    .line 139
    .line 140
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    const-string v3, "default"

    .line 145
    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-nez v3, :cond_7

    .line 151
    .line 152
    invoke-static {v2}, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->hashSecretString(Ljava/lang/String;)[B

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v3, "Setting FRP secret to: "

    .line 159
    .line 160
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v3, p1}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v3, " length: "

    .line 175
    .line 176
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    array-length v3, p1

    .line 180
    invoke-static {v2, v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 181
    .line 182
    .line 183
    iget-object v2, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    .line 184
    .line 185
    invoke-virtual {v2, p1}, Lcom/android/server/pdb/PersistentDataBlockService$1;->setFactoryResetProtectionSecret([B)Z

    .line 186
    .line 187
    .line 188
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    .line 189
    .line 190
    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 191
    .line 192
    iget-boolean p1, p1, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 193
    .line 194
    xor-int/2addr p1, v0

    .line 195
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pdb/PersistentDataBlockService$1;->printFrpStatus(Ljava/io/PrintWriter;Z)V

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    .line 200
    .line 201
    iget-object p1, p1, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 202
    .line 203
    invoke-virtual {p1}, Lcom/android/server/pdb/PersistentDataBlockService;->activateFrp()V

    .line 204
    .line 205
    .line 206
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    .line 207
    .line 208
    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 209
    .line 210
    iget-boolean p1, p1, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 211
    .line 212
    xor-int/2addr p1, v0

    .line 213
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pdb/PersistentDataBlockService$1;->printFrpStatus(Ljava/io/PrintWriter;Z)V

    .line 214
    .line 215
    .line 216
    goto :goto_1

    .line 217
    :pswitch_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-static {p1}, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->hashSecretString(Ljava/lang/String;)[B

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const-string v5, "Attempting to deactivate with: "

    .line 228
    .line 229
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    invoke-virtual {v5, p1}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    iget-object v4, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    .line 251
    .line 252
    iget-object v4, v4, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 253
    .line 254
    invoke-virtual {v4, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->deactivateFrp([B)Z

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    if-eqz p1, :cond_8

    .line 259
    .line 260
    move-object v2, v3

    .line 261
    :cond_8
    const-string p1, "Deactivation "

    .line 262
    .line 263
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    .line 271
    .line 272
    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 273
    .line 274
    iget-boolean p1, p1, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 275
    .line 276
    xor-int/2addr p1, v0

    .line 277
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pdb/PersistentDataBlockService$1;->printFrpStatus(Ljava/io/PrintWriter;Z)V

    .line 278
    .line 279
    .line 280
    :goto_1
    return v0

    .line 281
    :sswitch_data_0
    .sparse-switch
        -0x77042f8c -> :sswitch_4
        -0x62b42b0d -> :sswitch_3
        -0x468ec2d3 -> :sswitch_2
        -0x3532300e -> :sswitch_1
        0x79c03504 -> :sswitch_0
    .end sparse-switch

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    const-string v0, "Commands"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v0, "status: Print the FRP state and associated information."

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "activate:  Put FRP into \"active\" mode."

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "deactivate <secret>:  Deactivate with a hash of \'secret\'."

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "auto_deactivate: Deactivate with the stored secret or the default"

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string/jumbo v0, "set_secret <secret>:  Set the stored secret to a hash of `secret`"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
