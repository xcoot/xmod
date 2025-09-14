.class public final Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService;
.super Landroid/os/IStatsBootstrapAtomService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final reportBootstrapAtom(Landroid/os/StatsBootstrapAtom;)V
    .locals 8

    .line 1
    iget p0, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    .line 2
    .line 3
    const-string v0, "StatsBootstrapAtomService"

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-lt p0, v1, :cond_8

    .line 7
    .line 8
    const/16 v2, 0x2710

    .line 9
    .line 10
    if-lt p0, v2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget v2, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iget-object v2, p1, Landroid/os/StatsBootstrapAtom;->values:[Landroid/os/StatsBootstrapAtomValue;

    .line 25
    .line 26
    array-length v3, v2

    .line 27
    const/4 v4, 0x0

    .line 28
    :goto_0
    if-ge v4, v3, :cond_7

    .line 29
    .line 30
    aget-object v5, v2, v4

    .line 31
    .line 32
    invoke-virtual {v5}, Landroid/os/StatsBootstrapAtomValue;->getTag()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-eqz v6, :cond_6

    .line 37
    .line 38
    if-eq v6, v1, :cond_5

    .line 39
    .line 40
    const/4 v7, 0x2

    .line 41
    if-eq v6, v7, :cond_4

    .line 42
    .line 43
    const/4 v7, 0x3

    .line 44
    if-eq v6, v7, :cond_3

    .line 45
    .line 46
    const/4 v7, 0x4

    .line 47
    if-eq v6, v7, :cond_2

    .line 48
    .line 49
    const/4 v7, 0x5

    .line 50
    if-eq v6, v7, :cond_1

    .line 51
    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v1, "Unexpected value type "

    .line 55
    .line 56
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Landroid/os/StatsBootstrapAtomValue;->getTag()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, " when logging atom "

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget p1, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    .line 72
    .line 73
    invoke-static {p0, p1, v0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_1
    invoke-virtual {v5}, Landroid/os/StatsBootstrapAtomValue;->getBytesValue()[B

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {p0, v5}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {v5}, Landroid/os/StatsBootstrapAtomValue;->getStringValue()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {p0, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {v5}, Landroid/os/StatsBootstrapAtomValue;->getFloatValue()F

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    invoke-virtual {p0, v5}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    invoke-virtual {v5}, Landroid/os/StatsBootstrapAtomValue;->getLongValue()J

    .line 102
    .line 103
    .line 104
    move-result-wide v5

    .line 105
    invoke-virtual {p0, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    invoke-virtual {v5}, Landroid/os/StatsBootstrapAtomValue;->getIntValue()I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    invoke-virtual {p0, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_6
    invoke-virtual {v5}, Landroid/os/StatsBootstrapAtomValue;->getBoolValue()Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    invoke-virtual {p0, v5}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 122
    .line 123
    .line 124
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_7
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_8
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v1, "Atom ID "

    .line 142
    .line 143
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget p1, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    .line 147
    .line 148
    const-string v1, " is not a valid atom ID"

    .line 149
    .line 150
    invoke-static {p0, p1, v1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method
