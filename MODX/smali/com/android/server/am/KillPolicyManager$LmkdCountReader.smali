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

    .line 4
    invoke-static {v0, v1, v0, v0}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 7
    move-result v1

    .line 8
    int-to-long v1, v1

    .line 9
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    .line 11
    const/16 v1, 0xe

    .line 13
    invoke-static {v1, v1, v0, v0}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 16
    move-result v1

    .line 17
    int-to-long v1, v1

    .line 18
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    .line 20
    const/16 v1, 0xd

    .line 22
    const/16 v2, 0xc

    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-static {v2, v1, v3, v0}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 28
    move-result v1

    .line 29
    int-to-long v4, v1

    .line 30
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    .line 32
    const/16 v1, 0xb

    .line 34
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 37
    move-result v2

    .line 38
    int-to-long v4, v2

    .line 39
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    .line 41
    const/16 v2, 0xa

    .line 43
    invoke-static {v2, v1, v3, v0}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 46
    move-result v1

    .line 47
    int-to-long v4, v1

    .line 48
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    .line 50
    const/4 v1, 0x3

    .line 51
    invoke-static {v1, v2, v0, v0}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 54
    move-result v2

    .line 55
    int-to-long v4, v2

    .line 56
    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    .line 58
    invoke-static {v0, v1, v0, v3}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 61
    move-result v0

    .line 62
    int-to-long v0, v0

    .line 63
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    .line 65
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 67
    if-eqz v0, :cond_0

    .line 69
    const/16 v0, 0x80

    .line 71
    const-string/jumbo v1, "readLmkdKillCount() : (E : "

    .line 74
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    move-result-object v0

    .line 78
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, ", Pr : "

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    .line 90
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, ", Sv : "

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    .line 100
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, ", Pi : "

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    .line 110
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, ", Cm : "

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    .line 120
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 123
    const-string p0, ")"

    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string p0, "ActivityManager_kpm"

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 134
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    return-void
.end method
