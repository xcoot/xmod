.class public final Lcom/android/server/pm/OriginInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCid:Ljava/lang/String;

.field public final mExisting:Z

.field public final mFile:Ljava/io/File;

.field public final mResolvedFile:Ljava/io/File;

.field public final mResolvedPath:Ljava/lang/String;

.field public final mStaged:Z


# direct methods
.method public constructor <init>(Ljava/io/File;ZZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/pm/OriginInfo;->mExisting:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/OriginInfo;->mCid:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz p4, :cond_0

    .line 13
    .line 14
    invoke-static {p4}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    .line 19
    .line 20
    new-instance p2, Ljava/io/File;

    .line 21
    .line 22
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iput-object p2, p0, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    .line 43
    .line 44
    :goto_0
    return-void
.end method
