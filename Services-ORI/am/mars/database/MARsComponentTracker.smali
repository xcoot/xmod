.class public final Lcom/android/server/am/mars/database/MARsComponentTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public isEnabledCT:Z


# direct methods
.method public static sendCTInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x7

    .line 8
    const/4 v4, 0x6

    .line 9
    const/4 v5, 0x5

    .line 10
    const/4 v6, 0x4

    .line 11
    const/4 v7, 0x3

    .line 12
    const/4 v8, 0x2

    .line 13
    const/4 v9, -0x1

    .line 14
    const/4 v10, 0x0

    .line 15
    const/4 v11, 0x1

    .line 16
    const-string v12, "android"

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v13

    .line 24
    if-eqz v13, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v13, v10

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    move v13, v11

    .line 30
    :goto_1
    const-string/jumbo v14, "system"

    .line 31
    .line 32
    .line 33
    if-eqz v13, :cond_2

    .line 34
    .line 35
    move-object/from16 v19, v14

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move-object/from16 v19, v1

    .line 39
    .line 40
    :goto_2
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_3
    move-object/from16 v17, v0

    .line 50
    .line 51
    goto :goto_4

    .line 52
    :cond_4
    :goto_3
    move-object/from16 v17, v14

    .line 53
    .line 54
    :goto_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    sparse-switch v0, :sswitch_data_0

    .line 62
    .line 63
    .line 64
    :goto_5
    move v0, v9

    .line 65
    goto/16 :goto_6

    .line 66
    .line 67
    :sswitch_0
    const-string/jumbo v0, "startService"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_5

    .line 75
    .line 76
    goto :goto_5

    .line 77
    :cond_5
    move v0, v3

    .line 78
    goto :goto_6

    .line 79
    :sswitch_1
    const-string v0, "bindService"

    .line 80
    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_6

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_6
    move v0, v4

    .line 89
    goto :goto_6

    .line 90
    :sswitch_2
    const-string v0, "alarm"

    .line 91
    .line 92
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_7

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_7
    move v0, v5

    .line 100
    goto :goto_6

    .line 101
    :sswitch_3
    const-string/jumbo v0, "job"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_8

    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_8
    move v0, v6

    .line 112
    goto :goto_6

    .line 113
    :sswitch_4
    const-string/jumbo v0, "provider"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_9

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_9
    move v0, v7

    .line 124
    goto :goto_6

    .line 125
    :sswitch_5
    const-string v0, "backup"

    .line 126
    .line 127
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-nez v0, :cond_a

    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_a
    move v0, v8

    .line 135
    goto :goto_6

    .line 136
    :sswitch_6
    const-string/jumbo v0, "broadcast"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-nez v0, :cond_b

    .line 144
    .line 145
    goto :goto_5

    .line 146
    :cond_b
    move v0, v11

    .line 147
    goto :goto_6

    .line 148
    :sswitch_7
    const-string v0, "activity"

    .line 149
    .line 150
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_c

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_c
    move v0, v10

    .line 158
    :goto_6
    packed-switch v0, :pswitch_data_0

    .line 159
    .line 160
    .line 161
    move/from16 v20, v9

    .line 162
    .line 163
    goto :goto_7

    .line 164
    :pswitch_0
    move/from16 v20, v11

    .line 165
    .line 166
    goto :goto_7

    .line 167
    :pswitch_1
    move/from16 v20, v8

    .line 168
    .line 169
    goto :goto_7

    .line 170
    :pswitch_2
    move/from16 v20, v4

    .line 171
    .line 172
    goto :goto_7

    .line 173
    :pswitch_3
    move/from16 v20, v3

    .line 174
    .line 175
    goto :goto_7

    .line 176
    :pswitch_4
    move/from16 v20, v7

    .line 177
    .line 178
    goto :goto_7

    .line 179
    :pswitch_5
    move/from16 v20, v5

    .line 180
    .line 181
    goto :goto_7

    .line 182
    :pswitch_6
    move/from16 v20, v6

    .line 183
    .line 184
    goto :goto_7

    .line 185
    :pswitch_7
    move/from16 v20, v10

    .line 186
    .line 187
    :goto_7
    const v15, 0x18768

    .line 188
    .line 189
    .line 190
    move/from16 v16, p3

    .line 191
    .line 192
    move/from16 v18, p5

    .line 193
    .line 194
    move-object/from16 v21, p4

    .line 195
    .line 196
    move-object/from16 v22, p6

    .line 197
    .line 198
    invoke-static/range {v15 .. v22}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    nop

    .line 203
    :sswitch_data_0
    .sparse-switch
        -0x62b40cf1 -> :sswitch_7
        -0x607e173f -> :sswitch_6
        -0x533f8a3e -> :sswitch_5
        -0x3adbfa0f -> :sswitch_4
        0x19bbd -> :sswitch_3
        0x5897a51 -> :sswitch_2
        0x54856bb8 -> :sswitch_1
        0x6e4047f3 -> :sswitch_0
    .end sparse-switch

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    :pswitch_data_0
    .packed-switch 0x0
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
