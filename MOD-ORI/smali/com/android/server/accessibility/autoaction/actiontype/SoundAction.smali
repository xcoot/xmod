.class public final Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAudioManager:Landroid/media/AudioManager;

.field public mType:Ljava/lang/String;


# virtual methods
.method public final performCornerAction(I)V
    .locals 8

    .line 1
    const/4 p1, 0x2

    .line 2
    const/4 v0, 0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, -0x1

    .line 6
    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    .line 7
    .line 8
    if-eqz v4, :cond_6

    .line 9
    .line 10
    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mType:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x5

    .line 16
    const/high16 v6, 0x2000000

    .line 17
    .line 18
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    sparse-switch v7, :sswitch_data_0

    .line 23
    .line 24
    .line 25
    :goto_0
    move v4, v3

    .line 26
    goto :goto_1

    .line 27
    :sswitch_0
    const-string/jumbo v7, "ringtone_volume_down"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v4, 0x4

    .line 38
    goto :goto_1

    .line 39
    :sswitch_1
    const-string/jumbo v7, "media_volume_up"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v4, v2

    .line 50
    goto :goto_1

    .line 51
    :sswitch_2
    const-string/jumbo v7, "media_volume_down"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    move v4, p1

    .line 62
    goto :goto_1

    .line 63
    :sswitch_3
    const-string/jumbo v7, "sound_vibrate_mute"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    move v4, v0

    .line 74
    goto :goto_1

    .line 75
    :sswitch_4
    const-string/jumbo v7, "ringtone_volume_up"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-nez v4, :cond_4

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    move v4, v1

    .line 86
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 87
    .line 88
    .line 89
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    const-string p1, "Wrong Sound Action Type"

    .line 92
    .line 93
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    .line 98
    .line 99
    invoke-virtual {v0, p1, v1, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 100
    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    .line 103
    .line 104
    invoke-virtual {p0, p1, v3, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    .line 109
    .line 110
    invoke-virtual {p1, v2, v1, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 111
    .line 112
    .line 113
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    .line 114
    .line 115
    invoke-virtual {p0, v2, v0, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    .line 120
    .line 121
    invoke-virtual {p1, v2, v1, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 122
    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    .line 125
    .line 126
    invoke-virtual {p0, v2, v3, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    .line 131
    .line 132
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    sub-int/2addr v1, v0

    .line 137
    if-gez v1, :cond_5

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    move p1, v1

    .line 141
    :goto_2
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    .line 142
    .line 143
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    .line 148
    .line 149
    invoke-virtual {v2, p1, v1, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 150
    .line 151
    .line 152
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    .line 153
    .line 154
    invoke-virtual {p0, p1, v0, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 155
    .line 156
    .line 157
    :cond_6
    :goto_3
    return-void

    .line 158
    nop

    .line 159
    :sswitch_data_0
    .sparse-switch
        -0x55236e7d -> :sswitch_4
        -0x18e94be7 -> :sswitch_3
        0x1af46ecc -> :sswitch_2
        0x4505db45 -> :sswitch_1
        0x65f68d8a -> :sswitch_0
    .end sparse-switch

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
