.class public final Lcom/android/server/companion/devicepresence/BleDeviceProcessor$2;
.super Landroid/bluetooth/le/ScanCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$2;->this$0:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onScanFailed(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$2;->this$0:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanning:Z

    .line 5
    .line 6
    return-void
.end method

.method public final onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x2

    .line 6
    if-eq p1, v0, :cond_5

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x4

    .line 10
    if-eq p1, v2, :cond_3

    .line 11
    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string p2, "Unexpected callback "

    .line 15
    .line 16
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    if-eq p1, v1, :cond_2

    .line 20
    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    if-eq p1, v2, :cond_0

    .line 24
    .line 25
    const-string p2, "Unknown"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p2, "MATCH_LOST"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string p2, "FIRST_MATCH"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const-string p2, "ALL_MATCHES"

    .line 35
    .line 36
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p2, "("

    .line 45
    .line 46
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, ")"

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string p1, "CDM_BleDeviceProcessor"

    .line 69
    .line 70
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :cond_3
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$2;->this$0:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p1, p2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_6

    .line 96
    .line 97
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    check-cast p2, Landroid/companion/AssociationInfo;

    .line 102
    .line 103
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getId()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string/jumbo v4, "onBleCompanionDeviceLost associationId( "

    .line 119
    .line 120
    .line 121
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v4, " )"

    .line 128
    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    const-string v4, "CDM_DevicePresenceProcessor"

    .line 137
    .line 138
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    iget-object v3, v2, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mUserManager:Landroid/os/UserManager;

    .line 142
    .line 143
    invoke-virtual {v3, p2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-nez v3, :cond_4

    .line 148
    .line 149
    const/4 v3, 0x0

    .line 150
    const/4 v4, 0x0

    .line 151
    invoke-virtual {v2, v0, p2, v3, v4}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDeviceLocked(IIILandroid/os/ParcelUuid;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_4
    iget-object p2, v2, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    .line 156
    .line 157
    invoke-virtual {v2, p2, v0, v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_5
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$2;->this$0:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    .line 162
    .line 163
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 164
    .line 165
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    invoke-virtual {p1, p2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result p2

    .line 181
    if-eqz p2, :cond_6

    .line 182
    .line 183
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    check-cast p2, Landroid/companion/AssociationInfo;

    .line 188
    .line 189
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getId()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 198
    .line 199
    invoke-virtual {v1, v0, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onBleCompanionDeviceFound(II)V

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_6
    :goto_3
    return-void
.end method
