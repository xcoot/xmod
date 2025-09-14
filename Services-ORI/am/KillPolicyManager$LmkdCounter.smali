.class public final Lcom/android/server/am/KillPolicyManager$LmkdCounter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public bServiceKillCount:J

.field public bServiceKillOccurredCount:I

.field public cachedMinKillCount:J

.field public cycleBServiceKillCount:J

.field public cycleCachedMinKillCount:J

.field public cycleHomeToPercKillCount:J

.field public cyclePickedKillCount:J

.field public cyclePreviousKillCount:J

.field public cycleTotalKillCount:J

.field public cycleVisToFgKillCount:J

.field public final kpmRaw:Lcom/android/server/am/KillPolicyManager$KpmRaw;

.field public pickedKillCount:J

.field public prevBServiceCountOfLmkd:J

.field public prevCachedMinCountOfLmkd:J

.field public prevCycleBServiceCountOfLmkd:J

.field public prevCycleCachedMinCountOfLmkd:J

.field public prevCycleHomeToPercCountOfLmkd:J

.field public prevCyclePickedCountOfLmkd:J

.field public prevCyclePreviousCountOfLmkd:J

.field public prevCycleTotalCountOfLmkd:J

.field public prevCycleVisToFgCountOfLmkd:J

.field public prevPickedCountOfLmkd:J

.field public prevPreviousCountOfLmkd:J

.field public prevTinyCycleBServiceCountOfLmkd:J

.field public prevTinyCycleCachedMinCountOfLmkd:J

.field public prevTinyCyclePickedCountOfLmkd:J

.field public prevTinyCyclePreviousCountOfLmkd:J

.field public prevTotalCountOfLmkd:J

.field public previousKillCount:J

.field public previousKillOccurredCount:I

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;

.field public tinyCycleBServiceKillCount:J

.field public tinyCycleCachedMinKillCount:J

.field public tinyCyclePickedKillCount:J

.field public tinyCyclePreviousKillCount:J

.field public totalKillCount:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    move-object/from16 v2, p1

    .line 9
    .line 10
    iput-object v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 11
    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleTotalKillCount:J

    .line 15
    .line 16
    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleCachedMinKillCount:J

    .line 17
    .line 18
    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    .line 19
    .line 20
    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    .line 21
    .line 22
    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    .line 23
    .line 24
    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleHomeToPercKillCount:J

    .line 25
    .line 26
    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleVisToFgKillCount:J

    .line 27
    .line 28
    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->totalKillCount:J

    .line 29
    .line 30
    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cachedMinKillCount:J

    .line 31
    .line 32
    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->pickedKillCount:J

    .line 33
    .line 34
    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillCount:J

    .line 35
    .line 36
    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillCount:J

    .line 37
    .line 38
    iget-wide v4, v1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    .line 39
    .line 40
    iput-wide v4, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleTotalCountOfLmkd:J

    .line 41
    .line 42
    iget-wide v6, v1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    .line 43
    .line 44
    iput-wide v6, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleCachedMinCountOfLmkd:J

    .line 45
    .line 46
    iget-wide v8, v1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    .line 47
    .line 48
    iput-wide v8, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCyclePickedCountOfLmkd:J

    .line 49
    .line 50
    iget-wide v10, v1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    .line 51
    .line 52
    iput-wide v10, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleBServiceCountOfLmkd:J

    .line 53
    .line 54
    iget-wide v12, v1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    .line 55
    .line 56
    iput-wide v12, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCyclePreviousCountOfLmkd:J

    .line 57
    .line 58
    iget-wide v14, v1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    .line 59
    .line 60
    iput-wide v14, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleHomeToPercCountOfLmkd:J

    .line 61
    .line 62
    iget-wide v14, v1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    .line 63
    .line 64
    iput-wide v14, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleVisToFgCountOfLmkd:J

    .line 65
    .line 66
    iput-wide v4, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTotalCountOfLmkd:J

    .line 67
    .line 68
    iput-wide v6, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCachedMinCountOfLmkd:J

    .line 69
    .line 70
    iput-wide v8, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPickedCountOfLmkd:J

    .line 71
    .line 72
    iput-wide v10, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevBServiceCountOfLmkd:J

    .line 73
    .line 74
    iput-wide v12, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPreviousCountOfLmkd:J

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    iput v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    .line 78
    .line 79
    iput v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    .line 80
    .line 81
    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleCachedMinKillCount:J

    .line 82
    .line 83
    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePickedKillCount:J

    .line 84
    .line 85
    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleBServiceKillCount:J

    .line 86
    .line 87
    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePreviousKillCount:J

    .line 88
    .line 89
    iput-wide v6, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleCachedMinCountOfLmkd:J

    .line 90
    .line 91
    iput-wide v8, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCyclePickedCountOfLmkd:J

    .line 92
    .line 93
    iput-wide v10, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleBServiceCountOfLmkd:J

    .line 94
    .line 95
    iput-wide v12, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCyclePreviousCountOfLmkd:J

    .line 96
    .line 97
    move-object/from16 v1, p2

    .line 98
    .line 99
    iput-object v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->kpmRaw:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 100
    .line 101
    return-void
.end method


# virtual methods
.method public final getCycleLmkdKillCountByADJ(Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V
    .locals 4

    .line 1
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleTotalCountOfLmkd:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleTotalKillCount:J

    .line 7
    .line 8
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    .line 9
    .line 10
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleCachedMinCountOfLmkd:J

    .line 11
    .line 12
    sub-long/2addr v0, v2

    .line 13
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleCachedMinKillCount:J

    .line 14
    .line 15
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    .line 16
    .line 17
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCyclePickedCountOfLmkd:J

    .line 18
    .line 19
    sub-long/2addr v0, v2

    .line 20
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    .line 21
    .line 22
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    .line 23
    .line 24
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleBServiceCountOfLmkd:J

    .line 25
    .line 26
    sub-long/2addr v0, v2

    .line 27
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    .line 28
    .line 29
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    .line 30
    .line 31
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCyclePreviousCountOfLmkd:J

    .line 32
    .line 33
    sub-long/2addr v0, v2

    .line 34
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    .line 35
    .line 36
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    .line 37
    .line 38
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleHomeToPercCountOfLmkd:J

    .line 39
    .line 40
    sub-long/2addr v0, v2

    .line 41
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleHomeToPercKillCount:J

    .line 42
    .line 43
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    .line 44
    .line 45
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleVisToFgCountOfLmkd:J

    .line 46
    .line 47
    sub-long/2addr v0, v2

    .line 48
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleVisToFgKillCount:J

    .line 49
    .line 50
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    const/16 v0, 0x80

    .line 55
    .line 56
    const-string v1, "Cycle currentKillCountLmkd : (cE : "

    .line 57
    .line 58
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleTotalKillCount:J

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, ", cPr : "

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, ", cSv : "

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, ", cPi : "

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    .line 93
    .line 94
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v1, ", cCm : "

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleCachedMinKillCount:J

    .line 103
    .line 104
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v1, ")"

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v1, "ActivityManager_kpm"

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    :cond_0
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    .line 122
    .line 123
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleTotalCountOfLmkd:J

    .line 124
    .line 125
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    .line 126
    .line 127
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleCachedMinCountOfLmkd:J

    .line 128
    .line 129
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    .line 130
    .line 131
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCyclePickedCountOfLmkd:J

    .line 132
    .line 133
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    .line 134
    .line 135
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleBServiceCountOfLmkd:J

    .line 136
    .line 137
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    .line 138
    .line 139
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCyclePreviousCountOfLmkd:J

    .line 140
    .line 141
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    .line 142
    .line 143
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleHomeToPercCountOfLmkd:J

    .line 144
    .line 145
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    .line 146
    .line 147
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleVisToFgCountOfLmkd:J

    .line 148
    .line 149
    return-void
.end method
