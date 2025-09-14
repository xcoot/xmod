.class public final Lcom/android/server/notification/ZenModeConditions;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/notification/ConditionProviders$Callback;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field public final mEvaluatedUsers:Ljava/util/HashSet;

.field public mFirstEvaluation:Z

.field public final mHelper:Lcom/android/server/notification/ZenModeHelper;

.field protected final mSubscriptions:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/server/notification/ZenModeConditions;->mFirstEvaluation:Z

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mEvaluatedUsers:Ljava/util/HashSet;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 24
    .line 25
    iget-object p1, p2, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviderNames:Landroid/util/ArraySet;

    .line 26
    .line 27
    const-string v0, "countdown"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    new-instance p1, Lcom/android/server/notification/CountdownConditionProvider;

    .line 36
    .line 37
    invoke-direct {p1}, Lcom/android/server/notification/CountdownConditionProvider;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p1, p2, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviderNames:Landroid/util/ArraySet;

    .line 44
    .line 45
    const-string/jumbo v0, "schedule"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    new-instance p1, Lcom/android/server/notification/ScheduleConditionProvider;

    .line 55
    .line 56
    invoke-direct {p1}, Lcom/android/server/notification/ScheduleConditionProvider;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p1}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object p1, p2, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviderNames:Landroid/util/ArraySet;

    .line 63
    .line 64
    const-string v0, "event"

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    new-instance p1, Lcom/android/server/notification/EventConditionProvider;

    .line 73
    .line 74
    invoke-direct {p1}, Lcom/android/server/notification/EventConditionProvider;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p1}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    iput-object p0, p2, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public final evaluateConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Z)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    sget-boolean v0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const-string v0, "ZenModeHelper"

    .line 29
    .line 30
    const-string v1, "evaluateConfig: clearing manual rule"

    .line 31
    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    iput-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 37
    .line 38
    :cond_2
    new-instance v0, Landroid/util/ArraySet;

    .line 39
    .line 40
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v6, 0x1

    .line 47
    move-object v1, p0

    .line 48
    move-object v3, v0

    .line 49
    move v5, p3

    .line 50
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/ZenModeConditions;->evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Landroid/content/ComponentName;ZZ)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const/4 v8, 0x0

    .line 68
    if-eqz v1, :cond_7

    .line 69
    .line 70
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    move-object v9, v1

    .line 75
    check-cast v9, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 76
    .line 77
    iget-object v1, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    const/4 v6, 0x0

    .line 82
    move-object v1, p0

    .line 83
    move-object v2, v9

    .line 84
    move-object v3, v0

    .line 85
    move-object v4, p2

    .line 86
    move v5, p3

    .line 87
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/ZenModeConditions;->evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Landroid/content/ComponentName;ZZ)V

    .line 88
    .line 89
    .line 90
    iget v1, p1, Landroid/service/notification/ZenModeConfig;->user:I

    .line 91
    .line 92
    iget-boolean v2, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 93
    .line 94
    if-eqz v2, :cond_4

    .line 95
    .line 96
    iget-boolean v2, p0, Lcom/android/server/notification/ZenModeConditions;->mFirstEvaluation:Z

    .line 97
    .line 98
    if-nez v2, :cond_6

    .line 99
    .line 100
    invoke-virtual {v9}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_6

    .line 105
    .line 106
    :cond_4
    iget-object v2, p0, Lcom/android/server/notification/ZenModeConditions;->mEvaluatedUsers:Ljava/util/HashSet;

    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_6

    .line 117
    .line 118
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    check-cast v3, Ljava/lang/Integer;

    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-ne v1, v3, :cond_5

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_6
    iput-boolean v8, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 132
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v2, "Snoozing reset for "

    .line 136
    .line 137
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v2, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const-string v2, "ZenModeHelper"

    .line 150
    .line 151
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_7
    iget-object p2, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    .line 156
    .line 157
    monitor-enter p2

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    .line 159
    .line 160
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    add-int/lit8 v1, v1, -0x1

    .line 165
    .line 166
    :goto_1
    if-ltz v1, :cond_9

    .line 167
    .line 168
    iget-object v2, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    .line 169
    .line 170
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    check-cast v2, Landroid/net/Uri;

    .line 175
    .line 176
    iget-object v3, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    .line 177
    .line 178
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    check-cast v3, Landroid/content/ComponentName;

    .line 183
    .line 184
    if-eqz p3, :cond_8

    .line 185
    .line 186
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-nez v4, :cond_8

    .line 191
    .line 192
    iget-object v4, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 193
    .line 194
    invoke-virtual {v4, v3, v2}, Lcom/android/server/notification/ConditionProviders;->unsubscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;)V

    .line 195
    .line 196
    .line 197
    iget-object v2, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    .line 198
    .line 199
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :catchall_0
    move-exception p0

    .line 204
    goto :goto_3

    .line 205
    :cond_8
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_9
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    iput-boolean v8, p0, Lcom/android/server/notification/ZenModeConditions;->mFirstEvaluation:Z

    .line 210
    .line 211
    iget-object p0, p0, Lcom/android/server/notification/ZenModeConditions;->mEvaluatedUsers:Ljava/util/HashSet;

    .line 212
    .line 213
    new-instance p2, Ljava/lang/Integer;

    .line 214
    .line 215
    iget p1, p1, Landroid/service/notification/ZenModeConfig;->user:I

    .line 216
    .line 217
    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :goto_3
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    throw p0
.end method

.method public final evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Landroid/content/ComponentName;ZZ)V
    .locals 10

    .line 1
    if-eqz p1, :cond_18

    .line 2
    .line 3
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_a

    .line 8
    .line 9
    :cond_0
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    move v4, v2

    .line 25
    move v5, v3

    .line 26
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-eqz v6, :cond_5

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Lcom/android/server/notification/SystemConditionProviderService;

    .line 37
    .line 38
    invoke-virtual {v6, v0}, Lcom/android/server/notification/SystemConditionProviderService;->isValidConditionId(Landroid/net/Uri;)Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_2

    .line 43
    .line 44
    invoke-virtual {v6}, Lcom/android/server/notification/SystemConditionProviderService;->getComponent()Landroid/content/ComponentName;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    const-string v7, "com.android.server.notification.ScheduleConditionProvider"

    .line 53
    .line 54
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_4

    .line 59
    .line 60
    if-eqz p4, :cond_4

    .line 61
    .line 62
    iget-object v4, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 69
    .line 70
    if-eqz v5, :cond_3

    .line 71
    .line 72
    const-string v7, "EVERY_NIGHT_DEFAULT_RULE"

    .line 73
    .line 74
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_3

    .line 79
    .line 80
    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 81
    .line 82
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-ne v4, v3, :cond_3

    .line 87
    .line 88
    iget-boolean v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 89
    .line 90
    if-nez v4, :cond_3

    .line 91
    .line 92
    invoke-virtual {v6}, Lcom/android/server/notification/SystemConditionProviderService;->isScheduleEnabled()Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    xor-int/lit8 v5, v4, 0x1

    .line 97
    .line 98
    invoke-virtual {v6, v2}, Lcom/android/server/notification/SystemConditionProviderService;->onScheduleEnabled(Z)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    invoke-virtual {v6}, Lcom/android/server/notification/SystemConditionProviderService;->isScheduleEnabled()Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    invoke-virtual {v6, v3}, Lcom/android/server/notification/SystemConditionProviderService;->onScheduleEnabled(Z)V

    .line 107
    .line 108
    .line 109
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 110
    .line 111
    invoke-virtual {v6}, Lcom/android/server/notification/SystemConditionProviderService;->getComponent()Landroid/content/ComponentName;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-virtual {v6}, Lcom/android/server/notification/SystemConditionProviderService;->asInterface()Landroid/service/notification/IConditionProvider;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    invoke-virtual {v4, v7, v0, v8}, Lcom/android/server/notification/ConditionProviders;->ensureRecordExists(Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/IConditionProvider;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6}, Lcom/android/server/notification/SystemConditionProviderService;->getComponent()Landroid/content/ComponentName;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    iput-object v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 127
    .line 128
    move v4, v3

    .line 129
    goto :goto_0

    .line 130
    :cond_5
    const/4 v1, 0x0

    .line 131
    if-nez v4, :cond_b

    .line 132
    .line 133
    iget-object v6, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 134
    .line 135
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 136
    .line 137
    if-nez v7, :cond_7

    .line 138
    .line 139
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    :cond_6
    move-object v6, v1

    .line 143
    goto :goto_2

    .line 144
    :cond_7
    invoke-virtual {v6}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    check-cast v6, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    if-eqz v8, :cond_6

    .line 159
    .line 160
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    check-cast v8, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 165
    .line 166
    iget-object v9, v8, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 167
    .line 168
    invoke-virtual {v7, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    if-eqz v9, :cond_8

    .line 173
    .line 174
    iget-object v6, v8, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 175
    .line 176
    check-cast v6, Landroid/service/notification/IConditionProvider;

    .line 177
    .line 178
    :goto_2
    sget-boolean v7, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    .line 179
    .line 180
    if-eqz v7, :cond_a

    .line 181
    .line 182
    const-string v7, "ZenModeHelper"

    .line 183
    .line 184
    new-instance v8, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string v9, "Ensure external rule exists: "

    .line 187
    .line 188
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    if-eqz v6, :cond_9

    .line 192
    .line 193
    move v9, v3

    .line 194
    goto :goto_3

    .line 195
    :cond_9
    move v9, v2

    .line 196
    :goto_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v9, " for "

    .line 200
    .line 201
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    :cond_a
    if-eqz v6, :cond_b

    .line 215
    .line 216
    iget-object v7, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 217
    .line 218
    iget-object v8, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 219
    .line 220
    invoke-virtual {v7, v8, v0, v6}, Lcom/android/server/notification/ConditionProviders;->ensureRecordExists(Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/IConditionProvider;)V

    .line 221
    .line 222
    .line 223
    :cond_b
    iget-object v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 224
    .line 225
    if-nez v6, :cond_e

    .line 226
    .line 227
    iget-object v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 228
    .line 229
    if-nez v6, :cond_e

    .line 230
    .line 231
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    .line 232
    .line 233
    .line 234
    move-result p0

    .line 235
    if-eqz p0, :cond_c

    .line 236
    .line 237
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    .line 238
    .line 239
    .line 240
    move-result p0

    .line 241
    if-eqz p0, :cond_d

    .line 242
    .line 243
    if-nez p5, :cond_d

    .line 244
    .line 245
    :cond_c
    const-string p0, "ZenModeHelper"

    .line 246
    .line 247
    new-instance p2, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string p3, "No component found for automatic rule: "

    .line 250
    .line 251
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget-object p3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 255
    .line 256
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    iput-boolean v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 267
    .line 268
    :cond_d
    return-void

    .line 269
    :cond_e
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    if-eqz p4, :cond_15

    .line 273
    .line 274
    if-eqz p3, :cond_f

    .line 275
    .line 276
    iget-object p2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 277
    .line 278
    invoke-virtual {p3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result p2

    .line 282
    if-nez p2, :cond_10

    .line 283
    .line 284
    :cond_f
    if-eqz v4, :cond_15

    .line 285
    .line 286
    :cond_10
    sget-boolean p2, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    .line 287
    .line 288
    if-eqz p2, :cond_11

    .line 289
    .line 290
    const-string p3, "ZenModeHelper"

    .line 291
    .line 292
    new-instance p4, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    const-string p5, "Subscribing to "

    .line 295
    .line 296
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    iget-object p5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 300
    .line 301
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p4

    .line 308
    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    :cond_11
    iget-object p3, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 312
    .line 313
    iget-object p4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 314
    .line 315
    iget-object p5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 316
    .line 317
    const-string v0, "Unable to subscribe to "

    .line 318
    .line 319
    iget-object v4, p3, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 320
    .line 321
    monitor-enter v4

    .line 322
    :try_start_0
    invoke-virtual {p3, p5, p4, v2}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    if-nez v6, :cond_12

    .line 327
    .line 328
    iget-object p3, p3, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 329
    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string p4, " "

    .line 339
    .line 340
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p4

    .line 350
    invoke-static {p3, p4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    monitor-exit v4

    .line 354
    move v3, v2

    .line 355
    goto :goto_4

    .line 356
    :catchall_0
    move-exception p0

    .line 357
    goto :goto_5

    .line 358
    :cond_12
    iget-boolean p4, v6, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    .line 359
    .line 360
    if-eqz p4, :cond_13

    .line 361
    .line 362
    if-eqz v5, :cond_13

    .line 363
    .line 364
    monitor-exit v4

    .line 365
    goto :goto_4

    .line 366
    :cond_13
    invoke-virtual {p3, v6}, Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 367
    .line 368
    .line 369
    iget-boolean v3, v6, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    .line 370
    .line 371
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :goto_4
    if-eqz v3, :cond_14

    .line 373
    .line 374
    iget-object p3, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    .line 375
    .line 376
    monitor-enter p3

    .line 377
    :try_start_1
    iget-object p2, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    .line 378
    .line 379
    iget-object p4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 380
    .line 381
    iget-object p5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 382
    .line 383
    invoke-virtual {p2, p4, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    monitor-exit p3

    .line 387
    goto :goto_6

    .line 388
    :catchall_1
    move-exception p0

    .line 389
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 390
    throw p0

    .line 391
    :cond_14
    iput-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 392
    .line 393
    if-eqz p2, :cond_15

    .line 394
    .line 395
    const-string p2, "ZenModeHelper"

    .line 396
    .line 397
    const-string/jumbo p3, "zmc failed to subscribe"

    .line 398
    .line 399
    .line 400
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    .line 402
    .line 403
    goto :goto_6

    .line 404
    :goto_5
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 405
    throw p0

    .line 406
    :cond_15
    :goto_6
    iget-object p2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 407
    .line 408
    if-eqz p2, :cond_18

    .line 409
    .line 410
    iget-object p3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 411
    .line 412
    if-nez p3, :cond_18

    .line 413
    .line 414
    iget-object p0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 415
    .line 416
    iget-object p3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 417
    .line 418
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    .line 420
    .line 421
    if-nez p3, :cond_16

    .line 422
    .line 423
    goto :goto_8

    .line 424
    :cond_16
    iget-object p4, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 425
    .line 426
    monitor-enter p4

    .line 427
    :try_start_3
    invoke-virtual {p0, p3, p2, v2}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 428
    .line 429
    .line 430
    move-result-object p0

    .line 431
    if-eqz p0, :cond_17

    .line 432
    .line 433
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    .line 434
    .line 435
    goto :goto_7

    .line 436
    :catchall_2
    move-exception p0

    .line 437
    goto :goto_9

    .line 438
    :cond_17
    :goto_7
    monitor-exit p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 439
    :goto_8
    iput-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 440
    .line 441
    if-eqz v1, :cond_18

    .line 442
    .line 443
    sget-boolean p0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    .line 444
    .line 445
    if-eqz p0, :cond_18

    .line 446
    .line 447
    const-string p0, "ZenModeHelper"

    .line 448
    .line 449
    new-instance p2, Ljava/lang/StringBuilder;

    .line 450
    .line 451
    const-string p3, "Found existing condition for: "

    .line 452
    .line 453
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 457
    .line 458
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object p1

    .line 465
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .line 467
    .line 468
    goto :goto_a

    .line 469
    :goto_9
    :try_start_4
    monitor-exit p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 470
    throw p0

    .line 471
    :cond_18
    :goto_a
    return-void
.end method
