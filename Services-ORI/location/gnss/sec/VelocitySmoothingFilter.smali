.class public final Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public isDriving:Z

.field public mDriveCount:I

.field public mPrevLocation:Landroid/location/Location;


# virtual methods
.method public final getFilteredLocation(Landroid/location/Location;)Landroid/location/Location;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mPrevLocation:Landroid/location/Location;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mPrevLocation:Landroid/location/Location;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0x40b1c28f    # 5.555f

    .line 13
    .line 14
    .line 15
    cmpg-float v0, v0, v1

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    const-string v3, ", just return"

    .line 20
    .line 21
    const-string v4, "VSFilter"

    .line 22
    .line 23
    if-gez v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v5, "Current speed="

    .line 28
    .line 29
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iput-boolean v2, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->isDriving:Z

    .line 50
    .line 51
    iput v2, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mDriveCount:I

    .line 52
    .line 53
    iput-object v1, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mPrevLocation:Landroid/location/Location;

    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    .line 57
    .line 58
    .line 59
    move-result-wide v5

    .line 60
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mPrevLocation:Landroid/location/Location;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    .line 63
    .line 64
    .line 65
    move-result-wide v7

    .line 66
    sub-long/2addr v5, v7

    .line 67
    const-wide/16 v7, 0x7d0

    .line 68
    .line 69
    cmp-long v0, v5, v7

    .line 70
    .line 71
    if-lez v0, :cond_2

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v5, "Current time="

    .line 76
    .line 77
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    .line 81
    .line 82
    .line 83
    move-result-wide v5

    .line 84
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v5, ", Previous time="

    .line 88
    .line 89
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v5, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mPrevLocation:Landroid/location/Location;

    .line 93
    .line 94
    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    .line 95
    .line 96
    .line 97
    move-result-wide v5

    .line 98
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    iput-boolean v2, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->isDriving:Z

    .line 112
    .line 113
    iput v2, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mDriveCount:I

    .line 114
    .line 115
    iput-object v1, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mPrevLocation:Landroid/location/Location;

    .line 116
    .line 117
    return-object p1

    .line 118
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->isDriving:Z

    .line 119
    .line 120
    if-nez v0, :cond_3

    .line 121
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v1, "Not driving yet, cnt="

    .line 125
    .line 126
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget v1, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mDriveCount:I

    .line 130
    .line 131
    invoke-static {v0, v1, v4}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget v0, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mDriveCount:I

    .line 135
    .line 136
    const/4 v1, 0x1

    .line 137
    add-int/2addr v0, v1

    .line 138
    iput v0, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mDriveCount:I

    .line 139
    .line 140
    const/4 v2, 0x5

    .line 141
    if-lt v0, v2, :cond_4

    .line 142
    .line 143
    iput-boolean v1, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->isDriving:Z

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mPrevLocation:Landroid/location/Location;

    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    sub-float/2addr v0, v1

    .line 157
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    const v2, 0x408554ca

    .line 162
    .line 163
    .line 164
    cmpl-float v1, v1, v2

    .line 165
    .line 166
    if-ltz v1, :cond_4

    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    const/high16 v2, 0x40000000    # 2.0f

    .line 173
    .line 174
    div-float/2addr v0, v2

    .line 175
    add-float/2addr v0, v1

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string v2, "Driving. original speed="

    .line 179
    .line 180
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v2, ", set to="

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v0}, Landroid/location/Location;->setSpeed(F)V

    .line 206
    .line 207
    .line 208
    :cond_4
    :goto_0
    iput-object p1, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mPrevLocation:Landroid/location/Location;

    .line 209
    .line 210
    return-object p1
.end method
