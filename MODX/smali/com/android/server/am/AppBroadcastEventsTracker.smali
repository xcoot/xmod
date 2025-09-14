.class public final Lcom/android/server/am/AppBroadcastEventsTracker;
.super Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/ActivityManagerInternal$BroadcastEventListener;


# virtual methods
.method public final createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateEvents;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;

    .line 3
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 5
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Lcom/android/server/am/AppBroadcastEventsTracker$AppBroadcastEventsPolicy;

    .line 10
    iget-wide v3, v0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mTimeSlotSize:J

    .line 12
    move-object v5, p0

    .line 13
    check-cast v5, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;

    .line 15
    move-object v0, v6

    .line 16
    move v1, p1

    .line 17
    move-object v2, p2

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;-><init>(ILjava/lang/String;JLcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;)V

    .line 21
    return-object v6
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    const-string v0, "APP BROADCAST EVENT TRACKER:"

    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "  "

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p2

    .line 23
    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public final getTrackerInfoForStatsd(I)[B
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/am/BaseAppStateEventsTracker;->getUidEventsLocked(I)Lcom/android/server/am/BaseAppStateEvents;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;

    .line 11
    if-nez p0, :cond_0

    .line 13
    const/4 p0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-wide/16 v2, 0x0

    .line 17
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    .line 20
    move-result-wide v2

    .line 21
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->getTotalEventsSince(JJ)I

    .line 24
    move-result p0

    .line 25
    :goto_0
    if-nez p0, :cond_1

    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0

    .line 29
    :cond_1
    new-instance p1, Landroid/util/proto/ProtoOutputStream;

    .line 31
    invoke-direct {p1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 34
    const-wide v0, 0x10500000001L

    .line 39
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 42
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 45
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public final getType()I
    .locals 0

    .line 1
    const/4 p0, 0x6

    .line 2
    return p0
.end method

.method public final onSendingBroadcast(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 3
    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 5
    check-cast v0, Lcom/android/server/am/AppBroadcastEventsTracker$AppBroadcastEventsPolicy;

    .line 7
    iget-boolean v0, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mHandler:Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 21
    :cond_0
    return-void
.end method

.method public final onSystemReady()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateTracker;->onSystemReady()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 6
    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 8
    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->addBroadcastEventListener(Landroid/app/ActivityManagerInternal$BroadcastEventListener;)V

    .line 11
    return-void
.end method
