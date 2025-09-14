.class public final Lcom/android/server/uri/UriPermission;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public globalModeFlags:I

.field public mReadOwners:Landroid/util/ArraySet;

.field public mWriteOwners:Landroid/util/ArraySet;

.field public modeFlags:I

.field public ownedModeFlags:I

.field public persistableModeFlags:I

.field public persistedCreateTime:J

.field public persistedModeFlags:I

.field public final sourcePkg:Ljava/lang/String;

.field public stringName:Ljava/lang/String;

.field public final targetPkg:Ljava/lang/String;

.field public final targetUid:I

.field public final targetUserId:I

.field public final uri:Lcom/android/server/uri/GrantUri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    .line 10
    .line 11
    iput v0, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 12
    .line 13
    iput v0, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 14
    .line 15
    const-wide/high16 v0, -0x8000000000000000L

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    .line 18
    .line 19
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/android/server/uri/UriPermission;->targetUserId:I

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 28
    .line 29
    iput p3, p0, Lcom/android/server/uri/UriPermission;->targetUid:I

    .line 30
    .line 31
    iput-object p4, p0, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "      "

    .line 2
    .line 3
    const-string/jumbo v1, "targetUserId="

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget v2, p0, Lcom/android/server/uri/UriPermission;->targetUserId:I

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, " sourcePkg="

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v2, " targetPkg="

    .line 44
    .line 45
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string/jumbo v2, "mode=0x"

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget v2, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    .line 72
    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v2, " owned=0x"

    .line 90
    .line 91
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget v2, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 95
    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v2, " global=0x"

    .line 113
    .line 114
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget v2, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    .line 118
    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v2, " persistable=0x"

    .line 136
    .line 137
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget v2, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 141
    .line 142
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v2, " persisted=0x"

    .line 159
    .line 160
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget v2, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 164
    .line 165
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-wide v1, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    .line 180
    .line 181
    const-wide/high16 v3, -0x8000000000000000L

    .line 182
    .line 183
    cmp-long v1, v1, v3

    .line 184
    .line 185
    if-eqz v1, :cond_0

    .line 186
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v2, " persistedCreate="

    .line 190
    .line 191
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-wide v2, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    .line 195
    .line 196
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 207
    .line 208
    .line 209
    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 210
    .line 211
    const-string v2, "  * "

    .line 212
    .line 213
    if-eqz v1, :cond_1

    .line 214
    .line 215
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    const-string/jumbo v1, "readOwners:"

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 225
    .line 226
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    if-eqz v3, :cond_1

    .line 235
    .line 236
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    check-cast v3, Lcom/android/server/uri/UriPermissionOwner;

    .line 241
    .line 242
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    goto :goto_0

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 262
    .line 263
    if-eqz v1, :cond_2

    .line 264
    .line 265
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    const-string/jumbo v1, "writeOwners:"

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    iget-object p0, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 275
    .line 276
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-eqz v1, :cond_2

    .line 285
    .line 286
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    check-cast v1, Lcom/android/server/uri/UriPermissionOwner;

    .line 291
    .line 292
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    goto :goto_1

    .line 311
    :cond_2
    return-void
.end method

.method public final initPersistedModes(IJ)V
    .locals 0

    .line 1
    and-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 4
    .line 5
    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 6
    .line 7
    iput-wide p2, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final releasePersistableModes(I)Z
    .locals 3

    .line 1
    and-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 4
    .line 5
    not-int p1, p1

    .line 6
    and-int/2addr p1, v0

    .line 7
    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-wide/high16 v1, -0x8000000000000000L

    .line 12
    .line 13
    iput-wide v1, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 16
    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 19
    .line 20
    if-eq p0, v0, :cond_1

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    :goto_0
    return p0
.end method

.method public final removeReadOwner(Lcom/android/server/uri/UriPermissionOwner;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 22
    .line 23
    iget p1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 24
    .line 25
    and-int/lit8 p1, p1, -0x2

    .line 26
    .line 27
    iput p1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void

    .line 33
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "Unknown read owner "

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, " in "

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string p1, "UriPermission"

    .line 56
    .line 57
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final removeWriteOwner(Lcom/android/server/uri/UriPermissionOwner;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 22
    .line 23
    iget p1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 24
    .line 25
    and-int/lit8 p1, p1, -0x3

    .line 26
    .line 27
    iput p1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void

    .line 33
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "Unknown write owner "

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, " in "

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string p1, "UriPermission"

    .line 56
    .line 57
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final revokeModes(IZ)Z
    .locals 8

    .line 1
    and-int/lit8 v0, p1, 0x40

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    iget v3, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 11
    .line 12
    and-int/lit8 v4, p1, 0x1

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    if-eqz v4, :cond_5

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget v4, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 20
    .line 21
    and-int/lit8 v4, v4, -0x2

    .line 22
    .line 23
    iput v4, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 24
    .line 25
    and-int/lit8 v4, v3, -0x2

    .line 26
    .line 27
    iput v4, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 28
    .line 29
    :cond_1
    iget v4, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    .line 30
    .line 31
    and-int/lit8 v4, v4, -0x2

    .line 32
    .line 33
    iput v4, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    .line 34
    .line 35
    iget-object v4, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 36
    .line 37
    if-eqz v4, :cond_5

    .line 38
    .line 39
    if-eqz p2, :cond_5

    .line 40
    .line 41
    iget v6, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 42
    .line 43
    and-int/lit8 v6, v6, -0x2

    .line 44
    .line 45
    iput v6, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_4

    .line 56
    .line 57
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    check-cast v6, Lcom/android/server/uri/UriPermissionOwner;

    .line 62
    .line 63
    if-eqz v6, :cond_2

    .line 64
    .line 65
    monitor-enter v6

    .line 66
    :try_start_0
    iget-object v7, v6, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 67
    .line 68
    if-eqz v7, :cond_3

    .line 69
    .line 70
    invoke-virtual {v7, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    iget-object v7, v6, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 74
    .line 75
    invoke-virtual {v7}, Landroid/util/ArraySet;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-eqz v7, :cond_3

    .line 80
    .line 81
    iput-object v5, v6, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto :goto_3

    .line 86
    :cond_3
    :goto_2
    monitor-exit v6

    .line 87
    goto :goto_1

    .line 88
    :goto_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p0

    .line 90
    :cond_4
    iput-object v5, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 91
    .line 92
    :cond_5
    and-int/lit8 p1, p1, 0x2

    .line 93
    .line 94
    if-eqz p1, :cond_a

    .line 95
    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    iget p1, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 99
    .line 100
    and-int/lit8 p1, p1, -0x3

    .line 101
    .line 102
    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 103
    .line 104
    iget p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 105
    .line 106
    and-int/lit8 p1, p1, -0x3

    .line 107
    .line 108
    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 109
    .line 110
    :cond_6
    iget p1, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    .line 111
    .line 112
    and-int/lit8 p1, p1, -0x3

    .line 113
    .line 114
    iput p1, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    .line 115
    .line 116
    iget-object p1, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 117
    .line 118
    if-eqz p1, :cond_a

    .line 119
    .line 120
    if-eqz p2, :cond_a

    .line 121
    .line 122
    iget p2, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 123
    .line 124
    and-int/lit8 p2, p2, -0x3

    .line 125
    .line 126
    iput p2, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-eqz p2, :cond_9

    .line 137
    .line 138
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    check-cast p2, Lcom/android/server/uri/UriPermissionOwner;

    .line 143
    .line 144
    if-eqz p2, :cond_7

    .line 145
    .line 146
    monitor-enter p2

    .line 147
    :try_start_1
    iget-object v0, p2, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 148
    .line 149
    if-eqz v0, :cond_8

    .line 150
    .line 151
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    iget-object v0, p2, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 155
    .line 156
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_8

    .line 161
    .line 162
    iput-object v5, p2, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :catchall_1
    move-exception p0

    .line 166
    goto :goto_6

    .line 167
    :cond_8
    :goto_5
    monitor-exit p2

    .line 168
    goto :goto_4

    .line 169
    :goto_6
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    throw p0

    .line 171
    :cond_9
    iput-object v5, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 172
    .line 173
    :cond_a
    iget p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 174
    .line 175
    if-nez p1, :cond_b

    .line 176
    .line 177
    const-wide/high16 p1, -0x8000000000000000L

    .line 178
    .line 179
    iput-wide p1, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    .line 180
    .line 181
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 182
    .line 183
    .line 184
    iget p0, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 185
    .line 186
    if-eq p0, v3, :cond_c

    .line 187
    .line 188
    move v1, v2

    .line 189
    :cond_c
    return v1
.end method

.method public final takePersistableModes(I)Z
    .locals 4

    .line 1
    and-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 4
    .line 5
    and-int/2addr v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "Requested flags 0x"

    .line 12
    .line 13
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v2, ", but only 0x"

    .line 17
    .line 18
    invoke-static {p1, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget p0, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 22
    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p0, " are allowed"

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string p1, "UriPermission"

    .line 40
    .line 41
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return v1

    .line 45
    :cond_0
    iget p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 46
    .line 47
    or-int/2addr v0, p1

    .line 48
    iput v0, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    iput-wide v2, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    .line 57
    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 59
    .line 60
    .line 61
    iget p0, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 62
    .line 63
    if-eq p0, p1, :cond_2

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    :cond_2
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->stringName:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/16 v0, 0x80

    .line 7
    .line 8
    const-string v1, "UriPermission{"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/16 v1, 0x7d

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/android/server/uri/UriPermission;->stringName:Ljava/lang/String;

    .line 45
    .line 46
    return-object v0
.end method

.method public final updateModeFlags()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    .line 6
    .line 7
    or-int/2addr v1, v2

    .line 8
    iget v2, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 9
    .line 10
    or-int/2addr v1, v2

    .line 11
    iput v1, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    const-string v2, "UriPermission"

    .line 15
    .line 16
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget v1, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    .line 23
    .line 24
    if-eq v1, v0, :cond_0

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, "Permission for "

    .line 29
    .line 30
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v3, " to "

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v3, p0, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v3, " is changing from 0x"

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, " to 0x"

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget p0, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    .line 66
    .line 67
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p0, " via calling UID "

    .line 75
    .line 76
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p0, " PID "

    .line 87
    .line 88
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    new-instance v0, Ljava/lang/Throwable;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-static {v2, p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .line 109
    .line 110
    :cond_0
    return-void
.end method
