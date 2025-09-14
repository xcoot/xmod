.class Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;
.super Landroid/telecom/Connection;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAssociationId:I

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

.field public final mCallback:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionCallback;

.field public mIsIdFinalized:Z

.field public final mTelecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method public static -$$Nest$mupdate(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mIsIdFinalized:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 7
    .line 8
    iget-object v2, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v2, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mIsIdFinalized:Z

    .line 13
    .line 14
    :cond_0
    iget v0, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mStatus:I

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    if-ne v0, v2, :cond_1

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 20
    .line 21
    iget v3, v3, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mStatus:I

    .line 22
    .line 23
    if-eq v3, v2, :cond_1

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 31
    .line 32
    iput v0, v3, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mStatus:I

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    const/4 v4, 0x3

    .line 36
    const/4 v5, 0x7

    .line 37
    packed-switch v0, :pswitch_data_0

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    goto :goto_0

    .line 42
    :pswitch_0
    move v0, v1

    .line 43
    goto :goto_0

    .line 44
    :pswitch_1
    move v0, v5

    .line 45
    goto :goto_0

    .line 46
    :pswitch_2
    const/16 v0, 0xd

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_3
    const/16 v0, 0xc

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_4
    move v0, v4

    .line 53
    goto :goto_0

    .line 54
    :pswitch_5
    move v0, v2

    .line 55
    goto :goto_0

    .line 56
    :pswitch_6
    move v0, v3

    .line 57
    :goto_0
    invoke-virtual {p0}, Landroid/telecom/Connection;->getState()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eq v0, v6, :cond_7

    .line 62
    .line 63
    if-ne v0, v3, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/telecom/Connection;->setRinging()V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    if-ne v0, v2, :cond_3

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/telecom/Connection;->setActive()V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    if-ne v0, v4, :cond_4

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/telecom/Connection;->setOnHold()V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    if-ne v0, v5, :cond_5

    .line 82
    .line 83
    new-instance v0, Landroid/telecom/DisconnectCause;

    .line 84
    .line 85
    invoke-direct {v0, v4}, Landroid/telecom/DisconnectCause;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_5
    if-ne v0, v1, :cond_6

    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/telecom/Connection;->setDialing()V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_6
    const-string v0, "CallMetadataSyncConnectionService"

    .line 99
    .line 100
    const-string v3, "Could not update call to unknown state"

    .line 101
    .line 102
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iget-object v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 110
    .line 111
    iget-object p1, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mControls:Ljava/util/Set;

    .line 112
    .line 113
    iget-object v4, v3, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mControls:Ljava/util/Set;

    .line 114
    .line 115
    check-cast v4, Ljava/util/HashSet;

    .line 116
    .line 117
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 118
    .line 119
    .line 120
    iget-object v3, v3, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mControls:Ljava/util/Set;

    .line 121
    .line 122
    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 126
    .line 127
    invoke-virtual {p1, v5}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->hasControl(I)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-nez p1, :cond_9

    .line 132
    .line 133
    iget-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 134
    .line 135
    const/16 v3, 0x8

    .line 136
    .line 137
    invoke-virtual {p1, v3}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->hasControl(I)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_8

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_8
    and-int/lit8 p1, v0, -0x2

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_9
    :goto_2
    or-int/lit8 p1, v0, 0x1

    .line 148
    .line 149
    :goto_3
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->hasControl(I)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    const/4 v1, 0x5

    .line 156
    if-nez v0, :cond_b

    .line 157
    .line 158
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->hasControl(I)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_a

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_a
    and-int/lit8 p1, p1, -0x41

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_b
    :goto_4
    or-int/lit8 p1, p1, 0x40

    .line 171
    .line 172
    :goto_5
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mAudioManager:Landroid/media/AudioManager;

    .line 173
    .line 174
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 175
    .line 176
    invoke-virtual {v2, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->hasControl(I)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eq p1, v0, :cond_c

    .line 188
    .line 189
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->setConnectionCapabilities(I)V

    .line 190
    .line 191
    .line 192
    :cond_c
    return-void

    .line 193
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

.method public constructor <init>(Landroid/telecom/TelecomManager;Landroid/media/AudioManager;ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mAudioManager:Landroid/media/AudioManager;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mAssociationId:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCallback:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionCallback;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onAnswer(I)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->sendCallAction(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onDisconnect()V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->sendCallAction(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onHold()V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->sendCallAction(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onMuteStateChanged(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x4

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x5

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->sendCallAction(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onReject()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->sendCallAction(I)V

    return-void
.end method

.method public final onReject(I)V
    .locals 0

    const/4 p1, 0x2

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->sendCallAction(I)V

    return-void
.end method

.method public final onReject(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x2

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->sendCallAction(I)V

    return-void
.end method

.method public final onSilence()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->sendCallAction(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onUnhold()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->sendCallAction(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final sendCallAction(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCallback:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionCallback;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mAssociationId:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1, p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionCallback;->sendCallAction(IILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
