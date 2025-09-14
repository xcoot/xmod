.class public final Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field public final synthetic this$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

.field public final visitor:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/util/ForegroundServiceMgr;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->this$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p1, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;->filterUid:I

    .line 13
    .line 14
    iput v0, p1, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;->curUid:I

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p1, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;->accessTimePerOp:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->visitor:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final getAccessTimeOfOp(ILjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->this$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mMapFGSRecord:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/android/server/am/mars/ForegroundServiceRecord;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->visitor:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;->accessTimePerOp:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/util/ArrayList;

    .line 24
    .line 25
    if-eqz p0, :cond_6

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_6

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/lit8 v0, v0, -0x1

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Ljava/lang/Long;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    sget p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->$r8$clinit:I

    .line 50
    .line 51
    const-string p0, "access at "

    .line 52
    .line 53
    const-string v2, ", "

    .line 54
    .line 55
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-wide/16 v2, 0x0

    .line 60
    .line 61
    cmp-long v4, v0, v2

    .line 62
    .line 63
    if-nez v4, :cond_0

    .line 64
    .line 65
    const-string/jumbo v4, "null"

    .line 66
    .line 67
    .line 68
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    const-string v5, "%16s"

    .line 73
    .line 74
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 80
    .line 81
    const-string/jumbo v5, "yyyy/MM/dd HH:mm"

    .line 82
    .line 83
    .line 84
    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v5, Ljava/util/Date;

    .line 88
    .line 89
    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    :goto_0
    const-string v5, "ForegroundServiceMgr"

    .line 97
    .line 98
    invoke-static {p0, v4, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    if-eqz p1, :cond_6

    .line 102
    .line 103
    iget-wide v4, p1, Lcom/android/server/am/mars/ForegroundServiceRecord;->mFGSStartTime:J

    .line 104
    .line 105
    iget-wide v6, p1, Lcom/android/server/am/mars/ForegroundServiceRecord;->mFGSEndTime:J

    .line 106
    .line 107
    invoke-static {v0, v1}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->roundDownToMinute(J)J

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    invoke-static {v4, v5}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->roundDownToMinute(J)J

    .line 112
    .line 113
    .line 114
    move-result-wide v4

    .line 115
    invoke-static {v6, v7}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->roundDownToMinute(J)J

    .line 116
    .line 117
    .line 118
    move-result-wide v6

    .line 119
    cmp-long p0, v4, v2

    .line 120
    .line 121
    if-lez p0, :cond_6

    .line 122
    .line 123
    cmp-long p0, v6, v4

    .line 124
    .line 125
    if-ltz p0, :cond_6

    .line 126
    .line 127
    cmp-long p0, v4, v0

    .line 128
    .line 129
    if-gtz p0, :cond_6

    .line 130
    .line 131
    cmp-long p0, v0, v6

    .line 132
    .line 133
    if-gtz p0, :cond_6

    .line 134
    .line 135
    const/4 p0, 0x0

    .line 136
    if-nez p2, :cond_1

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_1
    const-string/jumbo v0, "location"

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_2

    .line 147
    .line 148
    const/16 p0, 0x8

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_2
    const-string/jumbo v0, "record"

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_3

    .line 159
    .line 160
    const/16 p0, 0x80

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_3
    const-string v0, "audio"

    .line 164
    .line 165
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_4

    .line 170
    .line 171
    const/4 p0, 0x2

    .line 172
    goto :goto_1

    .line 173
    :cond_4
    const-string/jumbo v0, "camera"

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    if-eqz p2, :cond_5

    .line 181
    .line 182
    const/16 p0, 0x40

    .line 183
    .line 184
    :cond_5
    :goto_1
    iget p2, p1, Lcom/android/server/am/mars/ForegroundServiceRecord;->mUsingForegroundType:I

    .line 185
    .line 186
    or-int/2addr p0, p2

    .line 187
    iput p0, p1, Lcom/android/server/am/mars/ForegroundServiceRecord;->mUsingForegroundType:I

    .line 188
    .line 189
    :cond_6
    return-void
.end method
