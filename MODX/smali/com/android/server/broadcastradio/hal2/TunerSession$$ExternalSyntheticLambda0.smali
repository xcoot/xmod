.class public final synthetic Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public exec()Ljava/lang/Object;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "android.hardware.broadcastradio@2.0::ITunerSession"

    .line 4
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 6
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 8
    iget p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 10
    packed-switch p0, :pswitch_data_0

    .line 13
    check-cast v3, Ljava/util/List;

    .line 15
    check-cast v2, Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 17
    iget-object p0, v2, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;

    .line 19
    sget-object v2, Lcom/android/server/broadcastradio/hal2/Convert;->METADATA_KEYS:Landroid/util/SparseArray;

    .line 21
    if-nez v3, :cond_0

    .line 23
    const/4 v2, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    instance-of v2, v3, Ljava/util/ArrayList;

    .line 27
    if-eqz v2, :cond_1

    .line 29
    move-object v2, v3

    .line 30
    check-cast v2, Ljava/util/ArrayList;

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    new-instance v3, Landroid/os/HwParcel;

    .line 43
    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    .line 46
    invoke-virtual {v3, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v3, v2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 52
    new-instance v1, Landroid/os/HwParcel;

    .line 54
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 57
    :try_start_0
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 59
    const/16 v2, 0xa

    .line 61
    invoke-interface {p0, v2, v3, v1, v0}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 64
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 67
    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 70
    invoke-static {v1}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    .line 73
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 77
    return-object p0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 82
    throw p0

    .line 83
    :pswitch_0
    check-cast v3, Ljava/util/Map;

    .line 85
    check-cast v2, Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 87
    iget-object p0, v2, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;

    .line 89
    sget-object v2, Lcom/android/server/broadcastradio/hal2/Convert;->METADATA_KEYS:Landroid/util/SparseArray;

    .line 91
    if-nez v3, :cond_2

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    .line 95
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    goto :goto_3

    .line 99
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 101
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 107
    move-result-object v3

    .line 108
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 111
    move-result-object v3

    .line 112
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_5

    .line 118
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Ljava/util/Map$Entry;

    .line 124
    new-instance v5, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;

    .line 126
    invoke-direct {v5}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;-><init>()V

    .line 129
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 132
    move-result-object v6

    .line 133
    check-cast v6, Ljava/lang/String;

    .line 135
    iput-object v6, v5, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->key:Ljava/lang/String;

    .line 137
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 140
    move-result-object v4

    .line 141
    check-cast v4, Ljava/lang/String;

    .line 143
    iput-object v4, v5, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->value:Ljava/lang/String;

    .line 145
    iget-object v6, v5, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->key:Ljava/lang/String;

    .line 147
    if-eqz v6, :cond_4

    .line 149
    if-nez v4, :cond_3

    .line 151
    goto :goto_2

    .line 152
    :cond_3
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    goto :goto_1

    .line 156
    :cond_4
    :goto_2
    const-string v4, "BcRadio2Srv.convert"

    .line 158
    const-string v5, "VendorKeyValue contains null pointers"

    .line 160
    invoke-static {v4, v5}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    goto :goto_1

    .line 164
    :cond_5
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    new-instance v3, Landroid/os/HwParcel;

    .line 169
    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    .line 172
    invoke-virtual {v3, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 175
    new-instance v1, Landroid/os/HwBlob;

    .line 177
    const/16 v4, 0x10

    .line 179
    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 182
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 185
    move-result v4

    .line 186
    const-wide/16 v5, 0x8

    .line 188
    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 191
    const-wide/16 v5, 0xc

    .line 193
    invoke-virtual {v1, v5, v6, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 196
    new-instance v5, Landroid/os/HwBlob;

    .line 198
    mul-int/lit8 v6, v4, 0x20

    .line 200
    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 203
    move v6, v0

    .line 204
    :goto_4
    if-ge v6, v4, :cond_6

    .line 206
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 209
    move-result-object v7

    .line 210
    check-cast v7, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;

    .line 212
    mul-int/lit8 v8, v6, 0x20

    .line 214
    int-to-long v8, v8

    .line 215
    iget-object v10, v7, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->key:Ljava/lang/String;

    .line 217
    invoke-virtual {v5, v8, v9, v10}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 220
    const-wide/16 v10, 0x10

    .line 222
    add-long/2addr v8, v10

    .line 223
    iget-object v7, v7, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->value:Ljava/lang/String;

    .line 225
    invoke-virtual {v5, v8, v9, v7}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 228
    add-int/lit8 v6, v6, 0x1

    .line 230
    goto :goto_4

    .line 231
    :cond_6
    const-wide/16 v6, 0x0

    .line 233
    invoke-virtual {v1, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 236
    invoke-virtual {v3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 239
    new-instance v1, Landroid/os/HwParcel;

    .line 241
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 244
    :try_start_1
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 246
    const/16 v2, 0x9

    .line 248
    invoke-interface {p0, v2, v3, v1, v0}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 251
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 254
    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 257
    invoke-static {v1}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    .line 260
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 261
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 264
    return-object p0

    .line 265
    :catchall_1
    move-exception p0

    .line 266
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 269
    throw p0

    .line 270
    nop

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
