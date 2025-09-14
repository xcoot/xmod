.class public final Lcom/android/server/pm/verify/domain/DomainVerificationDebug;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/verify/domain/DomainVerificationCollector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 5
    .line 6
    return-void
.end method

.method public static printState(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;Landroid/util/ArraySet;Landroid/util/ArraySet;Z)V
    .locals 4

    .line 70
    invoke-virtual {p4}, Landroid/util/ArraySet;->clear()V

    .line 71
    invoke-virtual {p4, p5}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    if-eqz p3, :cond_0

    .line 72
    iget-object p5, p3, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    .line 73
    invoke-virtual {p4, p5}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    :cond_0
    if-nez p3, :cond_1

    const/4 p5, 0x0

    goto :goto_0

    .line 74
    :cond_1
    iget-object p5, p3, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    .line 75
    :goto_0
    invoke-static {p5}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 76
    invoke-virtual {p4}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-gtz v0, :cond_2

    if-lez v1, :cond_b

    .line 77
    :cond_2
    const-string v2, ":"

    if-nez p6, :cond_3

    .line 78
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object p1, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mId:Ljava/util/UUID;

    .line 80
    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x0

    if-eqz p3, :cond_5

    .line 81
    iget-boolean p3, p3, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mLinkHandlingAllowed:Z

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    move p3, p1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p3, 0x1

    .line 82
    :goto_2
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 83
    const-string p6, "User "

    invoke-virtual {p0, p6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 p6, -0x1

    if-ne p2, p6, :cond_6

    .line 84
    const-string p2, "all"

    goto :goto_3

    :cond_6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_3
    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 87
    const-string p2, "Verification link handling allowed: "

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, p3}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 89
    const-string p2, "Selection state:"

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    if-lez v0, :cond_8

    .line 91
    const-string p2, "Enabled:"

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move p2, p1

    :goto_4
    if-ge p2, v0, :cond_7

    .line 93
    invoke-virtual {p5, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 94
    :cond_7
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_8
    if-lez v1, :cond_a

    .line 95
    const-string p2, "Disabled:"

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_5
    if-ge p1, v1, :cond_9

    .line 97
    invoke-virtual {p4, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 98
    :cond_9
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 99
    :cond_a
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 100
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 101
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_b
    return-void
.end method


# virtual methods
.method public final printState(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/Integer;Landroid/util/ArraySet;Z)V
    .locals 9

    if-nez p4, :cond_0

    return-void

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p3, v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    move-result-object p0

    .line 23
    iget-object p3, p2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    .line 24
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 25
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 26
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p5

    move-object v7, p0

    move v8, p6

    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->printState(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;Landroid/util/ArraySet;Landroid/util/ArraySet;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    if-ge v0, v1, :cond_3

    .line 27
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    move-object v5, p4

    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 28
    iget v4, v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mUserId:I

    move-object v2, p1

    move-object v3, p2

    move-object v6, p5

    move-object v7, p0

    move v8, p6

    .line 29
    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->printState(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;Landroid/util/ArraySet;Landroid/util/ArraySet;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 31
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v2, p1

    move-object v3, p2

    move-object v6, p5

    move-object v7, p0

    move v8, p6

    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->printState(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;Landroid/util/ArraySet;Landroid/util/ArraySet;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final printState(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/Computer;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;)V
    .locals 10

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    if-nez p2, :cond_2

    .line 3
    iget-object p2, p5, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 4
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-ge v9, p2, :cond_3

    .line 5
    iget-object v1, p5, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 6
    move-object v3, v1

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 7
    iget-object v1, v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    .line 8
    invoke-interface {p4, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-nez v2, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->printState(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/util/ArrayMap;)Z

    move-result v7

    .line 11
    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move-object v6, v8

    .line 12
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->printState(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/Integer;Landroid/util/ArraySet;Z)V

    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iget-object p5, p5, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {p5, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .line 15
    move-object v3, p5

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    const/4 p5, 0x0

    if-eqz v3, :cond_5

    .line 16
    invoke-interface {p4, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 17
    iget-object v4, p4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v4, :cond_4

    .line 18
    invoke-virtual {p0, p1, v3, v4, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->printState(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/util/ArrayMap;)Z

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move-object v6, v8

    .line 19
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->printState(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/Integer;Landroid/util/ArraySet;Z)V

    :cond_3
    return-void

    .line 20
    :cond_4
    invoke-static {p2}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)V

    throw p5

    .line 21
    :cond_5
    invoke-static {p2}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)V

    throw p5
.end method

.method public final printState(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/util/ArrayMap;)Z
    .locals 7

    .line 32
    invoke-virtual {p4}, Landroid/util/ArrayMap;->clear()V

    .line 33
    iget-object v0, p2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    .line 34
    invoke-virtual {p4, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 35
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    .line 37
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p4, v5, v6}, Landroid/util/ArrayMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 40
    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    .line 41
    const-string v2, ":"

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 42
    :cond_1
    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    .line 43
    invoke-static {v1, v2}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 45
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ID: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    iget-object p2, p2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mId:Ljava/util/UUID;

    .line 49
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Signatures: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 52
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 53
    invoke-virtual {p0, p3, v0, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 55
    const-string p2, "Invalid autoVerify domains:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 57
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p2

    move p3, v3

    :goto_2
    if-ge p3, p2, :cond_2

    .line 58
    invoke-virtual {p0, p3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 60
    :cond_3
    const-string p0, "Domain verification state:"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 62
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result p0

    :goto_3
    if-ge v3, p0, :cond_4

    .line 63
    invoke-virtual {p4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 64
    invoke-virtual {p4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 65
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 66
    const-string p2, ": "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Landroid/content/pm/verify/domain/DomainVerificationState;->stateToDebugString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 68
    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 69
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_4

    :cond_5
    move v0, v3

    :goto_4
    return v0
.end method
