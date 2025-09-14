.class final Lcom/android/server/pm/ScanResult;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDynamicSharedLibraryInfos:Ljava/util/List;

.field public final mExistingSettingCopied:Z

.field public final mPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final mRequest:Lcom/android/server/pm/ScanRequest;

.field public final mSdkSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

.field public final mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageSetting;ZLandroid/content/pm/SharedLibraryInfo;Landroid/content/pm/SharedLibraryInfo;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/pm/ScanResult;->mExistingSettingCopied:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/ScanResult;->mSdkSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method
