.class public final Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$WriteQueueItem;


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;->mUserId:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;->mPackageName:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final process()V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;->mUserId:I

    .line 4
    .line 5
    invoke-static {v1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string/jumbo v2, "package_configs"

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v1, Landroid/util/AtomicFile;

    .line 23
    .line 24
    new-instance v2, Ljava/io/File;

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;->mPackageName:Ljava/lang/String;

    .line 32
    .line 33
    const-string v4, "_config.xml"

    .line 34
    .line 35
    invoke-static {v3, p0, v4}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method
