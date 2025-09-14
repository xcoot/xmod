.class public final Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDirName:Ljava/lang/String;

.field public final mDirectoryResolver:Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda1;

.field public final mEnableLowResSnapshots:Z

.field public final mLowResScaleFactor:F

.field public final mUse16BitFormat:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda1;Ljava/lang/String;ZFZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mDirectoryResolver:Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mDirName:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mEnableLowResSnapshots:Z

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mLowResScaleFactor:F

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mUse16BitFormat:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getDirectory(I)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mDirectoryResolver:Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mDirName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final getHighResolutionBitmapFile(II)Ljava/io/File;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getDirectory(I)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string p2, ".jpg"

    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final getLowResolutionBitmapFile(II)Ljava/io/File;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getDirectory(I)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string p2, "_reduced.jpg"

    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final getProtoFile(II)Ljava/io/File;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getDirectory(I)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string p2, ".proto"

    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
