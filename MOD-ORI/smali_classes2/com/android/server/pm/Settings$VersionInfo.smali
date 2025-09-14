.class public final Lcom/android/server/pm/Settings$VersionInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public buildFingerprint:Ljava/lang/String;

.field public databaseVersion:I

.field public fingerprint:Ljava/lang/String;

.field public sdkVersion:I


# virtual methods
.method public final forceCurrent()V
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    iput v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    iput v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 7
    .line 8
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v0, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method
