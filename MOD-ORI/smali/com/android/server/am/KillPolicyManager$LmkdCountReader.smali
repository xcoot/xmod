.class public final Lcom/android/server/am/KillPolicyManager$LmkdCountReader;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public bServiceCountOfLmkd:J

.field public cachedMinCountOfLmkd:J

.field public homeToPercCountOfLmkd:J

.field public pickedCountOfLmkd:J

.field public previousCountOfLmkd:J

.field public totalCountOfLmkd:J

.field public visToFgCountOfLmkd:J


# virtual methods
.method public final readLmkdKillCount()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0xf

    .line 3
    .line 4
    invoke-static {v0, v1, v0, v0}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    int-to-long v1, v1

    .line 9
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    .line 10
    .line 11
    const/16 v1, 0xe

    .line 12
    .line 13
    invoke-static {v1, v1, v0, v0}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    int-to-long v1, v1

    .line 18
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    .line 19
    .line 20
    const/16 v1, 0xd

    .line 21
    .line 22
    const/16 v2, 0xc

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-static {v2, v1, v3, v0}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    int-to-long v4, v1

    .line 30
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    .line 31
    .line 32
    const/16 v1, 0xb

    .line 33
    .line 34
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    int-to-long v4, v2

    .line 39
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    .line 40
    .line 41
    const/16 v2, 0xa

    .line 42
    .line 43
    invoke-static {v2, v1, v3, v0}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    int-to-long v4, v1

    .line 48
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    .line 49
    .line 50
    const/4 v1, 0x3

    .line 51
    invoke-static {v1, v2, v0, v0}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    int-to-long v4, v2

    .line 56
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    .line 57
    .line 58
    invoke-static {v0, v1, v0, v3}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    int-to-long v0, v0

    .line 63
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    .line 64
    .line 65
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 66
    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    const/16 v0, 0x80

    .line 70
    .line 71
    const-string/jumbo v1, "readLmkdKillCount() : (E : "

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", Pr : "

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", Sv : "

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    .line 99
    .line 100
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", Pi : "

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    .line 109
    .line 110
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", Cm : "

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    .line 119
    .line 120
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string p0, ")"

    .line 124
    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string p0, "ActivityManager_kpm"

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    :cond_0
    return-void
.end method
