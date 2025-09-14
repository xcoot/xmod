.class public final Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;
.super Lcom/android/server/am/BaseAppStateTimeSlotEvents;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final formatEventSummary(IJ)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget-object p1, p1, v0

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->getTotalEventsSince(JJ)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const-string/jumbo v1, "total="

    .line 26
    .line 27
    .line 28
    const-string v2, ", latest="

    .line 29
    .line 30
    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    .line 35
    .line 36
    aget-wide v2, v1, v0

    .line 37
    .line 38
    invoke-virtual {p0, v2, v3, p2, p3}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->getTotalEventsSince(JJ)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p0, "(slot="

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    aget-wide v0, v1, v0

    .line 51
    .line 52
    invoke-static {v0, v1, p2, p3}, Landroid/util/TimeUtils;->formatTime(JJ)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string p2, ")"

    .line 57
    .line 58
    invoke-static {p1, p0, p2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_1
    :goto_0
    const-string p0, "(none)"

    .line 64
    .line 65
    return-object p0
.end method

.method public final formatEventTypeLabel(I)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    .line 3
    return-object p0
.end method
