.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>([Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;->f$3:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>([ZLjava/io/PrintWriter;Ljava/lang/String;[Z)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;->f$3:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, [Z

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v2, v1

    .line 13
    check-cast v2, Ljava/io/PrintWriter;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;->f$3:Ljava/lang/String;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;->f$2:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, [Z

    .line 20
    .line 21
    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    aget-boolean v9, v0, v1

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    aget-boolean v6, p0, v1

    .line 31
    .line 32
    new-instance v8, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;

    .line 33
    .line 34
    const/4 p0, 0x2

    .line 35
    invoke-direct {v8, p0, v2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;-><init>(ILjava/io/PrintWriter;)V

    .line 36
    .line 37
    .line 38
    const/4 v5, -0x1

    .line 39
    const-string v7, "    Resumed: "

    .line 40
    .line 41
    invoke-static/range {v2 .. v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZLjava/lang/String;Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    or-int/2addr p0, v9

    .line 46
    aput-boolean p0, v0, v1

    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;->f$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, [Lcom/android/server/wm/Task;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;->f$1:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Lcom/android/server/wm/Task;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;->f$2:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v2, Lcom/android/server/wm/WindowProcessController;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;->f$3:Ljava/lang/String;

    .line 62
    .line 63
    check-cast p1, Lcom/android/server/wm/Task;

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    aget-object v4, v0, v3

    .line 67
    .line 68
    if-nez v4, :cond_1

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    if-eq v1, v4, :cond_0

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    :cond_0
    const/4 v1, 0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    move v1, v3

    .line 85
    :goto_0
    invoke-virtual {p1, v3}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    const/4 v5, 0x0

    .line 90
    if-eqz v4, :cond_6

    .line 91
    .line 92
    iget-object v6, v4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 93
    .line 94
    if-eq v6, v2, :cond_2

    .line 95
    .line 96
    goto/16 :goto_1

    .line 97
    .line 98
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    const-string v7, "ActivityTaskManager"

    .line 103
    .line 104
    if-eqz v6, :cond_3

    .line 105
    .line 106
    iget-object v6, p1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 107
    .line 108
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 109
    .line 110
    if-ne v6, v2, :cond_3

    .line 111
    .line 112
    new-instance p0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string p1, "  Not force finishing home activity "

    .line 115
    .line 116
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-static {v7, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v6, "  Force finishing activity "

    .line 143
    .line 144
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v8, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 148
    .line 149
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 168
    .line 169
    iget-object v8, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 170
    .line 171
    const/4 v9, 0x2

    .line 172
    const/16 v10, 0x10

    .line 173
    .line 174
    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 175
    .line 176
    .line 177
    iget-object v11, v8, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 178
    .line 179
    invoke-virtual {v11, v9, v10, v5, v8}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4, p0, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    if-eqz v4, :cond_5

    .line 190
    .line 191
    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    .line 192
    .line 193
    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 194
    .line 195
    sget-object v9, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    .line 196
    .line 197
    sget-object v10, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    .line 198
    .line 199
    invoke-virtual {v4, v5, v8, v9, v10}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    if-eqz v5, :cond_5

    .line 204
    .line 205
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    if-eqz v5, :cond_4

    .line 210
    .line 211
    iget-object p1, p1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 212
    .line 213
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 214
    .line 215
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 216
    .line 217
    if-eq p1, v5, :cond_5

    .line 218
    .line 219
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 225
    .line 226
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-static {v7, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    invoke-virtual {v4, p0, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 245
    .line 246
    .line 247
    :cond_5
    move-object v5, v2

    .line 248
    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    .line 249
    .line 250
    aput-object v5, v0, v3

    .line 251
    .line 252
    :cond_7
    return-void

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
