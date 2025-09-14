.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowOrganizerController;

.field public final synthetic f$1:Lcom/android/server/wm/WindowContainer;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/server/wm/TaskDisplayArea;

.field public final synthetic f$4:Landroid/window/WindowContainerTransaction$HierarchyOp;

.field public final synthetic f$5:Lcom/android/server/wm/WindowContainer;

.field public final synthetic f$6:Z

.field public final synthetic f$7:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/WindowContainer;ZLcom/android/server/wm/TaskDisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/WindowContainer;ZLjava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$1:Lcom/android/server/wm/WindowContainer;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$2:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$3:Lcom/android/server/wm/TaskDisplayArea;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$4:Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$5:Lcom/android/server/wm/WindowContainer;

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$6:Z

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$7:Ljava/util/ArrayList;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$1:Lcom/android/server/wm/WindowContainer;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$2:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$3:Lcom/android/server/wm/TaskDisplayArea;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$4:Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$5:Lcom/android/server/wm/WindowContainer;

    .line 12
    .line 13
    iget-boolean v6, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$6:Z

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$7:Ljava/util/ArrayList;

    .line 16
    .line 17
    check-cast p1, Lcom/android/server/wm/Task;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v7, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v8, " Processing task="

    .line 25
    .line 26
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    const-string v8, "WindowOrganizerController"

    .line 37
    .line 38
    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-boolean v7, p1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    if-nez v7, :cond_7

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    if-eq v7, v1, :cond_0

    .line 51
    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_0
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {p1, v3, v9}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    .line 63
    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string/jumbo v0, "reparentChildrenTasksHierarchyOp non-resizeable task to multi window, task="

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {v8, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_2
    :goto_0
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityTypes()[I

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_3

    .line 107
    .line 108
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityTypes()[I

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_3

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_3
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getWindowingModes()[I

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_4

    .line 132
    .line 133
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getWindowingModes()[I

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_4

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    invoke-virtual {v0, v5, p1, v6}, Lcom/android/server/wm/WindowOrganizerController;->isLockTaskModeViolation(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Task;Z)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_5

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_5
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_6

    .line 160
    .line 161
    invoke-virtual {p0, v9, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    :goto_1
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getReparentTopOnly()Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_7

    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    const/4 p1, 0x1

    .line 179
    if-ne p0, p1, :cond_7

    .line 180
    .line 181
    move v9, p1

    .line 182
    :cond_7
    :goto_2
    return v9
.end method
