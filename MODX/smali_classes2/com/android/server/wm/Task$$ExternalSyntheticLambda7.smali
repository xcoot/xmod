.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/TriPredicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p2, Landroid/content/ComponentName;

    .line 9
    .line 10
    check-cast p3, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    iget-boolean p3, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 17
    .line 18
    if-nez p3, :cond_0

    .line 19
    .line 20
    iget-object p3, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 21
    .line 22
    invoke-virtual {p3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 29
    .line 30
    if-ne p1, p0, :cond_0

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    :goto_0
    return p0

    .line 36
    :pswitch_0
    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    .line 37
    .line 38
    check-cast p3, Lcom/android/modules/utils/TypedXmlSerializer;

    .line 39
    .line 40
    const-string p0, "activity"

    .line 41
    .line 42
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 43
    .line 44
    iget v0, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/high16 v2, 0x80000

    .line 62
    .line 63
    and-int/2addr v0, v2

    .line 64
    or-int/lit16 v0, v0, 0x2000

    .line 65
    .line 66
    if-ne v0, v2, :cond_1

    .line 67
    .line 68
    if-eq p1, p2, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const/4 p2, 0x0

    .line 72
    :try_start_0
    invoke-interface {p3, p2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p3}, Lcom/android/server/wm/ActivityRecord;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p3, p2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    goto :goto_1

    .line 83
    :catch_0
    move-exception p0

    .line 84
    sput-object p0, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    .line 85
    .line 86
    :cond_2
    :goto_1
    return v1

    .line 87
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    check-cast p3, Landroid/os/IBinder;

    .line 94
    .line 95
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 96
    .line 97
    iget p2, p2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 98
    .line 99
    if-eq p2, p0, :cond_3

    .line 100
    .line 101
    iget-object p0, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 102
    .line 103
    if-eq p0, p3, :cond_3

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    if-eqz p0, :cond_3

    .line 110
    .line 111
    const/4 p0, 0x1

    .line 112
    goto :goto_2

    .line 113
    :cond_3
    const/4 p0, 0x0

    .line 114
    :goto_2
    return p0

    .line 115
    :pswitch_2
    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    .line 116
    .line 117
    check-cast p3, Landroid/app/ActivityManager$TaskDescription;

    .line 118
    .line 119
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    .line 120
    .line 121
    const/4 v0, 0x0

    .line 122
    const/4 v1, 0x1

    .line 123
    if-nez p0, :cond_e

    .line 124
    .line 125
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 126
    .line 127
    if-eqz p0, :cond_e

    .line 128
    .line 129
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    if-nez v2, :cond_4

    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setLabel(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_4
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    if-nez v2, :cond_5

    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 153
    .line 154
    .line 155
    :cond_5
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    if-nez v2, :cond_6

    .line 160
    .line 161
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :cond_6
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getColorsAreDetermined()Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-nez v2, :cond_e

    .line 173
    .line 174
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-nez v2, :cond_7

    .line 179
    .line 180
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    .line 185
    .line 186
    .line 187
    :cond_7
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-nez v2, :cond_8

    .line 192
    .line 193
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 198
    .line 199
    .line 200
    :cond_8
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-nez v2, :cond_9

    .line 205
    .line 206
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setStatusBarColor(I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureStatusBarContrastWhenTransparent()Z

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setEnsureStatusBarContrastWhenTransparent(Z)V

    .line 218
    .line 219
    .line 220
    :cond_9
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getSystemBarsAppearance()I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-nez v2, :cond_a

    .line 225
    .line 226
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getSystemBarsAppearance()I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setSystemBarsAppearance(I)V

    .line 231
    .line 232
    .line 233
    :cond_a
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getTopOpaqueSystemBarsAppearance()I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-nez v2, :cond_b

    .line 238
    .line 239
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_b

    .line 244
    .line 245
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getSystemBarsAppearance()I

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setTopOpaqueSystemBarsAppearance(I)V

    .line 250
    .line 251
    .line 252
    :cond_b
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    if-nez v2, :cond_c

    .line 257
    .line 258
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setNavigationBarColor(I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureNavigationBarContrastWhenTransparent()Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setEnsureNavigationBarContrastWhenTransparent(Z)V

    .line 270
    .line 271
    .line 272
    :cond_c
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    if-nez v2, :cond_d

    .line 277
    .line 278
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    .line 279
    .line 280
    .line 281
    move-result p0

    .line 282
    invoke-virtual {p3, p0}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColorFloating(I)V

    .line 283
    .line 284
    .line 285
    :cond_d
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 286
    .line 287
    .line 288
    move-result p0

    .line 289
    if-eqz p0, :cond_e

    .line 290
    .line 291
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->setColorsAreDetermined()V

    .line 292
    .line 293
    .line 294
    :cond_e
    if-ne p1, p2, :cond_f

    .line 295
    .line 296
    move v0, v1

    .line 297
    :cond_f
    return v0

    .line 298
    nop

    .line 299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
