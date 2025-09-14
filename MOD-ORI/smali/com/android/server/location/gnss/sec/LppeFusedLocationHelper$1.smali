.class public final Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 6
    .line 7
    iget-boolean v2, v2, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsFlpRequested:Z

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string/jumbo v3, "fused"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_a

    .line 24
    .line 25
    const-string v2, "LPPeFusedLocationListener : FUSED_PROVIDER"

    .line 26
    .line 27
    const-string v3, "LocationX"

    .line 28
    .line 29
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object v2, v0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    const-string v4, "LPPe handleUpdateLPPeFLPLocation"

    .line 38
    .line 39
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const/4 v5, 0x0

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    const/4 v4, 0x2

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v4, v5

    .line 52
    :goto_0
    or-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_2

    .line 59
    .line 60
    const/4 v6, 0x4

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move v6, v5

    .line 63
    :goto_1
    or-int/2addr v4, v6

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_3

    .line 69
    .line 70
    const/16 v6, 0x8

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    move v6, v5

    .line 74
    :goto_2
    or-int/2addr v4, v6

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_4

    .line 80
    .line 81
    const/16 v6, 0x10

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    move v6, v5

    .line 85
    :goto_3
    or-int/2addr v4, v6

    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    const/16 v7, 0x20

    .line 91
    .line 92
    if-eqz v6, :cond_5

    .line 93
    .line 94
    move v6, v7

    .line 95
    goto :goto_4

    .line 96
    :cond_5
    move v6, v5

    .line 97
    :goto_4
    or-int/2addr v4, v6

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-eqz v6, :cond_6

    .line 103
    .line 104
    const/16 v6, 0x40

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_6
    move v6, v5

    .line 108
    :goto_5
    or-int/2addr v4, v6

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearingAccuracy()Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-eqz v6, :cond_7

    .line 114
    .line 115
    const/16 v6, 0x80

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_7
    move v6, v5

    .line 119
    :goto_6
    or-int/2addr v4, v6

    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v8, " location total flag : "

    .line 123
    .line 124
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-nez v6, :cond_9

    .line 142
    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-eqz v6, :cond_8

    .line 148
    .line 149
    const/high16 v6, 0x42c80000    # 100.0f

    .line 150
    .line 151
    invoke-virtual {v1, v6}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    .line 152
    .line 153
    .line 154
    goto :goto_7

    .line 155
    :cond_8
    const-wide v8, 0x4133880000000000L    # 1280000.0

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v8, v9}, Landroid/location/Location;->setAltitude(D)V

    .line 161
    .line 162
    .line 163
    or-int/lit8 v4, v4, 0x2

    .line 164
    .line 165
    const/high16 v6, 0x437f0000    # 255.0f

    .line 166
    .line 167
    invoke-virtual {v1, v6}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    .line 168
    .line 169
    .line 170
    :goto_7
    or-int/2addr v4, v7

    .line 171
    :cond_9
    move v7, v4

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string v6, " Vertical Accuracy : "

    .line 175
    .line 176
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v6, ", Horizontal Accuracy : "

    .line 187
    .line 188
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    .line 206
    .line 207
    .line 208
    move-result-wide v8

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    .line 210
    .line 211
    .line 212
    move-result-wide v10

    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    .line 214
    .line 215
    .line 216
    move-result-wide v12

    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    .line 218
    .line 219
    .line 220
    move-result v14

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    .line 222
    .line 223
    .line 224
    move-result v15

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    .line 226
    .line 227
    .line 228
    move-result v16

    .line 229
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    .line 230
    .line 231
    .line 232
    move-result v17

    .line 233
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    .line 234
    .line 235
    .line 236
    move-result v18

    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    .line 238
    .line 239
    .line 240
    move-result v19

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    .line 242
    .line 243
    .line 244
    move-result-wide v20

    .line 245
    iget-object v6, v2, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 246
    .line 247
    invoke-virtual/range {v6 .. v21}, Lcom/android/server/location/gnss/hal/GnssNative;->injectFlpLocation(IDDDFFFFFFJ)V

    .line 248
    .line 249
    .line 250
    iput-boolean v5, v2, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsFlpRequested:Z

    .line 251
    .line 252
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 253
    .line 254
    iget-object v2, v1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mFlpTimeout:Ljava/lang/Runnable;

    .line 255
    .line 256
    if-eqz v2, :cond_a

    .line 257
    .line 258
    iget-object v1, v1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mHandler:Landroid/os/Handler;

    .line 259
    .line 260
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 261
    .line 262
    .line 263
    iget-object v0, v0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 264
    .line 265
    const/4 v1, 0x0

    .line 266
    iput-object v1, v0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mFlpTimeout:Ljava/lang/Runnable;

    .line 267
    .line 268
    :cond_a
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
