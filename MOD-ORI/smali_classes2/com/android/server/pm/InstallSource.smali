.class public final Lcom/android/server/pm/InstallSource;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final EMPTY:Lcom/android/server/pm/InstallSource;

.field public static final EMPTY_ORPHANED:Lcom/android/server/pm/InstallSource;


# instance fields
.field public final mInitiatingPackageName:Ljava/lang/String;

.field public final mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

.field public final mInstallerAttributionTag:Ljava/lang/String;

.field public final mInstallerPackageName:Ljava/lang/String;

.field public final mInstallerPackageUid:I

.field public final mIsInitiatingPackageUninstalled:Z

.field public final mIsOrphaned:Z

.field public final mOriginatingPackageName:Ljava/lang/String;

.field public final mPackageSource:I

.field public final mUpdateOwnerPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    new-instance v11, Lcom/android/server/pm/InstallSource;

    .line 2
    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v6, 0x0

    .line 8
    const/4 v1, -0x1

    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v8, 0x0

    .line 11
    const/4 v9, 0x0

    .line 12
    const/4 v10, 0x0

    .line 13
    move-object v0, v11

    .line 14
    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/InstallSource;-><init>(IILcom/android/server/pm/PackageSignatures;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 15
    .line 16
    .line 17
    sput-object v11, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    .line 18
    .line 19
    new-instance v0, Lcom/android/server/pm/InstallSource;

    .line 20
    .line 21
    const/4 v15, 0x0

    .line 22
    const/4 v14, 0x0

    .line 23
    const/16 v16, 0x0

    .line 24
    .line 25
    const/16 v17, 0x0

    .line 26
    .line 27
    const/16 v18, 0x0

    .line 28
    .line 29
    const/4 v13, -0x1

    .line 30
    const/16 v19, 0x0

    .line 31
    .line 32
    const/16 v20, 0x0

    .line 33
    .line 34
    const/16 v21, 0x1

    .line 35
    .line 36
    const/16 v22, 0x0

    .line 37
    .line 38
    move-object v12, v0

    .line 39
    invoke-direct/range {v12 .. v22}, Lcom/android/server/pm/InstallSource;-><init>(IILcom/android/server/pm/PackageSignatures;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/android/server/pm/InstallSource;->EMPTY_ORPHANED:Lcom/android/server/pm/InstallSource;

    .line 43
    .line 44
    return-void
.end method

.method public constructor <init>(IILcom/android/server/pm/PackageSignatures;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p4, :cond_1

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 12
    .line 13
    .line 14
    xor-int/lit8 v0, p10, 0x1

    .line 15
    .line 16
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iput-object p4, p0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p5, p0, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p6, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 24
    .line 25
    iput p1, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    .line 26
    .line 27
    iput-object p7, p0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 28
    .line 29
    iput-object p8, p0, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    .line 30
    .line 31
    iput-boolean p9, p0, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    .line 32
    .line 33
    iput-boolean p10, p0, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    .line 34
    .line 35
    iput-object p3, p0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    .line 36
    .line 37
    iput p2, p0, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    .line 38
    .line 39
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZ)Lcom/android/server/pm/InstallSource;
    .locals 10

    .line 1
    invoke-static {p0}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    invoke-static {p1}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    invoke-static {p2}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    invoke-static {p4}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    const/4 v2, 0x0

    .line 18
    move v0, p3

    .line 19
    move/from16 v1, p6

    .line 20
    .line 21
    move-object v7, p5

    .line 22
    move/from16 v8, p7

    .line 23
    .line 24
    move/from16 v9, p8

    .line 25
    .line 26
    invoke-static/range {v0 .. v9}, Lcom/android/server/pm/InstallSource;->createInternal(IILcom/android/server/pm/PackageSignatures;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/InstallSource;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public static createInternal(IILcom/android/server/pm/PackageSignatures;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/InstallSource;
    .locals 12

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    if-nez p4, :cond_1

    .line 4
    .line 5
    if-nez p5, :cond_1

    .line 6
    .line 7
    if-nez p6, :cond_1

    .line 8
    .line 9
    if-nez p2, :cond_1

    .line 10
    .line 11
    if-nez p9, :cond_1

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    if-eqz p8, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/android/server/pm/InstallSource;->EMPTY_ORPHANED:Lcom/android/server/pm/InstallSource;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    .line 21
    .line 22
    :goto_0
    return-object v0

    .line 23
    :cond_1
    new-instance v11, Lcom/android/server/pm/InstallSource;

    .line 24
    .line 25
    move-object v0, v11

    .line 26
    move v1, p0

    .line 27
    move v2, p1

    .line 28
    move-object v3, p2

    .line 29
    move-object v4, p3

    .line 30
    move-object/from16 v5, p4

    .line 31
    .line 32
    move-object/from16 v6, p5

    .line 33
    .line 34
    move-object/from16 v7, p6

    .line 35
    .line 36
    move-object/from16 v8, p7

    .line 37
    .line 38
    move/from16 v9, p8

    .line 39
    .line 40
    move/from16 v10, p9

    .line 41
    .line 42
    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/InstallSource;-><init>(IILcom/android/server/pm/PackageSignatures;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 43
    .line 44
    .line 45
    return-object v11
.end method

.method public static intern(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final setUpdateOwnerPackageName(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v7

    .line 14
    iget-boolean v10, p0, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v5, p0, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v6, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 23
    .line 24
    iget v1, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    .line 25
    .line 26
    iget-object v8, p0, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    .line 27
    .line 28
    iget v2, p0, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    .line 29
    .line 30
    iget-boolean v9, p0, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    .line 31
    .line 32
    invoke-static/range {v1 .. v10}, Lcom/android/server/pm/InstallSource;->createInternal(IILcom/android/server/pm/PackageSignatures;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/InstallSource;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method
