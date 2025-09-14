.class public final Lcom/android/server/chimera/psitracker/PSITracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mFirstTriggeredAfterBooting:Z


# instance fields
.field public db:Lcom/android/server/chimera/psitracker/PSIDBManager;

.field public final mAvailMemRecord240AlarmListener:Lcom/android/server/chimera/psitracker/PSITracker$1;

.field public final mCollector:Lcom/android/server/chimera/psitracker/PSITrackerCollector;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/chimera/SystemRepository;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/chimera/psitracker/PSITracker$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/chimera/psitracker/PSITracker$1;-><init>(Lcom/android/server/chimera/psitracker/PSITracker;)V

    .line 9
    iput-object v0, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mAvailMemRecord240AlarmListener:Lcom/android/server/chimera/psitracker/PSITracker$1;

    .line 11
    iput-object p3, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 13
    iput-object p1, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mContext:Landroid/content/Context;

    .line 15
    new-instance p3, Lcom/android/server/chimera/psitracker/PSITrackerCollector;

    .line 17
    invoke-direct {p3}, Lcom/android/server/chimera/psitracker/PSITrackerCollector;-><init>()V

    .line 20
    iput-object p3, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mCollector:Lcom/android/server/chimera/psitracker/PSITrackerCollector;

    .line 22
    if-eqz p1, :cond_0

    .line 24
    new-instance p3, Ljava/lang/ref/WeakReference;

    .line 26
    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 29
    sput-object p3, Lcom/android/server/chimera/psitracker/PSIDBManager;->mContext:Ljava/lang/ref/WeakReference;

    .line 31
    :cond_0
    new-instance p1, Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;

    .line 33
    invoke-direct {p1, p0, p2}, Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;-><init>(Lcom/android/server/chimera/psitracker/PSITracker;Landroid/os/Looper;)V

    .line 36
    iput-object p1, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mHandler:Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;

    .line 38
    return-void
.end method


# virtual methods
.method public final getPSIValueListDump(Ljava/io/PrintWriter;JJ)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 21
    new-instance v4, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-static {}, Lcom/android/server/chimera/psitracker/PSIDBManager;->getInstance()Lcom/android/server/chimera/psitracker/PSIDBManager;

    .line 29
    move-result-object v5

    .line 30
    iput-object v5, p0, Lcom/android/server/chimera/psitracker/PSITracker;->db:Lcom/android/server/chimera/psitracker/PSIDBManager;

    .line 32
    invoke-virtual {v5}, Lcom/android/server/chimera/psitracker/PSIDBManager;->isDBClosed()Z

    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 38
    const-string p0, "PSITracker"

    .line 40
    const-string/jumbo p1, "getPSI failed! db is closed!"

    .line 43
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void

    .line 47
    :cond_0
    const-wide/16 v5, 0x0

    .line 49
    cmp-long v7, p2, v5

    .line 51
    if-nez v7, :cond_2

    .line 53
    cmp-long v5, p4, v5

    .line 55
    if-eqz v5, :cond_1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p2, p0, Lcom/android/server/chimera/psitracker/PSITracker;->db:Lcom/android/server/chimera/psitracker/PSIDBManager;

    .line 60
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    const-string p2, "SELECT id,availMem,running,cached,checkTime FROM psi_Available_Mem ORDER BY id"

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 68
    const-string v6, "SELECT id,availMem,running,cached,checkTime FROM psi_Available_Mem WHERE checkTime <= "

    .line 70
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    iget-object v6, p0, Lcom/android/server/chimera/psitracker/PSITracker;->db:Lcom/android/server/chimera/psitracker/PSIDBManager;

    .line 75
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    const-string p4, " AND checkTime > "

    .line 83
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string p4, " ORDER BY id"

    .line 88
    invoke-static {v5, p2, p3, p4}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object p2

    .line 92
    :goto_1
    const/4 p3, 0x0

    .line 93
    :try_start_0
    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSITracker;->db:Lcom/android/server/chimera/psitracker/PSIDBManager;

    .line 95
    invoke-virtual {p0, p2}, Lcom/android/server/chimera/psitracker/PSIDBManager;->rawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    .line 98
    move-result-object p3

    .line 99
    if-eqz p3, :cond_3

    .line 101
    const-string/jumbo p0, "id"

    .line 104
    invoke-interface {p3, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 107
    move-result p0

    .line 108
    const-string p2, "availMem"

    .line 110
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 113
    move-result p2

    .line 114
    const-string/jumbo p4, "running"

    .line 117
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 120
    move-result p4

    .line 121
    const-string/jumbo p5, "cached"

    .line 124
    invoke-interface {p3, p5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 127
    move-result p5

    .line 128
    const-string/jumbo v5, "checkTime"

    .line 131
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 134
    move-result v5

    .line 135
    :goto_2
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 138
    move-result v6

    .line 139
    if-eqz v6, :cond_3

    .line 141
    invoke-interface {p3, p0}, Landroid/database/Cursor;->getInt(I)I

    .line 144
    move-result v6

    .line 145
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    move-result-object v6

    .line 149
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getLong(I)J

    .line 155
    move-result-wide v6

    .line 156
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 159
    move-result-object v6

    .line 160
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getLong(I)J

    .line 166
    move-result-wide v6

    .line 167
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 170
    move-result-object v6

    .line 171
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {p3, p5}, Landroid/database/Cursor;->getLong(I)J

    .line 177
    move-result-wide v6

    .line 178
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 181
    move-result-object v6

    .line 182
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 188
    move-result-wide v6

    .line 189
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 192
    move-result-object v6

    .line 193
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    goto :goto_2

    .line 197
    :catchall_0
    move-exception p0

    .line 198
    goto :goto_7

    .line 199
    :catch_0
    move-exception p0

    .line 200
    goto :goto_4

    .line 201
    :cond_3
    if-eqz p3, :cond_4

    .line 203
    :goto_3
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 206
    goto :goto_5

    .line 207
    :goto_4
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    if-eqz p3, :cond_4

    .line 212
    goto :goto_3

    .line 213
    :cond_4
    :goto_5
    const/4 p0, 0x0

    .line 214
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 217
    move-result p2

    .line 218
    if-ge p0, p2, :cond_5

    .line 220
    new-instance p2, Ljava/lang/StringBuilder;

    .line 222
    const-string p3, "AvailMem ID : "

    .line 224
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 230
    move-result-object p3

    .line 231
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    const-string p3, "Availmem : "

    .line 236
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 242
    move-result-object p3

    .line 243
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    const-string p3, ", running : "

    .line 248
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 254
    move-result-object p3

    .line 255
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 258
    const-string p3, ", cached : "

    .line 260
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 266
    move-result-object p3

    .line 267
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    const-string p3, ", checkTime : "

    .line 272
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 278
    move-result-object p3

    .line 279
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    move-result-object p2

    .line 286
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    add-int/lit8 p0, p0, 0x1

    .line 291
    goto :goto_6

    .line 292
    :cond_5
    return-void

    .line 293
    :goto_7
    if-eqz p3, :cond_6

    .line 295
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 298
    :cond_6
    throw p0
.end method

.method public final scheduleAvailMem240PeriodRecord(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    move-result-wide v1

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    move-result-wide v3

    .line 20
    const-wide/32 v5, 0xdbba00

    .line 23
    add-long/2addr v3, v5

    .line 24
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    const-string v4, "Schedule next trigger time interval: 4 /now Time: "

    .line 31
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    const-string v2, "PSITracker"

    .line 43
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    const-string v3, "Schedule next trigger time: "

    .line 50
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 56
    move-result-wide v3

    .line 57
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    const-string v3, " reason = "

    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object p1, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mContext:Landroid/content/Context;

    .line 77
    const-string v1, "alarm"

    .line 79
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    move-result-object p1

    .line 83
    move-object v1, p1

    .line 84
    check-cast v1, Landroid/app/AlarmManager;

    .line 86
    iget-object p1, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mAvailMemRecord240AlarmListener:Lcom/android/server/chimera/psitracker/PSITracker$1;

    .line 88
    invoke-virtual {v1, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 91
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 94
    move-result-wide v3

    .line 95
    iget-object v7, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mHandler:Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;

    .line 97
    const/4 v2, 0x1

    .line 98
    const-string v5, "RecordAvailMem240"

    .line 100
    iget-object v6, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mAvailMemRecord240AlarmListener:Lcom/android/server/chimera/psitracker/PSITracker$1;

    .line 102
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 105
    return-void
.end method
