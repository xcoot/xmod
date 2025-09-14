.class public final synthetic Lcom/android/server/wm/MultiInstanceController$FindTasksResult$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiInstanceController$FindTasksResult;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiInstanceController$FindTasksResult;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiInstanceController$FindTasksResult;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiInstanceController$FindTasksResult;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/android/server/wm/Task;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_0
    iget v1, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 17
    .line 18
    iget v2, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->userId:I

    .line 19
    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_8

    .line 31
    .line 32
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 33
    .line 34
    if-nez v4, :cond_8

    .line 35
    .line 36
    iget v4, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 37
    .line 38
    iget v5, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->userId:I

    .line 39
    .line 40
    if-eq v4, v5, :cond_2

    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    iget-object v4, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->mTarget:Lcom/android/server/wm/ActivityRecord;

    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-static {v3, v4}, Lcom/android/server/wm/ConfigurationContainer;->isCompatibleActivityType(II)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_3

    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :cond_3
    iget-object v3, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 63
    .line 64
    iget-object v4, p1, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    .line 65
    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_4

    .line 73
    .line 74
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    goto :goto_0

    .line 79
    :cond_4
    if-eqz v4, :cond_5

    .line 80
    .line 81
    invoke-virtual {v4}, Landroid/content/Intent;->isDocument()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_5

    .line 86
    .line 87
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    goto :goto_0

    .line 92
    :cond_5
    const/4 v2, 0x0

    .line 93
    move-object v6, v2

    .line 94
    move v2, v1

    .line 95
    move-object v1, v6

    .line 96
    :goto_0
    iget-object v3, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 97
    .line 98
    if-eqz v3, :cond_6

    .line 99
    .line 100
    iget-object v5, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->cls:Landroid/content/ComponentName;

    .line 101
    .line 102
    invoke-virtual {v3, v5}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_6

    .line 107
    .line 108
    iget-object v3, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->documentData:Landroid/net/Uri;

    .line 109
    .line 110
    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_6

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_6
    if-eqz v4, :cond_7

    .line 121
    .line 122
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    if-eqz v3, :cond_7

    .line 127
    .line 128
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    iget-object v4, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->cls:Landroid/content/ComponentName;

    .line 133
    .line 134
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-nez v3, :cond_7

    .line 139
    .line 140
    iget-object v3, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->documentData:Landroid/net/Uri;

    .line 141
    .line 142
    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_7

    .line 147
    .line 148
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_7
    iget-boolean v1, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->isDocument:Z

    .line 153
    .line 154
    if-nez v1, :cond_8

    .line 155
    .line 156
    if-nez v2, :cond_8

    .line 157
    .line 158
    iget-object v1, p1, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    .line 159
    .line 160
    if-eqz v1, :cond_8

    .line 161
    .line 162
    iget-object v0, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->mTarget:Lcom/android/server/wm/ActivityRecord;

    .line 163
    .line 164
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_8

    .line 171
    .line 172
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    :cond_8
    :goto_1
    return-void
.end method
