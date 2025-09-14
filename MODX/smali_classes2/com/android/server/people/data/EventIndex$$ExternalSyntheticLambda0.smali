.class public final synthetic Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda0;
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
    iput p1, p0, Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda0;->$r8$classId:I

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
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Long;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide p0

    .line 12
    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->toLocalDateTime(J)Ljava/time/LocalDateTime;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMinute()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->toLocalDateTime(J)Ljava/time/LocalDateTime;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    sget-object p1, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    rem-int/lit8 v0, v0, 0x2

    .line 31
    .line 32
    int-to-long v0, v0

    .line 33
    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->minusMinutes(J)Ljava/time/LocalDateTime;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lcom/android/server/people/data/EventIndex;->toEpochMilli(Ljava/time/LocalDateTime;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-wide/16 v0, 0x2

    .line 46
    .line 47
    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusMinutes(J)Ljava/time/LocalDateTime;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Lcom/android/server/people/data/EventIndex;->toEpochMilli(Ljava/time/LocalDateTime;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p1, p0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 65
    .line 66
    .line 67
    move-result-wide p0

    .line 68
    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->toLocalDateTime(J)Ljava/time/LocalDateTime;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    sget-object p1, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {p0}, Lcom/android/server/people/data/EventIndex;->toEpochMilli(Ljava/time/LocalDateTime;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v0

    .line 82
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-wide/16 v0, 0x1

    .line 87
    .line 88
    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {p0}, Lcom/android/server/people/data/EventIndex;->toEpochMilli(Ljava/time/LocalDateTime;)J

    .line 93
    .line 94
    .line 95
    move-result-wide v0

    .line 96
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {p1, p0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0

    .line 105
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 106
    .line 107
    .line 108
    move-result-wide p0

    .line 109
    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->toLocalDateTime(J)Ljava/time/LocalDateTime;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getHour()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->toLocalDateTime(J)Ljava/time/LocalDateTime;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    sget-object p1, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    .line 122
    .line 123
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    rem-int/lit8 v0, v0, 0x4

    .line 128
    .line 129
    int-to-long v0, v0

    .line 130
    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->minusHours(J)Ljava/time/LocalDateTime;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-static {p0}, Lcom/android/server/people/data/EventIndex;->toEpochMilli(Ljava/time/LocalDateTime;)J

    .line 135
    .line 136
    .line 137
    move-result-wide v0

    .line 138
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const-wide/16 v0, 0x4

    .line 143
    .line 144
    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-static {p0}, Lcom/android/server/people/data/EventIndex;->toEpochMilli(Ljava/time/LocalDateTime;)J

    .line 149
    .line 150
    .line 151
    move-result-wide v0

    .line 152
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-static {p1, p0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    return-object p0

    .line 161
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 162
    .line 163
    .line 164
    move-result-wide p0

    .line 165
    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->toLocalDateTime(J)Ljava/time/LocalDateTime;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    sget-object p1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    .line 170
    .line 171
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-static {p0}, Lcom/android/server/people/data/EventIndex;->toEpochMilli(Ljava/time/LocalDateTime;)J

    .line 176
    .line 177
    .line 178
    move-result-wide v0

    .line 179
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    const-wide/16 v0, 0x1

    .line 184
    .line 185
    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-static {p0}, Lcom/android/server/people/data/EventIndex;->toEpochMilli(Ljava/time/LocalDateTime;)J

    .line 190
    .line 191
    .line 192
    move-result-wide v0

    .line 193
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-static {p1, p0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    return-object p0

    .line 202
    nop

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
