.class public final synthetic Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;

    .line 6
    iput-object p2, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;

    .line 3
    iget-object p0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 5
    iget-object v0, v0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;->this$0:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string v1, "AppIntegrityManagerServiceImpl"

    .line 12
    const-string v2, "android.content.pm.extra.VERIFICATION_ID"

    .line 14
    const/4 v3, -0x1

    .line 15
    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    const/4 v4, 0x0

    .line 21
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getInstallerPackageName(Landroid/content/Intent;)Ljava/lang/String;

    .line 24
    move-result-object v10

    .line 25
    iget-object v5, v0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 30
    move-result-object v5

    .line 31
    const-string/jumbo v6, "verify_integrity_for_rule_provider"

    .line 34
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 37
    move-result v5

    .line 38
    if-ne v5, v3, :cond_0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getAllowedRuleProviderSystemApps()Ljava/util/List;

    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v5

    .line 51
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_2

    .line 57
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v6

    .line 61
    check-cast v6, Ljava/lang/String;

    .line 63
    invoke-virtual {v6, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_1

    .line 69
    iget-object p0, v0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 71
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManagerInternal;->setIntegrityVerificationResult(II)V

    .line 74
    goto/16 :goto_6

    .line 76
    :catch_0
    move-exception p0

    .line 77
    goto/16 :goto_4

    .line 79
    :catch_1
    move-exception p0

    .line 80
    goto/16 :goto_5

    .line 82
    :cond_2
    :goto_0
    const-string v5, "android.intent.extra.PACKAGE_NAME"

    .line 84
    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v0, v5}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageSigningAndMetadata(Landroid/net/Uri;)Landroid/util/Pair;

    .line 95
    move-result-object v5

    .line 96
    if-nez v5, :cond_3

    .line 98
    new-instance p0, Ljava/lang/StringBuilder;

    .line 100
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    const-string v5, "Cannot parse package "

    .line 105
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object p0

    .line 115
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object p0, v0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 120
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManagerInternal;->setIntegrityVerificationResult(II)V

    .line 123
    goto/16 :goto_6

    .line 125
    :cond_3
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 127
    check-cast v7, Landroid/content/pm/SigningDetails;

    .line 129
    new-instance v8, Ljava/util/ArrayList;

    .line 131
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-static {v6, v7}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getSignatures(Ljava/lang/String;Landroid/content/pm/SigningDetails;)[Landroid/content/pm/Signature;

    .line 137
    move-result-object v9

    .line 138
    array-length v11, v9

    .line 139
    move v12, v4

    .line 140
    :goto_1
    if-ge v12, v11, :cond_4

    .line 142
    aget-object v13, v9, v12

    .line 144
    invoke-static {v13}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getFingerprint(Landroid/content/pm/Signature;)Ljava/lang/String;

    .line 147
    move-result-object v13

    .line 148
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v12, v12, 0x1

    .line 153
    goto :goto_1

    .line 154
    :cond_4
    invoke-static {v6, v7}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCertificateLineage(Ljava/lang/String;Landroid/content/pm/SigningDetails;)Ljava/util/List;

    .line 157
    move-result-object v7

    .line 158
    invoke-virtual {v0, v10}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getInstallerCertificateFingerprint(Ljava/lang/String;)Ljava/util/List;

    .line 161
    move-result-object v9

    .line 162
    new-instance v11, Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 164
    invoke-direct {v11}, Landroid/content/integrity/AppInstallMetadata$Builder;-><init>()V

    .line 167
    invoke-static {v6}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageNameNormalized(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    move-result-object v12

    .line 171
    invoke-virtual {v11, v12}, Landroid/content/integrity/AppInstallMetadata$Builder;->setPackageName(Ljava/lang/String;)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 174
    invoke-virtual {v11, v8}, Landroid/content/integrity/AppInstallMetadata$Builder;->setAppCertificates(Ljava/util/List;)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 177
    invoke-virtual {v11, v7}, Landroid/content/integrity/AppInstallMetadata$Builder;->setAppCertificateLineage(Ljava/util/List;)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 180
    const-string v7, "android.intent.extra.LONG_VERSION_CODE"

    .line 182
    const-wide/16 v12, -0x1

    .line 184
    invoke-virtual {p0, v7, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 187
    move-result-wide v12

    .line 188
    invoke-virtual {v11, v12, v13}, Landroid/content/integrity/AppInstallMetadata$Builder;->setVersionCode(J)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 191
    invoke-static {v10}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageNameNormalized(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    move-result-object v7

    .line 195
    invoke-virtual {v11, v7}, Landroid/content/integrity/AppInstallMetadata$Builder;->setInstallerName(Ljava/lang/String;)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 198
    invoke-virtual {v11, v9}, Landroid/content/integrity/AppInstallMetadata$Builder;->setInstallerCertificates(Ljava/util/List;)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 201
    invoke-virtual {v0, v6}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->isSystemApp(Ljava/lang/String;)Z

    .line 204
    move-result v7

    .line 205
    invoke-virtual {v11, v7}, Landroid/content/integrity/AppInstallMetadata$Builder;->setIsPreInstalled(Z)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 208
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 210
    check-cast v5, Landroid/os/Bundle;

    .line 212
    invoke-static {v5}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getAllowedInstallers(Landroid/os/Bundle;)Ljava/util/Map;

    .line 215
    move-result-object v5

    .line 216
    invoke-virtual {v11, v5}, Landroid/content/integrity/AppInstallMetadata$Builder;->setAllowedInstallersAndCert(Ljava/util/Map;)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 219
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 222
    move-result-object p0

    .line 223
    invoke-static {p0, v11}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->extractSourceStamp(Landroid/net/Uri;Landroid/content/integrity/AppInstallMetadata$Builder;)V

    .line 226
    invoke-virtual {v11}, Landroid/content/integrity/AppInstallMetadata$Builder;->build()Landroid/content/integrity/AppInstallMetadata;

    .line 229
    move-result-object p0

    .line 230
    iget-object v5, v0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mEvaluationEngine:Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    .line 232
    invoke-virtual {v5, p0}, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->evaluate(Landroid/content/integrity/AppInstallMetadata;)Lcom/android/server/integrity/model/IntegrityCheckResult;

    .line 235
    move-result-object v5

    .line 236
    iget-object v7, v5, Lcom/android/server/integrity/model/IntegrityCheckResult;->mRuleList:Ljava/util/List;

    .line 238
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 241
    move-result v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    iget-object v14, v5, Lcom/android/server/integrity/model/IntegrityCheckResult;->mEffect:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    .line 244
    if-eqz v7, :cond_5

    .line 246
    goto :goto_2

    .line 247
    :cond_5
    :try_start_1
    const-string v7, "Integrity check of %s result: %s due to %s"

    .line 249
    iget-object v9, v5, Lcom/android/server/integrity/model/IntegrityCheckResult;->mRuleList:Ljava/util/List;

    .line 251
    filled-new-array {v6, v14, v9}, [Ljava/lang/Object;

    .line 254
    move-result-object v9

    .line 255
    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 258
    move-result-object v7

    .line 259
    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 265
    move-result-object v7

    .line 266
    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->getVersionCode()J

    .line 269
    move-result-wide v8

    .line 270
    invoke-virtual {v5}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getLoggingResponse()I

    .line 273
    move-result v11

    .line 274
    iget-object p0, v5, Lcom/android/server/integrity/model/IntegrityCheckResult;->mRuleList:Ljava/util/List;

    .line 276
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 279
    move-result-object p0

    .line 280
    new-instance v12, Lcom/android/server/integrity/model/IntegrityCheckResult$$ExternalSyntheticLambda0;

    .line 282
    const/4 v13, 0x0

    .line 283
    invoke-direct {v12, v13}, Lcom/android/server/integrity/model/IntegrityCheckResult$$ExternalSyntheticLambda0;-><init>(I)V

    .line 286
    invoke-interface {p0, v12}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 289
    move-result v12

    .line 290
    iget-object p0, v5, Lcom/android/server/integrity/model/IntegrityCheckResult;->mRuleList:Ljava/util/List;

    .line 292
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 295
    move-result-object p0

    .line 296
    new-instance v5, Lcom/android/server/integrity/model/IntegrityCheckResult$$ExternalSyntheticLambda0;

    .line 298
    const/4 v13, 0x1

    .line 299
    invoke-direct {v5, v13}, Lcom/android/server/integrity/model/IntegrityCheckResult$$ExternalSyntheticLambda0;-><init>(I)V

    .line 302
    invoke-interface {p0, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 305
    move-result v13

    .line 306
    const/16 v5, 0xf7

    .line 308
    invoke-static/range {v5 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IZZ)V

    .line 311
    iget-object p0, v0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 313
    sget-object v5, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->ALLOW:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    .line 315
    if-ne v14, v5, :cond_6

    .line 317
    move v5, v3

    .line 318
    goto :goto_3

    .line 319
    :cond_6
    move v5, v4

    .line 320
    :goto_3
    invoke-virtual {p0, v2, v5}, Landroid/content/pm/PackageManagerInternal;->setIntegrityVerificationResult(II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 323
    goto :goto_6

    .line 324
    :goto_4
    const-string v4, "Error handling integrity verification"

    .line 326
    invoke-static {v1, v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    iget-object p0, v0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 331
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManagerInternal;->setIntegrityVerificationResult(II)V

    .line 334
    goto :goto_6

    .line 335
    :goto_5
    const-string v3, "Invalid input to integrity verification"

    .line 337
    invoke-static {v1, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    iget-object p0, v0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 342
    invoke-virtual {p0, v2, v4}, Landroid/content/pm/PackageManagerInternal;->setIntegrityVerificationResult(II)V

    .line 345
    :goto_6
    return-void
.end method
