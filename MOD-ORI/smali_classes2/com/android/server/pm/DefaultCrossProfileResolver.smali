.class public final Lcom/android/server/pm/DefaultCrossProfileResolver;
.super Lcom/android/server/pm/CrossProfileResolver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/CrossProfileResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/pm/UserManagerService;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/server/pm/DefaultCrossProfileResolver;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createForwardingResolveInfo(Lcom/android/server/pm/Computer;Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;JILjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 3
    .line 4
    iget v9, v1, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 5
    .line 6
    invoke-virtual {p0, v9}, Lcom/android/server/pm/CrossProfileResolver;->isUserEnabled(I)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v10, 0x0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    return-object v10

    .line 14
    :cond_0
    iget-object v2, v0, Lcom/android/server/pm/CrossProfileResolver;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 15
    .line 16
    move-object v3, p1

    .line 17
    move-object/from16 v4, p3

    .line 18
    .line 19
    move-object/from16 v5, p4

    .line 20
    .line 21
    move-wide/from16 v6, p5

    .line 22
    .line 23
    move v8, v9

    .line 24
    invoke-interface/range {v2 .. v8}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    invoke-static {v7}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    return-object v10

    .line 35
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    add-int/lit8 v2, v2, -0x1

    .line 40
    .line 41
    :goto_0
    if-ltz v2, :cond_3

    .line 42
    .line 43
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 48
    .line 49
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 50
    .line 51
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 52
    .line 53
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 54
    .line 55
    const/high16 v4, 0x40000000    # 2.0f

    .line 56
    .line 57
    and-int/2addr v3, v4

    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    move-object v3, p1

    .line 61
    move/from16 v4, p7

    .line 62
    .line 63
    invoke-interface {p1, v1, v4, v9}, Lcom/android/server/pm/Computer;->createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    move-object v8, v1

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move-object v3, p1

    .line 70
    move/from16 v4, p7

    .line 71
    .line 72
    add-int/lit8 v2, v2, -0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    move-object v8, v10

    .line 76
    :goto_1
    if-nez v8, :cond_4

    .line 77
    .line 78
    return-object v10

    .line 79
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    const/4 v1, 0x0

    .line 84
    move v11, v1

    .line 85
    move v12, v11

    .line 86
    :goto_2
    if-ge v11, v10, :cond_7

    .line 87
    .line 88
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 93
    .line 94
    iget-boolean v2, v1, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    .line 95
    .line 96
    if-eqz v2, :cond_5

    .line 97
    .line 98
    move-object/from16 v13, p8

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_5
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 102
    .line 103
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 104
    .line 105
    move-object/from16 v13, p8

    .line 106
    .line 107
    invoke-interface {v13, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    move-object v2, v1

    .line 112
    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 113
    .line 114
    if-nez v2, :cond_6

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_6
    iget-object v1, v0, Lcom/android/server/pm/DefaultCrossProfileResolver;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 118
    .line 119
    check-cast v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 120
    .line 121
    move-object/from16 v3, p3

    .line 122
    .line 123
    move-wide/from16 v4, p5

    .line 124
    .line 125
    move v6, v9

    .line 126
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    move v12, v1

    .line 135
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_7
    new-instance v0, Lcom/android/server/pm/CrossProfileDomainInfo;

    .line 139
    .line 140
    invoke-direct {v0, v8, v12, v9}, Lcom/android/server/pm/CrossProfileDomainInfo;-><init>(Landroid/content/pm/ResolveInfo;II)V

    .line 141
    .line 142
    .line 143
    return-object v0
.end method

.method public final filterResolveInfoWithDomainPreferredActivity(ILjava/util/List;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ge v0, v1, :cond_1

    .line 20
    .line 21
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/pm/CrossProfileDomainInfo;

    .line 26
    .line 27
    iget v2, v1, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    .line 28
    .line 29
    if-le v2, p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-object p0
.end method

.method public final resolveIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IIJLjava/lang/String;Ljava/util/List;ZLjava/util/function/Function;)Ljava/util/List;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v10, p4

    .line 4
    .line 5
    move-object/from16 v11, p9

    .line 6
    .line 7
    new-instance v12, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    if-eqz p8, :cond_0

    .line 13
    .line 14
    return-object v12

    .line 15
    :cond_0
    if-eqz v11, :cond_3

    .line 16
    .line 17
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v15

    .line 21
    const/4 v9, 0x0

    .line 22
    :goto_0
    if-ge v9, v15, :cond_3

    .line 23
    .line 24
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    move-object v3, v1

    .line 29
    check-cast v3, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 30
    .line 31
    iget v1, v3, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    .line 32
    .line 33
    and-int/lit8 v1, v1, 0x2

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    move-object/from16 v1, p0

    .line 38
    .line 39
    move-object/from16 v2, p1

    .line 40
    .line 41
    move-object/from16 v4, p2

    .line 42
    .line 43
    move-object/from16 v5, p3

    .line 44
    .line 45
    move-wide/from16 v6, p6

    .line 46
    .line 47
    move/from16 v8, p4

    .line 48
    .line 49
    move/from16 v16, v9

    .line 50
    .line 51
    move-object/from16 v9, p11

    .line 52
    .line 53
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/DefaultCrossProfileResolver;->createForwardingResolveInfo(Lcom/android/server/pm/Computer;Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;JILjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move/from16 v16, v9

    .line 61
    .line 62
    :cond_2
    add-int/lit8 v9, v16, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    const/4 v1, 0x0

    .line 66
    :goto_1
    if-eqz v1, :cond_4

    .line 67
    .line 68
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    invoke-static {v10, v12}, Lcom/android/server/pm/CrossProfileResolver;->filterIfNotSystemUser(ILjava/util/List;)V

    .line 72
    .line 73
    .line 74
    return-object v12

    .line 75
    :cond_4
    if-nez v11, :cond_5

    .line 76
    .line 77
    :goto_2
    const/4 v14, 0x0

    .line 78
    goto/16 :goto_9

    .line 79
    .line 80
    :cond_5
    new-instance v15, Landroid/util/SparseBooleanArray;

    .line 81
    .line 82
    invoke-direct {v15}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    const/4 v8, 0x0

    .line 90
    :goto_3
    if-ge v8, v9, :cond_b

    .line 91
    .line 92
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    move-object v3, v1

    .line 97
    check-cast v3, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 98
    .line 99
    iget v6, v3, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 100
    .line 101
    iget v1, v3, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    .line 102
    .line 103
    and-int/lit8 v2, v1, 0x2

    .line 104
    .line 105
    const/4 v7, 0x1

    .line 106
    if-eqz v2, :cond_6

    .line 107
    .line 108
    move v2, v7

    .line 109
    goto :goto_4

    .line 110
    :cond_6
    const/4 v2, 0x0

    .line 111
    :goto_4
    and-int/lit8 v1, v1, 0x4

    .line 112
    .line 113
    if-eqz v1, :cond_7

    .line 114
    .line 115
    move v1, v7

    .line 116
    goto :goto_5

    .line 117
    :cond_7
    const/4 v1, 0x0

    .line 118
    :goto_5
    if-nez v2, :cond_8

    .line 119
    .line 120
    invoke-virtual {v15, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-nez v2, :cond_8

    .line 125
    .line 126
    if-eqz v1, :cond_9

    .line 127
    .line 128
    if-nez p10, :cond_8

    .line 129
    .line 130
    goto :goto_6

    .line 131
    :cond_8
    move/from16 v16, v8

    .line 132
    .line 133
    move/from16 v17, v9

    .line 134
    .line 135
    goto :goto_7

    .line 136
    :cond_9
    :goto_6
    move-object/from16 v1, p0

    .line 137
    .line 138
    move-object/from16 v2, p1

    .line 139
    .line 140
    move-object/from16 v4, p2

    .line 141
    .line 142
    move-object/from16 v5, p3

    .line 143
    .line 144
    move v13, v6

    .line 145
    move v14, v7

    .line 146
    move-wide/from16 v6, p6

    .line 147
    .line 148
    move/from16 v16, v8

    .line 149
    .line 150
    move/from16 v8, p4

    .line 151
    .line 152
    move/from16 v17, v9

    .line 153
    .line 154
    move-object/from16 v9, p11

    .line 155
    .line 156
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/DefaultCrossProfileResolver;->createForwardingResolveInfo(Lcom/android/server/pm/Computer;Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;JILjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    if-eqz v1, :cond_a

    .line 161
    .line 162
    goto :goto_8

    .line 163
    :cond_a
    invoke-virtual {v15, v13, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 164
    .line 165
    .line 166
    :goto_7
    add-int/lit8 v8, v16, 0x1

    .line 167
    .line 168
    move/from16 v9, v17

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_b
    const/4 v1, 0x0

    .line 172
    :goto_8
    if-nez v1, :cond_c

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_c
    iget-object v2, v1, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 176
    .line 177
    iget v2, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    .line 178
    .line 179
    invoke-virtual {v0, v2}, Lcom/android/server/pm/CrossProfileResolver;->isUserEnabled(I)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-nez v2, :cond_d

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_d
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-static {v10, v2}, Lcom/android/server/pm/CrossProfileResolver;->filterIfNotSystemUser(ILjava/util/List;)V

    .line 191
    .line 192
    .line 193
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-eqz v2, :cond_e

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_e
    move-object v14, v1

    .line 201
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->hasWebURI()Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_11

    .line 206
    .line 207
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 208
    .line 209
    .line 210
    move-result-wide v1

    .line 211
    :try_start_0
    iget-object v0, v0, Lcom/android/server/pm/CrossProfileResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 212
    .line 213
    invoke-virtual {v0, v10}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 214
    .line 215
    .line 216
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 218
    .line 219
    .line 220
    if-eqz v0, :cond_f

    .line 221
    .line 222
    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    .line 223
    .line 224
    move-object/from16 v0, p1

    .line 225
    .line 226
    move-object/from16 v1, p2

    .line 227
    .line 228
    move-object/from16 v2, p3

    .line 229
    .line 230
    move-wide/from16 v3, p6

    .line 231
    .line 232
    move/from16 v5, p4

    .line 233
    .line 234
    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/Computer;->getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;JII)Lcom/android/server/pm/CrossProfileDomainInfo;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    goto :goto_a

    .line 239
    :cond_f
    const/4 v0, 0x0

    .line 240
    :goto_a
    if-eqz v0, :cond_10

    .line 241
    .line 242
    move-object v14, v0

    .line 243
    :cond_10
    if-eqz v14, :cond_12

    .line 244
    .line 245
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    goto :goto_b

    .line 249
    :catchall_0
    move-exception v0

    .line 250
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 251
    .line 252
    .line 253
    throw v0

    .line 254
    :cond_11
    if-eqz v14, :cond_12

    .line 255
    .line 256
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    :cond_12
    :goto_b
    return-object v12
.end method
