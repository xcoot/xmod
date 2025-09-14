.class public final Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$PssComparator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 4
    .line 5
    iget-wide v0, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    .line 6
    .line 7
    iget-wide p0, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    .line 8
    .line 9
    add-long/2addr v0, p0

    .line 10
    iget-wide p0, p2, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    .line 11
    .line 12
    iget-wide v2, p2, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    .line 13
    .line 14
    add-long/2addr p0, v2

    .line 15
    cmp-long p0, v0, p0

    .line 16
    .line 17
    if-gez p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-lez p0, :cond_1

    .line 22
    .line 23
    const/4 p0, -0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
.end method
