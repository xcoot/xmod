.class public abstract Lcom/android/server/battery/batteryInfo/BaseCycleData;
.super Lcom/android/server/battery/batteryInfo/BaseData;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final addAndSave(J)V
    .locals 5

    .line 1
    const-string v0, "[addAndSave]addtionalValue:"

    .line 3
    invoke-static {p1, p2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 9
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget v2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 15
    if-ge v0, v2, :cond_2

    .line 17
    iget-object v2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 19
    check-cast v2, [Ljava/lang/Long;

    .line 21
    iget-object v3, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/lang/String;

    .line 29
    invoke-static {v3}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 32
    move-result-wide v3

    .line 33
    add-long/2addr v3, p1

    .line 34
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    move-result-object v3

    .line 38
    aput-object v3, v2, v0

    .line 40
    iget-object v2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/String;

    .line 48
    iget-object v3, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 50
    check-cast v3, [Ljava/lang/Long;

    .line 52
    aget-object v3, v3, v0

    .line 54
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 57
    move-result-wide v3

    .line 58
    invoke-static {v3, v4, v2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    .line 71
    aget-boolean v2, v2, v0

    .line 73
    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Ljava/lang/String;

    .line 83
    iget-object v3, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 85
    check-cast v3, [Ljava/lang/Long;

    .line 87
    aget-object v3, v3, v0

    .line 89
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 92
    move-result-wide v3

    .line 93
    invoke-static {v3, v4, v2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 96
    goto :goto_1

    .line 97
    :cond_0
    const-string v2, "[addAndSave]Authentification false => skip writing_"

    .line 99
    invoke-static {v0, v2, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 107
    const-string p2, "[addAndSave]mCurrentValues:"

    .line 109
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 114
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object p0

    .line 125
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public final initializeIfNotExist()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 4
    if-ge v0, v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/String;

    .line 14
    invoke-static {v1}, Lcom/android/server/battery/BattUtils;->isExist(Ljava/lang/String;)Z

    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    const-string v2, "[initializeIfNotExist]create:"

    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object v2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/String;

    .line 35
    const-string v3, " ,initValue:1"

    .line 37
    invoke-static {v1, v2, v3}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 43
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/String;

    .line 54
    const-wide/16 v2, 0x1

    .line 56
    invoke-static {v2, v3, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 59
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method

.method public final syncAuthAndEfsForAuth$1([Z)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 4
    if-ge v0, v1, :cond_7

    .line 6
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    .line 8
    aget-boolean v1, v1, v0

    .line 10
    iget-object v2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 12
    if-nez v1, :cond_0

    .line 14
    const-string v1, "[syncAuthAndEfsForAuth]Authentification false => skip_"

    .line 16
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    goto/16 :goto_6

    .line 21
    :cond_0
    aget-boolean v1, p1, v0

    .line 23
    const-wide/16 v3, 0x1

    .line 25
    const-wide/32 v5, 0xffffff

    .line 28
    if-eqz v1, :cond_4

    .line 30
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 38
    invoke-static {v1}, Lcom/android/server/battery/BattUtils;->readNodeAsLong$1(Ljava/lang/String;)J

    .line 41
    move-result-wide v7

    .line 42
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/String;

    .line 50
    invoke-static {v1}, Lcom/android/server/battery/BattUtils;->readNodeAsLong$1(Ljava/lang/String;)J

    .line 53
    move-result-wide v9

    .line 54
    cmp-long v1, v9, v5

    .line 56
    if-eqz v1, :cond_2

    .line 58
    cmp-long v1, v9, v7

    .line 60
    if-gtz v1, :cond_1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move-wide v5, v9

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    :goto_1
    move-wide v5, v7

    .line 66
    :goto_2
    const-string v1, "[syncAuthAndEfsForAuth]efsValue:"

    .line 68
    const-string v11, " ,authValue:"

    .line 70
    invoke-static {v1, v7, v8, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    const-string v7, " =>worseValue:"

    .line 79
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-wide/16 v7, -0x1

    .line 94
    cmp-long v1, v5, v7

    .line 96
    if-nez v1, :cond_3

    .line 98
    const-string v1, "[syncAuthAndEfsForAuth]init worse value: 1"

    .line 100
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    goto :goto_3

    .line 104
    :cond_3
    move-wide v3, v5

    .line 105
    :goto_3
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Ljava/lang/String;

    .line 113
    invoke-static {v3, v4, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 118
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Ljava/lang/String;

    .line 124
    invoke-static {v3, v4, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 127
    goto :goto_6

    .line 128
    :cond_4
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 130
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    move-result-object v1

    .line 134
    check-cast v1, Ljava/lang/String;

    .line 136
    invoke-static {v1}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 139
    move-result-wide v7

    .line 140
    cmp-long v1, v7, v5

    .line 142
    if-eqz v1, :cond_6

    .line 144
    const-wide/16 v5, 0x0

    .line 146
    cmp-long v1, v7, v5

    .line 148
    if-gez v1, :cond_5

    .line 150
    goto :goto_4

    .line 151
    :cond_5
    move-wide v3, v7

    .line 152
    goto :goto_5

    .line 153
    :cond_6
    :goto_4
    const-string v1, "[syncAuthAndEfsForAuth]init authValue:1"

    .line 155
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 160
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Ljava/lang/String;

    .line 166
    invoke-static {v3, v4, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 169
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 171
    const-string v5, "[syncAuthAndEfsForAuth]sync efs value with auth:"

    .line 173
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v1

    .line 183
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 188
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 191
    move-result-object v1

    .line 192
    check-cast v1, Ljava/lang/String;

    .line 194
    invoke-static {v3, v4, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 197
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 199
    goto/16 :goto_0

    .line 201
    :cond_7
    return-void
.end method
