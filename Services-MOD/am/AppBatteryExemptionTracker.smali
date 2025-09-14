.class public final Lcom/android/server/am/AppBatteryExemptionTracker;
.super Lcom/android/server/am/BaseAppStateDurationsTracker;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mUidPackageStates:Lcom/android/server/am/UidProcessMap;


# virtual methods
.method public final createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateEvents;
    .locals 2

    .line 4
    new-instance p2, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;

    .line 5
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 6
    check-cast p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;

    .line 7
    const-string v0, ""

    const/4 v1, 0x5

    invoke-direct {p2, p1, v0, v1, p0}, Lcom/android/server/am/BaseAppStateEvents;-><init>(ILjava/lang/String;ILcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;)V

    return-object p2
.end method

.method public final createAppStateEvents(Lcom/android/server/am/BaseAppStateEvents;)Lcom/android/server/am/BaseAppStateEvents;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;

    .line 2
    new-instance p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;

    .line 3
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseAppStateEvents;-><init>(Lcom/android/server/am/BaseAppStateEvents;)V

    return-object p0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 3
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 5
    check-cast p0, Lcom/android/server/am/AppBatteryExemptionTracker$AppBatteryExemptionPolicy;

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppBatteryExemptionTracker$AppBatteryExemptionPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public final getType()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public final onStateChange(IIJLjava/lang/String;Z)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move/from16 v2, p2

    .line 5
    move-object/from16 v3, p5

    .line 7
    iget-object v4, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 9
    iget-object v4, v4, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 11
    check-cast v4, Lcom/android/server/am/AppBatteryExemptionTracker$AppBatteryExemptionPolicy;

    .line 13
    iget-boolean v4, v4, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    .line 15
    if-nez v4, :cond_0

    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v4, v0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 20
    invoke-virtual {v4, p1}, Lcom/android/server/am/AppRestrictionController;->getUidBatteryUsage(I)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 23
    move-result-object v9

    .line 24
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 27
    move-result v10

    .line 28
    iget-object v4, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 30
    monitor-enter v4

    .line 31
    :try_start_0
    iget-object v5, v0, Lcom/android/server/am/AppBatteryExemptionTracker;->mUidPackageStates:Lcom/android/server/am/UidProcessMap;

    .line 33
    iget-object v5, v5, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    .line 35
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v6

    .line 39
    check-cast v6, Landroid/util/ArrayMap;

    .line 41
    if-nez v6, :cond_1

    .line 43
    new-instance v6, Landroid/util/ArrayMap;

    .line 45
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 48
    invoke-virtual {v5, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto/16 :goto_7

    .line 55
    :cond_1
    :goto_0
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 58
    move-result v7

    .line 59
    const/4 v8, 0x0

    .line 60
    if-ltz v7, :cond_2

    .line 62
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Ljava/lang/Integer;

    .line 68
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 71
    move-result v3

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {v6, v3, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 83
    move-result v7

    .line 84
    move v3, v8

    .line 85
    :goto_1
    const/4 v11, 0x1

    .line 86
    if-eqz p6, :cond_5

    .line 88
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 91
    move-result v5

    .line 92
    sub-int/2addr v5, v11

    .line 93
    :goto_2
    if-ltz v5, :cond_4

    .line 95
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 98
    move-result-object v12

    .line 99
    check-cast v12, Ljava/lang/Integer;

    .line 101
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 104
    move-result v12

    .line 105
    and-int/2addr v12, v2

    .line 106
    if-eqz v12, :cond_3

    .line 108
    move v8, v11

    .line 109
    goto :goto_3

    .line 110
    :cond_3
    add-int/lit8 v5, v5, -0x1

    .line 112
    goto :goto_2

    .line 113
    :cond_4
    :goto_3
    or-int/2addr v2, v3

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v6, v7, v2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 121
    xor-int/lit8 v2, v8, 0x1

    .line 123
    goto :goto_6

    .line 124
    :cond_5
    not-int v12, v2

    .line 125
    and-int/2addr v3, v12

    .line 126
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    move-result-object v12

    .line 130
    invoke-virtual {v6, v7, v12}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 136
    move-result v12

    .line 137
    sub-int/2addr v12, v11

    .line 138
    :goto_4
    if-ltz v12, :cond_7

    .line 140
    invoke-virtual {v6, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 143
    move-result-object v13

    .line 144
    check-cast v13, Ljava/lang/Integer;

    .line 146
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 149
    move-result v13

    .line 150
    and-int/2addr v13, v2

    .line 151
    if-eqz v13, :cond_6

    .line 153
    goto :goto_5

    .line 154
    :cond_6
    add-int/lit8 v12, v12, -0x1

    .line 156
    goto :goto_4

    .line 157
    :cond_7
    move v8, v11

    .line 158
    :goto_5
    if-nez v3, :cond_8

    .line 160
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 163
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 166
    move-result v2

    .line 167
    if-nez v2, :cond_8

    .line 169
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 172
    :cond_8
    move v2, v8

    .line 173
    :goto_6
    if-eqz v2, :cond_a

    .line 175
    iget-object v2, v0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 177
    const-string v3, ""

    .line 179
    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    .line 182
    move-result-object v2

    .line 183
    check-cast v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;

    .line 185
    if-nez v2, :cond_9

    .line 187
    new-instance v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;

    .line 189
    iget-object v3, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 191
    iget-object v3, v3, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 193
    check-cast v3, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;

    .line 195
    const-string v5, ""

    .line 197
    const/4 v6, 0x5

    .line 198
    invoke-direct {v2, p1, v5, v6, v3}, Lcom/android/server/am/BaseAppStateEvents;-><init>(ILjava/lang/String;ILcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;)V

    .line 201
    iget-object v0, v0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 203
    const-string v3, ""

    .line 205
    invoke-virtual {v0, v3, p1, v2}, Lcom/android/server/am/UidProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    .line 208
    :cond_9
    move-object v5, v2

    .line 209
    move/from16 v6, p6

    .line 211
    move-wide/from16 v7, p3

    .line 213
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;->addEvent(ZJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;I)V

    .line 216
    :cond_a
    monitor-exit v4

    .line 217
    return-void

    .line 218
    :goto_7
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    throw v0
.end method

.method public final onSystemReady()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateTracker;->onSystemReady()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 6
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 15
    iget-object v3, v0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/android/server/am/BaseAppStateTracker;

    .line 23
    iget-object v4, v3, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 25
    monitor-enter v4

    .line 26
    :try_start_0
    iget-object v3, v3, Lcom/android/server/am/BaseAppStateTracker;->mStateListeners:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    monitor-exit v4

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0

    .line 38
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateDurationsTracker;->reset()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppBatteryExemptionTracker;->mUidPackageStates:Lcom/android/server/am/UidProcessMap;

    .line 9
    invoke-virtual {p0}, Lcom/android/server/am/UidProcessMap;->clear()V

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method
