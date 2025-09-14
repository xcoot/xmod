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

    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mPackageSet:Ljava/util/HashSet;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mRegExpList:Ljava/util/ArrayList;

    .line 18
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "*"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mRegExpList:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 20
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mRegExpList:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mPackageSet:Ljava/util/HashSet;

    .line 32
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 38
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mPackageSet:Ljava/util/HashSet;

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method public final contains(Ljava/lang/String;)Z
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mPackageSet:Ljava/util/HashSet;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 13
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mRegExpList:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p0

    .line 19
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

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

    .line 3
    const-string v1, ".*alert.*"

    .line 5
    const-string/jumbo v2, "com.sec.screencheck"

    .line 8
    const-string/jumbo v3, "com.sec.dsm.system"

    .line 11
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string/jumbo v0, "com.samsung.android.fmm"

    .line 17
    const-string/jumbo v1, "com.samsung.ssd.wolfserver"

    .line 20
    const-string/jumbo v2, "ch.bitspin.timely"

    .line 23
    const-string/jumbo v3, "com.nhn.android.nmap"

    .line 26
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string/jumbo v0, "com.qihoo.security"

    .line 32
    const-string v1, ".*vodafone.*"

    .line 34
    const-string/jumbo v2, "com.blackberry.enterprise.bscp.*"

    .line 37
    const-string/jumbo v3, "com.google.android.ims"

    .line 40
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v0, "com.google.android.apps.messaging"

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 49
    const-string v0, ".*vzw.*"

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 54
    const-string v0, ".*verizon.*"

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 59
    sget-boolean v0, Lcom/android/server/alarm/AppSyncInfo$Sales;->VZW:Z

    .line 61
    const-string/jumbo v1, "com.cequint.ecid"

    .line 64
    const-string/jumbo v2, "com.LogiaGroup.LogiaDeck"

    .line 67
    if-eqz v0, :cond_0

    .line 69
    const-string v0, ".*amazon.*"

    .line 71
    const-string/jumbo v3, "com.audible.application"

    .line 74
    const-string/jumbo v4, "com.imdb.mobile"

    .line 77
    const-string/jumbo v5, "com.amazon.fv"

    .line 80
    invoke-static {p0, v0, v3, v4, v5}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v0, "com.gotv.nflgamecenter.us.lite"

    .line 86
    const-string/jumbo v3, "com.slacker.radio"

    .line 89
    const-string/jumbo v4, "com.telecomsys.directedsms.android.SCG"

    .line 92
    invoke-static {p0, v0, v3, v4, v2}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v0, "com.vznavigator.Generic"

    .line 98
    const-string/jumbo v3, "com.vcast.mediamanager"

    .line 101
    const-string/jumbo v4, "com.sec.android.app.cmas"

    .line 104
    invoke-static {p0, v0, v1, v3, v4}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string/jumbo v0, "com.samsung.spg"

    .line 110
    const-string/jumbo v3, "com.sec.android.app.setupwizard"

    .line 113
    const-string/jumbo v4, "com.samsung.vvm"

    .line 116
    const-string/jumbo v5, "com.samsung.carrier.logcollector"

    .line 119
    invoke-static {p0, v0, v3, v4, v5}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string/jumbo v0, "com.samsung.sdm"

    .line 125
    const-string/jumbo v3, "com.samsung.syncmlservice"

    .line 128
    const-string/jumbo v4, "com.samsung.syncmlphonedataservice"

    .line 131
    const-string/jumbo v5, "com.samsung.sdm.sdmviewer"

    .line 134
    invoke-static {p0, v0, v3, v4, v5}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string/jumbo v0, "com.samsung.PAYGPrePayDetection"

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 143
    const-string/jumbo v0, "com.fusionone.android.sync.vzbuaclient"

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 149
    :cond_0
    const-string v0, ".*att.*"

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 154
    const-string v0, ".*mizmowireless.*"

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 159
    sget-boolean v0, Lcom/android/server/alarm/AppSyncInfo$Sales;->ATT:Z

    .line 161
    if-eqz v0, :cond_1

    .line 163
    const-string/jumbo v0, "com.welldoc.diabetesmanager"

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 169
    const-string/jumbo v0, "deezer.android.app"

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 175
    :cond_1
    const-string v0, ".*sprint.*"

    .line 177
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 180
    sget-boolean v0, Lcom/android/server/alarm/AppSyncInfo$Sales;->SPR:Z

    .line 182
    const-string/jumbo v3, "com.lookout"

    .line 185
    const-string/jumbo v4, "com.amazon.mShop.android"

    .line 188
    if-eqz v0, :cond_2

    .line 190
    const-string/jumbo v0, "com.airg"

    .line 193
    const-string/jumbo v5, "com.amazon.mShop"

    .line 196
    const-string/jumbo v6, "com.amazon.avod.thirdpartyclient"

    .line 199
    invoke-static {p0, v0, v5, v4, v6}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string/jumbo v0, "com.amazon.mp3"

    .line 205
    const-string/jumbo v5, "com.amazon.clouddrive.photos"

    .line 208
    const-string/jumbo v6, "com.boostmobile.boosttv"

    .line 211
    const-string/jumbo v7, "com.coremobility.app.vnotes"

    .line 214
    invoke-static {p0, v0, v5, v6, v7}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string/jumbo v0, "com.ebay.mobile"

    .line 220
    const-string/jumbo v5, "com.familyandco.framilywall"

    .line 223
    const-string/jumbo v6, "com.handmark.expressweather"

    .line 226
    const-string/jumbo v7, "com.itsoninc.android.itsonclient"

    .line 229
    invoke-static {p0, v0, v5, v6, v7}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string/jumbo v0, "com.itsoninc.android.itsonservice"

    .line 235
    const-string/jumbo v5, "com.itsoninc.android.uid"

    .line 238
    const-string/jumbo v6, "com.kineto.smartwifi"

    .line 241
    const-string/jumbo v7, "com.livewiremobile.musicstore.boost"

    .line 244
    invoke-static {p0, v0, v5, v6, v7}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string/jumbo v0, "com.locationlabs.sparkle.yellow.pre"

    .line 250
    const-string/jumbo v5, "com.nascar.nascarmobile"

    .line 253
    const-string/jumbo v6, "com.nbadigital.gametimelite"

    .line 256
    invoke-static {p0, v0, v3, v5, v6}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string/jumbo v0, "com.nextradioapp.nextradio"

    .line 262
    const-string/jumbo v5, "com.oem.smartwifisupport"

    .line 265
    const-string/jumbo v6, "com.pinsight.v1"

    .line 268
    const-string/jumbo v7, "com.smithmicro.EDM"

    .line 271
    invoke-static {p0, v0, v5, v6, v7}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string/jumbo v0, "com.smithmicro.mnd"

    .line 277
    const-string/jumbo v5, "com.soleo.numbersearch"

    .line 280
    const-string/jumbo v6, "com.spotify.music"

    .line 283
    const-string/jumbo v7, "com.telenav.app.android.scout_us"

    .line 286
    invoke-static {p0, v0, v5, v6, v7}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string/jumbo v0, "com.ubercab"

    .line 292
    const-string/jumbo v5, "com.wipit.android.boostwallet"

    .line 295
    const-string/jumbo v6, "msgplus.jibe.sca"

    .line 298
    const-string/jumbo v7, "com.privacystar.android.spg"

    .line 301
    invoke-static {p0, v0, v5, v6, v7}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string/jumbo v0, "com.playphone.gamestore"

    .line 307
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 310
    const-string/jumbo v0, "com.livewiremobile.musicstore.vmu"

    .line 313
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 316
    :cond_2
    const-string v0, ".*tmobile.*"

    .line 318
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 321
    sget-boolean v0, Lcom/android/server/alarm/AppSyncInfo$Sales;->TMO:Z

    .line 323
    if-eqz v0, :cond_3

    .line 325
    invoke-virtual {p0, v4}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 331
    const-string/jumbo v0, "com.customermobile.preload"

    .line 334
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 337
    :cond_3
    const-string v0, ".*metro.*"

    .line 339
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 342
    sget-boolean v0, Lcom/android/server/alarm/AppSyncInfo$Sales;->MPCS:Z

    .line 344
    if-eqz v0, :cond_4

    .line 346
    const-string/jumbo v0, "com.tmobile.pr.adapt"

    .line 349
    const-string/jumbo v5, "com.mobileposse.client"

    .line 352
    const-string/jumbo v6, "com.sec.tetheringprovision"

    .line 355
    invoke-static {p0, v0, v3, v5, v6}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_4
    const-string v0, ".*tracfone.*"

    .line 360
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 363
    const-string v0, ".*uscc.*"

    .line 365
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 368
    sget-boolean v0, Lcom/android/server/alarm/AppSyncInfo$Sales;->USCC:Z

    .line 370
    if-eqz v0, :cond_5

    .line 372
    const-string/jumbo v0, "com.synchronoss.sm"

    .line 375
    invoke-static {p0, v1, v0, v4, v2}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string/jumbo v0, "com.zed.TrdWapLauncher"

    .line 381
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 384
    const-string/jumbo v0, "com.amazon.windowshop"

    .line 387
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 390
    :cond_5
    sget-boolean v0, Lcom/android/server/alarm/AppSyncInfo$Sales;->JAPAN:Z

    .line 392
    if-eqz v0, :cond_6

    .line 394
    const-string/jumbo v0, "com.nttdocomo.*"

    .line 397
    const-string/jumbo v1, "jp.co.nttdocomo.*"

    .line 400
    const-string/jumbo v2, "com.ipg.gguide.*"

    .line 403
    const-string/jumbo v3, "com.rsupport.rs.activity.ntt"

    .line 406
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string/jumbo v0, "com.mcafee.vsm_android_dcm"

    .line 412
    const-string/jumbo v1, "com.mcafee.safecall.docomo"

    .line 415
    const-string/jumbo v2, "com.mcafee.android.scanservice"

    .line 418
    const-string/jumbo v3, "com.showcasegig.devlawson"

    .line 421
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string/jumbo v0, "jp.id_credit_sp.android"

    .line 427
    const-string/jumbo v1, "jp.dmapnavi.navi02"

    .line 430
    const-string/jumbo v2, "jp.co.mcdonalds.android"

    .line 433
    const-string/jumbo v3, "jp.co.lawson.activity"

    .line 436
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string/jumbo v0, "jp.co.omronsoft.android.decoemojimanager_docomo"

    .line 442
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 445
    const-string/jumbo v0, "org.simalliance.openmobileapi.service"

    .line 448
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 451
    :cond_6
    return-void
.end method

.method public final loadAppSyncBlockList()V
    .locals 4

    .line 1
    const-string v0, ".*alarm.*"

    .line 3
    const-string v1, ".*clock.*"

    .line 5
    const-string/jumbo v2, "com.android.email"

    .line 8
    const-string/jumbo v3, "com.samsung.android.email.sync"

    .line 11
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string/jumbo v0, "com.sec\\..*ims.*"

    .line 17
    const-string/jumbo v1, "com.sec.epdg"

    .line 20
    const-string/jumbo v2, "com.samsung\\..*ims.*"

    .line 23
    const-string/jumbo v3, "com.samsung.android.themecenter"

    .line 26
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string/jumbo v0, "com.iloen.melon"

    .line 32
    const-string/jumbo v1, "com.iloen.melon.tablet"

    .line 35
    const-string v2, ".*knox.*"

    .line 37
    const-string v3, "android"

    .line 39
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList$$ExternalSyntheticOutline0;->m(Lcom/android/server/alarm/AppSyncInfo$PackageList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, ".*email.ui"

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 47
    const-string v0, ".*shealth.*"

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 52
    sget-boolean v0, Lcom/android/server/alarm/AppSyncInfo$Sales;->JAPAN:Z

    .line 54
    if-eqz v0, :cond_0

    .line 56
    const-string/jumbo v0, "com.android.incallui"

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v0, "com.android.services.telephony.common"

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mPackageSet:Ljava/util/HashSet;

    .line 8
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    const-string v3, ", "

    .line 18
    if-eqz v2, :cond_0

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ljava/lang/String;

    .line 31
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mRegExpList:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object p0

    .line 51
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/String;

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    return-object p0
.end method
