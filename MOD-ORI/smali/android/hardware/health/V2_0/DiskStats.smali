.class public final Landroid/hardware/health/V2_0/DiskStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public attr:Landroid/hardware/health/V2_0/StorageAttribute;

.field public ioInFlight:J

.field public ioInQueue:J

.field public ioTicks:J

.field public readMerges:J

.field public readSectors:J

.field public readTicks:J

.field public reads:J

.field public writeMerges:J

.field public writeSectors:J

.field public writeTicks:J

.field public writes:J


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-class v3, Landroid/hardware/health/V2_0/DiskStats;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/health/V2_0/DiskStats;

    .line 19
    .line 20
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->reads:J

    .line 21
    .line 22
    iget-wide v4, p1, Landroid/hardware/health/V2_0/DiskStats;->reads:J

    .line 23
    .line 24
    cmp-long v2, v2, v4

    .line 25
    .line 26
    if-eqz v2, :cond_3

    .line 27
    .line 28
    return v1

    .line 29
    :cond_3
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->readMerges:J

    .line 30
    .line 31
    iget-wide v4, p1, Landroid/hardware/health/V2_0/DiskStats;->readMerges:J

    .line 32
    .line 33
    cmp-long v2, v2, v4

    .line 34
    .line 35
    if-eqz v2, :cond_4

    .line 36
    .line 37
    return v1

    .line 38
    :cond_4
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->readSectors:J

    .line 39
    .line 40
    iget-wide v4, p1, Landroid/hardware/health/V2_0/DiskStats;->readSectors:J

    .line 41
    .line 42
    cmp-long v2, v2, v4

    .line 43
    .line 44
    if-eqz v2, :cond_5

    .line 45
    .line 46
    return v1

    .line 47
    :cond_5
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->readTicks:J

    .line 48
    .line 49
    iget-wide v4, p1, Landroid/hardware/health/V2_0/DiskStats;->readTicks:J

    .line 50
    .line 51
    cmp-long v2, v2, v4

    .line 52
    .line 53
    if-eqz v2, :cond_6

    .line 54
    .line 55
    return v1

    .line 56
    :cond_6
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->writes:J

    .line 57
    .line 58
    iget-wide v4, p1, Landroid/hardware/health/V2_0/DiskStats;->writes:J

    .line 59
    .line 60
    cmp-long v2, v2, v4

    .line 61
    .line 62
    if-eqz v2, :cond_7

    .line 63
    .line 64
    return v1

    .line 65
    :cond_7
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->writeMerges:J

    .line 66
    .line 67
    iget-wide v4, p1, Landroid/hardware/health/V2_0/DiskStats;->writeMerges:J

    .line 68
    .line 69
    cmp-long v2, v2, v4

    .line 70
    .line 71
    if-eqz v2, :cond_8

    .line 72
    .line 73
    return v1

    .line 74
    :cond_8
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->writeSectors:J

    .line 75
    .line 76
    iget-wide v4, p1, Landroid/hardware/health/V2_0/DiskStats;->writeSectors:J

    .line 77
    .line 78
    cmp-long v2, v2, v4

    .line 79
    .line 80
    if-eqz v2, :cond_9

    .line 81
    .line 82
    return v1

    .line 83
    :cond_9
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->writeTicks:J

    .line 84
    .line 85
    iget-wide v4, p1, Landroid/hardware/health/V2_0/DiskStats;->writeTicks:J

    .line 86
    .line 87
    cmp-long v2, v2, v4

    .line 88
    .line 89
    if-eqz v2, :cond_a

    .line 90
    .line 91
    return v1

    .line 92
    :cond_a
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->ioInFlight:J

    .line 93
    .line 94
    iget-wide v4, p1, Landroid/hardware/health/V2_0/DiskStats;->ioInFlight:J

    .line 95
    .line 96
    cmp-long v2, v2, v4

    .line 97
    .line 98
    if-eqz v2, :cond_b

    .line 99
    .line 100
    return v1

    .line 101
    :cond_b
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->ioTicks:J

    .line 102
    .line 103
    iget-wide v4, p1, Landroid/hardware/health/V2_0/DiskStats;->ioTicks:J

    .line 104
    .line 105
    cmp-long v2, v2, v4

    .line 106
    .line 107
    if-eqz v2, :cond_c

    .line 108
    .line 109
    return v1

    .line 110
    :cond_c
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->ioInQueue:J

    .line 111
    .line 112
    iget-wide v4, p1, Landroid/hardware/health/V2_0/DiskStats;->ioInQueue:J

    .line 113
    .line 114
    cmp-long v2, v2, v4

    .line 115
    .line 116
    if-eqz v2, :cond_d

    .line 117
    .line 118
    return v1

    .line 119
    :cond_d
    iget-object p0, p0, Landroid/hardware/health/V2_0/DiskStats;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

    .line 120
    .line 121
    iget-object p1, p1, Landroid/hardware/health/V2_0/DiskStats;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

    .line 122
    .line 123
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    if-nez p0, :cond_e

    .line 128
    .line 129
    return v1

    .line 130
    :cond_e
    return v0
.end method

.method public final hashCode()I
    .locals 13

    .line 1
    iget-wide v0, p0, Landroid/hardware/health/V2_0/DiskStats;->reads:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->readMerges:J

    .line 16
    .line 17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-wide v3, p0, Landroid/hardware/health/V2_0/DiskStats;->readSectors:J

    .line 30
    .line 31
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iget-wide v4, p0, Landroid/hardware/health/V2_0/DiskStats;->readTicks:J

    .line 44
    .line 45
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    iget-wide v5, p0, Landroid/hardware/health/V2_0/DiskStats;->writes:J

    .line 58
    .line 59
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    iget-wide v6, p0, Landroid/hardware/health/V2_0/DiskStats;->writeMerges:J

    .line 72
    .line 73
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    iget-wide v7, p0, Landroid/hardware/health/V2_0/DiskStats;->writeSectors:J

    .line 86
    .line 87
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    iget-wide v8, p0, Landroid/hardware/health/V2_0/DiskStats;->writeTicks:J

    .line 100
    .line 101
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    iget-wide v9, p0, Landroid/hardware/health/V2_0/DiskStats;->ioInFlight:J

    .line 114
    .line 115
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    iget-wide v10, p0, Landroid/hardware/health/V2_0/DiskStats;->ioTicks:J

    .line 128
    .line 129
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    iget-wide v11, p0, Landroid/hardware/health/V2_0/DiskStats;->ioInQueue:J

    .line 142
    .line 143
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v11

    .line 155
    iget-object p0, p0, Landroid/hardware/health/V2_0/DiskStats;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

    .line 156
    .line 157
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v12

    .line 165
    filled-new-array/range {v1 .. v12}, [Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "{.reads = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->reads:J

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", .readMerges = "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->readMerges:J

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", .readSectors = "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->readSectors:J

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", .readTicks = "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->readTicks:J

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", .writes = "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->writes:J

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", .writeMerges = "

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->writeMerges:J

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", .writeSectors = "

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->writeSectors:J

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", .writeTicks = "

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->writeTicks:J

    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, ", .ioInFlight = "

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->ioInFlight:J

    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, ", .ioTicks = "

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->ioTicks:J

    .line 100
    .line 101
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, ", .ioInQueue = "

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->ioInQueue:J

    .line 110
    .line 111
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, ", .attr = "

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object p0, p0, Landroid/hardware/health/V2_0/DiskStats;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

    .line 120
    .line 121
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string/jumbo p0, "}"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    return-object p0
.end method
