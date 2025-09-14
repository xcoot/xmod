.class public final Lcom/android/server/alarm/AppSyncInfo$PackageList;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPackageSet:Ljava/util/HashSet;

.field public final mRegExpList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mPackageSet:Ljava/util/HashSet;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mRegExpList:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "*"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mRegExpList:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mRegExpList:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mPackageSet:Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mPackageSet:Ljava/util/HashSet;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method public final contains(Ljava/lang/String;)Z
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mPackageSet:Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mRegExpList:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    :cond_2
    return v0
.end method

.method public final loadAppSync3PlusBlockList()V
    .locals 8

    .line 1
    const-string v0, ".*reminder.*"

    .line 2
    .line 3
    const-string v1, ".*alert.*"

    .line 4
    .line 5
    const-string/jumbo v2, "com.sec.screencheck"

    .line 6
    .line 7
    .line 8
    const-string/jumbo v3, "com.sec.dsm.system"

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v0, "com.samsung.android.fmm"

    .line 15
    .line 16
    .line 17
    const-string/jumbo v1, "com.samsung.ssd.wolfserver"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v2, "ch.bitspin.timely"

    .line 21
    .line 22
    .line 23
    const-string/jumbo v3, "com.nhn.android.nmap"

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string/jumbo v0, "com.qihoo.security"

    .line 30
    .line 31
    .line 32
    const-string v1, ".*vodafone.*"

    .line 33
    .line 34
    const-string/jumbo v2, "com.blackberry.enterprise.bscp.*"

    .line 35
    .line 36
    .line 37
    const-string/jumbo v3, "com.google.android.ims"

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string/jumbo v0, "com.google.android.apps.messaging"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v0, ".*vzw.*"

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v0, ".*verizon.*"

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-boolean v0, Lcom/android/server/alarm/AppSyncInfo$Sales;->VZW:Z

    .line 60
    .line 61
    const-string/jumbo v1, "com.cequint.ecid"

    .line 62
    .line 63
    .line 64
    const-string/jumbo v2, "com.LogiaGroup.LogiaDeck"

    .line 65
    .line 66
    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    const-string v0, ".*amazon.*"

    .line 70
    .line 71
    const-string/jumbo v3, "com.audible.application"

    .line 72
    .line 73
    .line 74
    const-string/jumbo v4, "com.imdb.mobile"

    .line 75
    .line 76
    .line 77
    const-string/jumbo v5, "com.amazon.fv"

    .line 78
    .line 79
    .line 80
    invoke-static {p0, v0, v3, v4, v5}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string/jumbo v0, "com.gotv.nflgamecenter.us.lite"

    .line 84
    .line 85
    .line 86
    const-string/jumbo v3, "com.slacker.radio"

    .line 87
    .line 88
    .line 89
    const-string/jumbo v4, "com.telecomsys.directedsms.android.SCG"

    .line 90
    .line 91
    .line 92
    invoke-static {p0, v0, v3, v4, v2}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string/jumbo v0, "com.vznavigator.Generic"

    .line 96
    .line 97
    .line 98
    const-string/jumbo v3, "com.vcast.mediamanager"

    .line 99
    .line 100
    .line 101
    const-string/jumbo v4, "com.sec.android.app.cmas"

    .line 102
    .line 103
    .line 104
    invoke-static {p0, v0, v1, v3, v4}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string/jumbo v0, "com.samsung.spg"

    .line 108
    .line 109
    .line 110
    const-string/jumbo v3, "com.sec.android.app.setupwizard"

    .line 111
    .line 112
    .line 113
    const-string/jumbo v4, "com.samsung.vvm"

    .line 114
    .line 115
    .line 116
    const-string/jumbo v5, "com.samsung.carrier.logcollector"

    .line 117
    .line 118
    .line 119
    invoke-static {p0, v0, v3, v4, v5}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string/jumbo v0, "com.samsung.sdm"

    .line 123
    .line 124
    .line 125
    const-string/jumbo v3, "com.samsung.syncmlservice"

    .line 126
    .line 127
    .line 128
    const-string/jumbo v4, "com.samsung.syncmlphonedataservice"

    .line 129
    .line 130
    .line 131
    const-string/jumbo v5, "com.samsung.sdm.sdmviewer"

    .line 132
    .line 133
    .line 134
    invoke-static {p0, v0, v3, v4, v5}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string/jumbo v0, "com.samsung.PAYGPrePayDetection"

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string/jumbo v0, "com.fusionone.android.sync.vzbuaclient"

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_0
    const-string v0, ".*att.*"

    .line 150
    .line 151
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const-string v0, ".*mizmowireless.*"

    .line 155
    .line 156
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    sget-boolean v0, Lcom/android/server/alarm/AppSyncInfo$Sales;->ATT:Z

    .line 160
    .line 161
    if-eqz v0, :cond_1

    .line 162
    .line 163
    const-string/jumbo v0, "com.welldoc.diabetesmanager"

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const-string/jumbo v0, "deezer.android.app"

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_1
    const-string v0, ".*sprint.*"

    .line 176
    .line 177
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    sget-boolean v0, Lcom/android/server/alarm/AppSyncInfo$Sales;->SPR:Z

    .line 181
    .line 182
    const-string/jumbo v3, "com.lookout"

    .line 183
    .line 184
    .line 185
    const-string/jumbo v4, "com.amazon.mShop.android"

    .line 186
    .line 187
    .line 188
    if-eqz v0, :cond_2

    .line 189
    .line 190
    const-string/jumbo v0, "com.airg"

    .line 191
    .line 192
    .line 193
    const-string/jumbo v5, "com.amazon.mShop"

    .line 194
    .line 195
    .line 196
    const-string/jumbo v6, "com.amazon.avod.thirdpartyclient"

    .line 197
    .line 198
    .line 199
    invoke-static {p0, v0, v5, v4, v6}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    const-string/jumbo v0, "com.amazon.mp3"

    .line 203
    .line 204
    .line 205
    const-string/jumbo v5, "com.amazon.clouddrive.photos"

    .line 206
    .line 207
    .line 208
    const-string/jumbo v6, "com.boostmobile.boosttv"

    .line 209
    .line 210
    .line 211
    const-string/jumbo v7, "com.coremobility.app.vnotes"

    .line 212
    .line 213
    .line 214
    invoke-static {p0, v0, v5, v6, v7}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    const-string/jumbo v0, "com.ebay.mobile"

    .line 218
    .line 219
    .line 220
    const-string/jumbo v5, "com.familyandco.framilywall"

    .line 221
    .line 222
    .line 223
    const-string/jumbo v6, "com.handmark.expressweather"

    .line 224
    .line 225
    .line 226
    const-string/jumbo v7, "com.itsoninc.android.itsonclient"

    .line 227
    .line 228
    .line 229
    invoke-static {p0, v0, v5, v6, v7}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    const-string/jumbo v0, "com.itsoninc.android.itsonservice"

    .line 233
    .line 234
    .line 235
    const-string/jumbo v5, "com.itsoninc.android.uid"

    .line 236
    .line 237
    .line 238
    const-string/jumbo v6, "com.kineto.smartwifi"

    .line 239
    .line 240
    .line 241
    const-string/jumbo v7, "com.livewiremobile.musicstore.boost"

    .line 242
    .line 243
    .line 244
    invoke-static {p0, v0, v5, v6, v7}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    const-string/jumbo v0, "com.locationlabs.sparkle.yellow.pre"

    .line 248
    .line 249
    .line 250
    const-string/jumbo v5, "com.nascar.nascarmobile"

    .line 251
    .line 252
    .line 253
    const-string/jumbo v6, "com.nbadigital.gametimelite"

    .line 254
    .line 255
    .line 256
    invoke-static {p0, v0, v3, v5, v6}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const-string/jumbo v0, "com.nextradioapp.nextradio"

    .line 260
    .line 261
    .line 262
    const-string/jumbo v5, "com.oem.smartwifisupport"

    .line 263
    .line 264
    .line 265
    const-string/jumbo v6, "com.pinsight.v1"

    .line 266
    .line 267
    .line 268
    const-string/jumbo v7, "com.smithmicro.EDM"

    .line 269
    .line 270
    .line 271
    invoke-static {p0, v0, v5, v6, v7}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    const-string/jumbo v0, "com.smithmicro.mnd"

    .line 275
    .line 276
    .line 277
    const-string/jumbo v5, "com.soleo.numbersearch"

    .line 278
    .line 279
    .line 280
    const-string/jumbo v6, "com.spotify.music"

    .line 281
    .line 282
    .line 283
    const-string/jumbo v7, "com.telenav.app.android.scout_us"

    .line 284
    .line 285
    .line 286
    invoke-static {p0, v0, v5, v6, v7}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    const-string/jumbo v0, "com.ubercab"

    .line 290
    .line 291
    .line 292
    const-string/jumbo v5, "com.wipit.android.boostwallet"

    .line 293
    .line 294
    .line 295
    const-string/jumbo v6, "msgplus.jibe.sca"

    .line 296
    .line 297
    .line 298
    const-string/jumbo v7, "com.privacystar.android.spg"

    .line 299
    .line 300
    .line 301
    invoke-static {p0, v0, v5, v6, v7}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    const-string/jumbo v0, "com.playphone.gamestore"

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    const-string/jumbo v0, "com.livewiremobile.musicstore.vmu"

    .line 311
    .line 312
    .line 313
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    :cond_2
    const-string v0, ".*tmobile.*"

    .line 317
    .line 318
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    sget-boolean v0, Lcom/android/server/alarm/AppSyncInfo$Sales;->TMO:Z

    .line 322
    .line 323
    if-eqz v0, :cond_3

    .line 324
    .line 325
    invoke-virtual {p0, v4}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    const-string/jumbo v0, "com.customermobile.preload"

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    :cond_3
    const-string v0, ".*metro.*"

    .line 338
    .line 339
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    sget-boolean v0, Lcom/android/server/alarm/AppSyncInfo$Sales;->MPCS:Z

    .line 343
    .line 344
    if-eqz v0, :cond_4

    .line 345
    .line 346
    const-string/jumbo v0, "com.tmobile.pr.adapt"

    .line 347
    .line 348
    .line 349
    const-string/jumbo v5, "com.mobileposse.client"

    .line 350
    .line 351
    .line 352
    const-string/jumbo v6, "com.sec.tetheringprovision"

    .line 353
    .line 354
    .line 355
    invoke-static {p0, v0, v3, v5, v6}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    :cond_4
    const-string v0, ".*tracfone.*"

    .line 359
    .line 360
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    const-string v0, ".*uscc.*"

    .line 364
    .line 365
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    sget-boolean v0, Lcom/android/server/alarm/AppSyncInfo$Sales;->USCC:Z

    .line 369
    .line 370
    if-eqz v0, :cond_5

    .line 371
    .line 372
    const-string/jumbo v0, "com.synchronoss.sm"

    .line 373
    .line 374
    .line 375
    invoke-static {p0, v1, v0, v4, v2}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    const-string/jumbo v0, "com.zed.TrdWapLauncher"

    .line 379
    .line 380
    .line 381
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    const-string/jumbo v0, "com.amazon.windowshop"

    .line 385
    .line 386
    .line 387
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    :cond_5
    sget-boolean v0, Lcom/android/server/alarm/AppSyncInfo$Sales;->JAPAN:Z

    .line 391
    .line 392
    if-eqz v0, :cond_6

    .line 393
    .line 394
    const-string/jumbo v0, "com.nttdocomo.*"

    .line 395
    .line 396
    .line 397
    const-string/jumbo v1, "jp.co.nttdocomo.*"

    .line 398
    .line 399
    .line 400
    const-string/jumbo v2, "com.ipg.gguide.*"

    .line 401
    .line 402
    .line 403
    const-string/jumbo v3, "com.rsupport.rs.activity.ntt"

    .line 404
    .line 405
    .line 406
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    const-string/jumbo v0, "com.mcafee.vsm_android_dcm"

    .line 410
    .line 411
    .line 412
    const-string/jumbo v1, "com.mcafee.safecall.docomo"

    .line 413
    .line 414
    .line 415
    const-string/jumbo v2, "com.mcafee.android.scanservice"

    .line 416
    .line 417
    .line 418
    const-string/jumbo v3, "com.showcasegig.devlawson"

    .line 419
    .line 420
    .line 421
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    const-string/jumbo v0, "jp.id_credit_sp.android"

    .line 425
    .line 426
    .line 427
    const-string/jumbo v1, "jp.dmapnavi.navi02"

    .line 428
    .line 429
    .line 430
    const-string/jumbo v2, "jp.co.mcdonalds.android"

    .line 431
    .line 432
    .line 433
    const-string/jumbo v3, "jp.co.lawson.activity"

    .line 434
    .line 435
    .line 436
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    const-string/jumbo v0, "jp.co.omronsoft.android.decoemojimanager_docomo"

    .line 440
    .line 441
    .line 442
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    const-string/jumbo v0, "org.simalliance.openmobileapi.service"

    .line 446
    .line 447
    .line 448
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    :cond_6
    return-void
.end method

.method public final loadAppSyncBlockList()V
    .locals 4

    .line 1
    const-string v0, ".*alarm.*"

    .line 2
    .line 3
    const-string v1, ".*clock.*"

    .line 4
    .line 5
    const-string/jumbo v2, "com.android.email"

    .line 6
    .line 7
    .line 8
    const-string/jumbo v3, "com.samsung.android.email.sync"

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v0, "com.sec\\..*ims.*"

    .line 15
    .line 16
    .line 17
    const-string/jumbo v1, "com.sec.epdg"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v2, "com.samsung\\..*ims.*"

    .line 21
    .line 22
    .line 23
    const-string/jumbo v3, "com.samsung.android.themecenter"

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string/jumbo v0, "com.iloen.melon"

    .line 30
    .line 31
    .line 32
    const-string/jumbo v1, "com.iloen.melon.tablet"

    .line 33
    .line 34
    .line 35
    const-string v2, ".*knox.*"

    .line 36
    .line 37
    const-string v3, "android"

    .line 38
    .line 39
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v0, ".*email.ui"

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v0, ".*shealth.*"

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-boolean v0, Lcom/android/server/alarm/AppSyncInfo$Sales;->JAPAN:Z

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    const-string/jumbo v0, "com.android.incallui"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string/jumbo v0, "com.android.services.telephony.common"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mPackageSet:Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const-string v3, ", "

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mRegExpList:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/String;

    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0
.end method
