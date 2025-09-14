.class final Lcom/android/server/pm/ScanRequest;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCpuAbiOverride:Ljava/lang/String;

.field public final mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final mIsPlatformPackage:Z

.field public final mOldPkg:Lcom/android/server/pm/pkg/AndroidPackage;

.field public final mOldPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final mOldSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

.field public final mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final mParseFlags:I

.field public final mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

.field public final mPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final mRealPkgName:Ljava/lang/String;

.field public final mScanFlags:I

.field public final mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

.field public final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;IIZLandroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/pm/ScanRequest;->mOldPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/android/server/pm/ScanRequest;->mOldSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    .line 13
    .line 14
    if-nez p4, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Lcom/android/server/pm/PackageSetting;

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-direct {p1, p4, p2}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Z)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iput-object p1, p0, Lcom/android/server/pm/ScanRequest;->mOldPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 25
    .line 26
    iput-object p6, p0, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 27
    .line 28
    iput-object p7, p0, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 29
    .line 30
    iput-object p8, p0, Lcom/android/server/pm/ScanRequest;->mRealPkgName:Ljava/lang/String;

    .line 31
    .line 32
    iput p9, p0, Lcom/android/server/pm/ScanRequest;->mParseFlags:I

    .line 33
    .line 34
    iput p10, p0, Lcom/android/server/pm/ScanRequest;->mScanFlags:I

    .line 35
    .line 36
    iput-boolean p11, p0, Lcom/android/server/pm/ScanRequest;->mIsPlatformPackage:Z

    .line 37
    .line 38
    iput-object p12, p0, Lcom/android/server/pm/ScanRequest;->mUser:Landroid/os/UserHandle;

    .line 39
    .line 40
    iput-object p13, p0, Lcom/android/server/pm/ScanRequest;->mCpuAbiOverride:Ljava/lang/String;

    .line 41
    .line 42
    return-void
.end method
