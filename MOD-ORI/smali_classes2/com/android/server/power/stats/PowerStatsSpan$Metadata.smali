.class public final Lcom/android/server/power/stats/PowerStatsSpan$Metadata;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;


# instance fields
.field public final mId:J

.field public final mSections:Ljava/util/List;

.field public final mTimeFrames:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->COMPARATOR:Ljava/util/Comparator;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    .line 17
    .line 18
    iput-wide p1, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mId:J

    .line 19
    .line 20
    return-void
.end method

.method public static read(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/power/stats/PowerStatsSpan$Metadata;
    .locals 11

    .line 1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move-object v2, v1

    .line 7
    :goto_0
    const/4 v3, 0x1

    .line 8
    if-eq v0, v3, :cond_5

    .line 9
    .line 10
    const/4 v3, 0x3

    .line 11
    const-string/jumbo v4, "metadata"

    .line 12
    .line 13
    .line 14
    if-ne v0, v3, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_5

    .line 25
    .line 26
    :cond_0
    const/4 v3, 0x2

    .line 27
    if-ne v0, v3, :cond_4

    .line 28
    .line 29
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    const-string/jumbo v0, "version"

    .line 40
    .line 41
    .line 42
    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    sget-object v2, Lcom/android/server/power/stats/PowerStatsSpan;->DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    .line 47
    .line 48
    if-ne v0, v3, :cond_1

    .line 49
    .line 50
    const-string v0, "id"

    .line 51
    .line 52
    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    new-instance v0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 57
    .line 58
    invoke-direct {v0, v2, v3}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;-><init>(J)V

    .line 59
    .line 60
    .line 61
    move-object v2, v0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const-string p0, "Incompatible version "

    .line 64
    .line 65
    const-string v2, "; expected 2"

    .line 66
    .line 67
    const-string v3, "PowerStatsStore"

    .line 68
    .line 69
    invoke-static {v0, p0, v2, v3}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_2
    if-eqz v2, :cond_3

    .line 74
    .line 75
    const-string/jumbo v3, "timeframe"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    new-instance v0, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    .line 85
    .line 86
    const-string/jumbo v3, "monotonic"

    .line 87
    .line 88
    .line 89
    invoke-interface {p0, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 90
    .line 91
    .line 92
    move-result-wide v5

    .line 93
    const-string/jumbo v3, "start"

    .line 94
    .line 95
    .line 96
    invoke-interface {p0, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v7

    .line 100
    const-string v3, "duration"

    .line 101
    .line 102
    invoke-interface {p0, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 103
    .line 104
    .line 105
    move-result-wide v9

    .line 106
    move-object v4, v0

    .line 107
    invoke-direct/range {v4 .. v10}, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;-><init>(JJJ)V

    .line 108
    .line 109
    .line 110
    iget-object v3, v2, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    .line 111
    .line 112
    check-cast v3, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    if-eqz v2, :cond_4

    .line 119
    .line 120
    const-string/jumbo v3, "section"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    const-string/jumbo v0, "type"

    .line 130
    .line 131
    .line 132
    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object v3, v2, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    .line 137
    .line 138
    check-cast v3, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-nez v3, :cond_4

    .line 145
    .line 146
    iget-object v3, v2, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    .line 147
    .line 148
    check-cast v3, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    :cond_4
    :goto_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_5
    return-object v2
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;Z)V
    .locals 3

    .line 1
    const-string v0, "Span "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    .line 7
    .line 8
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    check-cast v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 31
    .line 32
    .line 33
    :cond_0
    const/4 v0, 0x1

    .line 34
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    .line 35
    .line 36
    check-cast v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-ge v0, v1, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    .line 45
    .line 46
    check-cast v1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    .line 53
    .line 54
    const-string v2, "     "

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    if-eqz p2, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    .line 74
    .line 75
    check-cast p0, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    if-eqz p2, :cond_2

    .line 86
    .line 87
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    check-cast p2, Ljava/lang/String;

    .line 92
    .line 93
    const-string/jumbo v0, "section"

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 104
    .line 105
    .line 106
    :cond_3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/util/IndentingPrintWriter;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 9
    .line 10
    .line 11
    iget-wide v2, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mId:J

    .line 12
    .line 13
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "id"

    .line 18
    .line 19
    invoke-virtual {v1, v3, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    .line 24
    .line 25
    check-cast v3, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ge v2, v3, :cond_0

    .line 32
    .line 33
    iget-object v3, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    .line 34
    .line 35
    check-cast v3, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    .line 42
    .line 43
    const-string/jumbo v4, "timeframe=["

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v1}, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 50
    .line 51
    .line 52
    const-string v3, "] "

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    .line 61
    .line 62
    check-cast p0, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Ljava/lang/String;

    .line 79
    .line 80
    const-string/jumbo v3, "section"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v3, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->flush()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0
.end method
