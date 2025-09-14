.class public final Lcom/android/server/job/controllers/FlexibilityController$FcConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final DEFAULT_DEADLINE_PROXIMITY_LIMIT_MS:J = 0xdbba0L

.field public static final DEFAULT_FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

.field public static final DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

.field static final DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_MS:J = 0x5265c00L

.field public static final DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

.field static final DEFAULT_PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

.field static final DEFAULT_UNSEEN_CONSTRAINT_GRACE_PERIOD_MS:J = 0xf731400L

.field static final KEY_APPLIED_CONSTRAINTS:Ljava/lang/String; = "fc_applied_constraints"


# instance fields
.field public APPLIED_CONSTRAINTS:I

.field public DEADLINE_PROXIMITY_LIMIT_MS:J

.field public final FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

.field public final FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

.field public FALLBACK_FLEXIBILITY_DEADLINE_MS:J

.field public final FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

.field public MAX_RESCHEDULED_DEADLINE_MS:J

.field public MIN_TIME_BETWEEN_FLEXIBILITY_ALARMS_MS:J

.field public final PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

.field public RESCHEDULED_JOB_DEADLINE_MS:J

.field public UNSEEN_CONSTRAINT_GRACE_PERIOD_MS:J

.field public mShouldReevaluateConstraints:Z

.field public final synthetic this$0:Lcom/android/server/job/controllers/FlexibilityController;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Landroid/util/SparseLongArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    .line 7
    .line 8
    new-instance v1, Landroid/util/SparseIntArray;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    .line 14
    .line 15
    new-instance v2, Landroid/util/SparseLongArray;

    .line 16
    .line 17
    invoke-direct {v2}, Landroid/util/SparseLongArray;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v2, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    .line 21
    .line 22
    new-instance v3, Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v3, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    .line 28
    .line 29
    const-wide/32 v4, 0x36ee80

    .line 30
    .line 31
    .line 32
    const/16 v6, 0x1f4

    .line 33
    .line 34
    invoke-virtual {v0, v6, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 35
    .line 36
    .line 37
    const-wide/32 v4, 0x1499700

    .line 38
    .line 39
    .line 40
    const/16 v7, 0x190

    .line 41
    .line 42
    invoke-virtual {v0, v7, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 43
    .line 44
    .line 45
    const-wide/32 v4, 0x2932e00

    .line 46
    .line 47
    .line 48
    const/16 v8, 0x12c

    .line 49
    .line 50
    invoke-virtual {v0, v8, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 51
    .line 52
    .line 53
    const-wide/32 v4, 0x5265c00

    .line 54
    .line 55
    .line 56
    const/16 v9, 0xc8

    .line 57
    .line 58
    invoke-virtual {v0, v9, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 59
    .line 60
    .line 61
    const-wide/32 v4, 0xa4cb800

    .line 62
    .line 63
    .line 64
    const/16 v10, 0x64

    .line 65
    .line 66
    invoke-virtual {v0, v10, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 67
    .line 68
    .line 69
    const/4 v0, 0x5

    .line 70
    invoke-virtual {v1, v6, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x4

    .line 74
    invoke-virtual {v1, v7, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 75
    .line 76
    .line 77
    const/4 v4, 0x3

    .line 78
    invoke-virtual {v1, v8, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 79
    .line 80
    .line 81
    const/4 v5, 0x2

    .line 82
    invoke-virtual {v1, v9, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 83
    .line 84
    .line 85
    const/4 v11, 0x1

    .line 86
    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 87
    .line 88
    .line 89
    const-wide/16 v12, 0x0

    .line 90
    .line 91
    invoke-virtual {v2, v6, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 92
    .line 93
    .line 94
    const-wide/32 v12, 0x2bf20

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v7, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 98
    .line 99
    .line 100
    const-wide/32 v12, 0x1d4c0

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v8, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 104
    .line 105
    .line 106
    const-wide/32 v12, 0xea60

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v9, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v10, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 113
    .line 114
    .line 115
    filled-new-array {v11, v5, v4, v0}, [I

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v3, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    const/16 v0, 0x21

    .line 123
    .line 124
    const/16 v1, 0x32

    .line 125
    .line 126
    const/16 v2, 0x3c

    .line 127
    .line 128
    const/16 v4, 0x4b

    .line 129
    .line 130
    filled-new-array {v0, v1, v2, v4}, [I

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v3, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    const/16 v0, 0x46

    .line 138
    .line 139
    const/16 v5, 0x50

    .line 140
    .line 141
    filled-new-array {v1, v2, v0, v5}, [I

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {v3, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    filled-new-array {v1, v2, v0, v5}, [I

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v3, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    const/16 v0, 0x41

    .line 156
    .line 157
    const/16 v1, 0x55

    .line 158
    .line 159
    const/16 v2, 0x37

    .line 160
    .line 161
    filled-new-array {v2, v0, v4, v1}, [I

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v3, v10, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/FlexibilityController;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 8
    .line 9
    iput p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->APPLIED_CONSTRAINTS:I

    .line 10
    .line 11
    const-wide/32 v0, 0xdbba0

    .line 12
    .line 13
    .line 14
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEADLINE_PROXIMITY_LIMIT_MS:J

    .line 15
    .line 16
    const-wide/32 v0, 0x5265c00

    .line 17
    .line 18
    .line 19
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_MS:J

    .line 20
    .line 21
    const-wide/32 v2, 0xea60

    .line 22
    .line 23
    .line 24
    iput-wide v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MIN_TIME_BETWEEN_FLEXIBILITY_ALARMS_MS:J

    .line 25
    .line 26
    new-instance v2, Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    .line 32
    .line 33
    const-wide/32 v2, 0x36ee80

    .line 34
    .line 35
    .line 36
    iput-wide v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->RESCHEDULED_JOB_DEADLINE_MS:J

    .line 37
    .line 38
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MAX_RESCHEDULED_DEADLINE_MS:J

    .line 39
    .line 40
    const-wide/32 v0, 0xf731400

    .line 41
    .line 42
    .line 43
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->UNSEEN_CONSTRAINT_GRACE_PERIOD_MS:J

    .line 44
    .line 45
    new-instance v0, Landroid/util/SparseLongArray;

    .line 46
    .line 47
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    .line 51
    .line 52
    new-instance v0, Landroid/util/SparseIntArray;

    .line 53
    .line 54
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    .line 58
    .line 59
    new-instance v0, Landroid/util/SparseLongArray;

    .line 60
    .line 61
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    .line 65
    .line 66
    move v0, p1

    .line 67
    :goto_0
    sget-object v1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-ge v0, v2, :cond_0

    .line 74
    .line 75
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 82
    .line 83
    .line 84
    move-result-wide v4

    .line 85
    invoke-virtual {v2, v3, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v0, v0, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    move v0, p1

    .line 92
    :goto_1
    sget-object v1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-ge v0, v2, :cond_1

    .line 99
    .line 100
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    .line 101
    .line 102
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 111
    .line 112
    .line 113
    add-int/lit8 v0, v0, 0x1

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_1
    move v0, p1

    .line 117
    :goto_2
    sget-object v1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    .line 118
    .line 119
    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-ge v0, v2, :cond_2

    .line 124
    .line 125
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    .line 126
    .line 127
    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 132
    .line 133
    .line 134
    move-result-wide v4

    .line 135
    invoke-virtual {v2, v3, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 136
    .line 137
    .line 138
    add-int/lit8 v0, v0, 0x1

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_2
    :goto_3
    sget-object v0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-ge p1, v1, :cond_3

    .line 148
    .line 149
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    .line 150
    .line 151
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, [I

    .line 160
    .line 161
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    add-int/lit8 p1, p1, 0x1

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_3
    return-void
.end method

.method public static parsePercentToDropString(Ljava/lang/String;)[I
    .locals 6

    .line 1
    const-string v0, "JobScheduler.Flex"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p0, :cond_5

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const-string v2, "\\|"

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const v2, 0x10000007

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    new-array v3, v2, [I

    .line 27
    .line 28
    array-length v4, p0

    .line 29
    if-eq v2, v4, :cond_1

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_1
    const/4 v2, 0x0

    .line 33
    move v4, v2

    .line 34
    :goto_0
    array-length v5, p0

    .line 35
    if-ge v2, v5, :cond_4

    .line 36
    .line 37
    :try_start_0
    aget-object v5, p0, v2

    .line 38
    .line 39
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    aput v5, v3, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    if-ge v5, v4, :cond_2

    .line 46
    .line 47
    const-string p0, "Percents to drop constraints were not in increasing order."

    .line 48
    .line 49
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return-object v1

    .line 53
    :cond_2
    const/16 v4, 0x64

    .line 54
    .line 55
    if-le v5, v4, :cond_3

    .line 56
    .line 57
    const-string p0, "Found % over 100"

    .line 58
    .line 59
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    return-object v1

    .line 63
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    move v4, v5

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p0

    .line 68
    const-string v2, "Provided string was improperly formatted."

    .line 69
    .line 70
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .line 72
    .line 73
    return-object v1

    .line 74
    :cond_4
    return-object v3

    .line 75
    :cond_5
    :goto_1
    return-object v1
.end method

.method public static parsePriorityToLongKeyValueString(Ljava/lang/String;Landroid/util/SparseLongArray;Landroid/util/SparseLongArray;)Z
    .locals 26

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    new-instance v3, Landroid/util/KeyValueListParser;

    .line 6
    .line 7
    const/16 v0, 0x2c

    .line 8
    .line 9
    invoke-direct {v3, v0}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 10
    .line 11
    .line 12
    move-object/from16 v0, p0

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {v3, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    move-object v4, v0

    .line 20
    const-string v0, "JobScheduler.Flex"

    .line 21
    .line 22
    const-string v5, "Bad string given"

    .line 23
    .line 24
    invoke-static {v0, v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {v3, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    const/16 v0, 0x1f4

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->get(I)J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    const/16 v6, 0x190

    .line 38
    .line 39
    invoke-virtual {v1, v6}, Landroid/util/SparseLongArray;->get(I)J

    .line 40
    .line 41
    .line 42
    move-result-wide v7

    .line 43
    const/16 v9, 0x12c

    .line 44
    .line 45
    invoke-virtual {v1, v9}, Landroid/util/SparseLongArray;->get(I)J

    .line 46
    .line 47
    .line 48
    move-result-wide v10

    .line 49
    const/16 v12, 0xc8

    .line 50
    .line 51
    invoke-virtual {v1, v12}, Landroid/util/SparseLongArray;->get(I)J

    .line 52
    .line 53
    .line 54
    move-result-wide v13

    .line 55
    const/16 v15, 0x64

    .line 56
    .line 57
    invoke-virtual {v1, v15}, Landroid/util/SparseLongArray;->get(I)J

    .line 58
    .line 59
    .line 60
    move-result-wide v16

    .line 61
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v15

    .line 65
    move-wide/from16 v18, v13

    .line 66
    .line 67
    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->get(I)J

    .line 68
    .line 69
    .line 70
    move-result-wide v12

    .line 71
    invoke-virtual {v3, v15, v12, v13}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 72
    .line 73
    .line 74
    move-result-wide v12

    .line 75
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v14

    .line 79
    invoke-virtual {v2, v6}, Landroid/util/SparseLongArray;->get(I)J

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    invoke-virtual {v3, v14, v0, v1}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 84
    .line 85
    .line 86
    move-result-wide v0

    .line 87
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v14

    .line 91
    move-wide/from16 v20, v7

    .line 92
    .line 93
    invoke-virtual {v2, v9}, Landroid/util/SparseLongArray;->get(I)J

    .line 94
    .line 95
    .line 96
    move-result-wide v6

    .line 97
    invoke-virtual {v3, v14, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 98
    .line 99
    .line 100
    move-result-wide v6

    .line 101
    const/16 v8, 0xc8

    .line 102
    .line 103
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v14

    .line 107
    move-wide/from16 v22, v10

    .line 108
    .line 109
    invoke-virtual {v2, v8}, Landroid/util/SparseLongArray;->get(I)J

    .line 110
    .line 111
    .line 112
    move-result-wide v9

    .line 113
    invoke-virtual {v3, v14, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 114
    .line 115
    .line 116
    move-result-wide v9

    .line 117
    const/16 v11, 0x64

    .line 118
    .line 119
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v14

    .line 123
    move-wide/from16 v24, v9

    .line 124
    .line 125
    invoke-virtual {v2, v11}, Landroid/util/SparseLongArray;->get(I)J

    .line 126
    .line 127
    .line 128
    move-result-wide v8

    .line 129
    invoke-virtual {v3, v14, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 130
    .line 131
    .line 132
    move-result-wide v2

    .line 133
    move-object/from16 v8, p1

    .line 134
    .line 135
    const/16 v9, 0x1f4

    .line 136
    .line 137
    invoke-virtual {v8, v9, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 138
    .line 139
    .line 140
    const/16 v9, 0x190

    .line 141
    .line 142
    invoke-virtual {v8, v9, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 143
    .line 144
    .line 145
    const/16 v9, 0x12c

    .line 146
    .line 147
    invoke-virtual {v8, v9, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 148
    .line 149
    .line 150
    move-wide/from16 v14, v24

    .line 151
    .line 152
    const/16 v9, 0xc8

    .line 153
    .line 154
    invoke-virtual {v8, v9, v14, v15}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8, v11, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 158
    .line 159
    .line 160
    cmp-long v4, v4, v12

    .line 161
    .line 162
    if-nez v4, :cond_1

    .line 163
    .line 164
    cmp-long v0, v20, v0

    .line 165
    .line 166
    if-nez v0, :cond_1

    .line 167
    .line 168
    cmp-long v0, v22, v6

    .line 169
    .line 170
    if-nez v0, :cond_1

    .line 171
    .line 172
    cmp-long v0, v18, v14

    .line 173
    .line 174
    if-nez v0, :cond_1

    .line 175
    .line 176
    cmp-long v0, v16, v2

    .line 177
    .line 178
    if-eqz v0, :cond_0

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_0
    const/4 v0, 0x0

    .line 182
    goto :goto_2

    .line 183
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 184
    :goto_2
    return v0
.end method
