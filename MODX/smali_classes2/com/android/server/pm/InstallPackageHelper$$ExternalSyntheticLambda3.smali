.class public final synthetic Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstallPackageHelper;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/internal/pm/parsing/PackageParser2;

.field public final synthetic f$4:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallPackageHelper;ILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;->f$1:I

    .line 8
    .line 9
    iput p2, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;->f$2:I

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;->f$3:Lcom/android/internal/pm/parsing/PackageParser2;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;->f$4:Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;->f$1:I

    .line 4
    .line 5
    iget v6, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;->f$2:I

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;->f$3:Lcom/android/internal/pm/parsing/PackageParser2;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;->f$4:Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    check-cast p2, Ljava/io/File;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v4, "Update a duplicate package: "

    .line 21
    .line 22
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v4, ", apk: "

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/4 v7, 0x5

    .line 41
    invoke-static {v7, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 45
    .line 46
    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 47
    .line 48
    invoke-virtual {v4, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-nez v4, :cond_0

    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :cond_0
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 57
    .line 58
    invoke-virtual {v3, p1}, Lcom/android/server/pm/Settings;->disableSystemPackageLPw(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    iget-object p1, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 62
    .line 63
    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 64
    .line 65
    invoke-virtual {v8, p1}, Lcom/android/server/pm/RemovePackageHelper;->removePackage(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    new-instance p0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string p1, "No files in app dir "

    .line 81
    .line 82
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const-string p1, "PackageManager"

    .line 93
    .line 94
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    goto/16 :goto_1

    .line 98
    .line 99
    :cond_1
    new-instance p1, Lcom/android/server/pm/ParallelPackageParser;

    .line 100
    .line 101
    invoke-direct {p1, v1, p0}, Lcom/android/server/pm/ParallelPackageParser;-><init>(Lcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 102
    .line 103
    .line 104
    iget-object p0, p1, Lcom/android/server/pm/ParallelPackageParser;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 105
    .line 106
    new-instance v1, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;

    .line 107
    .line 108
    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ParallelPackageParser;Ljava/io/File;I)V

    .line 109
    .line 110
    .line 111
    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/android/server/pm/ParallelPackageParser;->take()Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    iget-object p1, p0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;

    .line 119
    .line 120
    const/4 p2, 0x1

    .line 121
    const-string v9, ": "

    .line 122
    .line 123
    if-nez p1, :cond_2

    .line 124
    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 126
    .line 127
    const/4 v4, 0x0

    .line 128
    const/4 v5, 0x0

    .line 129
    move v3, v6

    .line 130
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/InstallPackageHelper;->addForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/pkg/AndroidPackage;
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    .line 133
    move v0, p2

    .line 134
    goto :goto_0

    .line 135
    :catch_0
    move-exception p1

    .line 136
    iget v0, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 137
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v2, "Failed to scan "

    .line 141
    .line 142
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v2, p0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-static {v7, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_2
    instance-of v0, p1, Lcom/android/server/pm/PackageManagerException;

    .line 169
    .line 170
    if-eqz v0, :cond_4

    .line 171
    .line 172
    check-cast p1, Lcom/android/server/pm/PackageManagerException;

    .line 173
    .line 174
    iget v0, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 175
    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string v2, "Failed to parse "

    .line 179
    .line 180
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object v2, p0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    .line 184
    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-static {v7, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :goto_0
    const/high16 p1, 0x10000

    .line 206
    .line 207
    and-int/2addr p1, v6

    .line 208
    if-nez p1, :cond_3

    .line 209
    .line 210
    if-eq v0, p2, :cond_3

    .line 211
    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string p2, "Deleting invalid package at "

    .line 215
    .line 216
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    iget-object p2, p0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    .line 220
    .line 221
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-static {v7, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget-object p0, p0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    .line 232
    .line 233
    invoke-virtual {v8, p0}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    .line 234
    .line 235
    .line 236
    :cond_3
    :goto_1
    return-void

    .line 237
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 238
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string v1, "Unexpected exception occurred while parsing "

    .line 242
    .line 243
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget-object p0, p0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    .line 247
    .line 248
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    invoke-direct {p2, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    .line 257
    .line 258
    throw p2
.end method
