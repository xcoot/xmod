.class public final Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mChildren:Ljava/util/ArrayList;

.field public mExisting:Lcom/android/server/wm/DisplayArea;

.field public final mFeature:Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

.field public mMaxLayer:I

.field public final mMinLayer:I

.field public final mParent:Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

.field public mSkipTokens:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V
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
    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mSkipTokens:Z

    .line 13
    .line 14
    iput p2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMinLayer:I

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mFeature:Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mParent:Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final computeMaxLayer()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->computeMaxLayer()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    .line 34
    .line 35
    return p0
.end method

.method public final instantiateChildren(Lcom/android/server/wm/DisplayArea;[Lcom/android/server/wm/DisplayArea$Tokens;ILjava/util/Map;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ge v0, v1, :cond_9

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    .line 31
    .line 32
    iget-object v2, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    .line 33
    .line 34
    iget v3, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMinLayer:I

    .line 35
    .line 36
    iget-object v4, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mFeature:Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->asTokens()Lcom/android/server/wm/DisplayArea$Tokens;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    iget-object v2, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->asTokens()Lcom/android/server/wm/DisplayArea$Tokens;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :goto_1
    iget v5, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    .line 53
    .line 54
    if-gt v3, v5, :cond_0

    .line 55
    .line 56
    aput-object v2, p2, v3

    .line 57
    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    iget-object v2, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_1
    iget-boolean v2, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mSkipTokens:Z

    .line 65
    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    goto :goto_4

    .line 70
    :cond_2
    const/4 v2, 0x2

    .line 71
    if-le v3, v2, :cond_3

    .line 72
    .line 73
    sget-object v5, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    iget v5, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    .line 77
    .line 78
    if-ge v5, v2, :cond_4

    .line 79
    .line 80
    sget-object v5, Lcom/android/server/wm/DisplayArea$Type;->BELOW_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    sget-object v5, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    .line 84
    .line 85
    :goto_2
    const-string v6, ":"

    .line 86
    .line 87
    if-nez v4, :cond_6

    .line 88
    .line 89
    new-instance v7, Lcom/android/server/wm/DisplayArea$Tokens;

    .line 90
    .line 91
    iget-object v8, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 92
    .line 93
    const-string v9, "Leaf:"

    .line 94
    .line 95
    invoke-static {v3, v9, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    iget v9, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    .line 100
    .line 101
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-direct {v7, v8, v5, v6, v2}, Lcom/android/server/wm/DisplayArea$Tokens;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    :goto_3
    iget v2, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    .line 112
    .line 113
    if-gt v3, v2, :cond_5

    .line 114
    .line 115
    aput-object v7, p2, v3

    .line 116
    .line 117
    add-int/lit8 v3, v3, 0x1

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_5
    move-object v2, v7

    .line 121
    goto :goto_4

    .line 122
    :cond_6
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 123
    .line 124
    new-instance v7, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    iget-object v8, v4, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mName:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {v3, v8, v6, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 132
    .line 133
    .line 134
    iget v3, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    .line 135
    .line 136
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    iget-object v6, v4, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mNewDisplayAreaSupplier:Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

    .line 144
    .line 145
    iget v7, v4, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mId:I

    .line 146
    .line 147
    invoke-interface {v6, v2, v5, v3, v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;->create(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)Lcom/android/server/wm/DisplayArea;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    :goto_4
    if-nez v2, :cond_7

    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_7
    const v3, 0x7fffffff

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 158
    .line 159
    .line 160
    if-eqz v4, :cond_8

    .line 161
    .line 162
    move-object v3, p4

    .line 163
    check-cast v3, Landroid/util/ArrayMap;

    .line 164
    .line 165
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    check-cast v3, Ljava/util/List;

    .line 170
    .line 171
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    :cond_8
    add-int/lit8 v3, p3, 0x1

    .line 175
    .line 176
    invoke-virtual {v1, v2, p2, v3, p4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->instantiateChildren(Lcom/android/server/wm/DisplayArea;[Lcom/android/server/wm/DisplayArea$Tokens;ILjava/util/Map;)V

    .line 177
    .line 178
    .line 179
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_9
    return-void
.end method
