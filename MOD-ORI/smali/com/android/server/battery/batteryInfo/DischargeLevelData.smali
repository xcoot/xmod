.class public final Lcom/android/server/battery/batteryInfo/DischargeLevelData;
.super Lcom/android/server/battery/batteryInfo/BaseCycleData;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final setCycle(Lcom/android/server/battery/batteryInfo/FullStatusUsageData;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Ljava/lang/Long;

    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/server/battery/batteryInfo/AsocData$$ExternalSyntheticLambda1;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/stream/LongStream;->max()Ljava/util/OptionalLong;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/util/OptionalLong;->getAsLong()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, "[setCycle]mCurrentValues:"

    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v4, "=> maxDischargeLevel:"

    .line 43
    .line 44
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    const-wide/16 v4, 0x64

    .line 60
    .line 61
    if-nez p1, :cond_0

    .line 62
    .line 63
    div-long/2addr v0, v4

    .line 64
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string v0, "%d"

    .line 73
    .line 74
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    iget-object v2, p1, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v2, [Ljava/lang/Long;

    .line 82
    .line 83
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    new-instance v6, Lcom/android/server/battery/batteryInfo/AsocData$$ExternalSyntheticLambda1;

    .line 88
    .line 89
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-interface {v2, v6}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-interface {v2}, Ljava/util/stream/LongStream;->max()Ljava/util/OptionalLong;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v2}, Ljava/util/OptionalLong;->getAsLong()J

    .line 101
    .line 102
    .line 103
    move-result-wide v6

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p1, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 110
    .line 111
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p1, "=> maxFullStatusUsage:"

    .line 119
    .line 120
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    div-long/2addr v0, v4

    .line 134
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    const-wide/16 v0, 0x2d0

    .line 139
    .line 140
    div-long/2addr v6, v0

    .line 141
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    const-string v0, "%d %d"

    .line 150
    .line 151
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    :goto_0
    const-string v0, "[setCycle]cycleStr:"

    .line 156
    .line 157
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    const-string p0, "/sys/class/power_supply/battery/battery_cycle"

    .line 165
    .line 166
    invoke-static {p0, p1}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method public final updateEfsFromSBP(J)V
    .locals 7

    .line 1
    const-string v0, "[updateEfsFromSBP]addtionalValue:"

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget v2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 14
    .line 15
    if-ge v0, v2, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    .line 18
    .line 19
    aget-boolean v2, v2, v0

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    iget-object v4, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v4, [Ljava/lang/Long;

    .line 38
    .line 39
    const-wide/16 v5, 0x64

    .line 40
    .line 41
    mul-long/2addr v2, v5

    .line 42
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    aput-object v2, v4, v0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const-string v2, "[updateEfsFromSBP]Authentification false => use only efs_"

    .line 50
    .line 51
    invoke-static {v0, v2, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v2, [Ljava/lang/Long;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v3}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v3

    .line 70
    add-long/2addr v3, p1

    .line 71
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    aput-object v3, v2, v0

    .line 76
    .line 77
    :goto_1
    iget-object v2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Ljava/lang/String;

    .line 84
    .line 85
    iget-object v3, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v3, [Ljava/lang/Long;

    .line 88
    .line 89
    aget-object v3, v3, v0

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 92
    .line 93
    .line 94
    move-result-wide v3

    .line 95
    invoke-static {v3, v4, v2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    add-int/lit8 v0, v0, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string p2, "[updateEfsFromSBP]mCurrentValues:"

    .line 104
    .line 105
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 109
    .line 110
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    return-void
.end method
