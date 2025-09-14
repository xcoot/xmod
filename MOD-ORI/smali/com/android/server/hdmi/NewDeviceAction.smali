.class public final Lcom/android/server/hdmi/NewDeviceAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeviceLogicalAddress:I

.field public final mDevicePhysicalAddress:I

.field public final mDeviceType:I

.field public mDisplayName:Ljava/lang/String;

.field public mOldDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field public mTimeoutRetry:I

.field public mVendorId:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    .line 5
    .line 6
    iput p3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    .line 7
    .line 8
    iput p4, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceType:I

    .line 9
    .line 10
    const p1, 0xffffff

    .line 11
    .line 12
    .line 13
    iput p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mVendorId:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final addDeviceInfo()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-ne v1, v3, :cond_1

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    :cond_1
    :goto_0
    const-string v1, "NewDeviceAction"

    .line 30
    .line 31
    if-nez v4, :cond_2

    .line 32
    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string v0, "Device not found (%02x, %04x)"

    .line 46
    .line 47
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    iget-object v4, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDisplayName:Ljava/lang/String;

    .line 56
    .line 57
    if-nez v4, :cond_3

    .line 58
    .line 59
    const-string v4, ""

    .line 60
    .line 61
    iput-object v4, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDisplayName:Ljava/lang/String;

    .line 62
    .line 63
    :cond_3
    invoke-static {}, Landroid/hardware/hdmi/HdmiDeviceInfo;->cecDeviceBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v4, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setLogicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4, v3}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPhysicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    move-object v5, v0

    .line 76
    check-cast v5, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 77
    .line 78
    iget-object v6, v5, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 79
    .line 80
    iget-object v6, v6, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 81
    .line 82
    invoke-virtual {v6, v3}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    invoke-virtual {v4, v6}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPortId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    iget v6, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceType:I

    .line 91
    .line 92
    invoke-virtual {v4, v6}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDeviceType(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    iget v7, p0, Lcom/android/server/hdmi/NewDeviceAction;->mVendorId:I

    .line 97
    .line 98
    invoke-virtual {v4, v7}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setVendorId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    iget-object v7, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDisplayName:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v4, v7}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDisplayName(Ljava/lang/String;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    iget-object v7, p0, Lcom/android/server/hdmi/NewDeviceAction;->mOldDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 113
    .line 114
    const-string v8, "]"

    .line 115
    .line 116
    if-eqz v7, :cond_4

    .line 117
    .line 118
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-ne v7, v2, :cond_4

    .line 123
    .line 124
    iget-object v7, p0, Lcom/android/server/hdmi/NewDeviceAction;->mOldDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 125
    .line 126
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-ne v7, v3, :cond_4

    .line 131
    .line 132
    iget-object v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mOldDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 133
    .line 134
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-ne v3, v6, :cond_4

    .line 139
    .line 140
    iget-object v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mOldDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 141
    .line 142
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    iget v6, p0, Lcom/android/server/hdmi/NewDeviceAction;->mVendorId:I

    .line 147
    .line 148
    if-ne v3, v6, :cond_4

    .line 149
    .line 150
    iget-object v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mOldDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 151
    .line 152
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    iget-object v6, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDisplayName:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_4

    .line 163
    .line 164
    invoke-virtual {v5, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->processDelayedMessages(I)V

    .line 165
    .line 166
    .line 167
    const-string v0, "Ignore NewDevice, deviceInfo is same as current device"

    .line 168
    .line 169
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string v2, "Old:["

    .line 175
    .line 176
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object p0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mOldDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 180
    .line 181
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string p0, "]; New:["

    .line 189
    .line 190
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string v3, "Add NewDevice:["

    .line 214
    .line 215
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 236
    .line 237
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 238
    .line 239
    invoke-virtual {p0, v4}, Lcom/android/server/hdmi/HdmiCecNetwork;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v5, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->processDelayedMessages(I)V

    .line 243
    .line 244
    .line 245
    const/4 p0, 0x5

    .line 246
    invoke-static {p0, v2}, Lcom/android/server/hdmi/HdmiUtils;->isEligibleAddressForDevice(II)Z

    .line 247
    .line 248
    .line 249
    move-result p0

    .line 250
    if-eqz p0, :cond_5

    .line 251
    .line 252
    invoke-virtual {v5, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->onNewAvrAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 253
    .line 254
    .line 255
    :cond_5
    :goto_1
    return-void
.end method

.method public final handleTimerEvent(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x5

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne p1, v2, :cond_2

    .line 12
    .line 13
    iget p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    .line 14
    .line 15
    add-int/2addr p1, v2

    .line 16
    iput p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    .line 17
    .line 18
    if-ge p1, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/NewDeviceAction;->requestOsdName(Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/NewDeviceAction;->requestVendorId(Z)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 v3, 0x2

    .line 29
    if-ne p1, v3, :cond_4

    .line 30
    .line 31
    iget p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    .line 32
    .line 33
    add-int/2addr p1, v2

    .line 34
    iput p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    .line 35
    .line 36
    if-ge p1, v1, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/NewDeviceAction;->requestVendorId(Z)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->addDeviceInfo()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 46
    .line 47
    .line 48
    :cond_4
    :goto_0
    return-void
.end method

.method public final mayProcessCommandIfCached(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/util/SparseArray;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 25
    .line 26
    :goto_0
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/NewDeviceAction;->processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5

    .line 1
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget v3, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 7
    .line 8
    if-eq v1, v3, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 15
    .line 16
    if-ne v1, v3, :cond_2

    .line 17
    .line 18
    const/16 v1, 0x47

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "US-ASCII"

    .line 25
    .line 26
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDisplayName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "Failed to get OSD name: "

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v0, "NewDeviceAction"

    .line 52
    .line 53
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/NewDeviceAction;->requestVendorId(Z)V

    .line 57
    .line 58
    .line 59
    return v3

    .line 60
    :cond_1
    if-nez v0, :cond_4

    .line 61
    .line 62
    aget-byte p1, p1, v2

    .line 63
    .line 64
    and-int/lit16 p1, p1, 0xff

    .line 65
    .line 66
    const/16 v0, 0x46

    .line 67
    .line 68
    if-ne p1, v0, :cond_4

    .line 69
    .line 70
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/NewDeviceAction;->requestVendorId(Z)V

    .line 71
    .line 72
    .line 73
    return v3

    .line 74
    :cond_2
    const/4 v4, 0x2

    .line 75
    if-ne v1, v4, :cond_4

    .line 76
    .line 77
    const/16 v1, 0x87

    .line 78
    .line 79
    if-ne v0, v1, :cond_3

    .line 80
    .line 81
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->threeBytesToInt([B)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    iput p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mVendorId:I

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->addDeviceInfo()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 91
    .line 92
    .line 93
    return v3

    .line 94
    :cond_3
    if-nez v0, :cond_4

    .line 95
    .line 96
    aget-byte p1, p1, v2

    .line 97
    .line 98
    and-int/lit16 p1, p1, 0xff

    .line 99
    .line 100
    const/16 v0, 0x8c

    .line 101
    .line 102
    if-ne p1, v0, :cond_4

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->addDeviceInfo()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 108
    .line 109
    .line 110
    return v3

    .line 111
    :cond_4
    return v2
.end method

.method public final requestOsdName(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    .line 5
    .line 6
    :cond_0
    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 8
    .line 9
    iget p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    .line 10
    .line 11
    const/16 v0, 0x47

    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/NewDeviceAction;->mayProcessCommandIfCached(II)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/16 v1, 0x46

    .line 25
    .line 26
    invoke-static {v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v0, 0x0

    .line 31
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 32
    .line 33
    invoke-virtual {v1, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 34
    .line 35
    .line 36
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 37
    .line 38
    const/16 v0, 0x7d0

    .line 39
    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final requestVendorId(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    .line 5
    .line 6
    :cond_0
    const/4 p1, 0x2

    .line 7
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 8
    .line 9
    iget p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    .line 10
    .line 11
    const/16 v0, 0x87

    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/NewDeviceAction;->mayProcessCommandIfCached(II)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/16 v1, 0x8c

    .line 25
    .line 26
    invoke-static {v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v0, 0x0

    .line 31
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 32
    .line 33
    invoke-virtual {v1, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 34
    .line 35
    .line 36
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 37
    .line 38
    const/16 v0, 0x7d0

    .line 39
    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final start()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 6
    .line 7
    iget v2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mOldDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 14
    .line 15
    const-string v3, "NewDeviceAction"

    .line 16
    .line 17
    iget v4, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ne v1, v4, :cond_0

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "Start NewDeviceAction with old deviceInfo:["

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mOldDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "]"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const-string v1, "Start NewDeviceAction with default deviceInfo"

    .line 57
    .line 58
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    invoke-static {}, Landroid/hardware/hdmi/HdmiDeviceInfo;->cecDeviceBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setLogicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1, v4}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPhysicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    move-object v5, v0

    .line 74
    check-cast v5, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 75
    .line 76
    iget-object v5, v5, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 77
    .line 78
    iget-object v5, v5, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 79
    .line 80
    invoke-virtual {v5, v4}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    invoke-virtual {v1, v5}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPortId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iget v5, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceType:I

    .line 89
    .line 90
    invoke-virtual {v1, v5}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDeviceType(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const v5, 0xffffff

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v5}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setVendorId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget-object v5, p0, Lcom/android/server/hdmi/NewDeviceAction;->mOldDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 106
    .line 107
    iget-object v6, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 108
    .line 109
    if-eqz v5, :cond_1

    .line 110
    .line 111
    const-string v5, "Remove device by NewDeviceAction, logical address conflicts: "

    .line 112
    .line 113
    invoke-static {v4, v5, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v3, v6, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 117
    .line 118
    invoke-virtual {v3, v0, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->removeCecDevice(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    .line 119
    .line 120
    .line 121
    :cond_1
    iget-object v0, v6, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 124
    .line 125
    .line 126
    :goto_0
    const/4 v0, 0x1

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/NewDeviceAction;->requestOsdName(Z)V

    .line 128
    .line 129
    .line 130
    return-void
.end method
