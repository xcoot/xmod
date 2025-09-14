.class public final Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCallingUid:I

.field public mNewConfig:Landroid/service/notification/ZenModeConfig;

.field public mNewPolicy:Landroid/app/NotificationManager$Policy;

.field public mNewZenMode:I

.field public mOrigin:I

.field public mPrevConfig:Landroid/service/notification/ZenModeConfig;

.field public mPrevPolicy:Landroid/app/NotificationManager$Policy;

.field public mPrevZenMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mCallingUid:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    .line 13
    .line 14
    return-void
.end method

.method public static activeRulesList(Landroid/service/notification/ZenModeConfig;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;->copy()Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/16 v2, 0x3e7

    .line 22
    .line 23
    iput v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 29
    .line 30
    if-eqz p0, :cond_3

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    return-object v0
.end method

.method public static toState(Z)I
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x2

    .line 6
    :goto_0
    return p0
.end method


# virtual methods
.method public final getChangedRuleType()I
    .locals 3

    .line 1
    new-instance v0, Landroid/service/notification/ZenModeDiff$ConfigDiff;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;-><init>(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->hasDiff()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->getManualRuleDiff()Landroid/service/notification/ZenModeDiff$RuleDiff;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasDiff()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->wasAdded()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->wasRemoved()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->becameActive()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->becameInactive()Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-eqz p0, :cond_2

    .line 59
    .line 60
    :cond_1
    const/4 p0, 0x1

    .line 61
    return p0

    .line 62
    :cond_2
    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->getAllAutomaticRuleDiffs()Landroid/util/ArrayMap;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-eqz p0, :cond_5

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/service/notification/ZenModeDiff$RuleDiff;

    .line 87
    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasDiff()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_3

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->becameActive()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-nez v2, :cond_4

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->becameInactive()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    :cond_4
    const/4 p0, 0x2

    .line 109
    return p0

    .line 110
    :cond_5
    return v1
.end method

.method public final getIsUserAction()Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    if-ne p0, v0, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    :cond_0
    return v1

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getChangedRuleType()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eq v0, v2, :cond_d

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    if-eq v0, v3, :cond_5

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasPolicyDiff()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasChannelsBypassingDiff()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    return v1

    .line 39
    :cond_3
    :goto_0
    iget p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mCallingUid:I

    .line 40
    .line 41
    const/16 v0, 0x3e8

    .line 42
    .line 43
    if-ne p0, v0, :cond_4

    .line 44
    .line 45
    move v1, v2

    .line 46
    :cond_4
    return v1

    .line 47
    :cond_5
    new-instance v0, Landroid/util/ArrayMap;

    .line 48
    .line 49
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v3, Landroid/service/notification/ZenModeDiff$ConfigDiff;

    .line 53
    .line 54
    iget-object v4, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    .line 55
    .line 56
    iget-object v5, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    .line 57
    .line 58
    invoke-direct {v3, v4, v5}, Landroid/service/notification/ZenModeDiff$ConfigDiff;-><init>(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->hasDiff()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_6

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_6
    invoke-virtual {v3}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->getAllAutomaticRuleDiffs()Landroid/util/ArrayMap;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    if-eqz v3, :cond_7

    .line 73
    .line 74
    move-object v0, v3

    .line 75
    :cond_7
    :goto_1
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_c

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Landroid/service/notification/ZenModeDiff$RuleDiff;

    .line 94
    .line 95
    invoke-virtual {v3}, Landroid/service/notification/ZenModeDiff$RuleDiff;->wasAdded()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-nez v4, :cond_b

    .line 100
    .line 101
    invoke-virtual {v3}, Landroid/service/notification/ZenModeDiff$RuleDiff;->wasRemoved()Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_9

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_9
    const-string v4, "enabled"

    .line 109
    .line 110
    invoke-virtual {v3, v4}, Landroid/service/notification/ZenModeDiff$RuleDiff;->getDiffForField(Ljava/lang/String;)Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    if-eqz v4, :cond_a

    .line 115
    .line 116
    invoke-virtual {v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;->hasDiff()Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_a

    .line 121
    .line 122
    return v2

    .line 123
    :cond_a
    const-string/jumbo v4, "snoozing"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v4}, Landroid/service/notification/ZenModeDiff$RuleDiff;->getDiffForField(Ljava/lang/String;)Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    if-eqz v3, :cond_8

    .line 131
    .line 132
    invoke-virtual {v3}, Landroid/service/notification/ZenModeDiff$FieldDiff;->hasDiff()Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_8

    .line 137
    .line 138
    invoke-virtual {v3}, Landroid/service/notification/ZenModeDiff$FieldDiff;->to()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Ljava/lang/Boolean;

    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_8

    .line 149
    .line 150
    return v2

    .line 151
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->isFromSystemOrSystemUi()Z

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    return p0

    .line 156
    :cond_c
    return v1

    .line 157
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->isFromSystemOrSystemUi()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_10

    .line 162
    .line 163
    iget-object p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    .line 164
    .line 165
    if-eqz p0, :cond_f

    .line 166
    .line 167
    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 168
    .line 169
    if-nez p0, :cond_e

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_e
    iget-object p0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_f
    :goto_3
    const/4 p0, 0x0

    .line 176
    :goto_4
    if-nez p0, :cond_10

    .line 177
    .line 178
    move v1, v2

    .line 179
    :cond_10
    return v1
.end method

.method public final hasChannelsBypassingDiff()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevPolicy:Landroid/app/NotificationManager$Policy;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, v0, Landroid/app/NotificationManager$Policy;->state:I

    .line 8
    .line 9
    and-int/2addr v0, v2

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    move v0, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v1

    .line 15
    :goto_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    iget p0, p0, Landroid/app/NotificationManager$Policy;->state:I

    .line 20
    .line 21
    and-int/2addr p0, v2

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    move p0, v2

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move p0, v1

    .line 27
    :goto_1
    if-eq v0, p0, :cond_2

    .line 28
    .line 29
    move v1, v2

    .line 30
    :cond_2
    return v1
.end method

.method public final hasPolicyDiff()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevPolicy:Landroid/app/NotificationManager$Policy;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 6
    .line 7
    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final isFromSystemOrSystemUi()Z
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p0, v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x5

    .line 10
    if-eq p0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x6

    .line 13
    if-ne p0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :cond_1
    :goto_0
    return v0
.end method

.method public final shouldLogChanges()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    :cond_0
    move v0, v3

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    if-eqz v0, :cond_2

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    :cond_2
    move v0, v2

    .line 16
    :goto_0
    if-eqz v0, :cond_3

    .line 17
    .line 18
    return v2

    .line 19
    :cond_3
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->activeRulesList(Landroid/service/notification/ZenModeConfig;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->activeRulesList(Landroid/service/notification/ZenModeConfig;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eq v0, v1, :cond_4

    .line 50
    .line 51
    return v2

    .line 52
    :cond_4
    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    .line 53
    .line 54
    if-nez v0, :cond_5

    .line 55
    .line 56
    return v3

    .line 57
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasPolicyDiff()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_7

    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->activeRulesList(Landroid/service/notification/ZenModeConfig;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iget-object p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    .line 76
    .line 77
    invoke-static {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->activeRulesList(Landroid/service/notification/ZenModeConfig;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-eq v0, p0, :cond_6

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_6
    move v2, v3

    .line 91
    :cond_7
    :goto_1
    return v2
.end method
