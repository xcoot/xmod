.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object/from16 v0, p1

    .line 9
    .line 10
    check-cast v0, Landroid/view/Display$Mode;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :pswitch_0
    move-object/from16 v0, p1

    .line 18
    .line 19
    check-cast v0, Landroid/net/NetworkStats$Entry;

    .line 20
    .line 21
    sget v1, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    .line 22
    .line 23
    new-instance v1, Landroid/net/NetworkStats$Entry;

    .line 24
    .line 25
    move-object v2, v1

    .line 26
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getUid()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getSet()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    .line 35
    .line 36
    .line 37
    move-result-wide v10

    .line 38
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    .line 39
    .line 40
    .line 41
    move-result-wide v12

    .line 42
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    .line 43
    .line 44
    .line 45
    move-result-wide v14

    .line 46
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    .line 47
    .line 48
    .line 49
    move-result-wide v16

    .line 50
    const/4 v7, -0x1

    .line 51
    const-wide/16 v18, 0x0

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v8, -0x1

    .line 56
    const/4 v9, -0x1

    .line 57
    invoke-direct/range {v2 .. v19}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    .line 58
    .line 59
    .line 60
    return-object v1

    .line 61
    :pswitch_1
    move-object/from16 v0, p1

    .line 62
    .line 63
    check-cast v0, Landroid/net/NetworkStats$Entry;

    .line 64
    .line 65
    sget v1, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    .line 66
    .line 67
    new-instance v1, Landroid/net/NetworkStats$Entry;

    .line 68
    .line 69
    move-object v2, v1

    .line 70
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getSet()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    .line 75
    .line 76
    .line 77
    move-result-wide v10

    .line 78
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    .line 79
    .line 80
    .line 81
    move-result-wide v12

    .line 82
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    .line 83
    .line 84
    .line 85
    move-result-wide v14

    .line 86
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    .line 87
    .line 88
    .line 89
    move-result-wide v16

    .line 90
    const/4 v7, -0x1

    .line 91
    const-wide/16 v18, 0x0

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    const/4 v4, -0x1

    .line 95
    const/4 v6, 0x0

    .line 96
    const/4 v8, -0x1

    .line 97
    const/4 v9, -0x1

    .line 98
    invoke-direct/range {v2 .. v19}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    .line 99
    .line 100
    .line 101
    return-object v1

    .line 102
    :pswitch_2
    move-object/from16 v0, p1

    .line 103
    .line 104
    check-cast v0, Landroid/net/NetworkStats$Entry;

    .line 105
    .line 106
    sget v1, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    .line 107
    .line 108
    new-instance v1, Landroid/net/NetworkStats$Entry;

    .line 109
    .line 110
    move-object v2, v1

    .line 111
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getUid()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTag()I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getMetered()I

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    .line 124
    .line 125
    .line 126
    move-result-wide v10

    .line 127
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    .line 128
    .line 129
    .line 130
    move-result-wide v12

    .line 131
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    .line 132
    .line 133
    .line 134
    move-result-wide v14

    .line 135
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    .line 136
    .line 137
    .line 138
    move-result-wide v16

    .line 139
    const/4 v5, -0x1

    .line 140
    const-wide/16 v18, 0x0

    .line 141
    .line 142
    const/4 v3, 0x0

    .line 143
    const/4 v8, -0x1

    .line 144
    const/4 v9, -0x1

    .line 145
    invoke-direct/range {v2 .. v19}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    .line 146
    .line 147
    .line 148
    return-object v1

    .line 149
    :pswitch_3
    move-object/from16 v0, p1

    .line 150
    .line 151
    check-cast v0, Landroid/net/NetworkStats$Entry;

    .line 152
    .line 153
    sget v1, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    .line 154
    .line 155
    new-instance v1, Landroid/net/NetworkStats$Entry;

    .line 156
    .line 157
    move-object v2, v1

    .line 158
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getUid()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    .line 163
    .line 164
    .line 165
    move-result-wide v10

    .line 166
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    .line 167
    .line 168
    .line 169
    move-result-wide v12

    .line 170
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    .line 171
    .line 172
    .line 173
    move-result-wide v14

    .line 174
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    .line 175
    .line 176
    .line 177
    move-result-wide v16

    .line 178
    const/4 v7, -0x1

    .line 179
    const-wide/16 v18, 0x0

    .line 180
    .line 181
    const/4 v3, 0x0

    .line 182
    const/4 v5, -0x1

    .line 183
    const/4 v6, 0x0

    .line 184
    const/4 v8, -0x1

    .line 185
    const/4 v9, -0x1

    .line 186
    invoke-direct/range {v2 .. v19}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    .line 187
    .line 188
    .line 189
    return-object v1

    .line 190
    nop

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
