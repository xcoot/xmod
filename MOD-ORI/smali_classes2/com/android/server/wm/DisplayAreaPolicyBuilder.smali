.class Lcom/android/server/wm/DisplayAreaPolicyBuilder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field private final mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

.field private mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

.field private mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

.field private mSelectTaskDisplayAreaFunc:Ljava/util/function/Function;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method

.method public static canBeWindowingLayer(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/16 v0, 0x9

    .line 5
    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 12
    :goto_1
    return p0
.end method

.method private static containsDefaultTaskDisplayArea(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/wm/TaskDisplayArea;

    .line 18
    .line 19
    iget v2, v2, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-ne v2, v3, :cond_0

    .line 23
    .line 24
    return v3

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v0
.end method

.method private validate()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    new-instance v0, Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    .line 16
    .line 17
    invoke-static {v2, v0, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->validateIds(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;Ljava/util/Set;Ljava/util/Set;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    .line 21
    .line 22
    iget-object v3, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    const/4 v5, 0x0

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    move v3, v4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v3, v5

    .line 31
    :goto_0
    invoke-static {v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->containsDefaultTaskDisplayArea(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    move v6, v5

    .line 36
    :goto_1
    iget-object v7, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-ge v6, v7, :cond_7

    .line 43
    .line 44
    iget-object v7, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    check-cast v7, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    .line 51
    .line 52
    invoke-static {v7, v0, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->validateIds(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;Ljava/util/Set;Ljava/util/Set;)V

    .line 53
    .line 54
    .line 55
    iget-object v8, v7, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-nez v8, :cond_6

    .line 62
    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    iget-object v8, v7, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

    .line 66
    .line 67
    if-nez v8, :cond_1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string v0, "Only one DisplayArea hierarchy can contain the IME container"

    .line 73
    .line 74
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :cond_2
    iget-object v3, v7, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

    .line 79
    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    move v3, v4

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    move v3, v5

    .line 85
    :goto_2
    if-eqz v2, :cond_5

    .line 86
    .line 87
    invoke-static {v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->containsDefaultTaskDisplayArea(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-nez v7, :cond_4

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    const-string v0, "Only one TaskDisplayArea can have the feature id of FEATURE_DEFAULT_TASK_CONTAINER"

    .line 97
    .line 98
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :cond_5
    invoke-static {v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->containsDefaultTaskDisplayArea(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    const-string v0, "DisplayAreaGroup must contain at least one TaskDisplayArea."

    .line 112
    .line 113
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :cond_7
    if-eqz v3, :cond_a

    .line 118
    .line 119
    if-eqz v2, :cond_9

    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    .line 122
    .line 123
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_8

    .line 130
    .line 131
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    check-cast p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 138
    .line 139
    iget p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mId:I

    .line 140
    .line 141
    invoke-static {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->canBeWindowingLayer(I)Z

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    if-eqz p0, :cond_8

    .line 146
    .line 147
    return-void

    .line 148
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 149
    .line 150
    const-string v0, "WindowingLayer must exist at the top level index"

    .line 151
    .line 152
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p0

    .line 156
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 157
    .line 158
    const-string v0, "There must be a default TaskDisplayArea with id of FEATURE_DEFAULT_TASK_CONTAINER."

    .line 159
    .line 160
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p0

    .line 164
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 165
    .line 166
    const-string v0, "IME container must be set."

    .line 167
    .line 168
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p0

    .line 172
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 173
    .line 174
    const-string v0, "Root must be set for the display area policy."

    .line 175
    .line 176
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw p0
.end method

.method private static validateIds(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;Ljava/util/Set;Ljava/util/Set;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, " is not unique."

    .line 14
    .line 15
    if-eqz v1, :cond_8

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_8

    .line 26
    .line 27
    const/16 v1, 0x4e21

    .line 28
    .line 29
    if-gt v0, v1, :cond_7

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    move v3, v0

    .line 33
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-ge v3, v4, :cond_2

    .line 40
    .line 41
    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Lcom/android/server/wm/TaskDisplayArea;

    .line 48
    .line 49
    iget v4, v4, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 50
    .line 51
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_1

    .line 60
    .line 61
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_1

    .line 70
    .line 71
    if-gt v4, v1, :cond_0

    .line 72
    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    const-string p1, "TaskDisplayArea declared in the policy should nothave an id greater than FEATURE_VENDOR_LAST."

    .line 79
    .line 80
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    const-string p1, "TaskDisplayArea must have unique id, but id="

    .line 87
    .line 88
    invoke-static {v4, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0

    .line 96
    :cond_2
    new-instance v3, Landroid/util/ArraySet;

    .line 97
    .line 98
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 99
    .line 100
    .line 101
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-ge v0, v4, :cond_6

    .line 108
    .line 109
    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    check-cast v4, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 116
    .line 117
    iget v4, v4, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mId:I

    .line 118
    .line 119
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-nez v5, :cond_5

    .line 128
    .line 129
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_4

    .line 138
    .line 139
    if-gt v4, v1, :cond_3

    .line 140
    .line 141
    add-int/lit8 v0, v0, 0x1

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 145
    .line 146
    const-string p1, "Feature should not have an id greater than FEATURE_VENDOR_LAST."

    .line 147
    .line 148
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p0

    .line 152
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 153
    .line 154
    const-string p1, "Feature below the same root must have unique id, but id="

    .line 155
    .line 156
    invoke-static {v4, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p0

    .line 164
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 165
    .line 166
    const-string p1, "Feature must not have same id with any RootDisplayArea or TaskDisplayArea, but id="

    .line 167
    .line 168
    const-string p2, " is used"

    .line 169
    .line 170
    invoke-static {v4, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p0

    .line 178
    :cond_6
    invoke-interface {p2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 183
    .line 184
    const-string p1, "RootDisplayArea should not have an id greater than FEATURE_VENDOR_LAST."

    .line 185
    .line 186
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw p0

    .line 190
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 191
    .line 192
    const-string p1, "RootDisplayArea must have unique id, but id="

    .line 193
    .line 194
    invoke-static {v0, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p0
.end method


# virtual methods
.method public addDisplayAreaGroupHierarchy(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/DisplayAreaPolicyBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v2, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 21
    .line 22
    iget v0, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mId:I

    .line 23
    .line 24
    invoke-static {v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->canBeWindowingLayer(I)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 36
    .line 37
    new-instance v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    const/16 p1, 0x25

    .line 46
    .line 47
    new-array p1, p1, [Z

    .line 48
    .line 49
    const/4 v3, 0x1

    .line 50
    invoke-static {p1, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 54
    .line 55
    invoke-virtual {p1}, [Z->clone()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, [Z

    .line 60
    .line 61
    const-string v4, "WindowingLayer"

    .line 62
    .line 63
    const/16 v5, 0x9

    .line 64
    .line 65
    invoke-direct {v3, v4, v5, p1, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;-><init>(Ljava/lang/String;I[ZLcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->validate()V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->build(Ljava/util/List;)V

    .line 79
    .line 80
    .line 81
    new-instance p1, Ljava/util/ArrayList;

    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .line 91
    .line 92
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-ge v1, v0, :cond_2

    .line 99
    .line 100
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    .line 107
    .line 108
    const/4 v2, 0x0

    .line 109
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->build(Ljava/util/List;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    add-int/lit8 v1, v1, 0x1

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    .line 121
    .line 122
    if-nez v0, :cond_3

    .line 123
    .line 124
    new-instance v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;

    .line 125
    .line 126
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    .line 127
    .line 128
    iget-object v1, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    .line 129
    .line 130
    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;-><init>(Lcom/android/server/wm/RootDisplayArea;Ljava/util/List;)V

    .line 131
    .line 132
    .line 133
    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    .line 134
    .line 135
    :cond_3
    new-instance v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;

    .line 136
    .line 137
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    .line 138
    .line 139
    iget-object v1, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    .line 140
    .line 141
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    .line 142
    .line 143
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mSelectTaskDisplayAreaFunc:Ljava/util/function/Function;

    .line 144
    .line 145
    invoke-direct {v0, v1, p1, v2, p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;-><init>(Lcom/android/server/wm/RootDisplayArea;Ljava/util/List;Ljava/util/function/BiFunction;Ljava/util/function/Function;)V

    .line 146
    .line 147
    .line 148
    return-object v0
.end method

.method public setRootHierarchy(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/DisplayAreaPolicyBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSelectRootForWindowFunc(Ljava/util/function/BiFunction;)Lcom/android/server/wm/DisplayAreaPolicyBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSelectTaskDisplayAreaFunc(Ljava/util/function/Function;)Lcom/android/server/wm/DisplayAreaPolicyBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mSelectTaskDisplayAreaFunc:Ljava/util/function/Function;

    .line 2
    .line 3
    return-object p0
.end method
