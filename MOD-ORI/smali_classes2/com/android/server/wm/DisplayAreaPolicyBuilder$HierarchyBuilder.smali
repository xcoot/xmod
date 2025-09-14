.class public final Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFeatures:Ljava/util/ArrayList;

.field public mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

.field public final mRoot:Lcom/android/server/wm/RootDisplayArea;

.field public final mTaskDisplayAreas:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RootDisplayArea;)V
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
    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final build(Ljava/util/List;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    .line 6
    .line 7
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 8
    .line 9
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const/16 v3, 0x25

    .line 15
    .line 16
    new-array v4, v3, [Lcom/android/server/wm/DisplayArea$Tokens;

    .line 17
    .line 18
    new-instance v5, Landroid/util/ArrayMap;

    .line 19
    .line 20
    iget-object v6, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    invoke-direct {v5, v6}, Landroid/util/ArrayMap;-><init>(I)V

    .line 27
    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    move v7, v6

    .line 31
    :goto_0
    iget-object v8, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    if-ge v7, v8, :cond_0

    .line 38
    .line 39
    iget-object v8, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    check-cast v8, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 46
    .line 47
    new-instance v9, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    add-int/lit8 v7, v7, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-array v7, v3, [Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    .line 59
    .line 60
    new-instance v8, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    .line 61
    .line 62
    const/4 v9, 0x0

    .line 63
    invoke-direct {v8, v9, v6, v9}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object v10, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    move v11, v6

    .line 76
    :goto_1
    if-ge v11, v10, :cond_5

    .line 77
    .line 78
    iget-object v12, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v12

    .line 84
    check-cast v12, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 85
    .line 86
    move v13, v6

    .line 87
    move-object v14, v9

    .line 88
    :goto_2
    if-ge v13, v3, :cond_4

    .line 89
    .line 90
    iget-object v15, v12, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mWindowLayers:[Z

    .line 91
    .line 92
    aget-boolean v15, v15, v13

    .line 93
    .line 94
    if-eqz v15, :cond_3

    .line 95
    .line 96
    if-eqz v14, :cond_1

    .line 97
    .line 98
    iget-object v15, v14, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mParent:Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    .line 99
    .line 100
    aget-object v6, v7, v13

    .line 101
    .line 102
    if-eq v15, v6, :cond_2

    .line 103
    .line 104
    :cond_1
    new-instance v14, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    .line 105
    .line 106
    aget-object v6, v7, v13

    .line 107
    .line 108
    invoke-direct {v14, v12, v13, v6}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    .line 109
    .line 110
    .line 111
    aget-object v6, v7, v13

    .line 112
    .line 113
    iget-object v6, v6, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    :cond_2
    aput-object v14, v7, v13

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_3
    move-object v14, v9

    .line 122
    :goto_3
    add-int/lit8 v13, v13, 0x1

    .line 123
    .line 124
    const/4 v6, 0x0

    .line 125
    goto :goto_2

    .line 126
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 127
    .line 128
    const/4 v6, 0x0

    .line 129
    goto :goto_1

    .line 130
    :cond_5
    move-object v10, v9

    .line 131
    const/4 v6, 0x0

    .line 132
    const/4 v11, 0x0

    .line 133
    :goto_4
    if-ge v6, v3, :cond_10

    .line 134
    .line 135
    const/4 v12, 0x1

    .line 136
    const/4 v13, 0x2

    .line 137
    if-ne v6, v13, :cond_6

    .line 138
    .line 139
    move v14, v12

    .line 140
    goto :goto_6

    .line 141
    :cond_6
    const/16 v14, 0x7db

    .line 142
    .line 143
    invoke-static {v14}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    .line 144
    .line 145
    .line 146
    move-result v14

    .line 147
    if-eq v6, v14, :cond_8

    .line 148
    .line 149
    const/16 v14, 0x7dc

    .line 150
    .line 151
    invoke-static {v14}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    .line 152
    .line 153
    .line 154
    move-result v14

    .line 155
    if-ne v6, v14, :cond_7

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_7
    const/4 v14, 0x0

    .line 159
    goto :goto_6

    .line 160
    :cond_8
    :goto_5
    move v14, v13

    .line 161
    :goto_6
    if-eqz v10, :cond_9

    .line 162
    .line 163
    iget-object v15, v10, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mParent:Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    .line 164
    .line 165
    aget-object v3, v7, v6

    .line 166
    .line 167
    if-ne v15, v3, :cond_9

    .line 168
    .line 169
    if-eq v14, v11, :cond_f

    .line 170
    .line 171
    :cond_9
    new-instance v10, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    .line 172
    .line 173
    aget-object v3, v7, v6

    .line 174
    .line 175
    invoke-direct {v10, v9, v6, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    .line 176
    .line 177
    .line 178
    aget-object v3, v7, v6

    .line 179
    .line 180
    iget-object v3, v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    if-ne v14, v12, :cond_d

    .line 186
    .line 187
    aget-object v3, v7, v6

    .line 188
    .line 189
    iget-object v11, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 192
    .line 193
    .line 194
    move-result v11

    .line 195
    const/4 v15, 0x0

    .line 196
    :goto_7
    if-ge v15, v11, :cond_a

    .line 197
    .line 198
    new-instance v12, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    .line 199
    .line 200
    invoke-direct {v12, v9, v13, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    .line 201
    .line 202
    .line 203
    iget-object v9, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    check-cast v9, Lcom/android/server/wm/DisplayArea;

    .line 210
    .line 211
    iput-object v9, v12, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    .line 212
    .line 213
    iput v13, v12, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    .line 214
    .line 215
    iget-object v9, v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    add-int/lit8 v15, v15, 0x1

    .line 221
    .line 222
    const/4 v9, 0x0

    .line 223
    const/4 v12, 0x1

    .line 224
    goto :goto_7

    .line 225
    :cond_a
    aget-object v3, v7, v6

    .line 226
    .line 227
    if-nez v1, :cond_c

    .line 228
    .line 229
    :cond_b
    const/4 v3, 0x1

    .line 230
    goto :goto_9

    .line 231
    :cond_c
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 232
    .line 233
    .line 234
    move-result v9

    .line 235
    const/4 v11, 0x0

    .line 236
    :goto_8
    if-ge v11, v9, :cond_b

    .line 237
    .line 238
    new-instance v12, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    .line 239
    .line 240
    const/4 v15, 0x0

    .line 241
    invoke-direct {v12, v15, v13, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    .line 242
    .line 243
    .line 244
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v16

    .line 248
    move-object/from16 v15, v16

    .line 249
    .line 250
    check-cast v15, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    .line 251
    .line 252
    iget-object v15, v15, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    .line 253
    .line 254
    iput-object v15, v12, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    .line 255
    .line 256
    iput v13, v12, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    .line 257
    .line 258
    iget-object v15, v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    .line 259
    .line 260
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    add-int/lit8 v11, v11, 0x1

    .line 264
    .line 265
    goto :goto_8

    .line 266
    :goto_9
    iput-boolean v3, v10, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mSkipTokens:Z

    .line 267
    .line 268
    goto :goto_a

    .line 269
    :cond_d
    move v3, v12

    .line 270
    if-ne v14, v13, :cond_e

    .line 271
    .line 272
    iget-object v9, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

    .line 273
    .line 274
    iput-object v9, v10, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    .line 275
    .line 276
    iput-boolean v3, v10, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mSkipTokens:Z

    .line 277
    .line 278
    :cond_e
    :goto_a
    move v11, v14

    .line 279
    :cond_f
    iput v6, v10, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    .line 280
    .line 281
    add-int/lit8 v6, v6, 0x1

    .line 282
    .line 283
    const/16 v3, 0x25

    .line 284
    .line 285
    const/4 v9, 0x0

    .line 286
    goto/16 :goto_4

    .line 287
    .line 288
    :cond_10
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->computeMaxLayer()I

    .line 289
    .line 290
    .line 291
    const/4 v1, 0x0

    .line 292
    invoke-virtual {v8, v2, v4, v1, v5}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->instantiateChildren(Lcom/android/server/wm/DisplayArea;[Lcom/android/server/wm/DisplayArea$Tokens;ILjava/util/Map;)V

    .line 293
    .line 294
    .line 295
    iget-object v0, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    .line 296
    .line 297
    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/wm/RootDisplayArea;->onHierarchyBuilt(Ljava/util/ArrayList;[Lcom/android/server/wm/DisplayArea$Tokens;Ljava/util/Map;)V

    .line 298
    .line 299
    .line 300
    return-void
.end method
