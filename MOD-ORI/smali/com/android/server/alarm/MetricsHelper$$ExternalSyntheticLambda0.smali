.class public final synthetic Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/alarm/MetricsHelper;

.field public final synthetic f$1:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/MetricsHelper;Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/alarm/MetricsHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Supplier;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/alarm/MetricsHelper;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Supplier;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/16 v3, 0x277a

    .line 13
    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    iget-object v14, v2, Lcom/android/server/alarm/MetricsHelper;->mLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v14

    .line 23
    :try_start_0
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/server/alarm/AlarmStore;

    .line 28
    .line 29
    move-object v2, v0

    .line 30
    check-cast v2, Lcom/android/server/alarm/LazyAlarmStore;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    new-instance v5, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    invoke-direct {v5, v6}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>(I)V

    .line 42
    .line 43
    .line 44
    check-cast v0, Lcom/android/server/alarm/LazyAlarmStore;

    .line 45
    .line 46
    invoke-virtual {v0, v5}, Lcom/android/server/alarm/LazyAlarmStore;->getCount(Ljava/util/function/Predicate;)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    new-instance v6, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    .line 51
    .line 52
    const/4 v7, 0x5

    .line 53
    invoke-direct {v6, v7}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v6}, Lcom/android/server/alarm/LazyAlarmStore;->getCount(Ljava/util/function/Predicate;)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    new-instance v7, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    .line 61
    .line 62
    const/4 v8, 0x6

    .line 63
    invoke-direct {v7, v8}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v7}, Lcom/android/server/alarm/LazyAlarmStore;->getCount(Ljava/util/function/Predicate;)I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    new-instance v8, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    .line 71
    .line 72
    const/4 v9, 0x7

    .line 73
    invoke-direct {v8, v9}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v8}, Lcom/android/server/alarm/LazyAlarmStore;->getCount(Ljava/util/function/Predicate;)I

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    new-instance v9, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    .line 81
    .line 82
    const/16 v10, 0x8

    .line 83
    .line 84
    invoke-direct {v9, v10}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v9}, Lcom/android/server/alarm/LazyAlarmStore;->getCount(Ljava/util/function/Predicate;)I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    new-instance v10, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    .line 92
    .line 93
    const/16 v11, 0x9

    .line 94
    .line 95
    invoke-direct {v10, v11}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v10}, Lcom/android/server/alarm/LazyAlarmStore;->getCount(Ljava/util/function/Predicate;)I

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    new-instance v11, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    .line 103
    .line 104
    const/16 v12, 0xa

    .line 105
    .line 106
    invoke-direct {v11, v12}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v11}, Lcom/android/server/alarm/LazyAlarmStore;->getCount(Ljava/util/function/Predicate;)I

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    new-instance v12, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    .line 114
    .line 115
    const/4 v13, 0x1

    .line 116
    invoke-direct {v12, v13}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v12}, Lcom/android/server/alarm/LazyAlarmStore;->getCount(Ljava/util/function/Predicate;)I

    .line 120
    .line 121
    .line 122
    move-result v12

    .line 123
    new-instance v13, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda11;

    .line 124
    .line 125
    invoke-direct {v13, v3, v4}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda11;-><init>(J)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v13}, Lcom/android/server/alarm/LazyAlarmStore;->getCount(Ljava/util/function/Predicate;)I

    .line 129
    .line 130
    .line 131
    move-result v13

    .line 132
    new-instance v3, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    .line 133
    .line 134
    const/4 v4, 0x2

    .line 135
    invoke-direct {v3, v4}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v3}, Lcom/android/server/alarm/LazyAlarmStore;->getCount(Ljava/util/function/Predicate;)I

    .line 139
    .line 140
    .line 141
    move-result v15

    .line 142
    new-instance v3, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    .line 143
    .line 144
    const/4 v4, 0x3

    .line 145
    invoke-direct {v3, v4}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v3}, Lcom/android/server/alarm/LazyAlarmStore;->getCount(Ljava/util/function/Predicate;)I

    .line 149
    .line 150
    .line 151
    move-result v16

    .line 152
    new-instance v3, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    .line 153
    .line 154
    const/4 v4, 0x4

    .line 155
    invoke-direct {v3, v4}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v3}, Lcom/android/server/alarm/LazyAlarmStore;->getCount(Ljava/util/function/Predicate;)I

    .line 159
    .line 160
    .line 161
    move-result v17

    .line 162
    move/from16 v0, p1

    .line 163
    .line 164
    move v1, v2

    .line 165
    move v2, v5

    .line 166
    move v3, v6

    .line 167
    move v4, v7

    .line 168
    move v5, v8

    .line 169
    move v6, v9

    .line 170
    move v7, v10

    .line 171
    move v8, v11

    .line 172
    move v9, v12

    .line 173
    move v10, v13

    .line 174
    move v11, v15

    .line 175
    move/from16 v12, v16

    .line 176
    .line 177
    move/from16 v13, v17

    .line 178
    .line 179
    invoke-static/range {v0 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIIIIIIIII)Landroid/util/StatsEvent;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    move-object/from16 v1, p2

    .line 184
    .line 185
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    monitor-exit v14

    .line 189
    const/4 v0, 0x0

    .line 190
    return v0

    .line 191
    :catchall_0
    move-exception v0

    .line 192
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    throw v0

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 195
    .line 196
    const-string v2, "Unknown tag"

    .line 197
    .line 198
    invoke-static {v1, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw v0
.end method
