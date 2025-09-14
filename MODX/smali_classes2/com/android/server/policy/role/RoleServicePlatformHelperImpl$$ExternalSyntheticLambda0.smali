.class public final synthetic Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/DataOutputStream;

.field public final synthetic f$1:Landroid/content/pm/PackageManagerInternal;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/io/DataOutputStream;Landroid/content/pm/PackageManagerInternal;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$$ExternalSyntheticLambda0;->f$0:Ljava/io/DataOutputStream;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/PackageManagerInternal;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$$ExternalSyntheticLambda0;->f$0:Ljava/io/DataOutputStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/PackageManagerInternal;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 8
    .line 9
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    move-object v3, v1

    .line 28
    check-cast v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x0

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    move v2, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-interface {v2, p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_1

    .line 70
    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception p0

    .line 82
    goto/16 :goto_7

    .line 83
    .line 84
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    move-object v4, v1

    .line 89
    check-cast v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 90
    .line 91
    invoke-virtual {v4, v2}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    if-nez v2, :cond_2

    .line 96
    .line 97
    new-instance v2, Landroid/util/ArraySet;

    .line 98
    .line 99
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_2
    invoke-interface {v2, p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledComponents()Landroid/util/ArraySet;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    :goto_2
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 116
    .line 117
    .line 118
    move v5, v3

    .line 119
    :goto_3
    if-ge v5, v4, :cond_3

    .line 120
    .line 121
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    check-cast v6, Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    add-int/lit8 v5, v5, 0x1

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    if-nez v1, :cond_4

    .line 144
    .line 145
    new-instance p0, Landroid/util/ArraySet;

    .line 146
    .line 147
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_4
    invoke-interface {v1, p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getDisabledComponents()Landroid/util/ArraySet;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    :goto_4
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    move v2, v3

    .line 164
    :goto_5
    if-ge v2, v1, :cond_5

    .line 165
    .line 166
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    check-cast v4, Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    add-int/lit8 v2, v2, 0x1

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_5
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    array-length p1, p0

    .line 187
    :goto_6
    if-ge v3, p1, :cond_6

    .line 188
    .line 189
    aget-object v1, p0, v3

    .line 190
    .line 191
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .line 197
    .line 198
    add-int/lit8 v3, v3, 0x1

    .line 199
    .line 200
    goto :goto_6

    .line 201
    :cond_6
    return-void

    .line 202
    :goto_7
    new-instance p1, Ljava/lang/AssertionError;

    .line 203
    .line 204
    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    throw p1
.end method
