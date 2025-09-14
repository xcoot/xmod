.class public final Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public final mOpsToAllow:Ljava/util/ArrayList;

.field public final mOpsToForeground:Ljava/util/ArrayList;

.field public final mOpsToIgnore:Ljava/util/ArrayList;

.field public final mOpsToIgnoreIfNotAllowed:Ljava/util/ArrayList;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mRuntimeAndTheirBgPermissionInfos:Landroid/util/ArrayMap;

.field public final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method public static -$$Nest$msyncPackages(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V
    .locals 12

    .line 1
    new-instance v0, Landroid/util/LongSparseLongArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_0
    const-wide/16 v4, 0x1

    .line 15
    .line 16
    if-ge v3, v1, :cond_0

    .line 17
    .line 18
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    check-cast v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 25
    .line 26
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    .line 27
    .line 28
    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    .line 29
    .line 30
    iget-object v9, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p0, v7, v8, v2, v9}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget v6, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    .line 36
    .line 37
    invoke-static {v8, v6}, Lcom/android/internal/util/IntPair;->of(II)J

    .line 38
    .line 39
    .line 40
    move-result-wide v6

    .line 41
    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    move v3, v2

    .line 54
    :goto_1
    if-ge v3, v1, :cond_2

    .line 55
    .line 56
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    check-cast v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 63
    .line 64
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    .line 65
    .line 66
    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    .line 67
    .line 68
    invoke-static {v7, v8}, Lcom/android/internal/util/IntPair;->of(II)J

    .line 69
    .line 70
    .line 71
    move-result-wide v9

    .line 72
    invoke-virtual {v0, v9, v10}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-ltz v7, :cond_1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_1
    const/4 v7, 0x4

    .line 80
    iget v9, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    .line 81
    .line 82
    iget-object v6, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p0, v8, v9, v7, v6}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v9, v8}, Lcom/android/internal/util/IntPair;->of(II)J

    .line 88
    .line 89
    .line 90
    move-result-wide v6

    .line 91
    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 92
    .line 93
    .line 94
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    move v3, v2

    .line 104
    :goto_3
    const/4 v6, 0x1

    .line 105
    if-ge v3, v1, :cond_4

    .line 106
    .line 107
    iget-object v7, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    check-cast v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 114
    .line 115
    iget v8, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    .line 116
    .line 117
    iget v9, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    .line 118
    .line 119
    invoke-static {v8, v9}, Lcom/android/internal/util/IntPair;->of(II)J

    .line 120
    .line 121
    .line 122
    move-result-wide v10

    .line 123
    invoke-virtual {v0, v10, v11}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    if-ltz v8, :cond_3

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_3
    iget v8, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    .line 131
    .line 132
    iget-object v7, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p0, v9, v8, v6, v7}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v8, v9}, Lcom/android/internal/util/IntPair;->of(II)J

    .line 138
    .line 139
    .line 140
    move-result-wide v6

    .line 141
    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 142
    .line 143
    .line 144
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_4
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfNotAllowed:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    :goto_5
    if-ge v2, v1, :cond_8

    .line 154
    .line 155
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfNotAllowed:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    check-cast v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 162
    .line 163
    iget v7, v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    .line 164
    .line 165
    iget v8, v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    .line 166
    .line 167
    invoke-static {v7, v8}, Lcom/android/internal/util/IntPair;->of(II)J

    .line 168
    .line 169
    .line 170
    move-result-wide v9

    .line 171
    invoke-virtual {v0, v9, v10}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    if-ltz v7, :cond_5

    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_5
    iget-object v7, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 179
    .line 180
    invoke-static {v8}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    iget v10, v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    .line 185
    .line 186
    iget-object v3, v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v7, v9, v10, v3}, Landroid/app/AppOpsManager;->unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-eqz v3, :cond_7

    .line 193
    .line 194
    if-eq v3, v6, :cond_6

    .line 195
    .line 196
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 197
    .line 198
    iget-object v7, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 199
    .line 200
    iget-object v7, v7, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/server/policy/PermissionPolicyService$2;

    .line 201
    .line 202
    invoke-virtual {v3, v8, v10, v6, v7}, Landroid/app/AppOpsManagerInternal;->setUidModeFromPermissionPolicy(IIILcom/android/internal/app/IAppOpsCallback;)V

    .line 203
    .line 204
    .line 205
    :cond_6
    invoke-static {v10, v8}, Lcom/android/internal/util/IntPair;->of(II)J

    .line 206
    .line 207
    .line 208
    move-result-wide v7

    .line 209
    invoke-virtual {v0, v7, v8, v4, v5}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 210
    .line 211
    .line 212
    :cond_7
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_8
    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/PermissionPolicyService;Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    .line 19
    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfNotAllowed:Ljava/util/ArrayList;

    .line 26
    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 41
    .line 42
    const-class p1, Landroid/app/AppOpsManager;

    .line 43
    .line 44
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroid/app/AppOpsManager;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 51
    .line 52
    const-class p1, Landroid/app/AppOpsManagerInternal;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Landroid/app/AppOpsManagerInternal;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 61
    .line 62
    new-instance p1, Landroid/util/ArrayMap;

    .line 63
    .line 64
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mRuntimeAndTheirBgPermissionInfos:Landroid/util/ArrayMap;

    .line 68
    .line 69
    const-class p1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 80
    .line 81
    invoke-interface {p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAllPermissionsWithProtection()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    const/4 v0, 0x0

    .line 92
    move v1, v0

    .line 93
    :goto_0
    if-ge v1, p2, :cond_3

    .line 94
    .line 95
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Landroid/content/pm/PermissionInfo;

    .line 100
    .line 101
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mRuntimeAndTheirBgPermissionInfos:Landroid/util/ArrayMap;

    .line 102
    .line 103
    iget-object v4, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    iget-object v3, v2, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    .line 109
    .line 110
    if-eqz v3, :cond_2

    .line 111
    .line 112
    move v4, v0

    .line 113
    :goto_1
    if-ge v4, p2, :cond_1

    .line 114
    .line 115
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    check-cast v5, Landroid/content/pm/PermissionInfo;

    .line 120
    .line 121
    iget-object v6, v2, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    .line 122
    .line 123
    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-eqz v5, :cond_0

    .line 130
    .line 131
    const/4 v3, 0x0

    .line 132
    goto :goto_2

    .line 133
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 137
    .line 138
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 139
    .line 140
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mRuntimeAndTheirBgPermissionInfos:Landroid/util/ArrayMap;

    .line 145
    .line 146
    iget-object v5, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :catch_0
    const-string v2, "Unknown background permission: "

    .line 153
    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    const-string v3, "PermissionPolicyService"

    .line 159
    .line 160
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_3
    return-void
.end method


# virtual methods
.method public final addPackage(Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 6
    .line 7
    :try_start_0
    iget-object v3, v0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    const/16 v4, 0x1000

    .line 10
    .line 11
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget-object v4, v2, Lcom/android/server/policy/PermissionPolicyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 16
    .line 17
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 18
    .line 19
    .line 20
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    if-eqz v3, :cond_13

    .line 22
    .line 23
    if-eqz v1, :cond_13

    .line 24
    .line 25
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 26
    .line 27
    if-eqz v4, :cond_13

    .line 28
    .line 29
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 30
    .line 31
    if-nez v5, :cond_0

    .line 32
    .line 33
    goto/16 :goto_6

    .line 34
    .line 35
    :cond_0
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 36
    .line 37
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_13

    .line 42
    .line 43
    const/16 v5, 0x3e8

    .line 44
    .line 45
    if-ne v4, v5, :cond_1

    .line 46
    .line 47
    goto/16 :goto_6

    .line 48
    .line 49
    :cond_1
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 50
    .line 51
    array-length v5, v4

    .line 52
    const/4 v7, 0x0

    .line 53
    :goto_0
    if-ge v7, v5, :cond_13

    .line 54
    .line 55
    aget-object v8, v4, v7

    .line 56
    .line 57
    iget-object v9, v0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mRuntimeAndTheirBgPermissionInfos:Landroid/util/ArrayMap;

    .line 58
    .line 59
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    check-cast v8, Landroid/content/pm/PermissionInfo;

    .line 64
    .line 65
    if-nez v8, :cond_2

    .line 66
    .line 67
    goto/16 :goto_5

    .line 68
    .line 69
    :cond_2
    invoke-virtual {v8}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    const/4 v10, -0x1

    .line 74
    if-nez v9, :cond_3

    .line 75
    .line 76
    goto/16 :goto_4

    .line 77
    .line 78
    :cond_3
    iget-object v9, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v11, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v12, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 83
    .line 84
    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 85
    .line 86
    invoke-static {v12}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 87
    .line 88
    .line 89
    iget-object v12, v0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 90
    .line 91
    iget-object v13, v0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {v13}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    .line 94
    .line 95
    .line 96
    move-result-object v13

    .line 97
    invoke-virtual {v12, v9, v11, v13}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    and-int/lit8 v12, v12, 0x40

    .line 102
    .line 103
    if-eqz v12, :cond_4

    .line 104
    .line 105
    goto/16 :goto_4

    .line 106
    .line 107
    :cond_4
    invoke-static {v9}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-ne v9, v10, :cond_5

    .line 112
    .line 113
    move v9, v10

    .line 114
    goto :goto_1

    .line 115
    :cond_5
    invoke-static {v9}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    :goto_1
    if-ne v9, v10, :cond_6

    .line 120
    .line 121
    goto/16 :goto_4

    .line 122
    .line 123
    :cond_6
    invoke-virtual {v0, v3, v1, v8}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->shouldGrantAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)Z

    .line 124
    .line 125
    .line 126
    move-result v12

    .line 127
    const/4 v13, 0x1

    .line 128
    const/4 v14, 0x4

    .line 129
    if-eqz v12, :cond_a

    .line 130
    .line 131
    iget-object v12, v8, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    .line 132
    .line 133
    if-eqz v12, :cond_8

    .line 134
    .line 135
    iget-object v15, v0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mRuntimeAndTheirBgPermissionInfos:Landroid/util/ArrayMap;

    .line 136
    .line 137
    invoke-virtual {v15, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    check-cast v12, Landroid/content/pm/PermissionInfo;

    .line 142
    .line 143
    if-eqz v12, :cond_7

    .line 144
    .line 145
    invoke-virtual {v0, v3, v1, v12}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->shouldGrantAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)Z

    .line 146
    .line 147
    .line 148
    move-result v12

    .line 149
    if-eqz v12, :cond_7

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_7
    move v12, v14

    .line 153
    goto :goto_3

    .line 154
    :cond_8
    :goto_2
    const/4 v12, 0x0

    .line 155
    :goto_3
    iget-boolean v15, v2, Lcom/android/server/policy/PermissionPolicyService;->mIsVivo:Z

    .line 156
    .line 157
    if-nez v15, :cond_b

    .line 158
    .line 159
    const-string v15, "com.android.systemui"

    .line 160
    .line 161
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    if-eqz v6, :cond_b

    .line 168
    .line 169
    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    .line 170
    .line 171
    iget-object v15, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-nez v6, :cond_9

    .line 178
    .line 179
    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    .line 180
    .line 181
    iget-object v15, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    if-eqz v6, :cond_b

    .line 188
    .line 189
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string v12, "Ignore "

    .line 192
    .line 193
    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-object v12, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v12, " for "

    .line 202
    .line 203
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-object v12, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 207
    .line 208
    const-string v15, "PermissionPolicyService"

    .line 209
    .line 210
    invoke-static {v6, v12, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_a
    move v12, v13

    .line 214
    :cond_b
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 215
    .line 216
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 217
    .line 218
    new-instance v15, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 219
    .line 220
    invoke-direct {v15, v6, v11, v9}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(ILjava/lang/String;I)V

    .line 221
    .line 222
    .line 223
    if-eqz v12, :cond_e

    .line 224
    .line 225
    if-eq v12, v13, :cond_d

    .line 226
    .line 227
    if-eq v12, v14, :cond_c

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_c
    iget-object v6, v0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_d
    iget-object v6, v0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_e
    iget-object v6, v0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    .line 243
    .line 244
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    :goto_4
    invoke-virtual {v8}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    if-nez v6, :cond_f

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_f
    iget-object v6, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 255
    .line 256
    iget-object v8, v0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 257
    .line 258
    iget-object v9, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 259
    .line 260
    invoke-virtual {v8}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    .line 261
    .line 262
    .line 263
    move-result-object v11

    .line 264
    invoke-static {v8, v9, v1, v11, v6}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    invoke-virtual {v6}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getExtraAppOpCode()I

    .line 269
    .line 270
    .line 271
    move-result v8

    .line 272
    if-ne v8, v10, :cond_10

    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_10
    iget-object v9, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 276
    .line 277
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 278
    .line 279
    iget-object v10, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 280
    .line 281
    new-instance v11, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 282
    .line 283
    invoke-direct {v11, v9, v10, v8}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(ILjava/lang/String;I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v6}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayAllowExtraAppOp()Z

    .line 287
    .line 288
    .line 289
    move-result v8

    .line 290
    if-eqz v8, :cond_11

    .line 291
    .line 292
    iget-object v6, v0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    .line 293
    .line 294
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_11
    invoke-virtual {v6}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayDenyExtraAppOpIfGranted()Z

    .line 299
    .line 300
    .line 301
    move-result v6

    .line 302
    if-eqz v6, :cond_12

    .line 303
    .line 304
    iget-object v6, v0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    goto :goto_5

    .line 310
    :cond_12
    iget-object v6, v0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfNotAllowed:Ljava/util/ArrayList;

    .line 311
    .line 312
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 316
    .line 317
    goto/16 :goto_0

    .line 318
    .line 319
    :catch_0
    :cond_13
    :goto_6
    return-void
.end method

.method public final setUidMode(IIILjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1, p2, p4}, Landroid/app/AppOpsManager;->unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eq v0, p3, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 16
    .line 17
    iget-object v2, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/server/policy/PermissionPolicyService$2;

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2, p3, v2}, Landroid/app/AppOpsManagerInternal;->setUidModeFromPermissionPolicy(IIILcom/android/internal/app/IAppOpsCallback;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 23
    .line 24
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2, p2, p4}, Landroid/app/AppOpsManager;->unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eq v0, p3, :cond_0

    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 35
    .line 36
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    iget-object v7, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/server/policy/PermissionPolicyService$2;

    .line 41
    .line 42
    move v3, p1

    .line 43
    move v4, p2

    .line 44
    move-object v5, p4

    .line 45
    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManagerInternal;->setModeFromPermissionPolicy(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public final shouldGrantAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)Z
    .locals 5

    .line 1
    iget-object v0, p3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_4

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v4}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v2, v0, v1, v4}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    and-int/lit8 v2, v1, 0x8

    .line 27
    .line 28
    const/16 v4, 0x8

    .line 29
    .line 30
    if-ne v2, v4, :cond_0

    .line 31
    .line 32
    return v3

    .line 33
    :cond_0
    invoke-virtual {p3}, Landroid/content/pm/PermissionInfo;->isHardRestricted()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v4, 0x1

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    const/16 p0, 0x4000

    .line 41
    .line 42
    and-int/lit16 p1, v1, 0x4000

    .line 43
    .line 44
    if-ne p1, p0, :cond_1

    .line 45
    .line 46
    move v3, v4

    .line 47
    :cond_1
    xor-int/lit8 p0, v3, 0x1

    .line 48
    .line 49
    return p0

    .line 50
    :cond_2
    invoke-virtual {p3}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    if-eqz p3, :cond_3

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayGrantPermission()Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    return p0

    .line 73
    :cond_3
    return v4

    .line 74
    :cond_4
    return v3
.end method
