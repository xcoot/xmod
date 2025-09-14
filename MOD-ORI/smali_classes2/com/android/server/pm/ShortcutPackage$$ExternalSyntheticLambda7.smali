.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .line 4
    .line 5
    check-cast p2, Landroid/content/pm/ShortcutInfo;

    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eq p0, v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    const/4 p0, -0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 p0, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    :goto_0
    return p0

    .line 73
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    const/4 v0, -0x1

    .line 78
    if-eqz p0, :cond_4

    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-nez p0, :cond_4

    .line 85
    .line 86
    goto/16 :goto_2

    .line 87
    .line 88
    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    const/4 v1, 0x1

    .line 93
    if-nez p0, :cond_5

    .line 94
    .line 95
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-eqz p0, :cond_5

    .line 100
    .line 101
    :goto_1
    move v0, v1

    .line 102
    goto/16 :goto_2

    .line 103
    .line 104
    :cond_5
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    if-eqz p0, :cond_6

    .line 109
    .line 110
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    if-eqz p0, :cond_6

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    goto/16 :goto_2

    .line 129
    .line 130
    :cond_6
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    if-eqz p0, :cond_7

    .line 135
    .line 136
    goto/16 :goto_2

    .line 137
    .line 138
    :cond_7
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    if-eqz p0, :cond_8

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_8
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    if-eqz p0, :cond_c

    .line 150
    .line 151
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    if-eqz p0, :cond_c

    .line 156
    .line 157
    const/high16 p0, 0x20000000

    .line 158
    .line 159
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_9

    .line 164
    .line 165
    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-nez v2, :cond_9

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_9
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-nez v2, :cond_a

    .line 177
    .line 178
    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    if-eqz p0, :cond_a

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_a
    const/high16 p0, 0x40000000    # 2.0f

    .line 186
    .line 187
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-eqz v2, :cond_b

    .line 192
    .line 193
    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-nez v2, :cond_b

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_b
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-nez v2, :cond_c

    .line 205
    .line 206
    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    if-eqz p0, :cond_c

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_c
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    if-eqz p0, :cond_d

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_d
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    if-eqz p0, :cond_e

    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_e
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    .line 228
    .line 229
    .line 230
    move-result-wide v0

    .line 231
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    .line 232
    .line 233
    .line 234
    move-result-wide p0

    .line 235
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    :goto_2
    return v0

    .line 240
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    .line 241
    .line 242
    .line 243
    move-result p0

    .line 244
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    .line 249
    .line 250
    .line 251
    move-result p0

    .line 252
    return p0

    .line 253
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    .line 254
    .line 255
    .line 256
    move-result p0

    .line 257
    if-eqz p0, :cond_f

    .line 258
    .line 259
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    .line 260
    .line 261
    .line 262
    move-result p0

    .line 263
    if-nez p0, :cond_f

    .line 264
    .line 265
    const/4 p0, -0x1

    .line 266
    goto :goto_3

    .line 267
    :cond_f
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    .line 268
    .line 269
    .line 270
    move-result p0

    .line 271
    if-nez p0, :cond_10

    .line 272
    .line 273
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    .line 274
    .line 275
    .line 276
    move-result p0

    .line 277
    if-eqz p0, :cond_10

    .line 278
    .line 279
    const/4 p0, 0x1

    .line 280
    goto :goto_3

    .line 281
    :cond_10
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    .line 282
    .line 283
    .line 284
    move-result p0

    .line 285
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    .line 290
    .line 291
    .line 292
    move-result p0

    .line 293
    :goto_3
    return p0

    .line 294
    nop

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
