.class Lcom/android/server/input/PersistentDataStore$Injector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAtomicFile:Landroid/util/AtomicFile;

.field public final mAtomicFileEtc:Landroid/util/AtomicFile;

.field public final mAtomicFileGamePadProfiles:Landroid/util/AtomicFile;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/AtomicFile;

    .line 5
    .line 6
    new-instance v1, Ljava/io/File;

    .line 7
    .line 8
    const-string v2, "/data/system/input-manager-state.xml"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v2, "input-state"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$Injector;->mAtomicFile:Landroid/util/AtomicFile;

    .line 20
    .line 21
    new-instance v0, Landroid/util/AtomicFile;

    .line 22
    .line 23
    new-instance v1, Ljava/io/File;

    .line 24
    .line 25
    const-string v2, "/data/system/input-manager-state-etc.xml"

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v2, "input-state-etc"

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$Injector;->mAtomicFileEtc:Landroid/util/AtomicFile;

    .line 37
    .line 38
    new-instance v0, Landroid/util/AtomicFile;

    .line 39
    .line 40
    new-instance v1, Ljava/io/File;

    .line 41
    .line 42
    const-string v2, "/data/system/input-manager-state-gamepad-profiles.xml"

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string/jumbo v2, "input-state-gamepad-profiles"

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$Injector;->mAtomicFileGamePadProfiles:Landroid/util/AtomicFile;

    .line 54
    .line 55
    return-void
.end method
