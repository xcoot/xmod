.class public final Lcom/android/server/pm/PackageRemovedInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final EMPTY_INT_ARRAY:[I


# instance fields
.field public mArgs:Lcom/android/server/pm/CleanUpArgs;

.field public mBroadcastAllowList:Landroid/util/SparseArray;

.field public mBroadcastUsers:[I

.field public mDataRemoved:Z

.field public mHidden:Z

.field public mInstallReasons:Landroid/util/SparseIntArray;

.field public mInstallerPackageName:Ljava/lang/String;

.field public mInstantUserIds:[I

.field public mIsAppIdRemoved:Z

.field public mIsExternal:Z

.field public mIsRemovedPackageSystemUpdate:Z

.field public mIsStaticSharedLib:Z

.field public mIsUpdate:Z

.field public mOrigUsers:[I

.field public mRemovedForAllUsers:Z

.field public mRemovedPackage:Ljava/lang/String;

.field public mRemovedPackageVersionCode:J

.field public mRemovedUsers:[I

.field public mUid:I

.field public mUninstallReasons:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Lcom/android/server/pm/PackageRemovedInfo;->EMPTY_INT_ARRAY:[I

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mIsAppIdRemoved:Z

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 12
    .line 13
    iput-object v1, p0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/server/pm/PackageRemovedInfo;->mInstantUserIds:[I

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    .line 20
    .line 21
    return-void
.end method
