.class public Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;
.super Landroid/telecom/ConnectionService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final mActiveConnections:Ljava/util/Map;

.field mAudioManager:Landroid/media/AudioManager;

.field public mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

.field final mCrossDeviceSyncControllerCallback:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

.field mTelecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/telecom/ConnectionService;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mActiveConnections:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mCrossDeviceSyncControllerCallback:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/telecom/ConnectionService;->onCreate()V

    .line 2
    .line 3
    .line 4
    const-class v0, Landroid/media/AudioManager;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/telecom/ConnectionService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/media/AudioManager;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mAudioManager:Landroid/media/AudioManager;

    .line 13
    .line 14
    const-class v0, Landroid/telecom/TelecomManager;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/telecom/ConnectionService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/telecom/TelecomManager;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 23
    .line 24
    const-class v0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mCrossDeviceSyncControllerCallback:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, p0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->registerCallMetadataSyncCallback(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final onCreateConnectionComplete(Landroid/telecom/Connection;)V
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 8
    .line 9
    iget v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mStatus:I

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v2, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x3

    .line 21
    const/4 v4, 0x7

    .line 22
    const/4 v5, 0x1

    .line 23
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :pswitch_0
    move v0, v5

    .line 29
    goto :goto_0

    .line 30
    :pswitch_1
    move v0, v4

    .line 31
    goto :goto_0

    .line 32
    :pswitch_2
    const/16 v0, 0xd

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_3
    const/16 v0, 0xc

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_4
    move v0, v3

    .line 39
    goto :goto_0

    .line 40
    :pswitch_5
    move v0, v1

    .line 41
    goto :goto_0

    .line 42
    :pswitch_6
    move v0, v2

    .line 43
    :goto_0
    if-ne v0, v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/telecom/Connection;->setRinging()V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    if-ne v0, v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/telecom/Connection;->setActive()V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    if-ne v0, v3, :cond_3

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/telecom/Connection;->setOnHold()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    if-ne v0, v4, :cond_4

    .line 62
    .line 63
    new-instance v0, Landroid/telecom/DisconnectCause;

    .line 64
    .line 65
    invoke-direct {v0, v3}, Landroid/telecom/DisconnectCause;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    if-ne v0, v5, :cond_5

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/telecom/Connection;->setDialing()V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    invoke-virtual {p1}, Landroid/telecom/Connection;->setInitialized()V

    .line 79
    .line 80
    .line 81
    :goto_1
    iget-object v0, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mCallerId:Ljava/lang/String;

    .line 84
    .line 85
    if-eqz v0, :cond_6

    .line 86
    .line 87
    invoke-virtual {p1, v0, v5}, Landroid/telecom/Connection;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mCallerId:Ljava/lang/String;

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    const-string/jumbo v3, "custom"

    .line 96
    .line 97
    .line 98
    invoke-static {v3, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p1, v0, v5}, Landroid/telecom/Connection;->setAddress(Landroid/net/Uri;I)V

    .line 103
    .line 104
    .line 105
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    .line 106
    .line 107
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    .line 109
    .line 110
    iget-object v2, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 111
    .line 112
    iget-object v2, v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 113
    .line 114
    const-string/jumbo v3, "com.android.companion.datatransfer.contextsync.extra.CALL_ID"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    iget-object v2, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 128
    .line 129
    invoke-virtual {v2, v4}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->hasControl(I)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_7

    .line 134
    .line 135
    or-int/2addr v0, v5

    .line 136
    goto :goto_2

    .line 137
    :cond_7
    and-int/lit8 v0, v0, -0x2

    .line 138
    .line 139
    :goto_2
    iget-object v2, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 140
    .line 141
    invoke-virtual {v2, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->hasControl(I)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_8

    .line 146
    .line 147
    or-int/lit8 v0, v0, 0x40

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_8
    and-int/lit8 v0, v0, -0x41

    .line 151
    .line 152
    :goto_3
    iget-object v1, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mAudioManager:Landroid/media/AudioManager;

    .line 153
    .line 154
    iget-object v2, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 155
    .line 156
    const/4 v3, 0x5

    .line 157
    invoke-virtual {v2, v3}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->hasControl(I)Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eq v0, v1, :cond_9

    .line 169
    .line 170
    invoke-virtual {p1, v0}, Landroid/telecom/Connection;->setConnectionCapabilities(I)V

    .line 171
    .line 172
    .line 173
    :cond_9
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mActiveConnections:Ljava/util/Map;

    .line 174
    .line 175
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionIdentifier;

    .line 176
    .line 177
    iget v1, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mAssociationId:I

    .line 178
    .line 179
    iget-object v2, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 180
    .line 181
    iget-object v2, v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 182
    .line 183
    invoke-direct {v0, v1, v2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionIdentifier;-><init>(ILjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    :cond_a
    return-void

    .line 190
    nop

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "com.android.server.companion.datatransfer.contextsync.extra.ASSOCIATION_ID"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string/jumbo v1, "com.android.server.companion.datatransfer.contextsync.extra.CALL"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 24
    .line 25
    invoke-direct {v5}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;-><init>()V

    .line 26
    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    const-string/jumbo v2, "com.android.companion.datatransfer.contextsync.extra.CALL_ID"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iput-object v2, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 38
    .line 39
    const-string/jumbo v2, "com.android.server.companion.datatransfer.contextsync.extra.CALLER_ID"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iput-object v2, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mCallerId:Ljava/lang/String;

    .line 47
    .line 48
    const-string/jumbo v2, "com.android.server.companion.datatransfer.contextsync.extra.APP_ICON"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iput-object v2, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mAppIcon:[B

    .line 56
    .line 57
    const-string/jumbo v2, "com.android.server.companion.datatransfer.contextsync.extra.FACILITATOR_NAME"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string/jumbo v3, "com.android.server.companion.datatransfer.contextsync.extra.FACILITATOR_ID"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const-string/jumbo v6, "com.android.server.companion.datatransfer.contextsync.extra.FACILITATOR_EXT_ID"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    new-instance v7, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 79
    .line 80
    invoke-direct {v7, v2, v3, v6}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iput-object v7, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 84
    .line 85
    const-string/jumbo v2, "com.android.server.companion.datatransfer.contextsync.extra.STATUS"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    iput v2, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mStatus:I

    .line 93
    .line 94
    const-string/jumbo v2, "com.android.server.companion.datatransfer.contextsync.extra.DIRECTION"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    iput v2, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mDirection:I

    .line 102
    .line 103
    new-instance v2, Ljava/util/HashSet;

    .line 104
    .line 105
    const-string/jumbo v3, "com.android.server.companion.datatransfer.contextsync.extra.CONTROLS"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mControls:Ljava/util/Set;

    .line 116
    .line 117
    check-cast p1, Ljava/util/HashSet;

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 120
    .line 121
    .line 122
    iget-object p1, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mControls:Ljava/util/Set;

    .line 123
    .line 124
    invoke-interface {p1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 125
    .line 126
    .line 127
    :cond_0
    const/4 p1, 0x1

    .line 128
    iput p1, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mDirection:I

    .line 129
    .line 130
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    const-string/jumbo v1, "com.android.server.companion.datatransfer.contextsync.extra.CALL_FACILITATOR_ID"

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    new-instance p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;

    .line 155
    .line 156
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 157
    .line 158
    iget-object v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mAudioManager:Landroid/media/AudioManager;

    .line 159
    .line 160
    new-instance v6, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$2;

    .line 161
    .line 162
    const/4 p2, 0x0

    .line 163
    invoke-direct {v6, p0, p2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$2;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;I)V

    .line 164
    .line 165
    .line 166
    move-object v1, p1

    .line 167
    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;-><init>(Landroid/telecom/TelecomManager;Landroid/media/AudioManager;ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionCallback;)V

    .line 168
    .line 169
    .line 170
    const/16 p0, 0x10

    .line 171
    .line 172
    invoke-virtual {p1, p0}, Landroid/telecom/Connection;->setConnectionProperties(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Landroid/telecom/Connection;->setInitializing()V

    .line 176
    .line 177
    .line 178
    return-object p1
.end method

.method public final onCreateIncomingConnectionFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string/jumbo p0, "unknown PhoneAccount"

    .line 9
    .line 10
    .line 11
    :goto_0
    const-string/jumbo p1, "onCreateOutgoingConnectionFailed for: "

    .line 12
    .line 13
    .line 14
    const-string p2, "CallMetadataSyncConnectionService"

    .line 15
    .line 16
    invoke-static {p1, p0, p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 8

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v7, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 15
    .line 16
    invoke-direct {v7}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string/jumbo v2, "com.android.companion.datatransfer.contextsync.extra.CALL_ID"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, v7, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    iput v1, v7, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mStatus:I

    .line 34
    .line 35
    new-instance v1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    :goto_1
    const-string/jumbo v3, "com.android.server.companion.datatransfer.contextsync.extra.CALL_FACILITATOR_ID"

    .line 57
    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getExtras()Landroid/os/Bundle;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    :goto_2
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {v1, v2, v4, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iput-object v1, v7, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 90
    .line 91
    const/4 p1, 0x2

    .line 92
    iput p1, v7, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mDirection:I

    .line 93
    .line 94
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, v7, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mCallerId:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getExtras()Landroid/os/Bundle;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    const-string/jumbo v0, "com.android.server.companion.datatransfer.contextsync.extra.ASSOCIATION_ID"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const-string/jumbo v2, "com.android.server.companion.datatransfer.contextsync.extra.CALL"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;

    .line 140
    .line 141
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 142
    .line 143
    iget-object v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mAudioManager:Landroid/media/AudioManager;

    .line 144
    .line 145
    new-instance v6, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$2;

    .line 146
    .line 147
    const/4 v1, 0x1

    .line 148
    invoke-direct {v6, p0, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$2;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;I)V

    .line 149
    .line 150
    .line 151
    move-object v1, v0

    .line 152
    move v4, p1

    .line 153
    move-object v5, v7

    .line 154
    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;-><init>(Landroid/telecom/TelecomManager;Landroid/media/AudioManager;ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionCallback;)V

    .line 155
    .line 156
    .line 157
    iget-object v1, v7, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mCallerId:Ljava/lang/String;

    .line 158
    .line 159
    const/4 v2, 0x1

    .line 160
    invoke-virtual {v0, v1, v2}, Landroid/telecom/Connection;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 161
    .line 162
    .line 163
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    .line 164
    .line 165
    iget-object v2, v7, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    if-eqz v3, :cond_3

    .line 175
    .line 176
    iget-object v1, v1, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 177
    .line 178
    iget-object v1, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mCrossDeviceSyncController:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 179
    .line 180
    iget-object v1, v1, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

    .line 181
    .line 182
    iget-object v1, v1, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mSelfOwnedCalls:Ljava/util/Set;

    .line 183
    .line 184
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    :cond_3
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    .line 188
    .line 189
    iget-object v1, v7, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    iget-object v2, v7, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 200
    .line 201
    iget-object v2, v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mIdentifier:Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {v1, p2, v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallCreateMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-eqz v1, :cond_4

    .line 215
    .line 216
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 217
    .line 218
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCrossDeviceSyncController:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 219
    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->syncMessageToDevice(I[B)V

    .line 221
    .line 222
    .line 223
    :cond_4
    invoke-virtual {v0}, Landroid/telecom/Connection;->setInitializing()V

    .line 224
    .line 225
    .line 226
    return-object v0
.end method

.method public final onCreateOutgoingConnectionFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string/jumbo p0, "unknown PhoneAccount"

    .line 9
    .line 10
    .line 11
    :goto_0
    const-string/jumbo p1, "onCreateOutgoingConnectionFailed for: "

    .line 12
    .line 13
    .line 14
    const-string p2, "CallMetadataSyncConnectionService"

    .line 15
    .line 16
    invoke-static {p1, p0, p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
