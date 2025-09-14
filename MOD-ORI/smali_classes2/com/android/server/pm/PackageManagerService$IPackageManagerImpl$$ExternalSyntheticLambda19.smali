.class public final synthetic Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda19;->f$0:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda19;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda19;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda19;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda19;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda19;->f$5:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final applyOrThrow(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda19;->f$0:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda19;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda19;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda19;->f$3:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda19;->f$4:Ljava/lang/String;

    .line 10
    .line 11
    iget p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda19;->f$5:I

    .line 12
    .line 13
    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;

    .line 14
    .line 15
    check-cast p2, Lcom/android/server/pm/Computer;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, v1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    if-nez v5, :cond_9

    .line 25
    .line 26
    const-wide/16 v5, 0x0

    .line 27
    .line 28
    invoke-interface {p2, v2, v5, v6, v3}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-ne v5, v1, :cond_8

    .line 33
    .line 34
    invoke-interface {p2, v1, v3, v4}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-eqz p2, :cond_7

    .line 39
    .line 40
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/16 v3, 0x3e8

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    const/4 v6, 0x1

    .line 48
    if-ne v1, v3, :cond_0

    .line 49
    .line 50
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-ne v1, v3, :cond_0

    .line 59
    .line 60
    move v1, v6

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move v1, v5

    .line 63
    :goto_0
    const-string v3, "com.sec.android.easyMover"

    .line 64
    .line 65
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_1

    .line 70
    .line 71
    iget-object v7, p2, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 72
    .line 73
    iget-object v7, v7, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_1

    .line 80
    .line 81
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 82
    .line 83
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 88
    .line 89
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_1

    .line 94
    .line 95
    move v5, v6

    .line 96
    :cond_1
    if-nez v1, :cond_4

    .line 97
    .line 98
    if-eqz v5, :cond_2

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 102
    .line 103
    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_3

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 113
    .line 114
    const-string p1, "Calling package "

    .line 115
    .line 116
    const-string p2, " is not installer for "

    .line 117
    .line 118
    invoke-static {p1, v2, p2, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p0

    .line 126
    :cond_4
    :goto_1
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 127
    .line 128
    if-eqz v1, :cond_5

    .line 129
    .line 130
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getCategory()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    goto :goto_2

    .line 135
    :cond_5
    const/4 v1, -0x1

    .line 136
    :goto_2
    const-string/jumbo v3, "setApplicationCategoryHint, pkg: "

    .line 137
    .line 138
    .line 139
    const-string v5, ", oldCategory: "

    .line 140
    .line 141
    invoke-static {v3, v4, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    iget v5, p2, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 146
    .line 147
    const-string v6, ", newCategory: "

    .line 148
    .line 149
    const-string v7, ", manifestCategory: "

    .line 150
    .line 151
    invoke-static {v5, p0, v6, v7, v3}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v1, ", caller: "

    .line 158
    .line 159
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v1, "/"

    .line 166
    .line 167
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-static {v1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget p2, p2, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 185
    .line 186
    if-eq p2, p0, :cond_6

    .line 187
    .line 188
    iget-object p2, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 189
    .line 190
    new-instance v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda22;

    .line 191
    .line 192
    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda22;-><init>(I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2, p1, v4, v0}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    goto :goto_3

    .line 200
    :cond_6
    const/4 p0, 0x0

    .line 201
    :goto_3
    return-object p0

    .line 202
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 203
    .line 204
    const-string p1, "Unknown target package "

    .line 205
    .line 206
    invoke-static {p1, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw p0

    .line 214
    :cond_8
    new-instance p0, Ljava/lang/SecurityException;

    .line 215
    .line 216
    const-string p1, "Package "

    .line 217
    .line 218
    const-string p2, " does not belong to "

    .line 219
    .line 220
    invoke-static {v1, p1, v2, p2}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p0

    .line 228
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    .line 229
    .line 230
    const-string p1, "Instant applications don\'t have access to this method"

    .line 231
    .line 232
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw p0
.end method
