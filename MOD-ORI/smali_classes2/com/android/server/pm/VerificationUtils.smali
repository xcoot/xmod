.class public abstract Lcom/android/server/pm/VerificationUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static broadcastPackageVerified(ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.PACKAGE_VERIFIED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "application/vnd.android.package-archive"

    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    const-string p1, "android.content.pm.extra.VERIFICATION_ID"

    .line 18
    .line 19
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const-string p0, "android.content.pm.extra.VERIFICATION_RESULT"

    .line 23
    .line 24
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    if-eqz p3, :cond_0

    .line 28
    .line 29
    const-string p0, "android.content.pm.extra.VERIFICATION_ROOT_HASH"

    .line 30
    .line 31
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    :cond_0
    const-string p0, "android.content.pm.extra.DATA_LOADER_TYPE"

    .line 35
    .line 36
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const-string p0, "android.permission.PACKAGE_VERIFICATION_AGENT"

    .line 40
    .line 41
    invoke-virtual {p6, v0, p5, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static processVerificationResponse(ILcom/android/server/pm/PackageVerificationState;ILjava/lang/String;Lcom/android/server/pm/PackageManagerService;)V
    .locals 11

    .line 3
    invoke-virtual {p1}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/PackageVerificationState;->mVerifyingSession:Lcom/android/server/pm/VerifyingSession;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-boolean v2, p1, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_4

    iget-boolean v2, p1, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    if-nez v2, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-boolean v2, p1, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    if-eqz v2, :cond_3

    .line 7
    iget-boolean v2, p1, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    goto :goto_2

    :cond_3
    move v2, v9

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v10

    :goto_2
    if-eqz v2, :cond_5

    :goto_3
    move v4, p2

    goto :goto_4

    :cond_5
    const/4 p2, -0x1

    goto :goto_3

    :goto_4
    if-eqz p4, :cond_6

    if-eqz v0, :cond_6

    .line 8
    iget-object v7, v0, Lcom/android/server/pm/VerifyingSession;->mUser:Landroid/os/UserHandle;

    .line 9
    iget-object v8, p4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    .line 10
    iget v6, v0, Lcom/android/server/pm/VerifyingSession;->mDataLoaderType:I

    move v2, p0

    move-object v3, v1

    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/VerificationUtils;->broadcastPackageVerified(ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)V

    .line 11
    :cond_6
    iget-boolean p2, p1, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    if-eqz p2, :cond_8

    iget-boolean p2, p1, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    if-nez p2, :cond_7

    goto :goto_5

    .line 12
    :cond_7
    iget-boolean p2, p1, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    if-eqz p2, :cond_9

    .line 13
    iget-boolean v9, p1, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    goto :goto_6

    :cond_8
    :goto_5
    move v9, v10

    .line 14
    :cond_9
    :goto_6
    const-string p2, "PackageManager"

    if-eqz v9, :cond_a

    .line 15
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "Continuing with installation of "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 16
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 17
    invoke-static {p2, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_b

    const/16 p2, -0x16

    .line 18
    invoke-virtual {v0, p2, p3}, Lcom/android/server/pm/VerifyingSession;->setReturnCode(ILjava/lang/String;)V

    :cond_b
    :goto_7
    if-eqz p4, :cond_c

    .line 19
    invoke-virtual {p1}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 20
    iget-object p1, p4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->remove(I)V

    :cond_c
    const-wide/32 p1, 0x40000

    .line 21
    const-string/jumbo p3, "verification"

    invoke-static {p1, p2, p3, p0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    if-eqz v0, :cond_d

    .line 22
    iput-boolean v10, v0, Lcom/android/server/pm/VerifyingSession;->mWaitForVerificationToComplete:Z

    .line 23
    invoke-virtual {v0}, Lcom/android/server/pm/VerifyingSession;->handleReturnCode()V

    :cond_d
    return-void
.end method

.method public static processVerificationResponse(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;Lcom/android/server/pm/PackageManagerService;)V
    .locals 1

    .line 1
    iget v0, p2, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    iget p2, p2, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    invoke-virtual {p1, v0, p2}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)V

    .line 2
    const-string v0, "Install not allowed"

    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/server/pm/VerificationUtils;->processVerificationResponse(ILcom/android/server/pm/PackageVerificationState;ILjava/lang/String;Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method

.method public static processVerificationResponseOnTimeout(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;Lcom/android/server/pm/PackageManagerService;)V
    .locals 3

    .line 1
    iget v0, p2, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget p2, p2, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p1, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p1, Lcom/android/server/pm/PackageVerificationState;->mUnrespondedRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    .line 21
    .line 22
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1, v0, p2}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    const-string v0, "Verification timed out"

    .line 32
    .line 33
    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/server/pm/VerificationUtils;->processVerificationResponse(ILcom/android/server/pm/PackageVerificationState;ILjava/lang/String;Lcom/android/server/pm/PackageManagerService;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
