.class public final Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDisabledActivities:Landroid/util/ArrayMap;

.field public mDisabledApps:Landroid/util/ArrayMap;


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 14

    .line 1
    const-string v0, "    "

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6
    const-string v1, "Disabled apps: "

    .line 8
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    .line 13
    const/16 v2, 0xa

    .line 15
    const-string v3, ": "

    .line 17
    const-string v4, ". "

    .line 19
    const/4 v5, 0x0

    .line 20
    const-string v6, "N/A"

    .line 22
    if-nez v1, :cond_0

    .line 24
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 31
    move-result v1

    .line 32
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 35
    new-instance v7, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 43
    move-result-wide v8

    .line 44
    move v10, v5

    .line 45
    :goto_0
    if-ge v10, v1, :cond_1

    .line 47
    iget-object v11, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    .line 49
    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 52
    move-result-object v11

    .line 53
    check-cast v11, Ljava/lang/String;

    .line 55
    iget-object v12, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    .line 57
    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 60
    move-result-object v12

    .line 61
    check-cast v12, Ljava/lang/Long;

    .line 63
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 66
    move-result-wide v12

    .line 67
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    sub-long/2addr v12, v8

    .line 86
    invoke-static {v12, v13, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 89
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v10, v10, 0x1

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 98
    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    const-string v1, "Disabled activities: "

    .line 103
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    .line 108
    if-nez v1, :cond_2

    .line 110
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    goto :goto_3

    .line 114
    :cond_2
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 117
    move-result v1

    .line 118
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 129
    move-result-wide v7

    .line 130
    :goto_2
    if-ge v5, v1, :cond_3

    .line 132
    iget-object v9, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    .line 134
    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 137
    move-result-object v9

    .line 138
    check-cast v9, Landroid/content/ComponentName;

    .line 140
    iget-object v10, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    .line 142
    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 145
    move-result-object v10

    .line 146
    check-cast v10, Ljava/lang/Long;

    .line 148
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 151
    move-result-wide v10

    .line 152
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    sub-long/2addr v10, v7

    .line 171
    invoke-static {v10, v11, v6}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 174
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    add-int/lit8 v5, v5, 0x1

    .line 179
    goto :goto_2

    .line 180
    :cond_3
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 183
    :goto_3
    return-void
.end method

.method public final getAppDisabledActivitiesLocked(Ljava/lang/String;)Landroid/util/ArrayMap;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v0, :cond_2

    .line 13
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    .line 15
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroid/content/ComponentName;

    .line 21
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 31
    if-nez v1, :cond_0

    .line 33
    new-instance v1, Landroid/util/ArrayMap;

    .line 35
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 38
    :cond_0
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    .line 40
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Ljava/lang/Long;

    .line 46
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 49
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    return-object v1
.end method

.method public final isAutofillDisabledLocked(Landroid/content/ComponentName;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    .line 3
    const-string v1, " from disabled list"

    .line 5
    const-string v2, "Removing "

    .line 7
    const-string v3, "AutofillManagerService"

    .line 9
    const/4 v4, 0x1

    .line 10
    const-wide/16 v5, 0x0

    .line 12
    if-eqz v0, :cond_2

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    move-result-wide v7

    .line 18
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    .line 20
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/Long;

    .line 26
    if-eqz v0, :cond_3

    .line 28
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 31
    move-result-wide v9

    .line 32
    cmp-long v0, v9, v7

    .line 34
    if-ltz v0, :cond_0

    .line 36
    return v4

    .line 37
    :cond_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 39
    if-eqz v0, :cond_1

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 49
    move-result-object v9

    .line 50
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    .line 65
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    move-wide v7, v5

    .line 70
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    .line 76
    const/4 v9, 0x0

    .line 77
    if-nez v0, :cond_4

    .line 79
    return v9

    .line 80
    :cond_4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Ljava/lang/Long;

    .line 86
    if-nez v0, :cond_5

    .line 88
    return v9

    .line 89
    :cond_5
    cmp-long v5, v7, v5

    .line 91
    if-nez v5, :cond_6

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 96
    move-result-wide v7

    .line 97
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 100
    move-result-wide v5

    .line 101
    cmp-long v0, v5, v7

    .line 103
    if-ltz v0, :cond_7

    .line 105
    return v4

    .line 106
    :cond_7
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 108
    if-eqz v0, :cond_8

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_8
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    .line 130
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return v9
.end method
