.class public final synthetic Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(IILcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iput p1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;->f$2:I

    iput-object p4, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iput-object p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;->f$2:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;->f$2:I

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 13
    .line 14
    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x1

    .line 19
    invoke-virtual {v2, v1, v3}, Landroid/os/UserManager;->getProfileIdsExcludingHidden(IZ)[I

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    array-length v4, v2

    .line 29
    const/4 v5, 0x0

    .line 30
    :goto_0
    if-ge v5, v4, :cond_4

    .line 31
    .line 32
    aget v6, v2, v5

    .line 33
    .line 34
    if-ne v6, v1, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget-object v7, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 38
    .line 39
    invoke-interface {v7}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    iget-object v8, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 44
    .line 45
    new-instance v9, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda16;

    .line 46
    .line 47
    invoke-direct {v9, v7, v6, v0, p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda16;-><init>(IILcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v8, v9}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    check-cast v7, Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-nez v7, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-eqz v7, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    invoke-static {v6}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    return-object v3

    .line 88
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    .line 89
    .line 90
    iget v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;->f$2:I

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v2, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 95
    .line 96
    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const/4 v3, 0x0

    .line 101
    invoke-virtual {v2, v1, v3}, Landroid/os/UserManager;->getProfileIdsExcludingHidden(IZ)[I

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    array-length v4, v2

    .line 106
    :goto_2
    if-ge v3, v4, :cond_6

    .line 107
    .line 108
    aget v5, v2, v3

    .line 109
    .line 110
    if-eq v5, v1, :cond_5

    .line 111
    .line 112
    iget-object v6, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 113
    .line 114
    new-instance v7, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;

    .line 115
    .line 116
    invoke-direct {v7, v0, p0, v5}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v6, v7}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    check-cast v5, Ljava/lang/Boolean;

    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-eqz v5, :cond_5

    .line 130
    .line 131
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 138
    .line 139
    :goto_3
    return-object p0

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    .line 141
    .line 142
    iget v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;->f$2:I

    .line 143
    .line 144
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 145
    .line 146
    iget-object v0, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 147
    .line 148
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->getAllCrossProfilePackages(I)Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    return-object p0

    .line 165
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    .line 166
    .line 167
    iget-object v6, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 168
    .line 169
    iget v3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;->f$2:I

    .line 170
    .line 171
    iget-object p0, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 172
    .line 173
    invoke-interface {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    iget-object p0, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 178
    .line 179
    invoke-interface {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    const-wide/32 v4, 0xc0000

    .line 184
    .line 185
    .line 186
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(IIJLjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    if-eqz p0, :cond_7

    .line 191
    .line 192
    const/4 p0, 0x1

    .line 193
    goto :goto_4

    .line 194
    :cond_7
    const/4 p0, 0x0

    .line 195
    :goto_4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    return-object p0

    .line 200
    nop

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
