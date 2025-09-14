.class public final Lcom/android/server/pm/InstallArgs;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAbiOverride:Ljava/lang/String;

.field public final mAllowlistedRestrictedPermissions:Ljava/util/List;

.field public final mApplicationEnabledSettingPersistent:Z

.field public final mAutoRevokePermissionsMode:I

.field public mCodeFile:Ljava/io/File;

.field public final mDataLoaderType:I

.field public final mDevelopmentInstallFlags:I

.field public final mDexoptCompilerFilter:Ljava/lang/String;

.field public final mForceQueryableOverride:Z

.field public final mInstallFlags:I

.field public final mInstallReason:I

.field public final mInstallScenario:I

.field public final mInstallSource:Lcom/android/server/pm/InstallSource;

.field public final mMoveInfo:Lcom/android/server/pm/MoveInfo;

.field public final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field public final mOriginInfo:Lcom/android/server/pm/OriginInfo;

.field public final mPackageSource:I

.field public final mPermissionStates:Landroid/util/ArrayMap;

.field public final mSigningDetails:Landroid/content/pm/SigningDetails;

.field public final mTraceCookie:I

.field public final mTraceMethod:Ljava/lang/String;

.field public final mVolumeUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;IILcom/android/server/pm/InstallSource;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/util/List;ILjava/lang/String;ILandroid/content/pm/SigningDetails;IIZIIZLjava/lang/String;)V
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move-object v1, p1

    .line 6
    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 10
    .line 11
    move v1, p4

    .line 12
    iput v1, v0, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    .line 13
    .line 14
    move v1, p5

    .line 15
    iput v1, v0, Lcom/android/server/pm/InstallArgs;->mDevelopmentInstallFlags:I

    .line 16
    .line 17
    move-object v1, p3

    .line 18
    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 19
    .line 20
    invoke-static {p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/pm/InstallSource;

    .line 25
    .line 26
    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 27
    .line 28
    move-object v1, p7

    .line 29
    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mVolumeUuid:Ljava/lang/String;

    .line 30
    .line 31
    move-object v1, p8

    .line 32
    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mAbiOverride:Ljava/lang/String;

    .line 33
    .line 34
    move-object v1, p9

    .line 35
    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mPermissionStates:Landroid/util/ArrayMap;

    .line 36
    .line 37
    move-object v1, p10

    .line 38
    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    .line 39
    .line 40
    move v1, p11

    .line 41
    iput v1, v0, Lcom/android/server/pm/InstallArgs;->mAutoRevokePermissionsMode:I

    .line 42
    .line 43
    move-object v1, p12

    .line 44
    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mTraceMethod:Ljava/lang/String;

    .line 45
    .line 46
    move v1, p13

    .line 47
    iput v1, v0, Lcom/android/server/pm/InstallArgs;->mTraceCookie:I

    .line 48
    .line 49
    move-object/from16 v1, p14

    .line 50
    .line 51
    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 52
    .line 53
    move/from16 v1, p15

    .line 54
    .line 55
    iput v1, v0, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    .line 56
    .line 57
    move/from16 v1, p16

    .line 58
    .line 59
    iput v1, v0, Lcom/android/server/pm/InstallArgs;->mInstallScenario:I

    .line 60
    .line 61
    move/from16 v1, p17

    .line 62
    .line 63
    iput-boolean v1, v0, Lcom/android/server/pm/InstallArgs;->mForceQueryableOverride:Z

    .line 64
    .line 65
    move/from16 v1, p18

    .line 66
    .line 67
    iput v1, v0, Lcom/android/server/pm/InstallArgs;->mDataLoaderType:I

    .line 68
    .line 69
    move/from16 v1, p19

    .line 70
    .line 71
    iput v1, v0, Lcom/android/server/pm/InstallArgs;->mPackageSource:I

    .line 72
    .line 73
    move/from16 v1, p20

    .line 74
    .line 75
    iput-boolean v1, v0, Lcom/android/server/pm/InstallArgs;->mApplicationEnabledSettingPersistent:Z

    .line 76
    .line 77
    move-object/from16 v1, p21

    .line 78
    .line 79
    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mDexoptCompilerFilter:Ljava/lang/String;

    .line 80
    .line 81
    return-void
.end method
