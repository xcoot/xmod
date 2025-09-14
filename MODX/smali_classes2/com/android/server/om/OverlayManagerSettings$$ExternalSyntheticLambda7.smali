.class public final synthetic Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/om/OverlayManagerSettings;

.field public final synthetic f$1:Lcom/android/internal/util/IndentingPrintWriter;

.field public final synthetic f$2:Lcom/android/server/om/DumpState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/om/DumpState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/om/OverlayManagerSettings;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda7;->f$1:Lcom/android/internal/util/IndentingPrintWriter;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda7;->f$2:Lcom/android/server/om/DumpState;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/om/OverlayManagerSettings;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda7;->f$1:Lcom/android/internal/util/IndentingPrintWriter;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda7;->f$2:Lcom/android/server/om/DumpState;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/om/DumpState;->mField:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    sparse-switch v2, :sswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :sswitch_0
    const-string v2, "basecodepath"

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_0

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_0
    const/16 v0, 0xa

    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :sswitch_1
    const-string/jumbo v2, "packagename"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_1

    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :cond_1
    const/16 v0, 0x9

    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :sswitch_2
    const-string v2, "isenabled"

    .line 57
    .line 58
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-nez p0, :cond_2

    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :cond_2
    const/16 v0, 0x8

    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :sswitch_3
    const-string/jumbo v2, "state"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_3

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    const/4 v0, 0x7

    .line 81
    goto :goto_0

    .line 82
    :sswitch_4
    const-string v2, "category"

    .line 83
    .line 84
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-nez p0, :cond_4

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    const/4 v0, 0x6

    .line 92
    goto :goto_0

    .line 93
    :sswitch_5
    const-string/jumbo v2, "overlayname"

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-nez p0, :cond_5

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_5
    const/4 v0, 0x5

    .line 104
    goto :goto_0

    .line 105
    :sswitch_6
    const-string v2, "ismutable"

    .line 106
    .line 107
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-nez p0, :cond_6

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_6
    const/4 v0, 0x4

    .line 115
    goto :goto_0

    .line 116
    :sswitch_7
    const-string/jumbo v2, "userid"

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-nez p0, :cond_7

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_7
    const/4 v0, 0x3

    .line 127
    goto :goto_0

    .line 128
    :sswitch_8
    const-string/jumbo v2, "priority"

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-nez p0, :cond_8

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_8
    const/4 v0, 0x2

    .line 139
    goto :goto_0

    .line 140
    :sswitch_9
    const-string/jumbo v2, "targetpackagename"

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    if-nez p0, :cond_9

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_9
    const/4 v0, 0x1

    .line 151
    goto :goto_0

    .line 152
    :sswitch_a
    const-string/jumbo v2, "targetoverlayablename"

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    if-nez p0, :cond_a

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_a
    const/4 v0, 0x0

    .line 163
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :pswitch_0
    iget-object p0, p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :pswitch_1
    iget-object p0, p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    .line 174
    .line 175
    invoke-virtual {p0}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {v1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :pswitch_2
    iget-boolean p0, p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    .line 184
    .line 185
    invoke-virtual {v1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :pswitch_3
    iget p0, p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    .line 190
    .line 191
    invoke-static {p0}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-virtual {v1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :pswitch_4
    iget-object p0, p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :pswitch_5
    iget-object p0, p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    invoke-virtual {v1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :pswitch_6
    iget-boolean p0, p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsMutable:Z

    .line 216
    .line 217
    invoke-virtual {v1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 218
    .line 219
    .line 220
    goto :goto_1

    .line 221
    :pswitch_7
    iget p0, p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    .line 222
    .line 223
    invoke-virtual {v1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :pswitch_8
    iget p0, p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    .line 228
    .line 229
    invoke-virtual {v1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 230
    .line 231
    .line 232
    goto :goto_1

    .line 233
    :pswitch_9
    iget-object p0, p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {v1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    goto :goto_1

    .line 239
    :pswitch_a
    iget-object p0, p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetOverlayableName:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    :goto_1
    return-void

    .line 245
    :sswitch_data_0
    .sparse-switch
        -0x685a1e7c -> :sswitch_a
        -0x4a674a60 -> :sswitch_9
        -0x4577865c -> :sswitch_8
        -0x31d4cdda -> :sswitch_7
        -0x3188d944 -> :sswitch_6
        -0x1832e925 -> :sswitch_5
        0x302bcfe -> :sswitch_4
        0x68ac491 -> :sswitch_3
        0x1a483ad7 -> :sswitch_2
        0x36391bd1 -> :sswitch_1
        0x64f6f963 -> :sswitch_0
    .end sparse-switch

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
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
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
