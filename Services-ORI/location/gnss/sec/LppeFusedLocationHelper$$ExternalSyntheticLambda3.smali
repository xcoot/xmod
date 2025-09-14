.class public final synthetic Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

.field public final synthetic f$1:D

.field public final synthetic f$2:D


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;DDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda3;->f$1:D

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda3;->f$2:D

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 4
    .line 5
    iget-wide v3, v0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda3;->f$1:D

    .line 6
    .line 7
    iget-wide v5, v0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda3;->f$2:D

    .line 8
    .line 9
    iget-boolean v0, v1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsCivicAddressRequested:Z

    .line 10
    .line 11
    if-eqz v0, :cond_f

    .line 12
    .line 13
    const-string/jumbo v0, "requestCivicAddress"

    .line 14
    .line 15
    .line 16
    const-string v8, "LocationX"

    .line 17
    .line 18
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    new-instance v2, Landroid/location/Geocoder;

    .line 22
    .line 23
    iget-object v0, v1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-direct {v2, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    const/4 v7, 0x1

    .line 29
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    move-object v2, v0

    .line 36
    const-string v0, "Latitude/Longitude are invalid."

    .line 37
    .line 38
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_1
    move-exception v0

    .line 46
    move-object v2, v0

    .line 47
    const-string v0, "Couldn\'t get Address from location."

    .line 48
    .line 49
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :goto_0
    const/4 v0, 0x0

    .line 56
    :goto_1
    const/4 v2, 0x0

    .line 57
    if-eqz v0, :cond_e

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_0

    .line 64
    .line 65
    goto/16 :goto_e

    .line 66
    .line 67
    :cond_0
    iget-object v3, v1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mHandler:Landroid/os/Handler;

    .line 68
    .line 69
    iget-object v4, v1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mCivicAddressTimeout:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda3;

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroid/location/Address;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    const-string v4, ""

    .line 85
    .line 86
    if-eqz v3, :cond_1

    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    move-object v6, v3

    .line 93
    goto :goto_2

    .line 94
    :cond_1
    move-object v6, v4

    .line 95
    :goto_2
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    if-eqz v3, :cond_2

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    move-object v7, v3

    .line 106
    goto :goto_3

    .line 107
    :cond_2
    move-object v7, v4

    .line 108
    :goto_3
    invoke-virtual {v0}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    if-eqz v3, :cond_3

    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    move-object v8, v3

    .line 119
    goto :goto_4

    .line 120
    :cond_3
    move-object v8, v4

    .line 121
    :goto_4
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    if-eqz v3, :cond_4

    .line 126
    .line 127
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    move-object v9, v3

    .line 132
    goto :goto_5

    .line 133
    :cond_4
    move-object v9, v4

    .line 134
    :goto_5
    invoke-virtual {v0}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    if-eqz v3, :cond_5

    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    move-object v10, v3

    .line 145
    goto :goto_6

    .line 146
    :cond_5
    move-object v10, v4

    .line 147
    :goto_6
    invoke-virtual {v0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    if-eqz v3, :cond_6

    .line 152
    .line 153
    invoke-virtual {v0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    move-object v11, v3

    .line 158
    goto :goto_7

    .line 159
    :cond_6
    move-object v11, v4

    .line 160
    :goto_7
    invoke-virtual {v0}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    if-eqz v3, :cond_7

    .line 165
    .line 166
    invoke-virtual {v0}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    move-object v12, v3

    .line 171
    goto :goto_8

    .line 172
    :cond_7
    move-object v12, v4

    .line 173
    :goto_8
    invoke-virtual {v0}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    if-eqz v3, :cond_8

    .line 178
    .line 179
    invoke-virtual {v0}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    move-object v13, v3

    .line 184
    goto :goto_9

    .line 185
    :cond_8
    move-object v13, v4

    .line 186
    :goto_9
    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    if-eqz v3, :cond_9

    .line 191
    .line 192
    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    move-object v14, v3

    .line 197
    goto :goto_a

    .line 198
    :cond_9
    move-object v14, v4

    .line 199
    :goto_a
    invoke-virtual {v0}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    if-eqz v3, :cond_a

    .line 208
    .line 209
    invoke-virtual {v0}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    move-object v15, v3

    .line 218
    goto :goto_b

    .line 219
    :cond_a
    move-object v15, v4

    .line 220
    :goto_b
    invoke-virtual {v0}, Landroid/location/Address;->getPremises()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    if-eqz v3, :cond_b

    .line 225
    .line 226
    invoke-virtual {v0}, Landroid/location/Address;->getPremises()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    move-object/from16 v16, v3

    .line 231
    .line 232
    goto :goto_c

    .line 233
    :cond_b
    move-object/from16 v16, v4

    .line 234
    .line 235
    :goto_c
    invoke-virtual {v0}, Landroid/location/Address;->hasLatitude()Z

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    if-eqz v3, :cond_c

    .line 240
    .line 241
    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    .line 242
    .line 243
    .line 244
    move-result-wide v17

    .line 245
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    move-object/from16 v17, v3

    .line 250
    .line 251
    goto :goto_d

    .line 252
    :cond_c
    move-object/from16 v17, v4

    .line 253
    .line 254
    :goto_d
    invoke-virtual {v0}, Landroid/location/Address;->hasLongitude()Z

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    if-eqz v3, :cond_d

    .line 259
    .line 260
    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    .line 261
    .line 262
    .line 263
    move-result-wide v3

    .line 264
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    :cond_d
    move-object/from16 v18, v4

    .line 269
    .line 270
    iget-object v5, v1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 271
    .line 272
    invoke-virtual/range {v5 .. v18}, Lcom/android/server/location/gnss/hal/GnssNative;->injectCivicAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    :cond_e
    :goto_e
    iput-boolean v2, v1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsCivicAddressRequested:Z

    .line 276
    .line 277
    :cond_f
    return-void
.end method
