.class public final Lcom/android/server/power/stats/AggregatedPowerStatsSection;
.super Lcom/android/server/power/stats/PowerStatsSpan$Section;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAggregatedPowerStats:Lcom/android/server/power/stats/AggregatedPowerStats;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/AggregatedPowerStats;)V
    .locals 1

    .line 1
    const-string v0, "aggregated-power-stats"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/android/server/power/stats/PowerStatsSpan$Section;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/power/stats/AggregatedPowerStatsSection;->mAggregatedPowerStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/AggregatedPowerStatsSection;->mAggregatedPowerStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/AggregatedPowerStats;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/AggregatedPowerStatsSection;->mAggregatedPowerStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const-string v1, "agg-power-stats"

    .line 8
    .line 9
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_0
    iget-object v4, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-ge v3, v4, :cond_6

    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 29
    .line 30
    iget-object v5, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mGenericPowerComponent:Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 31
    .line 32
    if-eq v4, v5, :cond_5

    .line 33
    .line 34
    iget-object v5, v4, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 35
    .line 36
    if-nez v5, :cond_0

    .line 37
    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_0
    const-string/jumbo v5, "power_component"

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 44
    .line 45
    .line 46
    const-string v6, "id"

    .line 47
    .line 48
    iget v7, v4, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->powerComponentId:I

    .line 49
    .line 50
    invoke-interface {p1, v0, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 51
    .line 52
    .line 53
    iget-object v6, v4, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 54
    .line 55
    invoke-virtual {v6, p1}, Lcom/android/internal/os/PowerStats$Descriptor;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 56
    .line 57
    .line 58
    iget-object v6, v4, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/MultiStateStats;

    .line 59
    .line 60
    if-eqz v6, :cond_1

    .line 61
    .line 62
    const-string v6, "device-stats"

    .line 63
    .line 64
    invoke-interface {p1, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    .line 66
    .line 67
    iget-object v7, v4, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/MultiStateStats;

    .line 68
    .line 69
    invoke-virtual {v7, p1}, Lcom/android/server/power/stats/MultiStateStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    .line 74
    .line 75
    :cond_1
    move v6, v2

    .line 76
    :goto_1
    iget-object v7, v4, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    .line 77
    .line 78
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-ge v6, v7, :cond_2

    .line 83
    .line 84
    const-string/jumbo v7, "state-stats"

    .line 85
    .line 86
    .line 87
    invoke-interface {p1, v0, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    .line 89
    .line 90
    iget-object v8, v4, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    .line 91
    .line 92
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    const-string v9, "key"

    .line 97
    .line 98
    invoke-interface {p1, v0, v9, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    .line 100
    .line 101
    iget-object v8, v4, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    .line 102
    .line 103
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    check-cast v8, Lcom/android/server/power/stats/MultiStateStats;

    .line 108
    .line 109
    invoke-virtual {v8, p1}, Lcom/android/server/power/stats/MultiStateStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 110
    .line 111
    .line 112
    invoke-interface {p1, v0, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    .line 114
    .line 115
    add-int/lit8 v6, v6, 0x1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    iget-object v6, v4, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    .line 119
    .line 120
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    add-int/lit8 v6, v6, -0x1

    .line 125
    .line 126
    :goto_2
    if-ltz v6, :cond_4

    .line 127
    .line 128
    iget-object v7, v4, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    .line 129
    .line 130
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    iget-object v8, v4, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    .line 135
    .line 136
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    check-cast v8, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;

    .line 141
    .line 142
    iget-object v9, v8, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/MultiStateStats;

    .line 143
    .line 144
    if-eqz v9, :cond_3

    .line 145
    .line 146
    const-string/jumbo v9, "uid-stats"

    .line 147
    .line 148
    .line 149
    invoke-interface {p1, v0, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    .line 151
    .line 152
    const-string/jumbo v10, "uid"

    .line 153
    .line 154
    .line 155
    invoke-interface {p1, v0, v10, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 156
    .line 157
    .line 158
    iget-object v7, v8, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/MultiStateStats;

    .line 159
    .line 160
    invoke-virtual {v7, p1}, Lcom/android/server/power/stats/MultiStateStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 161
    .line 162
    .line 163
    invoke-interface {p1, v0, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 164
    .line 165
    .line 166
    :cond_3
    add-int/lit8 v6, v6, -0x1

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_4
    invoke-interface {p1, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    .line 171
    .line 172
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    .line 173
    .line 174
    .line 175
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_6
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 180
    .line 181
    .line 182
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    .line 183
    .line 184
    .line 185
    return-void
.end method
